package com.sid.tvos;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import org.json.JSONArray;
import org.json.JSONObject;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * Keyless public TV discovery. TVmaze metadata is CC BY-SA with visible source attribution.
 * It describes streaming-channel releases, not a user's history or verified India availability.
 * No accounts, API keys, profile scraping or network work on the UI thread.
 */
public final class Discovery {
    private static final String NETFLIX_APP = "com.netflix.ninja";
    private static final String PRIME_APP = "com.amazon.firebat", PRIME_ANDROID = "com.amazon.amazonvideo.livingroom";
    private static final ExecutorService IO = Executors.newSingleThreadExecutor();
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static final Object LOCK = new Object();
    private static List<Entry> cached = Collections.emptyList();
    private static Context context;
    private static boolean running, loaded, partialCache;
    private static long fetchedAt, retryAt;
    private static final class Entry {
        String service, title, art, official, source;
        int id;
    }
    private Discovery() {}

    /** Cheap entry point; disk and HTTP requests are always delegated to one background worker. */
    public static synchronized void init(Context c) {
        if (context == null) context = c.getApplicationContext();
        if (running || System.currentTimeMillis() < retryAt) return;
        running = true;
        IO.execute(() -> {
            try { refresh(); }
            finally { synchronized (Discovery.class) { running = false; } }
        });
    }

    private static void refresh() {
        long now = System.currentTimeMillis();
        if (!loaded) {
            loaded = true;
            try {
                fetchedAt = context.getSharedPreferences("public-discovery", 0).getLong("fetched_at", 0);
                partialCache = context.getSharedPreferences("public-discovery", 0).getBoolean("partial", false);
                if (DiscoveryPolicy.usableCache(fetchedAt, now)) {
                    List<Entry> rows = decode(new JSONArray(context.getSharedPreferences("public-discovery", 0)
                            .getString("rows", "[]")));
                    synchronized (LOCK) { cached = rows; }
                    changed();
                }
            } catch (Exception ignored) { fetchedAt = 0; }
        }
        if (!partialCache && DiscoveryPolicy.usableCache(fetchedAt, now) && now - fetchedAt < DiscoveryPolicy.CACHE_MS) {
            synchronized (Discovery.class) { retryAt = fetchedAt + DiscoveryPolicy.CACHE_MS; }
            return;
        }
        List<Entry> fresh = new ArrayList<>();
        Set<String> seen = new HashSet<>();
        Map<String, Integer> counts = new LinkedHashMap<>();
        boolean failed = false;
        // Only seven recent dates, never the multi-megabyte all-future schedule or a catalogue crawl.
        Calendar date = Calendar.getInstance(TimeZone.getTimeZone("Asia/Kolkata"), Locale.ROOT);
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd", Locale.ROOT);
        format.setTimeZone(TimeZone.getTimeZone("Asia/Kolkata"));
        outer: for (int day = 0; day < 7; day++, date.add(Calendar.DAY_OF_MONTH, -1)) {
            for (String country : new String[]{"", "IN"}) {
                try {
                    JSONArray episodes = new JSONArray(download("https://api.tvmaze.com/schedule/web?country="
                            + country + "&date=" + format.format(date.getTime())));
                    collect(episodes, fresh, seen, counts);
                } catch (Exception ignored) { failed = true; break outer; }
            }
            if (count(counts, DiscoveryPolicy.NETFLIX) >= DiscoveryPolicy.LIMIT
                    && count(counts, DiscoveryPolicy.PRIME) >= DiscoveryPolicy.LIMIT) break;
        }
        // With no usable cache, a successful part of the week is still real catalogue data.
        // Retain a valid old cache on partial failure rather than replacing it with fewer rows.
        if (!failed || !fresh.isEmpty() && !DiscoveryPolicy.usableCache(fetchedAt, now)) {
            synchronized (LOCK) { cached = fresh; fetchedAt = now; }
            partialCache = failed;
            context.getSharedPreferences("public-discovery", 0).edit().putLong("fetched_at", now)
                    .putBoolean("partial", partialCache).putString("rows", encode(fresh).toString()).apply();
            synchronized (Discovery.class) { retryAt = now + (failed ? DiscoveryPolicy.BACKOFF_MS : DiscoveryPolicy.CACHE_MS); }
            changed();
        } else {
            // A partial week must not silently replace a valid cache with fewer/empty items.
            synchronized (Discovery.class) { retryAt = now + DiscoveryPolicy.BACKOFF_MS; }
            synchronized (LOCK) { if (!DiscoveryPolicy.usableCache(fetchedAt, now)) cached = Collections.emptyList(); }
            changed();
        }
    }

