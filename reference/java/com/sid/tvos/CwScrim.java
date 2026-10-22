package com.sid.tvos;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
final class CwScrim extends Drawable {
    private static Bitmap shared;
    private final Paint paint = new Paint(6);

    public CwScrim() {
        synchronized (CwScrim.class) {
            try {
                if (shared == null) {
                    shared = make();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static Bitmap make() {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(96, 54, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(4);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint.setShader(new LinearGradient(0.0f, 0.0f, 59.52f, 0.0f, -1291845632, 0, tileMode));
        canvas.drawRect(0.0f, 0.0f, 59.52f, 54.0f, paint);
        paint.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, 10.8f, 1711276032, 0, tileMode));
        canvas.drawRect(0.0f, 0.0f, 96.0f, 10.8f, paint);
        paint.setShader(new LinearGradient(0.0f, 27.0f, 0.0f, 54.0f, 0, -1291845632, tileMode));
        canvas.drawRect(0.0f, 27.0f, 96.0f, 54.0f, paint);
        return bitmapCreateBitmap;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawBitmap(shared, (Rect) null, getBounds(), this.paint);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.paint.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
