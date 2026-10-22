package io.freemytv;

import android.content.Context;
import android.graphics.*;
import android.net.Uri;
import java.io.*;

/** tvOS emoji/gradient avatar rendering, using the existing local profile and an opt-in photo picker. */
final class Profile {
    static final String[] EMOJI = {"🦊", "🐼", "🐯", "🦁", "🐸", "🐨", "🐙", "🦄", "🐶", "🐱"};
    private static final int[][] GRADIENTS = {new int[]{-24822, -47814}, new int[]{-10169601, -16087809}, new int[]{-10742, -24822}, new int[]{-39806, -4236558}, new int[]{-13577896, -16087809}, new int[]{-6776675, -12040118}, new int[]{-4236558, -10593050}, new int[]{-24618, -8553729}, new int[]{-10038065, -13586233}, new int[]{-19648, -1876645}};
    public static Bitmap emojiAvatar(int i2, int i3) {
        String[] strArr = EMOJI;
        int iMax = Math.max(0, Math.min(strArr.length - 1, i2));
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i3, i3, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(1);
        int[][] iArr = GRADIENTS;
        int[] iArr2 = iArr[iMax % iArr.length];
        float f2 = i3;
        paint.setShader(new LinearGradient(0.0f, 0.0f, f2, f2, iArr2[0], iArr2[1], Shader.TileMode.CLAMP));
        float f3 = f2 / 2.0f;
        canvas.drawCircle(f3, f3, f3, paint);
        paint.setShader(null);
        paint.setTextSize(f2 * 0.56f);
        paint.setTextAlign(Paint.Align.CENTER);
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        canvas.drawText(strArr[iMax], f3, f3 - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), paint);
        return bitmapCreateBitmap;
    }
    private static File photoFile(Context c){return new File(c.getFilesDir(),"profile-avatar.png");}
    static String name(Context c){return c.getSharedPreferences("hybrid_ui",0).getString("profile_name","Yash");}
    static void setName(Context c,String value){c.getSharedPreferences("hybrid_ui",0).edit().putString("profile_name",value).apply();Prefs.version++;}
    static String choice(Context c){return c.getSharedPreferences("hybrid_ui",0).getString("avatar","emoji:0");}
    static void setEmoji(Context c,int index){c.getSharedPreferences("hybrid_ui",0).edit().putString("avatar","emoji:"+index).apply();Prefs.version++;}
    static Bitmap avatar(Context c,int size){
        if("photo".equals(choice(c))){Bitmap src=WatchArtwork.file(photoFile(c));if(src!=null){Bitmap out=round(src,size);src.recycle();return out;}}
        int index=0;try{index=Integer.parseInt(choice(c).substring(6));}catch(Exception ignored){}
        return emojiAvatar(index,size);
    }
    static boolean setPhoto(Context c,Uri uri){
        try{
            Bitmap src=WatchArtwork.publishedContent(c,uri.toString(),new int[2]);if(src==null)return false;
            Bitmap out=round(src,320);src.recycle();
            try(FileOutputStream file=new FileOutputStream(photoFile(c))){out.compress(Bitmap.CompressFormat.PNG,100,file);}finally{out.recycle();}
            c.getSharedPreferences("hybrid_ui",0).edit().putString("avatar","photo").apply();Prefs.version++;return true;
        }catch(Exception | OutOfMemoryError ignored){return false;}
    }
    private static Bitmap round(Bitmap src,int size){
        Bitmap out=Bitmap.createBitmap(size,size,Bitmap.Config.ARGB_8888);Canvas canvas=new Canvas(out);Paint p=new Paint(3);
        BitmapShader shader=new BitmapShader(src,Shader.TileMode.CLAMP,Shader.TileMode.CLAMP);Matrix matrix=new Matrix();
        float scale=size/(float)Math.min(src.getWidth(),src.getHeight());matrix.setScale(scale,scale);
        matrix.postTranslate((size-src.getWidth()*scale)/2,(size-src.getHeight()*scale)/2);shader.setLocalMatrix(matrix);p.setShader(shader);
        canvas.drawCircle(size/2f,size/2f,size/2f,p);return out;
    }
}