    private static int count(Map<String, Integer> counts, String service) {
        Integer n = counts.get(service); return n == null ? 0 : n;
    }

    private static void collect(JSONArray episodes, List<Entry> result, Set<String> seen, Map<String, Integer> counts) {
        for (int i = 0; i < episodes.length(); i++) {
            JSONObject episode = episodes.optJSONObject(i);
            JSONObject embedded = episode == null ? null : episode.optJSONObject("_embedded");
            JSONObject show = embedded == null ? null : embedded.optJSONObject("show");
            if (show == null && episode != null) show = episode.optJSONObject("show");
            if (show == null) continue;
            JSONObject channel = show.optJSONObject("webChannel");
            String service = channel == null ? null : DiscoveryPolicy.service(channel.optString("name"));
            if (service == null || count(counts, service) >= DiscoveryPolicy.LIMIT) continue;
            int id = show.optInt("id", -1);
            String title = show.optString("name", "").trim();
            if (id <= 0 || title.isEmpty() || title.length() > 250 || !seen.add(service + ":" + id)) continue;
            Entry e = new Entry(); e.id = id; e.service = service; e.title = title;
            JSONObject image = show.optJSONObject("image");
            String art = image == null ? "" : image.optString("original", image.optString("medium", ""));
            e.art = DiscoveryPolicy.image(art) ? art : "";
            String official = show.optString("officialSite", "");
            e.official = DiscoveryPolicy.officialSite(service, official) ? official : "";
            String source = show.optString("url", "");
            e.source = DiscoveryPolicy.source(source) ? source : "https://www.tvmaze.com/shows/" + id;
            result.add(e); counts.put(service, count(counts, service) + 1);
        }
    }

    private static String download(String address) throws IOException {
        HttpURLConnection connection = (HttpURLConnection) new URL(address).openConnection();
        connection.setConnectTimeout(6000); connection.setReadTimeout(6000);
        connection.setInstanceFollowRedirects(false);
        connection.setRequestProperty("User-Agent", "YashTVLauncher/1.0 (TVmaze public discovery)");
        connection.setRequestProperty("Accept", "application/json");
        try {
            if (connection.getResponseCode() != 200) throw new IOException("Public discovery unavailable");
            if (connection.getContentLengthLong() > 3_000_000) throw new IOException("Schedule too large");
            try (InputStream in = connection.getInputStream(); ByteArrayOutputStream out = new ByteArrayOutputStream()) {
                byte[] b = new byte[8192]; int n;
                while ((n = in.read(b)) != -1) {
                    if (out.size() + n > 3_000_000) throw new IOException("Schedule too large");
                    out.write(b, 0, n);
                }
                return new String(out.toByteArray(), StandardCharsets.UTF_8);
            }
        } finally { connection.disconnect(); }
    }

    private static List<Entry> decode(JSONArray rows) {
        List<Entry> result = new ArrayList<>(); Set<String> seen = new HashSet<>();
        Map<String, Integer> counts = new LinkedHashMap<>();
        for (int i = 0; i < Math.min(rows.length(), 2 * DiscoveryPolicy.LIMIT); i++) {
            JSONObject o = rows.optJSONObject(i); if (o == null) continue;
            String service = o.optString("service");
            if (!DiscoveryPolicy.NETFLIX.equals(service) && !DiscoveryPolicy.PRIME.equals(service)) continue;
            Entry e = new Entry(); e.service = service; e.id = o.optInt("id"); e.title = o.optString("title").trim();
            if (e.id <= 0 || e.title.isEmpty() || e.title.length() > 250 || count(counts, service) >= DiscoveryPolicy.LIMIT
                    || !seen.add(service + ":" + e.id)) continue;
            e.art = DiscoveryPolicy.image(o.optString("art")) ? o.optString("art") : "";
            e.official = DiscoveryPolicy.officialSite(service, o.optString("official")) ? o.optString("official") : "";
            e.source = DiscoveryPolicy.source(o.optString("source")) ? o.optString("source") : "https://www.tvmaze.com/shows/" + e.id;
            result.add(e); counts.put(service, count(counts, service) + 1);
        }
        return result;
    }

