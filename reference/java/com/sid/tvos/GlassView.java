package com.sid.tvos;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class GlassView extends View {
    private final float density;
    private final Paint outline;
    private float radius;
    private final RectF rect;
    private final Path ring;
    private final Paint shadow;
    private Bitmap shadowBmp;
    private int shadowH;
    private float shadowR;
    private int shadowW;
    private final Path tile;
    private final RectF tmp;

    public GlassView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint(1);
        this.shadow = paint;
        Paint paint2 = new Paint(1);
        this.outline = paint2;
        this.rect = new RectF();
        this.tmp = new RectF();
        this.tile = new Path();
        this.ring = new Path();
        float f2 = getResources().getDisplayMetrics().density;
        this.density = f2;
        this.radius = 20.0f * f2;
        paint.setColor(-16777216);
        paint.setFilterBitmap(true);
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeWidth(f2 * 1.5f);
        paint2.setColor(-218103809);
    }

    private void buildShadow() {
        this.shadowW = getWidth();
        this.shadowH = getHeight();
        this.shadowR = this.radius;
        Bitmap bitmap = this.shadowBmp;
        if (bitmap != null) {
            bitmap.recycle();
        }
        this.shadowBmp = Bitmap.createBitmap(Math.max(1, this.shadowW), Math.max(1, this.shadowH), Bitmap.Config.ALPHA_8);
        Canvas canvas = new Canvas(this.shadowBmp);
        float f2 = this.density;
        float f3 = 30.0f * f2;
        float f4 = 14.0f * f2;
        float f5 = 9.0f * f2;
        float f6 = f2 * 2.0f;
        RectF rectF = new RectF(f3 - f6, (f3 + f5) - f6, (this.shadowW - f3) + f6, (this.shadowH - f3) + f5 + f6);
        Paint paint = new Paint(5);
        paint.setColor(-1946157056);
        paint.setMaskFilter(new BlurMaskFilter(f4, BlurMaskFilter.Blur.NORMAL));
        float f7 = this.radius;
        canvas.drawRoundRect(rectF, f7 + f6, f7 + f6, paint);
        int byteCount = this.shadowBmp.getByteCount();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(byteCount);
        this.shadowBmp.copyPixelsToBuffer(byteBufferAllocate);
        byte[] bArrArray = byteBufferAllocate.array();
        int i2 = -1640531527;
        for (int i3 = 0; i3 < byteCount; i3++) {
            int i4 = bArrArray[i3] & 255;
            if (i4 != 0 && i4 != 255) {
                int i5 = i2 ^ (i2 << 13);
                int i6 = i5 ^ (i5 >>> 17);
                i2 = i6 ^ (i6 << 5);
                bArrArray[i3] = (byte) Math.max(0, Math.min(255, ((i2 & 1) - ((i2 >>> 9) & 1)) + i4));
            }
        }
        byteBufferAllocate.rewind();
        this.shadowBmp.copyPixelsFromBuffer(byteBufferAllocate);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        float f2 = this.density * 30.0f;
        this.rect.set(f2, f2, getWidth() - f2, getHeight() - f2);
        this.tile.reset();
        Path path = this.tile;
        RectF rectF = this.rect;
        float f3 = this.radius;
        path.addRoundRect(rectF, f3, f3, Path.Direction.CW);
        if (this.shadowBmp == null || this.shadowW != getWidth() || this.shadowH != getHeight() || this.shadowR != this.radius) {
            buildShadow();
        }
        canvas.save();
        if (Build.VERSION.SDK_INT >= 26) {
            canvas.clipOutPath(this.tile);
        } else {
            canvas.clipPath(this.tile, Region.Op.DIFFERENCE);
        }
        canvas.drawBitmap(this.shadowBmp, 0.0f, 0.0f, this.shadow);
        canvas.restore();
        float strokeWidth = this.outline.getStrokeWidth() / 2.0f;
        RectF rectF2 = this.tmp;
        RectF rectF3 = this.rect;
        rectF2.set(rectF3.left + strokeWidth, rectF3.top + strokeWidth, rectF3.right - strokeWidth, rectF3.bottom - strokeWidth);
        RectF rectF4 = this.tmp;
        float f4 = this.radius - strokeWidth;
        canvas.drawRoundRect(rectF4, f4, f4, this.outline);
    }

    public void setRadius(float f2) {
        this.radius = f2;
        invalidate();
    }
}
