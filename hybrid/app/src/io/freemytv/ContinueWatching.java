package io.freemytv;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.database.Cursor;
import android.media.tv.TvContract;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.Html;
import android.widget.Toast;
import org.json.*;
import java.io.*;
import java.net.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.regex.*;

/** Observed playback only: explicit Netflix Continue Watching entries and Prime sessions. */
final class ContinueWatching {
    static final String NETFLIX = "com.netflix.ninja", PRIME = "com.amazon.firebat";
    static final class Item {
        String key, service, title, subtitle, id, pkg, notificationKey, artSource, launchUri, providerArtUri;
        long position, duration, updated;
        volatile PendingIntent action;
        volatile Bitmap art;
        /** Decoded usable pixels (never an enlarged icon), plus original provider dimensions. */
        volatile int artWidth, artHeight, sourceWidth, sourceHeight;
        volatile boolean actionAvailable;
    }
    private static Context context;
    private static final ExecutorService IO = Executors.newSingleThreadExecutor();
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static final List<Item> netflix = new ArrayList<>(), prime = new ArrayList<>();
    private static volatile List<Item> visible = Collections.emptyList();
    private static volatile Runnable listener;
    private static final Map<String, List<Item>> providerRows = new ConcurrentHashMap<>();
    private static final Map<String, Long> providerQueries = new ConcurrentHashMap<>();
    private static boolean initialized;
    private static final Set<String> requested = Collections.synchronizedSet(new HashSet<>());
    private static final LinkedHashMap<String, Backdrop> backgrounds = new LinkedHashMap<>(4, .75f, true);
    private static final LinkedHashMap<String, Item> artwork = new LinkedHashMap<>(9, .75f, true);
    private static final Set<String> missingArt = Collections.synchronizedSet(new HashSet<>());

