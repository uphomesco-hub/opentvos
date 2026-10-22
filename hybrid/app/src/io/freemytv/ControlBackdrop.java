package io.freemytv;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.view.Gravity;
import android.view.View;
import java.io.File;
import java.io.FileOutputStream;
import java.util.concurrent.Executors;
import java.util.concurrent.ExecutorService;

/** Tiny existing blurred images survive Fire OS reclaiming the background home process. */
final class ControlBackdrop {
    private static final ExecutorService IO=Executors.newSingleThreadExecutor();
    private static Bitmap light, night;
    private static File imageFile(Context c,boolean dark){return new File(c.getCacheDir(),dark?"controls-night.png":"controls-light.png");}
    static void apply(Context c,View view,boolean dark){
        Bitmap freshLight=HomeActivity.controlBackground(false),freshNight=HomeActivity.controlBackground(true);
        if(freshLight!=null&&freshNight!=null&&(freshLight!=light||freshNight!=night)){
            light=freshLight;night=freshNight;
            final Context app=c.getApplicationContext();
            IO.execute(()->{save(app,false,freshLight);save(app,true,freshNight);});
        }
        Bitmap image=dark?night:light;
        if(image==null||image.isRecycled()){
            image=BitmapFactory.decodeFile(imageFile(c,dark).getPath());
            if(dark)night=image;else light=image;
        }
        if(image!=null){
            BitmapDrawable backdrop=new BitmapDrawable(c.getResources(),image);
            backdrop.setGravity(Gravity.FILL);backdrop.setFilterBitmap(true);view.setBackground(backdrop);
        }else view.setBackgroundColor(dark?0xff161619:0xffececf1);
    }
    private static void save(Context c,boolean dark,Bitmap image){
        File file=imageFile(c,dark),tmp=new File(file.getPath()+".tmp");
        try{
            try(FileOutputStream out=new FileOutputStream(tmp)){image.compress(Bitmap.CompressFormat.PNG,100,out);}
            if(!tmp.renameTo(file))tmp.delete();
        }catch(Exception ignored){tmp.delete();}
    }
}
