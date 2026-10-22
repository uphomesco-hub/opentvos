package com.sid.tvos;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.graphics.*;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSessionManager;
import android.media.session.PlaybackState;
import android.net.Uri;
import android.os.*;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import java.io.InputStream;
import java.util.*;
import java.util.concurrent.*;

/** Notification access is optional; this service never enables its own permission. */
public final class NotifListener extends NotificationListenerService {
    private static NotifListener instance;
    static Runnable onChange;
    private final Handler main=new Handler(Looper.getMainLooper());
    private final ExecutorService io=Executors.newSingleThreadExecutor();
    private final Map<MediaController,MediaController.Callback> controllers=new HashMap<>();
    private final Map<String,Long> captures=new HashMap<>();
    private MediaSessionManager sessions;
    private boolean connected;
    private int notificationGeneration;
    private final MediaSessionManager.OnActiveSessionsChangedListener sessionsChanged=this::observe;
    private final Runnable poll=new Runnable(){public void run(){if(!connected)return;for(MediaController c:new ArrayList<>(controllers.keySet()))capture(c);main.postDelayed(this,30_000);}};
    private static void notifyChange(){PlaybackHistory.changed();}

    @Override public void onListenerConnected() {
        instance=this;connected=true;PlaybackHistory.init(this);PlaybackHistory.connected(true);readNetflix();
        try {
            sessions=(MediaSessionManager)getSystemService(MEDIA_SESSION_SERVICE);
            ComponentName component=new ComponentName(this,NotifListener.class);
            sessions.addOnActiveSessionsChangedListener(sessionsChanged,component,main);
            observe(sessions.getActiveSessions(component));main.removeCallbacks(poll);main.post(poll);
        }catch(SecurityException ignored){/* Some Fire OS releases do not publish active sessions. */}
        catch(Exception ignored){}
        notifyChange();
    }
    @Override public void onListenerDisconnected(){clean();notifyChange();}
    @Override public void onDestroy(){clean();io.shutdown();super.onDestroy();}
    private void clean() {
        connected=false;notificationGeneration++;if(instance==this)instance=null;main.removeCallbacks(poll);
        if(sessions!=null)try{sessions.removeOnActiveSessionsChangedListener(sessionsChanged);}catch(Exception ignored){}
        for(Map.Entry<MediaController,MediaController.Callback> e:controllers.entrySet())try{e.getKey().unregisterCallback(e.getValue());}catch(Exception ignored){}
        controllers.clear();PlaybackHistory.connected(false);
    }
    @Override public void onNotificationPosted(StatusBarNotification n){if(n!=null&&PlaybackHistory.NETFLIX.equals(n.getPackageName()))readNetflix();notifyChange();}
    @Override public void onNotificationRemoved(StatusBarNotification n){if(n!=null&&PlaybackHistory.NETFLIX.equals(n.getPackageName()))readNetflix();notifyChange();}

