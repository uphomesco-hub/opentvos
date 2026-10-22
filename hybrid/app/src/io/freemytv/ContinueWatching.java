package io.freemytv;

import android.app.PendingIntent;
import android.content.*;
import android.graphics.Bitmap;
import android.database.Cursor;
import android.media.tv.TvContract;
import android.net.Uri;
import android.os.*;
import android.widget.Toast;
import org.json.*;
import java.io.*;
import java.net.*;
import java.util.*;
import java.util.concurrent.*;

/** Local archive of actual playback shared by apps. No catalogue recommendations become history. */
final class ContinueWatching {
    static final String NETFLIX = "com.netflix.ninja", PRIME = "com.amazon.firebat";
    static final class Item {
        String key, service, title, subtitle, id, pkg, notificationKey, artSource, launchUri, providerArtUri;
        long position, duration, updated, artChecked;
        int artVersion;
        volatile PendingIntent action;
        volatile Bitmap art, softArt;
        volatile int artWidth, artHeight, sourceWidth, sourceHeight;
        volatile boolean actionAvailable;
    }
    private static Context context;
    private static final ExecutorService IO = Executors.newSingleThreadExecutor();
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    // Metadata remains on disk without a count/age cutoff. Only eight images and three backgrounds are resident.
    private static final List<Item> history = new ArrayList<>();
    private static volatile List<Item> visible = Collections.emptyList();
    private static volatile Runnable listener;
    private static final Map<String, Long> providerQueries = new ConcurrentHashMap<>();
    private static boolean initialized;
    private static final Set<String> requested = Collections.synchronizedSet(new HashSet<>());
    private static final LinkedHashMap<String, Backdrop> backgrounds = new LinkedHashMap<>(4, .75f, true);
    private static final LinkedHashMap<String, Item> artwork = new LinkedHashMap<>(9, .75f, true);

    static synchronized void init(Context c) {
        context = c.getApplicationContext();
        if (initialized) return;
        initialized = true;
        IO.execute(() -> {
            android.content.SharedPreferences p = context.getSharedPreferences("continue-watching", 0);
            if (p.contains("archive-v2")) restore(p.getString("archive-v2", "[]"), null, null);
            else {
                // Keep the old preference keys untouched so an older APK can still roll back.
                restore(p.getString("netflix", "[]"), NETFLIX, "Netflix");
                restore(p.getString("prime", "[]"), PRIME, "Prime Video");
                save();
            }
            publish();
        });
    }
    static List<Item> items() { return visible; }
    static List<Item> forApp(String pkg) {
        if (pkg == null || context == null) return Collections.emptyList();
        List<Item> result = new ArrayList<>();
        for (Item it : visible) if (pkg.equals(it.pkg)) result.add(it);
        long now = System.currentTimeMillis();Long queried = providerQueries.get(pkg);
        if (!pkg.isEmpty() && (queried == null || now - queried > 60_000) && requested.add("provider:" + pkg)) {
            providerQueries.put(pkg, now);
            IO.execute(() -> { try { queryWatchNext(pkg); } finally { requested.remove("provider:" + pkg); } });
        }
        return Collections.unmodifiableList(result);
    }
    static void prepare(List<Item> rows, int index) {
        for (int i = Math.max(0, index - 1); i < Math.min(rows.size(), index + 2); i++) loadArt(rows.get(i));
    }
    /** CONTINUE entries prove playback; NEW/NEXT/WATCHLIST and preview recommendations do not. */
    private static void queryWatchNext(String pkg) {
        String[] columns = {"_id", "package_name", TvContract.WatchNextPrograms.COLUMN_TITLE,
                TvContract.WatchNextPrograms.COLUMN_LAST_PLAYBACK_POSITION_MILLIS, TvContract.WatchNextPrograms.COLUMN_DURATION_MILLIS,
                TvContract.WatchNextPrograms.COLUMN_LAST_ENGAGEMENT_TIME_UTC_MILLIS, TvContract.WatchNextPrograms.COLUMN_POSTER_ART_URI,
                TvContract.WatchNextPrograms.COLUMN_INTENT_URI, TvContract.WatchNextPrograms.COLUMN_WATCH_NEXT_TYPE};
        boolean changed = false;
        try (Cursor cursor = context.getContentResolver().query(TvContract.WatchNextPrograms.CONTENT_URI, columns, null, null, null)) {
            while (cursor != null && cursor.moveToNext()) {
                if (!pkg.equals(cursor.getString(1)) || cursor.getInt(8) != TvContract.WatchNextPrograms.WATCH_NEXT_TYPE_CONTINUE) continue;
                Item it = new Item();it.id = cursor.getString(0);it.pkg = pkg;it.title = cursor.getString(2);
                if (it.title == null || it.title.trim().isEmpty()) continue;
                it.key = historyKey(pkg, it.title);it.position = cursor.getLong(3);it.duration = cursor.getLong(4);it.updated = cursor.getLong(5);
                if (!WatchHistoryPolicy.keep(it.position, it.duration, it.updated, System.currentTimeMillis())) continue;
                it.providerArtUri = cursor.getString(6);it.launchUri = cursor.getString(7);it.service = appLabel(pkg);
                it.artSource = "App-published Watch Next artwork";
                Item old = find(it.key);
                if (old != null && old.updated >= it.updated) continue;
                merge(it);changed = true;
            }
        } catch (Exception ignored) { /* Fire OS may omit the provider or deny cross-app reads. */ }
        if (changed) { save();publish(); }
    }
    private static String historyKey(String pkg, String title) {
        return NETFLIX.equals(pkg) ? WatchHistoryPolicy.netflixKey(title) : WatchHistoryPolicy.key(pkg, title);
    }
    private static String appLabel(String pkg) {
        if (NETFLIX.equals(pkg)) return "Netflix";
        if (PRIME.equals(pkg)) return "Prime Video";
        try { return context.getPackageManager().getApplicationLabel(context.getPackageManager().getApplicationInfo(pkg, 0)).toString(); }
        catch (Exception ignored) { return pkg; }
    }
    static void listen(Runnable r) { listener = r; }
    static void unlisten(Runnable r) { if (listener == r) listener = null; }
    private static File artFile(String key) { return new File(context.getFilesDir(), "cw-" + Integer.toHexString(key.hashCode()) + ".jpg"); }