    static synchronized void init(Context c) {
        context = c.getApplicationContext();
        if (initialized) return;
        initialized = true;
        IO.execute(() -> { restore("netflix", netflix, NETFLIX, "Netflix");restore("prime", prime, PRIME, "Prime Video");publish(); });
    }
    static List<Item> items() { return visible; }
    static List<Item> forApp(String pkg) {
        List<Item> result = new ArrayList<>();
        if (pkg == null || context == null) return Collections.emptyList();
        for (Item it : visible) if (Objects.equals(pkg, it.pkg)) result.add(it);
        List<Item> supplied = providerRows.get(pkg);
        if (supplied != null) for (Item it : supplied) {
            boolean duplicate = false;
            for (Item existing : result) if (existing.title.trim().equalsIgnoreCase(it.title.trim())) { duplicate = true;break; }
            if (!duplicate && WatchHistoryPolicy.keep(it.position, it.duration, it.updated, System.currentTimeMillis())) result.add(it);
        }
        result.sort((a, b) -> Long.compare(b.updated, a.updated));
        if (result.size() > WatchHistoryPolicy.MAX_PER_APP) result = new ArrayList<>(result.subList(0, WatchHistoryPolicy.MAX_PER_APP));
        long now = System.currentTimeMillis();Long queried = providerQueries.get(pkg);
        if ((queried == null || now - queried > 60_000) && requested.add("provider:" + pkg)) {
            providerQueries.put(pkg, now);
            IO.execute(() -> { try { queryWatchNext(pkg); } finally { requested.remove("provider:" + pkg); } });
        }
        // Decode on the worker, never during rendering. Only nearby history is resident.
        for (int n = 0; n < Math.min(4, result.size()); n++) loadArt(result.get(n));
        return Collections.unmodifiableList(result);
    }
    /** Watch Next CONTINUE is explicit playback history; preview channels and recommendations are never queried. */
    private static void queryWatchNext(String pkg) {
        List<Item> rows = new ArrayList<>();
        String[] columns = {"_id", "package_name", TvContract.WatchNextPrograms.COLUMN_TITLE,
                TvContract.WatchNextPrograms.COLUMN_LAST_PLAYBACK_POSITION_MILLIS, TvContract.WatchNextPrograms.COLUMN_DURATION_MILLIS,
                TvContract.WatchNextPrograms.COLUMN_LAST_ENGAGEMENT_TIME_UTC_MILLIS, TvContract.WatchNextPrograms.COLUMN_POSTER_ART_URI,
                TvContract.WatchNextPrograms.COLUMN_INTENT_URI, TvContract.WatchNextPrograms.COLUMN_WATCH_NEXT_TYPE};
        try (Cursor cursor = context.getContentResolver().query(TvContract.WatchNextPrograms.CONTENT_URI, columns,
                null, null, null)) {
            while (cursor != null && cursor.moveToNext() && rows.size() < WatchHistoryPolicy.MAX_PER_APP) {
                if (!pkg.equals(cursor.getString(1)) || cursor.getInt(8) != TvContract.WatchNextPrograms.WATCH_NEXT_TYPE_CONTINUE) continue;
                Item it = new Item();it.id = cursor.getString(0);it.pkg = pkg;it.key = "watchnext:" + pkg + ":" + it.id;
                it.title = cursor.getString(2);if (it.title == null || it.title.trim().isEmpty()) continue;
                it.position = cursor.getLong(3);it.duration = cursor.getLong(4);it.updated = cursor.getLong(5);
                if (!WatchHistoryPolicy.keep(it.position, it.duration, it.updated, System.currentTimeMillis())) continue;
                it.providerArtUri = cursor.getString(6);it.launchUri = cursor.getString(7);
                if (it.launchUri == null || it.launchUri.trim().isEmpty()) continue;
                it.service = NETFLIX.equals(pkg) ? "Netflix" : PRIME.equals(pkg) ? "Prime Video" : appLabel(pkg);
                it.subtitle = it.service + " · Continue watching";it.artSource = "App-published Watch Next artwork";it.actionAvailable = true;
                List<Item> previous = providerRows.get(pkg);
                if (previous != null) for (Item old : previous) if (it.key.equals(old.key)) {
                    if (Objects.equals(it.providerArtUri, old.providerArtUri)) {
                        it.art = old.art;it.artWidth = old.artWidth;it.artHeight = old.artHeight;it.sourceWidth = old.sourceWidth;it.sourceHeight = old.sourceHeight;
                        if (it.art != null) attachArt(it, it.art);
                    } else { missingArt.remove(it.key);artFile(it.key).delete(); }
                    break;
                }
                rows.add(it);
            }
            List<Item> previous = providerRows.put(pkg, Collections.unmodifiableList(rows));
            if (!rows.isEmpty() || (previous != null && !previous.isEmpty())) changed();
        } catch (Exception ignored) { /* Fire OS may omit this provider or deny cross-app reads. */ }
    }
    private static String appLabel(String pkg) {
        try { return context.getPackageManager().getApplicationLabel(context.getPackageManager().getApplicationInfo(pkg, 0)).toString(); }
        catch (Exception ignored) { return pkg; }
    }
    static void listen(Runnable r) { listener = r; }
    static void unlisten(Runnable r) { if (listener == r) listener = null; }
    private static File artFile(String key) { return new File(context.getFilesDir(), "cw-" + Integer.toHexString(key.hashCode()) + ".jpg"); }