    private void readNetflix() {
        if(!connected)return;
        try {
            final StatusBarNotification[] active=getActiveNotifications();
            final int generation=++notificationGeneration;
            io.execute(() -> {
                List<PlaybackHistory.Entry> rows=new ArrayList<>();Map<String,PendingIntent> actions=new HashMap<>();Map<String,Bitmap> art=new HashMap<>();
                if(active!=null)for(StatusBarNotification sbn:active) {
                    if(!PlaybackHistory.NETFLIX.equals(sbn.getPackageName()))continue;
                    try {
                        Notification n=sbn.getNotification();Bundle extras=n.extras;if(extras==null||n.contentIntent==null)continue;
                        String group=text(extras,Notification.EXTRA_TITLE);
                        if(!PlaybackPolicy.explicitNetflixContinueWatching(group))continue;
                        // Each notification has one published launch target. Text lines are never split into made-up titles.
                        String title=text(extras,Notification.EXTRA_TEXT);if(title.isEmpty())continue;
                        PlaybackHistory.Entry e=new PlaybackHistory.Entry();e.app=PlaybackHistory.NETFLIX;e.id="";e.title=title;
                        e.key=PlaybackHistory.key(e.app,PlaybackPolicy.normalize(title));e.updated=sbn.getPostTime();
                        e.subtitle="Netflix · Continue Watching";
                        if(!extras.getBoolean(Notification.EXTRA_PROGRESS_INDETERMINATE,false)) {
                            e.position=extras.getInt(Notification.EXTRA_PROGRESS,0);e.duration=extras.getInt(Notification.EXTRA_PROGRESS_MAX,0);
                            // The notification exposes a ratio, not a movie duration. Scale to milliseconds solely for the progress bar.
                            // Real duration is unknown, so completion uses the 100% boundary rather than the session's 30s rule.
                            if(e.duration>0) {
                                if(e.position>0){e.position=e.position*1_000_000L;e.duration=e.duration*1_000_000L;}
                                else e.duration=0;
                            }
                        }
                        Bitmap image=notificationArt(n,extras);if(image!=null)art.put(e.key,image);
                        rows.add(e);actions.put(e.key,n.contentIntent);
                    }catch(Exception ignored){}
                }
                // Disconnect/reconnect or a later notification snapshot invalidates stale PendingIntents.
                main.post(() -> {if(connected&&generation==notificationGeneration)PlaybackHistory.notifications(rows,actions,art);});
            });
        }catch(SecurityException ignored){}
        catch(Exception ignored){}
    }
    private static String text(Bundle extras,String key){CharSequence value=extras.getCharSequence(key);return value==null?"":value.toString().trim();}
    private Bitmap notificationArt(Notification n,Bundle extras) {
        try {
            Icon icon=n.getLargeIcon();Drawable d=icon==null?null:icon.loadDrawable(this);
            if(d!=null){Bitmap b=Bitmap.createBitmap(480,270,Bitmap.Config.ARGB_8888);d.setBounds(0,0,480,270);d.draw(new Canvas(b));return b;}
        }catch(Exception ignored){}
        try {
            String value=extras.getString("android.backgroundImageUri");
            if(value!=null&&value.startsWith("content://com.netflix.mediaclient.preapp/background/")) {
                try(InputStream in=getContentResolver().openInputStream(Uri.parse(value))) {
                    BitmapFactory.Options opts=new BitmapFactory.Options();opts.inSampleSize=4;return BitmapFactory.decodeStream(in,null,opts);
                }
            }
        }catch(Exception ignored){}
        return null;
    }
    private void observe(List<MediaController> active) {
        for(Map.Entry<MediaController,MediaController.Callback> e:controllers.entrySet())try{e.getKey().unregisterCallback(e.getValue());}catch(Exception ignored){}
        controllers.clear();if(!connected||active==null)return;
        for(MediaController c:active)if(PlaybackHistory.PRIME.equals(c.getPackageName())||PlaybackHistory.NETFLIX.equals(c.getPackageName())) {
            MediaController.Callback callback=new MediaController.Callback(){
                @Override public void onMetadataChanged(MediaMetadata metadata){capture(c);}
                @Override public void onPlaybackStateChanged(PlaybackState state){capture(c);}
                @Override public void onSessionDestroyed(){MediaController.Callback cb=controllers.remove(c);if(cb!=null)c.unregisterCallback(cb);}
            };
            controllers.put(c,callback);c.registerCallback(callback,main);capture(c);
        }
    }
    private void capture(MediaController c) {
        if(!connected)return;
        try {
            MediaMetadata m=c.getMetadata();PlaybackState state=c.getPlaybackState();
            if(m==null||state==null||(state.getState()!=PlaybackState.STATE_PLAYING&&state.getState()!=PlaybackState.STATE_PAUSED))return;
            String app=c.getPackageName();String id;
            if(PlaybackHistory.PRIME.equals(app))id=m.getString("com.amazon.alexa.externalmediaplayer.metadata.PLAYBACK_SOURCE_ID");
            else id=m.getString(MediaMetadata.METADATA_KEY_MEDIA_ID);
            if(!(PlaybackHistory.PRIME.equals(app)?PlaybackPolicy.validPrimeId(id):PlaybackPolicy.validNetflixId(id)))return;
            String key=app+":"+id;long now=SystemClock.elapsedRealtime();Long last=captures.get(key);
            if(last!=null&&now-last<5000&&state.getState()!=PlaybackState.STATE_PAUSED)return;
            captures.put(key,now);
            long duration=m.getLong(MediaMetadata.METADATA_KEY_DURATION),position=state.getPosition();
            if(state.getState()==PlaybackState.STATE_PLAYING&&state.getLastPositionUpdateTime()>0&&state.getPlaybackSpeed()>0)
                position+=(long)(Math.max(0,now-state.getLastPositionUpdateTime())*state.getPlaybackSpeed());
            if(duration>0)position=Math.min(position,duration);
            String title=m.getString(MediaMetadata.METADATA_KEY_DISPLAY_TITLE);if(title==null||title.isEmpty())title=m.getString(MediaMetadata.METADATA_KEY_TITLE);
            // Netflix's generic media session is deliberately ignored until it supplies both an ID and a real title.
            if(PlaybackHistory.NETFLIX.equals(app)&&(title==null||title.trim().isEmpty()||"Netflix".equalsIgnoreCase(title)))return;
            Bitmap art=m.getBitmap(MediaMetadata.METADATA_KEY_DISPLAY_ICON);if(art==null)art=m.getBitmap(MediaMetadata.METADATA_KEY_ART);if(art==null)art=m.getBitmap(MediaMetadata.METADATA_KEY_ALBUM_ART);
            String uri=m.getString(MediaMetadata.METADATA_KEY_DISPLAY_ICON_URI);if(uri==null)uri=m.getString(MediaMetadata.METADATA_KEY_ART_URI);
            PlaybackHistory.session(app,id,title,position,duration,System.currentTimeMillis(),art,uri);
        }catch(Exception ignored){}
    }
}
