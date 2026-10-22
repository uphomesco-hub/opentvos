package com.sid.tvos;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Picture;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
abstract class Gpu {
    public static Bitmap capture(View view, int i2) {
        int iMax = Math.max(1, view.getWidth() / i2);
        int iMax2 = Math.max(1, view.getHeight() / i2);
        if (!enabled()) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMax, iMax2, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            float f2 = 1.0f / i2;
            canvas.scale(f2, f2);
            view.draw(canvas);
            return bitmapCreateBitmap;
        }
        Picture picture = new Picture();
        Canvas canvasBeginRecording = picture.beginRecording(iMax, iMax2);
        float f3 = 1.0f / i2;
        canvasBeginRecording.scale(f3, f3);
        view.draw(canvasBeginRecording);
        picture.endRecording();
        Bitmap.Config config = Bitmap.Config.ARGB_8888;
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(picture, iMax, iMax2, config);
        Bitmap bitmapCopy = bitmapCreateBitmap2.copy(config, true);
        if (bitmapCreateBitmap2 != bitmapCopy) {
            bitmapCreateBitmap2.recycle();
        }
        return bitmapCopy;
    }

    public static boolean enabled() {
        return Build.VERSION.SDK_INT >= 28;
    }

    public static Bitmap region(Bitmap bitmap, Rect rect, int i2, int i3) {
        int iMax = Math.max(1, i2);
        int iMax2 = Math.max(1, i3);
        Paint paint = new Paint(2);
        if (bitmap.getConfig() != Bitmap.Config.HARDWARE) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMax, iMax2, Bitmap.Config.ARGB_8888);
            new Canvas(bitmapCreateBitmap).drawBitmap(bitmap, rect, new RectF(0.0f, 0.0f, iMax, iMax2), paint);
            return bitmapCreateBitmap;
        }
        Picture picture = new Picture();
        picture.beginRecording(iMax, iMax2).drawBitmap(bitmap, rect, new RectF(0.0f, 0.0f, iMax, iMax2), paint);
        picture.endRecording();
        Bitmap.Config config = Bitmap.Config.ARGB_8888;
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(picture, iMax, iMax2, config);
        Bitmap bitmapCopy = bitmapCreateBitmap2.copy(config, true);
        if (bitmapCreateBitmap2 != bitmapCopy) {
            bitmapCreateBitmap2.recycle();
        }
        return bitmapCopy;
    }

    public static Bitmap upload(Bitmap bitmap) {
        Bitmap bitmapCopy;
        if (!enabled() || bitmap == null || bitmap.isRecycled() || bitmap.getConfig() == Bitmap.Config.HARDWARE || (bitmapCopy = bitmap.copy(Bitmap.Config.HARDWARE, false)) == null) {
            return bitmap;
        }
        bitmap.recycle();
        return bitmapCopy;
    }
}