    static Backdrop backdrop(Item it) {
        if (it == null) return null;
        loadArt(it);
        if (it.art == null) return null;
        String cacheKey = backgroundKey(it);
        synchronized (backgrounds) { Backdrop cached = backgrounds.get(cacheKey);if (cached != null) return cached; }
        if (!requested.add("bg:" + cacheKey)) return null;
        IO.execute(() -> {
            try {
                Bitmap source = it.art;
                if (source == null || source.isRecycled()) return;
                Bitmap copy = source.copy(Bitmap.Config.ARGB_8888, false);
                if (copy == null) return;
                Backdrop built = Backdrop.make(copy, true);
                synchronized (backgrounds) {
                    backgrounds.put(backgroundKey(it), built);
                    while (backgrounds.size() > 3) backgrounds.remove(backgrounds.keySet().iterator().next());
                }
                changed();
            } catch (RuntimeException | OutOfMemoryError ignored) { AppLog.w("watch history: background unavailable"); }
            finally { requested.remove("bg:" + cacheKey); }
        });
        return null;
    }
    private static String backgroundKey(Item it) { return it.key + ":" + it.artWidth + ":" + it.artHeight + ":" + it.artVersion + ":" + Objects.hashCode(it.providerArtUri); }
    private static boolean upgradeDue(Item it) {
        return it.artChecked <= 0 || System.currentTimeMillis() - it.artChecked > 86400_000;
    }
    private static void loadArt(Item it) {
        if ((it.art != null && !upgradeDue(it)) || !requested.add("art:" + it.key)) return;
        IO.execute(() -> {
            try { if (ensureArt(it)) { save();changed(); } }
            finally { requested.remove("art:" + it.key); }
        });
    }
    private static boolean ensureArt(Item it) {
        boolean changed = false;
        if (it.art == null) {
            Bitmap cached = WatchArtwork.file(artFile(it.key));
            if (cached != null) { attachArt(it, cached);changed = true; }
        } else artwork.get(it.key);
        if (!upgradeDue(it)) return changed;
        it.artChecked = System.currentTimeMillis();
        // Prefer the provider's full artwork URI over a session's small icon, for every app.
        if (it.providerArtUri != null && !it.providerArtUri.isEmpty()) try {
            int[] original = new int[2];Bitmap b = null;
            if (it.providerArtUri.startsWith("content://")) b = WatchArtwork.publishedContent(context, it.providerArtUri, original);
            else if (it.providerArtUri.startsWith("https://")) b = WatchArtwork.bytes(download(it.providerArtUri, 6_000_000), original);
            if (better(it, b)) {
                attachArt(it, b);it.sourceWidth = original[0];it.sourceHeight = original[1];
                it.artSource = "App-published artwork URI";changed = true;
            }
        } catch (Exception ignored) {}
        if (PRIME.equals(it.pkg) && validPrimeId(it.id) && (it.artVersion < 2 || it.artWidth < 960)) {
            if (enrichPrime(it)) changed = true;
        }
        if (changed) persistArt(it);
        return changed;
    }
    private static boolean better(Item it, Bitmap b) {
        return b != null && (it.art == null || b.getWidth() > it.artWidth
                || (b.getWidth() >= 960 && b.getHeight() > 400 && it.artWidth / (float)Math.max(1, it.artHeight) < 1.4f));
    }
    private static void attachArt(Item it, Bitmap b) {
        it.art = b;it.artWidth = b.getWidth();it.artHeight = b.getHeight();
        it.softArt = !WatchArtwork.sharpForCard(it.artWidth,it.artHeight) ? WatchArtwork.soft(b) : null;
        if (it.sourceWidth <= 0) { it.sourceWidth = it.artWidth;it.sourceHeight = it.artHeight; }
        artwork.put(it.key, it);
        while (artwork.size() > 8) {
            Item evicted = artwork.remove(artwork.keySet().iterator().next());evicted.art = null;evicted.softArt = null;
        }
    }
    private static void persistArt(Item it) {
        if (it.art == null) return;
        try (FileOutputStream file = new FileOutputStream(artFile(it.key))) { it.art.compress(Bitmap.CompressFormat.JPEG, 94, file); }
        catch (Exception ignored) {}
    }
    private static void describe(Item it) {
        it.actionAvailable = it.action != null || (it.launchUri != null && !it.launchUri.isEmpty()) || (PRIME.equals(it.pkg) && validPrimeId(it.id));
        it.subtitle = it.service + " · " + (WatchHistoryPolicy.completed(it.position, it.duration) ? "Watched" : "Watched on this TV")
                + (it.actionAvailable ? "" : " · Open app to choose title");
    }
    private static void merge(Item it) {
        Item old = find(it.key);
        if (old != null) {
            history.remove(old);
            if (it.art == null || it.artWidth < old.artWidth) {
                it.art = old.art;it.softArt = old.softArt;it.artWidth = old.artWidth;it.artHeight = old.artHeight;
                it.sourceWidth = old.sourceWidth;it.sourceHeight = old.sourceHeight;it.artSource = old.artSource;
            }
            if (it.providerArtUri == null) it.providerArtUri = old.providerArtUri;
            if (it.launchUri == null) it.launchUri = old.launchUri;
            if (it.action == null) it.action = old.action;
            it.artVersion = old.artVersion;it.artChecked = Objects.equals(it.providerArtUri, old.providerArtUri) ? old.artChecked : 0;
        }
        describe(it);history.add(it);
        if (it.art != null) { attachArt(it, it.art);persistArt(it); }
    }
    static void updateNetflix(List<Item> incoming) {
        IO.execute(() -> {
            for (Item it : history) if (NETFLIX.equals(it.pkg)) { it.action = null;describe(it); }
            for (Item it : incoming) {
                it.pkg = NETFLIX;it.service = "Netflix";it.key = WatchHistoryPolicy.netflixKey(it.title);
                if (WatchHistoryPolicy.keep(it.position, it.duration, it.updated, System.currentTimeMillis())) merge(it);
            }
            save();publish();
        });
    }
    static void netflixDisconnected() { updateNetflix(Collections.emptyList()); }
    static void updatePrime(String id, long position, long duration) { updatePrime(id, position, duration, null, null); }
    static void updatePrime(String id, long position, long duration, String title, Bitmap sessionArt) {
        updatePlayback(PRIME, id, position, duration, title, sessionArt, null, null);
    }
    static void updatePlayback(String pkg, String id, long position, long duration, String title, Bitmap sessionArt, String artUri, String launchUri) {
        if (position <= 0 || duration <= 0 || title == null || title.trim().isEmpty()) return;
        IO.execute(() -> {
            Item it = new Item();it.pkg = pkg;it.id = id;it.title = title;it.service = appLabel(pkg);
            it.key = PRIME.equals(pkg) && validPrimeId(id) ? id : historyKey(pkg, title);
            it.position = position;it.duration = duration;it.updated = System.currentTimeMillis();
            it.providerArtUri = artUri;it.launchUri = launchUri;it.art = sessionArt;
            if (sessionArt != null) { it.artWidth = sessionArt.getWidth();it.artHeight = sessionArt.getHeight();it.artSource = "App playback metadata"; }
            merge(it);save();publish();loadArt(it);
        });
    }
    private static boolean enrichPrime(Item it) {
        try {
            String html = new String(download("https://www.primevideo.com/detail/" + it.id, 3_000_000), "UTF-8");
            String url = PrimeArtwork.hero(html);
            if (url == null) return false;
            int[] original = new int[2];Bitmap b = WatchArtwork.bytes(download(url, 6_000_000), original);
            if (b != null && b.getWidth() >= 960 && b.getWidth() / (float)b.getHeight() >= 1.4f) {
                attachArt(it, b);it.sourceWidth = original[0];it.sourceHeight = original[1];
                it.artSource = "Prime public landscape hero";it.artVersion = 2;return true;
            }
        } catch (Exception ignored) {}
        return false;
    }
    static boolean validPrimeId(String id) { return id != null && id.matches("amzn1\\.dv\\.gti\\.[a-zA-Z0-9-]{1,100}"); }
    private static byte[] download(String url, int limit) throws Exception {
        for (int redirects = 0; redirects < 4; redirects++) {
            URL target = new URL(url);if (!"https".equals(target.getProtocol()) || target.getUserInfo() != null) throw new IOException("HTTPS required");
            HttpURLConnection c = (HttpURLConnection) target.openConnection();c.setInstanceFollowRedirects(false);
            c.setConnectTimeout(8000);c.setReadTimeout(8000);c.setRequestProperty("User-Agent", "Mozilla/5.0");
            try {
                int status = c.getResponseCode();
                if (status >= 300 && status < 400) { url = new URL(target, c.getHeaderField("Location")).toString();continue; }
                if (status != 200) throw new IOException("Artwork unavailable");
                try (InputStream in = c.getInputStream();ByteArrayOutputStream out = new ByteArrayOutputStream()) {
                    byte[] b = new byte[8192];int n;
                    while ((n = in.read(b)) != -1) { if (out.size() + n > limit) throw new IOException("Image/page too large");out.write(b, 0, n); }
                    return out.toByteArray();
                }
            } finally { c.disconnect(); }
        }
        throw new IOException("Too many redirects");
    }
    private static Item find(String key) { for (Item it : history) if (key.equals(it.key)) return it;return null; }
    private static void restore(String json, String legacyPkg, String legacyService) {
        try {
            JSONArray saved = new JSONArray(json);
            for (int n = 0; n < saved.length(); n++) {
                JSONObject o = saved.getJSONObject(n);Item it = new Item();
                it.pkg = legacyPkg == null ? o.optString("pkg", "") : legacyPkg;
                it.title = o.optString("title", "");if (it.pkg.isEmpty() || it.title.trim().isEmpty()) continue;
                it.id = o.optString("id", "");it.service = legacyService == null ? appLabel(it.pkg) : legacyService;
                it.key = PRIME.equals(it.pkg) && validPrimeId(it.id) ? it.id : historyKey(it.pkg, it.title);
                it.position = o.optLong("position");it.duration = o.optLong("duration");it.updated = o.optLong("updated");
                if (!WatchHistoryPolicy.keep(it.position, it.duration, it.updated, System.currentTimeMillis())) continue;
                it.artWidth = o.optInt("artWidth");it.artHeight = o.optInt("artHeight");
                it.sourceWidth = o.optInt("sourceWidth");it.sourceHeight = o.optInt("sourceHeight");
                it.artSource = o.optString("artSource", "Saved provider artwork");it.artVersion = o.optInt("artVersion");it.artChecked = o.optLong("artChecked");
                it.providerArtUri = o.optString("providerArtUri", "");it.launchUri = o.optString("launchUri", "");
                if (it.launchUri.isEmpty()) it.launchUri = null;
                describe(it);if (find(it.key) == null) history.add(it);
            }
        } catch (Exception ignored) {}
    }
    private static void save() {
        try {
            JSONArray saved = new JSONArray();
            for (Item it : history) saved.put(new JSONObject().put("pkg", it.pkg).put("id", it.id).put("title", it.title).put("position", it.position).put("duration", it.duration).put("updated", it.updated)
                    .put("artWidth", it.artWidth).put("artHeight", it.artHeight).put("sourceWidth", it.sourceWidth).put("sourceHeight", it.sourceHeight).put("artSource", it.artSource)
                    .put("artVersion", it.artVersion).put("artChecked", it.artChecked).put("providerArtUri", it.providerArtUri).put("launchUri", it.launchUri));
            // This IO worker may be killed after Home. Commit makes the observed archive durable before publish.
            context.getSharedPreferences("continue-watching", 0).edit().putString("archive-v2", saved.toString()).commit();
            // The Android 11 dream runs in another process. Publish an atomic snapshot, avoiding stale
            // cross-process SharedPreferences caches when it opens again after new playback.
            android.util.AtomicFile snapshot = new android.util.AtomicFile(new File(context.getFilesDir(), "watch-history.json"));
            FileOutputStream out = null;
            try { out = snapshot.startWrite();out.write(saved.toString().getBytes("UTF-8"));snapshot.finishWrite(out); }
            catch (Exception e) { if (out != null) snapshot.failWrite(out); }
        } catch (Exception ignored) {}
    }
    private static void publish() {
        List<Item> next = new ArrayList<>(history);next.sort((a, b) -> Long.compare(b.updated, a.updated));
        visible = Collections.unmodifiableList(next);changed();
    }
    private static void changed() { MAIN.post(() -> { Runnable r = listener;if (r != null) r.run(); }); }
    private static void openApp(Context c, Item it) {
        Intent app = c.getPackageManager().getLeanbackLaunchIntentForPackage(it.pkg);
        if (app == null) app = c.getPackageManager().getLaunchIntentForPackage(it.pkg);
        if (app == null) throw new IllegalStateException();
        app.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);c.startActivity(app);
        Toast.makeText(c, "Choose “" + it.title + "” in " + it.service + ".", Toast.LENGTH_LONG).show();
    }
    static void open(Context c, Item it) {
        try {
            if (it.launchUri != null && !it.launchUri.isEmpty()) try {
                Intent intent = Intent.parseUri(it.launchUri, Intent.URI_INTENT_SCHEME);
                intent.setSelector(null);intent.setComponent(null);intent.setPackage(it.pkg);
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);c.startActivity(intent);return;
            } catch (Exception expired) { /* Open this item's own app if its link has expired. */ }
            if (it.action != null) try { it.action.send();return; }
            catch (PendingIntent.CanceledException expired) { it.action = null;describe(it);changed(); }
            if (PRIME.equals(it.pkg) && validPrimeId(it.id)) try {
                Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse("https://app.primevideo.com/detail?gti=" + it.id));
                intent.setPackage(PRIME);intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);c.startActivity(intent);return;
            } catch (Exception expired) {}
            openApp(c, it);
        } catch (Exception e) { Toast.makeText(c, "Open " + it.service + " to choose this title.", Toast.LENGTH_LONG).show(); }
    }
}
