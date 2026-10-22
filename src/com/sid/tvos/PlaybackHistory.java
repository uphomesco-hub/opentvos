package com.sid.tvos;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.Html;
import android.widget.Toast;
import org.json.JSONArray;
import org.json.JSONObject;
import java.io.*;
import java.lang.reflect.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.*;
import java.util.concurrent.*;
import java.util.regex.*;

/**
 * Local, bounded history from explicitly published notifications and actual media sessions.
 * Based in part on Free My TV's MIT-licensed ContinueWatching implementation.
 * No profile scraping, account credentials, playback interception, or fabricated recommendations.
 */
public final class PlaybackHistory {
    static final String NETFLIX = "com.netflix.ninja", PRIME = "com.amazon.firebat";
    private static final ExecutorService IO = Executors.newSingleThreadExecutor();
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static final Map<String, Entry> HISTORY = new LinkedHashMap<>();
    private static final Map<String, PendingIntent> ACTIONS = new HashMap<>();
    private static Context context;
    private static boolean initialized;
    private static volatile boolean connected;
    static final class Entry {
        String key, app, id, title, subtitle, art;
        long position, duration, updated;
        Entry copy() {
            Entry x = new Entry(); x.key=key;x.app=app;x.id=id;x.title=title;x.subtitle=subtitle;
            x.art=art;x.position=position;x.duration=duration;x.updated=updated;return x;
        }
    }
    private PlaybackHistory() {}

