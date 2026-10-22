package io.freemytv;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.util.AtomicFile;
import org.json.*;
import java.io.*;
import java.util.*;

/** Disk-only source for the original cinematic screensaver; no account, API, or video stream. */
final class WatchedSlides {
    static List<Recs.Pick> load(Context context) {
        List<Recs.Pick> result = new ArrayList<>();
        try {
            byte[] bytes = new AtomicFile(new File(context.getFilesDir(),"watch-history.json")).readFully();
            JSONArray archive = new JSONArray(new String(bytes,"UTF-8"));
            List<JSONObject> sorted = new ArrayList<>();
            for(int i=0;i<archive.length();i++) sorted.add(archive.getJSONObject(i));
            sorted.sort((a,b)->Long.compare(b.optLong("updated"),a.optLong("updated")));
            for(JSONObject row:sorted){
                String pkg=row.optString("pkg"),title=row.optString("title"),id=row.optString("id");
                if(pkg.isEmpty()||title.trim().isEmpty())continue;
                String key=ContinueWatching.PRIME.equals(pkg)&&ContinueWatching.validPrimeId(id)?id:
                        ContinueWatching.NETFLIX.equals(pkg)?WatchHistoryPolicy.netflixKey(title):WatchHistoryPolicy.key(pkg,title);
                String name="cw-"+Integer.toHexString(key.hashCode())+".jpg";
                File image=new File(context.getFilesDir(),name);
                BitmapFactory.Options bounds=new BitmapFactory.Options();bounds.inJustDecodeBounds=true;
                BitmapFactory.decodeFile(image.getPath(),bounds);
                // Low-quality icons/posters stay out of the cinematic slideshow.
                if(!suitable(bounds.outWidth,bounds.outHeight))continue;
                Recs.Pick pick=new Recs.Pick();pick.id=key.hashCode();pick.kind="watched";
                pick.title=title;pick.pkg=pkg;pick.localArt=name;
                String service=ContinueWatching.NETFLIX.equals(pkg)?"Netflix":ContinueWatching.PRIME.equals(pkg)?"Prime Video":pkg;
                try{service=context.getPackageManager().getApplicationLabel(context.getPackageManager().getApplicationInfo(pkg,0)).toString();}catch(Exception ignored){}
                pick.meta=service+" · Watched on this TV";
                result.add(pick);
            }
        }catch(Exception ignored){ /* No shared history/artwork yet: the normal aurora remains available. */ }
        return Collections.unmodifiableList(result);
    }
    static boolean suitable(int width,int height){return WatchHistoryPolicy.suitableForScreensaver(width,height);}
    private WatchedSlides(){}
}