    private static JSONArray encode(List<Entry> rows) {
        JSONArray array = new JSONArray();
        for (Entry e : rows) try {
            array.put(new JSONObject().put("id", e.id).put("service", e.service).put("title", e.title)
                    .put("art", e.art).put("official", e.official).put("source", e.source));
        } catch (Exception ignored) { }
        return array;
    }

    private static boolean installed(Context c, String name) {
        try { return c.getPackageManager().getApplicationInfo(name, 0).enabled; }
        catch (Exception ignored) { return false; }
    }

    /** Original tvOS grouped-item contract. Call after PlaybackHistory.merge, never instead of it. */
    @SuppressWarnings({"rawtypes", "unchecked"})
    public static Map merge(Context c, Map providerAndHistory) {
        init(c);
        Map result = new LinkedHashMap();
        if (providerAndHistory != null) result.putAll(providerAndHistory);
        List<Entry> snapshot;
        synchronized (LOCK) {
            if (!DiscoveryPolicy.usableCache(fetchedAt, System.currentTimeMillis())) return result;
            snapshot = new ArrayList<>(cached);
        }
        Map<String, String> targets = new LinkedHashMap<>();
        if (DiscoveryPolicy.mayFill(result, NETFLIX_APP) && installed(c, NETFLIX_APP)) targets.put(DiscoveryPolicy.NETFLIX, NETFLIX_APP);
        if (DiscoveryPolicy.mayFill(result, PRIME_APP, PRIME_ANDROID)) {
            if (installed(c, PRIME_APP)) targets.put(DiscoveryPolicy.PRIME, PRIME_APP);
            else if (installed(c, PRIME_ANDROID)) targets.put(DiscoveryPolicy.PRIME, PRIME_ANDROID);
        }
        Map<String, List> additions = new LinkedHashMap<>();
        for (Entry e : snapshot) {
            String app = targets.get(e.service); if (app == null) continue;
            List items = additions.get(app); if (items == null) { items = new ArrayList(); additions.put(app, items); }
            if (items.size() >= DiscoveryPolicy.LIMIT) continue;
            try {
                Class<?> type = Class.forName("com.sid.tvos.WatchNext$Item");
                Constructor<?> ctor = type.getDeclaredConstructor(); ctor.setAccessible(true); Object item = ctor.newInstance();
                set(item, "title", e.title); set(item, "art", e.art.isEmpty() ? null : e.art);
                set(item, "section", "Discover · TVmaze");
                set(item, "subtitle", (DiscoveryPolicy.NETFLIX.equals(e.service) ? "Netflix" : "Prime Video") + " · Availability may vary");
                set(item, "progress", -1f);
                set(item, "intent", new Intent(c, DiscoveryOpenActivity.class).setPackage(c.getPackageName())
                        .putExtra("discovery_service", e.service).putExtra("discovery_app", app)
                        .putExtra("discovery_title", e.title).putExtra("discovery_official", e.official)
                        .putExtra("discovery_source", e.source));
                items.add(item);
            } catch (Exception ignored) { /* Optional discovery cannot break the original Home UI. */ }
        }
        for (Map.Entry<String, List> row : additions.entrySet()) if (!row.getValue().isEmpty()) result.put(row.getKey(), row.getValue());
        return result;
    }

    private static void set(Object item, String name, Object value) throws Exception {
        Field f = item.getClass().getDeclaredField(name); f.setAccessible(true); f.set(item, value);
    }

    private static void changed() {
        MAIN.post(() -> {
            try {
                Class<?> c = Class.forName("com.sid.tvos.WatchNext");
                Method m = c.getDeclaredMethod("invalidate"); m.setAccessible(true); m.invoke(null);
            } catch (Exception ignored) { }
            try {
                Class<?> c = Class.forName("com.sid.tvos.NotifListener");
                Field f = c.getDeclaredField("onChange"); f.setAccessible(true);
                Object callback = f.get(null); if (callback instanceof Runnable) ((Runnable) callback).run();
            } catch (Exception ignored) { }
        });
    }
}