    public static synchronized void init(Context c) {
        if (initialized) return;
        context = c.getApplicationContext(); initialized = true;
        IO.execute(() -> {
            try {
                JSONArray rows = new JSONArray(context.getSharedPreferences("playback-history", 0).getString("rows", "[]"));
                synchronized (HISTORY) {
                    for (int i=0; i<rows.length(); i++) {
                        JSONObject o=rows.getJSONObject(i); Entry e=new Entry();
                        e.app=o.optString("app");e.id=o.optString("id");e.title=o.optString("title");
                        e.subtitle=o.optString("subtitle");e.art=o.optString("art");
                        e.position=o.optLong("position");e.duration=o.optLong("duration");e.updated=o.optLong("updated");
                        e.key=key(e.app, e.id.isEmpty()?PlaybackPolicy.normalize(e.title):e.id);
                        if (valid(e)) HISTORY.put(e.key,e);
                    }
                    trim();
                }
            } catch (Exception ignored) { /* Corrupt local cache must not break Home. */ }
            changed();
        });
    }
    static void connected(boolean value) {
        connected=value;
        if (!value) synchronized (HISTORY) { ACTIONS.clear(); }
        changed();
    }
    public static String status() {
        synchronized (HISTORY) {
            int netflix=0,prime=0;for(Entry e:HISTORY.values()) if(valid(e)){if(NETFLIX.equals(e.app))netflix++;else prime++;}
            return (connected?"Notification access connected":"Enable notification access for playback updates")
                + " · Netflix " + netflix + " · Prime Video " + prime
                + " · history observed on this TV, up to 15 per app";
        }
    }
    private static boolean valid(Entry e) {
        if (e.title==null || e.title.trim().isEmpty() || !PlaybackPolicy.fresh(e.updated,System.currentTimeMillis())) return false;
        if (PRIME.equals(e.app)) return PlaybackPolicy.validPrimeId(e.id) && PlaybackPolicy.unfinished(e.position,e.duration);
        if (!NETFLIX.equals(e.app)) return false;
        return e.duration<=0 || PlaybackPolicy.unfinished(e.position,e.duration);
    }
    static String key(String app,String id) {
        try {
            byte[] digest=MessageDigest.getInstance("SHA-256").digest((app+":"+id).getBytes(StandardCharsets.UTF_8));
            StringBuilder s=new StringBuilder();for(byte b:digest)s.append(String.format(Locale.ROOT,"%02x",b&255));return s.toString();
        } catch(Exception e) { throw new IllegalStateException(e); }
    }
    static void notifications(List<Entry> rows,Map<String,PendingIntent> actions,Map<String,Bitmap> art) {
        IO.execute(() -> {
            synchronized(HISTORY) {
                ACTIONS.entrySet().removeIf(x -> {Entry e=HISTORY.get(x.getKey());return e==null||NETFLIX.equals(e.app);});
                if(connected)ACTIONS.putAll(actions);
                for(Entry e:rows) {
                    if(!valid(e)) {HISTORY.remove(e.key);continue;}
                    Entry old=HISTORY.get(e.key);
                    if(art.containsKey(e.key)) e.art=saveArt(e.key,art.get(e.key));
                    else if(old!=null) e.art=old.art;
                    HISTORY.put(e.key,e);
                }
                trim();save();
            }
            changed();
        });
    }
    static void session(String app,String id,String title,long position,long duration,long updated,Bitmap art, String artUri) {
        if (!(PRIME.equals(app)?PlaybackPolicy.validPrimeId(id):NETFLIX.equals(app)&&PlaybackPolicy.validNetflixId(id))) return;
        IO.execute(() -> {
            Entry e;String k=key(app,id);
            synchronized(HISTORY) {
                Entry old=HISTORY.get(k);e=old==null?new Entry():old.copy();
                e.key=k;e.app=app;e.id=id;e.position=position;e.duration=duration;e.updated=updated;
                if(!PlaybackPolicy.unfinished(position,duration)) {
                    // Zero positions may be startup placeholders. Only confirmed completion removes history.
                    if(duration>0&&position>0&&duration-position<30_000){HISTORY.remove(k);ACTIONS.remove(k);save();changed();}return;
                }
                String t=title==null?"":title.trim();
                if(!t.isEmpty()&&!t.equalsIgnoreCase("PrimeVideo")&&!t.equalsIgnoreCase("Prime Video")&&!t.equalsIgnoreCase("Netflix"))e.title=t;
                if(e.title==null||e.title.isEmpty())e.title="Recently watched on " + (PRIME.equals(app)?"Prime Video":"Netflix");
                e.subtitle=(PRIME.equals(app)?"Prime Video":"Netflix")+" · Watched on this TV";
                if(art!=null)e.art=saveArt(k,art);
                else if(safeArt(artUri))e.art=artUri;
                HISTORY.put(k,e);trim();save();
            }
            changed();
            if(PRIME.equals(app)&&(e.art==null||e.art.isEmpty()||e.title.startsWith("Recently watched on "))) enrichPrime(e);
        });
    }
    private static void enrichPrime(Entry e) {
        try {
            String html=new String(download("https://www.primevideo.com/detail/"+e.id,2_000_000),StandardCharsets.UTF_8);
            Matcher title=Pattern.compile("(?is)<title>(.*?)</title>").matcher(html);
            String better=null,image=null;
            if(title.find()) {
                String value=Html.fromHtml(title.group(1),Html.FROM_HTML_MODE_LEGACY).toString().replaceFirst("(?i)^Prime Video:\\s*","").trim();
                if(!value.isEmpty()&&value.length()<180&&!value.toLowerCase(Locale.ROOT).contains("sign in")&&!value.equalsIgnoreCase("Prime Video"))better=value;
            }
            Matcher m=Pattern.compile("(?is)<meta[^>]+property=[\"']og:image[\"'][^>]+content=[\"']([^\"']+)[\"']").matcher(html);
            if(m.find()) {String url=Html.fromHtml(m.group(1),Html.FROM_HTML_MODE_LEGACY).toString();if(url.startsWith("https://m.media-amazon.com/"))image=url;}
            synchronized(HISTORY) {Entry current=HISTORY.get(e.key);if(current==null)return;if(better!=null)current.title=better;if(image!=null)current.art=image;save();}
            changed();
        } catch(Exception ignored) { /* Public metadata is optional; observed progress remains usable. */ }
    }
    private static byte[] download(String url,int limit)throws IOException {
        HttpURLConnection c=(HttpURLConnection)new URL(url).openConnection();c.setConnectTimeout(6000);c.setReadTimeout(6000);c.setInstanceFollowRedirects(false);
        c.setRequestProperty("User-Agent","Mozilla/5.0");
        try(InputStream in=c.getInputStream();ByteArrayOutputStream out=new ByteArrayOutputStream()) {
            byte[] b=new byte[8192];int n;while((n=in.read(b))!=-1){if(out.size()+n>limit)throw new IOException("Metadata too large");out.write(b,0,n);}return out.toByteArray();
        } finally{c.disconnect();}
    }
    private static boolean safeArt(String uri) {
        if(uri==null)return false;
        return uri.startsWith("https://")||uri.startsWith("content://");
    }
    private static String saveArt(String k,Bitmap bitmap) {
        if(bitmap==null)return null;
        try {
            File dir=new File(context.getFilesDir(),"playback-art");dir.mkdirs();File f=new File(dir,k+".jpg");
            Bitmap scaled=bitmap;
            if(bitmap.getWidth()>960)scaled=Bitmap.createScaledBitmap(bitmap,960,Math.max(1,(int)(bitmap.getHeight()*960L/bitmap.getWidth())),true);
            try(FileOutputStream out=new FileOutputStream(f)){scaled.compress(Bitmap.CompressFormat.JPEG,85,out);}
            return Uri.fromFile(f).toString();
        }catch(Exception ignored){return null;}
    }
    private static void trim() {
        List<Entry> all=new ArrayList<>(HISTORY.values());all.sort((a,b)->Long.compare(b.updated,a.updated));
        HISTORY.clear();Map<String,Integer> count=new HashMap<>();
        for(Entry e:all)if(valid(e)){int n=count.containsKey(e.app)?count.get(e.app):0;if(n<PlaybackPolicy.LIMIT){HISTORY.put(e.key,e);count.put(e.app,n+1);}}
        ACTIONS.keySet().retainAll(HISTORY.keySet());
        File[] files=new File(context.getFilesDir(),"playback-art").listFiles();
        if(files!=null)for(File f:files)if(!HISTORY.containsKey(f.getName().replaceFirst("\\.jpg$","")))f.delete();
    }
    private static void save() {
        try {
            JSONArray rows=new JSONArray();
            for(Entry e:HISTORY.values())rows.put(new JSONObject().put("app",e.app).put("id",e.id==null?"":e.id).put("title",e.title)
                .put("subtitle",e.subtitle).put("art",e.art==null?"":e.art).put("position",e.position).put("duration",e.duration).put("updated",e.updated));
            context.getSharedPreferences("playback-history",0).edit().putString("rows",rows.toString()).apply();
        }catch(Exception ignored){}
    }
    static void changed() {
        MAIN.post(() -> {
            try{Class<?> c=Class.forName("com.sid.tvos.WatchNext");Method m=c.getDeclaredMethod("invalidate");m.setAccessible(true);m.invoke(null);}catch(Exception ignored){}
            Runnable r=NotifListener.onChange;if(r!=null)r.run();
        });
    }

