package io.freemytv;

import android.app.Notification;
import android.content.ComponentName;
import android.graphics.*;
import android.graphics.drawable.*;
import android.media.MediaMetadata;
import android.media.session.*;
import android.net.Uri;
import android.os.*;
import android.service.notification.*;
import java.io.InputStream;
import java.util.*;
import java.util.concurrent.*;

/** Notification access observes explicit Netflix history and Prime playback; no recommendation ingestion. */
public final class ContinueWatchingService extends NotificationListenerService {
    private final Handler main = new Handler(Looper.getMainLooper());
    private final ExecutorService io = Executors.newSingleThreadExecutor();
    private final Map<MediaController, MediaController.Callback> controllers = new HashMap<>();
    private MediaSessionManager sessions;
    private final MediaSessionManager.OnActiveSessionsChangedListener changed = this::observe;
    private long lastCapture;
    private String lastId;
    private final Runnable poll = new Runnable() {
        public void run() { for (MediaController c : new ArrayList<>(controllers.keySet())) capture(c);main.postDelayed(this, 60_000); }
    };
    @Override public void onListenerConnected() {
        ContinueWatching.init(this);readNetflix();
        try {
            sessions = (MediaSessionManager) getSystemService(MEDIA_SESSION_SERVICE);
            ComponentName component = new ComponentName(this, ContinueWatchingService.class);
            sessions.addOnActiveSessionsChangedListener(changed, component, main);
            observe(sessions.getActiveSessions(component));main.post(poll);
        } catch (Exception e) { AppLog.w("continue watching: media sessions unavailable"); }
    }
    @Override public void onListenerDisconnected() { ContinueWatching.netflixDisconnected();clean(); }
    @Override public void onDestroy() { ContinueWatching.netflixDisconnected();clean();io.shutdown();super.onDestroy(); }
    private void clean() {
        main.removeCallbacks(poll);
        if (sessions != null) sessions.removeOnActiveSessionsChangedListener(changed);
        for (Map.Entry<MediaController, MediaController.Callback> e : controllers.entrySet()) e.getKey().unregisterCallback(e.getValue());
        controllers.clear();
    }
    @Override public void onNotificationPosted(StatusBarNotification n) { if ("com.netflix.ninja".equals(n.getPackageName())) readNetflix(); }
    @Override public void onNotificationRemoved(StatusBarNotification n) { if ("com.netflix.ninja".equals(n.getPackageName())) readNetflix(); }
    private void readNetflix() {
        try {
            StatusBarNotification[] active = getActiveNotifications();
            final StatusBarNotification[] notifications = active == null ? new StatusBarNotification[0] : active;
            io.execute(() -> {
                List<ContinueWatching.Item> rows = new ArrayList<>();
                for (StatusBarNotification sbn : notifications) {
                    if (!"com.netflix.ninja".equals(sbn.getPackageName())) continue;
                    Notification n = sbn.getNotification();
                    String group = String.valueOf(n.extras.getCharSequence(Notification.EXTRA_TITLE, ""));
                    // Netflix explicitly labels this entry; ordinary recommendations never become watch history.
                    if (!group.toLowerCase(Locale.ROOT).startsWith("continue watching") || n.contentIntent == null) continue;
                    ContinueWatching.Item it = new ContinueWatching.Item();it.notificationKey = sbn.getKey();it.service = "Netflix";it.pkg = ContinueWatching.NETFLIX;
                    it.title = String.valueOf(n.extras.getCharSequence(Notification.EXTRA_TEXT, ""));
                    if (it.title.trim().isEmpty()) continue;
                    it.subtitle = "Netflix · " + group;it.action = n.contentIntent;it.updated = sbn.getPostTime();
                    it.position = n.extras.getInt(Notification.EXTRA_PROGRESS, 0) * 1000L;
                    it.duration = n.extras.getInt(Notification.EXTRA_PROGRESS_MAX, 0) * 1000L;
                    // Netflix's original background is materially sharper than its notification icon.
                    int[] original = new int[2];
                    it.art = WatchArtwork.content(this, n.extras.getString("android.backgroundImageUri"), original);
                    it.artSource = "Netflix published background";
                    if (it.art == null) try {
                        Icon icon = n.getLargeIcon();Drawable d = icon == null ? null : icon.loadDrawable(this);
                        it.art = WatchArtwork.drawable(d, original);it.artSource = "Netflix notification icon";
                    } catch (Exception ignored) {}
                    if (it.art != null) {
                        it.artWidth = it.art.getWidth();it.artHeight = it.art.getHeight();
                        it.sourceWidth = original[0];it.sourceHeight = original[1];
                    }
                    rows.add(it);
                }
                rows.sort((a, b) -> Long.compare(b.updated, a.updated));
                ContinueWatching.updateNetflix(rows);
            });
        } catch (Exception ignored) {}
    }
    private void observe(List<MediaController> list) {
        for (Map.Entry<MediaController, MediaController.Callback> e : controllers.entrySet()) e.getKey().unregisterCallback(e.getValue());
        controllers.clear();if (list == null) return;
        for (MediaController c : list) if ("com.amazon.firebat".equals(c.getPackageName())) {
            MediaController.Callback callback = new MediaController.Callback() {
                @Override public void onMetadataChanged(MediaMetadata m) { capture(c); }
                @Override public void onPlaybackStateChanged(PlaybackState s) { capture(c); }
            };
            controllers.put(c, callback);c.registerCallback(callback, main);capture(c);
        }
    }
    private void capture(MediaController c) {
        try {
            MediaMetadata m = c.getMetadata();PlaybackState state = c.getPlaybackState();
            if (m == null || state == null || (state.getState() != PlaybackState.STATE_PLAYING && state.getState() != PlaybackState.STATE_PAUSED)) return;
            String id = m.getString("com.amazon.alexa.externalmediaplayer.metadata.PLAYBACK_SOURCE_ID");
            if (!ContinueWatching.validPrimeId(id)) return;
            long now = SystemClock.elapsedRealtime();
            if (id.equals(lastId) && now - lastCapture < 5000 && state.getState() != PlaybackState.STATE_PAUSED) return;
            lastId = id;lastCapture = now;
            String title = m.getString(MediaMetadata.METADATA_KEY_DISPLAY_TITLE);
            if (title == null || title.trim().isEmpty()) title = m.getString(MediaMetadata.METADATA_KEY_TITLE);
            Bitmap art = m.getBitmap(MediaMetadata.METADATA_KEY_ART);
            if (art == null) art = m.getBitmap(MediaMetadata.METADATA_KEY_ALBUM_ART);
            final Bitmap frameworkArt = art;final String mediaTitle = title;
            final long position = state.getPosition(), duration = m.getLong(MediaMetadata.METADATA_KEY_DURATION);
            io.execute(() -> ContinueWatching.updatePrime(id, position, duration, mediaTitle,
                    WatchArtwork.copy(frameworkArt, new int[2])));
        } catch (Exception ignored) {}
    }
}