    /** Returns immediately; a new background is built once on IO and announced through listen(). */
    static Backdrop backdrop(Item it) {
        if (it == null || (it.art == null && missingArt.contains(it.key))) return null;
        String cacheKey = backgroundKey(it);
        synchronized (backgrounds) { Backdrop cached = backgrounds.get(cacheKey);if (cached != null) return cached; }
        if (!requested.add("bg:" + cacheKey)) return null;
        IO.execute(() -> {
            try {
                ensureArt(it);
                Bitmap source = it.art;
                if (source == null || source.isRecycled()) return;
                Bitmap copy = source.copy(Bitmap.Config.ARGB_8888, false);
                if (copy == null) return;
                Backdrop built = Backdrop.make(copy, true); // make owns only this private copy.
                String finishedKey = backgroundKey(it);
                synchronized (backgrounds) {
                    backgrounds.put(finishedKey, built);
                    while (backgrounds.size() > 3) backgrounds.remove(backgrounds.keySet().iterator().next());
                }
                changed();
            } catch (RuntimeException | OutOfMemoryError ignored) { AppLog.w("continue watching: artwork background unavailable"); }
            finally { requested.remove("bg:" + cacheKey); }
        });
        return null;
    }
    private static String backgroundKey(Item it) { return it.key + ":" + it.artWidth + ":" + it.artHeight + ":" + it.updated + ":" + Objects.hashCode(it.providerArtUri); }
    private static void loadArt(Item it) {
        if (it.art != null || !requested.add("art:" + it.key)) return;
        IO.execute(() -> { try { if (ensureArt(it)) changed(); } finally { requested.remove("art:" + it.key); } });
    }
    private static boolean ensureArt(Item it) {
        if (it.art != null) { artwork.get(it.key);return false; }
        if (missingArt.contains(it.key)) return false;
        Bitmap b = WatchArtwork.file(artFile(it.key));
        if (b == null && it.providerArtUri != null) try {
            int[] original = new int[2];
            if (it.providerArtUri.startsWith("content://")) b = WatchArtwork.publishedContent(context, it.providerArtUri, original);
            else if (it.providerArtUri.startsWith("https://")) b = WatchArtwork.bytes(download(it.providerArtUri, 6_000_000), original);
            if (b != null) {
                it.sourceWidth = original[0];it.sourceHeight = original[1];
                attachArt(it, b);persistArt(it);return true;
            }
        } catch (Exception ignored) {}
        if (b == null) { missingArt.add(it.key);return false; }
        attachArt(it, b);return true;
    }
    private static void attachArt(Item it, Bitmap b) {
        it.art = b;it.artWidth = b.getWidth();it.artHeight = b.getHeight();
        if (it.sourceWidth <= 0) { it.sourceWidth = it.artWidth;it.sourceHeight = it.artHeight; }
        artwork.put(it.key, it);missingArt.remove(it.key);
        // Drop references, not pixels: an in-flight Canvas may still own the previous bitmap.
        while (artwork.size() > 8) {
            Item evicted = artwork.remove(artwork.keySet().iterator().next());
            evicted.art = null;
        }
    }
    private static void persistArt(Item it) {
        if (it.art == null) return;
        attachArt(it, it.art);
        try (FileOutputStream file = new FileOutputStream(artFile(it.key))) { it.art.compress(Bitmap.CompressFormat.JPEG, 94, file); }
        catch (Exception ignored) {}
    }
    static void updateNetflix(List<Item> incoming) {
        IO.execute(() -> {
            // PendingIntents are process-local and may be revoked; bind only currently published ones.
            for (Item it : netflix) { it.action = null;it.actionAvailable = false;it.subtitle = "Netflix · Open app to continue"; }
            for (Item it : incoming) {
                it.pkg = NETFLIX;it.service = "Netflix";it.key = WatchHistoryPolicy.netflixKey(it.title);
                Item old = find(netflix, it.key);
                if (old != null) netflix.remove(old);
                if (!WatchHistoryPolicy.keep(it.position, it.duration, it.updated, System.currentTimeMillis())) {
                    discard(it);continue;
                }
                if (it.art == null && old != null) { it.art = old.art;it.artWidth = old.artWidth;it.artHeight = old.artHeight;it.sourceWidth = old.sourceWidth;it.sourceHeight = old.sourceHeight;it.artSource = old.artSource; }
                it.actionAvailable = it.action != null;
                it.subtitle = it.actionAvailable ? "Netflix · Continue watching" : "Netflix · Open app to continue";
                persistArt(it);netflix.add(it);
            }
            trim(netflix);save("netflix", netflix);publish();
        });
    }
    static void netflixDisconnected() { updateNetflix(Collections.emptyList()); }
    static void updatePrime(String id, long position, long duration) { updatePrime(id, position, duration, null, null); }
    static void updatePrime(String id, long position, long duration, String title, Bitmap sessionArt) {
        if (!validPrimeId(id) || position <= 0 || duration <= 0) return;
        IO.execute(() -> {
            Item old = find(prime, id);
            if (old != null) prime.remove(old);
            if (WatchHistoryPolicy.keep(position, duration, System.currentTimeMillis(), System.currentTimeMillis())) {
                Item it = new Item();it.key = it.id = id;it.pkg = PRIME;it.service = "Prime Video";
                it.title = title != null && !title.trim().isEmpty() ? title : old == null ? "Recently watched on Prime Video" : old.title;
                it.subtitle = "Prime Video · Watched on this TV";it.actionAvailable = true;
                it.position = position;it.duration = duration;it.updated = System.currentTimeMillis();
                if (old != null) { it.art = old.art;it.artWidth = old.artWidth;it.artHeight = old.artHeight;it.sourceWidth = old.sourceWidth;it.sourceHeight = old.sourceHeight;it.artSource = old.artSource; }
                if (sessionArt != null && (it.art == null || sessionArt.getWidth() > it.artWidth)) { attachArt(it, sessionArt);it.artSource = "Prime playback metadata"; }
                // Publish playback promptly; web metadata is optional enrichment, never invented history.
                prime.add(it);trim(prime);save("prime", prime);publish();
                if (old == null || it.artWidth < 640) enrichPrime(it);
                persistArt(it);save("prime", prime);publish();
            } else { if (old != null) discard(old);save("prime", prime);publish(); }
        });
    }
    private static void enrichPrime(Item it) {
        try {
            String html = new String(download("https://www.primevideo.com/detail/" + it.id, 3_000_000), "UTF-8");
            Matcher title = Pattern.compile("(?is)<title>(.*?)</title>").matcher(html);
            if (title.find()) {
                String value = Html.fromHtml(title.group(1), 0).toString().replaceFirst("^Prime Video:\\s*", "").trim();
                if (!value.isEmpty() && !value.toLowerCase(Locale.ROOT).contains("sign in") && value.length() < 180) it.title = value;
            }
            Matcher image = Pattern.compile("<meta[^>]+property=\"og:image\"[^>]+content=\"([^\"]+)\"").matcher(html);
            if (image.find()) {
                String url = Html.fromHtml(image.group(1), 0).toString();
                if (url.startsWith("https://m.media-amazon.com/") || url.startsWith("https://images-na.ssl-images-amazon.com/")) {
                    byte[] bytes = download(url, 6_000_000);
                    int[] original = new int[2];Bitmap b = WatchArtwork.bytes(bytes, original);
                    if (b != null && (it.art == null || b.getWidth() > it.artWidth)) {
                        attachArt(it, b);it.sourceWidth = original[0];it.sourceHeight = original[1];it.artSource = "Prime original artwork";
                    }
                }
            }
        } catch (Exception ignored) {}
    }
    static boolean validPrimeId(String id) { return id != null && id.matches("amzn1\\.dv\\.gti\\.[a-zA-Z0-9-]{1,100}"); }
    private static byte[] download(String url, int limit) throws Exception {
        HttpURLConnection c = (HttpURLConnection) new URL(url).openConnection();
        c.setConnectTimeout(8000);c.setReadTimeout(8000);c.setRequestProperty("User-Agent", "Mozilla/5.0");
        try (InputStream in = c.getInputStream(); ByteArrayOutputStream out = new ByteArrayOutputStream()) {
            byte[] b = new byte[8192];int n;
            while ((n = in.read(b)) != -1) { if (out.size() + n > limit) throw new IOException("Image/page too large");out.write(b, 0, n); }
            return out.toByteArray();
        } finally { c.disconnect(); }
    }
    private static Item find(List<Item> rows, String key) { for (Item it : rows) if (key.equals(it.key)) return it;return null; }
    private static void discard(Item it) { artwork.remove(it.key);missingArt.remove(it.key);artFile(it.key).delete(); }
    private static void trim(List<Item> rows) {
        long now = System.currentTimeMillis();
        for (Iterator<Item> i = rows.iterator(); i.hasNext();) { Item it = i.next();if (!WatchHistoryPolicy.keep(it.position, it.duration, it.updated, now)) { i.remove();discard(it); } }
        rows.sort((a, b) -> Long.compare(b.updated, a.updated));
        while (rows.size() > WatchHistoryPolicy.MAX_PER_APP) discard(rows.remove(rows.size() - 1));
    }
    private static void restore(String name, List<Item> rows, String pkg, String service) {
        try {
            JSONArray saved = new JSONArray(context.getSharedPreferences("continue-watching", 0).getString(name, "[]"));
            for (int n = 0; n < saved.length(); n++) {
                JSONObject o = saved.getJSONObject(n);Item it = new Item();
                it.id = o.optString("id", "");if (PRIME.equals(pkg) && !validPrimeId(it.id)) continue;
                it.title = o.optString("title", "");if (it.title.trim().isEmpty()) continue;
                it.key = PRIME.equals(pkg) ? it.id : WatchHistoryPolicy.netflixKey(it.title);it.pkg = pkg;it.service = service;
                it.position = o.optLong("position");it.duration = o.optLong("duration");it.updated = o.optLong("updated");
                it.subtitle = PRIME.equals(pkg) ? "Prime Video · Watched on this TV" : "Netflix · Open app to continue";
                it.actionAvailable = PRIME.equals(pkg);it.artWidth = o.optInt("artWidth");it.artHeight = o.optInt("artHeight");
                it.sourceWidth = o.optInt("sourceWidth");it.sourceHeight = o.optInt("sourceHeight");it.artSource = o.optString("artSource", "Saved provider artwork");
                if (WatchHistoryPolicy.keep(it.position, it.duration, it.updated, System.currentTimeMillis())) rows.add(it);
            }
            trim(rows);
        } catch (Exception ignored) {}
    }
    private static void save(String name, List<Item> rows) {
        try {
            JSONArray saved = new JSONArray();
            for (Item it : rows) saved.put(new JSONObject().put("id", it.id).put("title", it.title).put("position", it.position).put("duration", it.duration).put("updated", it.updated)
                    .put("artWidth", it.artWidth).put("artHeight", it.artHeight).put("sourceWidth", it.sourceWidth).put("sourceHeight", it.sourceHeight).put("artSource", it.artSource));
            context.getSharedPreferences("continue-watching", 0).edit().putString(name, saved.toString()).apply();
        } catch (Exception ignored) {}
    }
    private static void publish() {
        trim(netflix);trim(prime);
        List<Item> next = new ArrayList<>(netflix);next.addAll(prime);next.sort((a, b) -> Long.compare(b.updated, a.updated));
        visible = Collections.unmodifiableList(next);changed();
    }
    private static void changed() { MAIN.post(() -> { Runnable r = listener;if (r != null) r.run(); }); }
    private static void openNetflix(Context c, Item it) {
        Intent app = c.getPackageManager().getLeanbackLaunchIntentForPackage(NETFLIX);
        if (app == null) app = c.getPackageManager().getLaunchIntentForPackage(NETFLIX);
        if (app == null) throw new IllegalStateException();
        app.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);c.startActivity(app);
        Toast.makeText(c, "Choose “" + it.title + "” in Netflix to continue.", Toast.LENGTH_LONG).show();
    }
    static void open(Context c, Item it) {
        try {
            if (it.launchUri != null) {
                Intent intent = Intent.parseUri(it.launchUri, Intent.URI_INTENT_SCHEME);
                intent.setSelector(null);intent.setComponent(null);intent.setPackage(it.pkg);
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);c.startActivity(intent);return;
            }
            if (NETFLIX.equals(it.pkg)) {
                if (it.action != null) try { it.action.send();return; }
                catch (PendingIntent.CanceledException expired) {
                    it.action = null;it.actionAvailable = false;it.subtitle = "Netflix · Open app to continue";changed();
                }
                openNetflix(c, it);
            } else {
                Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse("https://app.primevideo.com/detail?gti=" + it.id));
                intent.setPackage(PRIME);intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);c.startActivity(intent);
            }
        } catch (Exception e) {
            if (NETFLIX.equals(it.pkg)) { it.action = null;it.actionAvailable = false;it.subtitle = "Netflix · Open app to continue";changed(); }
            Toast.makeText(c, "This title link is no longer available. Open " + it.service + " to continue.", Toast.LENGTH_LONG).show();
        }
    }
}