    /** Hooked into every original query return; provider entries remain first, fallback fills the gaps. */
    @SuppressWarnings({"rawtypes","unchecked"}) public static Map merge(Context c,Map providerMap) {
        init(c);Map result=new LinkedHashMap();Map<String,Set<String>> seen=new HashMap<>();
        if(providerMap!=null)for(Object key:providerMap.keySet()) {
            if(!(key instanceof String)||!(providerMap.get(key) instanceof List))continue;
            List items=new ArrayList();Set<String> titles=new HashSet<>();
            for(Object item:(List)providerMap.get(key))try {
                String title=(String)get(item,"title");String subtitle=(String)get(item,"subtitle");
                if(title==null||title.trim().isEmpty())continue;
                if(items.size()<PlaybackPolicy.LIMIT){items.add(item);titles.add(PlaybackPolicy.normalize(title));}
            }catch(Exception ignored){}
            result.put(key,items);seen.put((String)key,titles);
        }
        List<Entry> snapshot=new ArrayList<>();synchronized(HISTORY){for(Entry e:HISTORY.values())if(valid(e))snapshot.add(e.copy());}
        snapshot.sort((a,b)->Long.compare(b.updated,a.updated));
        for(Entry e:snapshot) {
            List items=(List)result.get(e.app);if(items==null){items=new ArrayList();result.put(e.app,items);}
            Set<String> titles=seen.get(e.app);if(titles==null){titles=new HashSet<>();seen.put(e.app,titles);}
            if(items.size()>=PlaybackPolicy.LIMIT||!titles.add(PlaybackPolicy.normalize(e.title)))continue;
            try {
                Class<?> type=Class.forName("com.sid.tvos.WatchNext$Item");Constructor<?> ctor=type.getDeclaredConstructor();ctor.setAccessible(true);Object item=ctor.newInstance();
                set(item,"title",e.title);set(item,"subtitle",e.subtitle);set(item,"section","Continue Watching");set(item,"art",e.art);
                set(item,"progress",e.duration>0?Math.min(100f,e.position*100f/e.duration):-1f);
                Intent relay=new Intent(c,HistoryOpenActivity.class).setPackage(c.getPackageName()).putExtra("history_key",e.key);
                set(item,"intent",relay);items.add(item);
            }catch(Exception ignored){}
        }
        return result;
    }
    private static Object get(Object obj,String name)throws Exception {Field f=obj.getClass().getDeclaredField(name);f.setAccessible(true);return f.get(obj);}
    private static void set(Object obj,String name,Object value)throws Exception {Field f=obj.getClass().getDeclaredField(name);f.setAccessible(true);f.set(obj,value);}
    static void open(Context c,String k) {
        init(c);Entry e;PendingIntent action;synchronized(HISTORY){e=HISTORY.get(k);action=ACTIONS.get(k);}
        if(e==null){Toast.makeText(c,"History is unavailable. Open the streaming app to continue.",Toast.LENGTH_LONG).show();return;}
        if(action!=null)try{action.send();return;}catch(PendingIntent.CanceledException ignored){}
        Intent intent=null;
        if(PRIME.equals(e.app)&&PlaybackPolicy.validPrimeId(e.id))intent=new Intent(Intent.ACTION_VIEW,Uri.parse("https://app.primevideo.com/detail?gti="+Uri.encode(e.id))).setPackage(PRIME);
        // Netflix deep links are not guessed: only the app's published live PendingIntent resumes a title.
        try{if(intent!=null){c.startActivity(intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK));return;}}catch(Exception ignored){}
        try{
            intent=c.getPackageManager().getLeanbackLaunchIntentForPackage(e.app);if(intent==null)intent=c.getPackageManager().getLaunchIntentForPackage(e.app);
            if(intent!=null){Toast.makeText(c,"Opening "+(NETFLIX.equals(e.app)?"Netflix":"Prime Video")+". Choose the title to continue.",Toast.LENGTH_LONG).show();c.startActivity(intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK));return;}
        }catch(Exception ignored){}
        Toast.makeText(c,"This app cannot be opened. Please open it from Apps.",Toast.LENGTH_LONG).show();
    }
}
