package com.sid.tvos;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RecordingCanvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.RenderEffect;
import android.graphics.RenderNode;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.animation.DecelerateInterpolator;

/* JADX INFO: loaded from: classes.dex */
final class LiquidGlassDrawable extends Drawable {
    static float blurScale = 1.0f;
    private final Paint backdrop;
    private Bitmap backdropBmp;
    private final float corner;
    private final float density;
    private ValueAnimator fade;
    private final Paint fill;
    private final int[] hostLoc;
    private final RectF inner;
    private final Paint innerRim;
    private final Paint innerShade;
    private final Paint lens;
    private final Matrix lensMatrix;
    private Object lensNode;
    private boolean liquid;
    private View liveHost;
    private Object liveNode;
    private View liveSource;
    private final Matrix matrix;
    private int newAlpha;
    private final Paint oldBackdrop;
    private Bitmap oldBmp;
    private final Paint oldLens;
    private float opacity;
    private final RectF rect;
    private final Paint rim;
    private final Path ring;
    private final Paint specular;
    private final int[] srcLoc;

    public LiquidGlassDrawable(float f2) {
        this(f2, 0.0f);
    }

    @TargetApi(31)
    private boolean drawLive(Canvas canvas, float f2) {
        if (this.liveSource == null || !canvas.isHardwareAccelerated() || this.liveSource.getWidth() == 0) {
            return false;
        }
        Rect bounds = getBounds();
        this.liveHost.getLocationInWindow(this.hostLoc);
        this.liveSource.getLocationInWindow(this.srcLoc);
        int[] iArr = this.srcLoc;
        int i2 = iArr[0];
        int[] iArr2 = this.hostLoc;
        float f3 = (i2 - iArr2[0]) - bounds.left;
        float f4 = (iArr[1] - iArr2[1]) - bounds.top;
        Object objE = this.liveNode;
        if (objE == null) {
            objE = f.b.e();
            this.liveNode = objE;
        }
        RenderNode renderNodeF = f.b.f(objE);
        renderNodeF.setPosition(0, 0, bounds.width(), bounds.height());
        RecordingCanvas recordingCanvasBeginRecording = renderNodeF.beginRecording();
        recordingCanvasBeginRecording.translate(f3, f4);
        this.liveSource.draw(recordingCanvasBeginRecording);
        renderNodeF.endRecording();
        float f5 = (this.liquid ? 2.5f : 22.0f) * this.density * blurScale;
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(this.liquid ? 1.35f : 1.8f);
        renderNodeF.setRenderEffect(RenderEffect.createColorFilterEffect(new ColorMatrixColorFilter(colorMatrix), f5 < 0.5f ? null : RenderEffect.createBlurEffect(f5, f5, Shader.TileMode.CLAMP)));
        renderNodeF.setAlpha(this.opacity);
        int iSave = canvas.save();
        Path path = new Path();
        path.addRoundRect(new RectF(bounds), f2, f2, Path.Direction.CW);
        canvas.clipPath(path);
        canvas.translate(bounds.left, bounds.top);
        canvas.drawRenderNode(renderNodeF);
        canvas.restoreToCount(iSave);
        if (this.liquid) {
            Object objS = this.lensNode;
            if (objS == null) {
                objS = f.b.s();
                this.lensNode = objS;
            }
            RenderNode renderNodeF2 = f.b.f(objS);
            renderNodeF2.setPosition(0, 0, bounds.width(), bounds.height());
            RecordingCanvas recordingCanvasBeginRecording2 = renderNodeF2.beginRecording();
            recordingCanvasBeginRecording2.scale(1.12f, 1.35f, bounds.width() / 2.0f, bounds.height() / 2.0f);
            recordingCanvasBeginRecording2.drawRenderNode(renderNodeF);
            renderNodeF2.endRecording();
            int iSave2 = canvas.save();
            canvas.clipPath(this.ring);
            canvas.translate(bounds.left, bounds.top);
            canvas.drawRenderNode(renderNodeF2);
            canvas.restoreToCount(iSave2);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setBackdrop$0(ValueAnimator valueAnimator) {
        setNewAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
        invalidateSelf();
    }

    private void setLocal(Paint paint, Paint paint2, Bitmap bitmap, Rect rect) {
        this.matrix.setScale(rect.width() / bitmap.getWidth(), rect.height() / bitmap.getHeight());
        this.matrix.postTranslate(rect.left, rect.top);
        paint.getShader().setLocalMatrix(this.matrix);
        this.lensMatrix.set(this.matrix);
        this.lensMatrix.postScale(1.12f, 1.35f, rect.exactCenterX(), rect.exactCenterY());
        paint2.getShader().setLocalMatrix(this.lensMatrix);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNewAlpha(int i2) {
        this.newAlpha = i2;
        float f2 = i2;
        this.backdrop.setAlpha((int) (this.opacity * f2));
        this.lens.setAlpha((int) (f2 * this.opacity));
    }

    private void updateMatrix(Rect rect) {
        if (rect.isEmpty()) {
            return;
        }
        Bitmap bitmap = this.backdropBmp;
        if (bitmap != null) {
            setLocal(this.backdrop, this.lens, bitmap, rect);
        }
        Bitmap bitmap2 = this.oldBmp;
        if (bitmap2 != null) {
            setLocal(this.oldBackdrop, this.oldLens, bitmap2, rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            return;
        }
        float f2 = this.corner;
        float fMin = f2 > 0.0f ? Math.min(f2, bounds.height() / 2.0f) : bounds.height() / 2.0f;
        this.rect.set(bounds);
        if (this.liquid) {
            float fMin2 = Math.min(bounds.height() * 0.22f, this.density * 9.0f);
            this.inner.set(bounds.left + fMin2, bounds.top + fMin2, bounds.right - fMin2, bounds.bottom - fMin2);
            this.ring.reset();
            this.ring.addRoundRect(this.rect, fMin, fMin, Path.Direction.CW);
            float f3 = fMin - fMin2;
            this.ring.addRoundRect(this.inner, f3, f3, Path.Direction.CCW);
        }
        boolean z2 = Build.VERSION.SDK_INT >= 31 && drawLive(canvas, fMin);
        if (!z2 && this.oldBmp != null) {
            canvas.drawRoundRect(this.rect, fMin, fMin, this.oldBackdrop);
            if (this.liquid) {
                canvas.drawPath(this.ring, this.oldLens);
            }
        }
        if (!z2 && this.backdropBmp != null) {
            canvas.drawRoundRect(this.rect, fMin, fMin, this.backdrop);
            if (this.liquid) {
                canvas.drawPath(this.ring, this.lens);
            }
        }
        canvas.drawRoundRect(this.rect, fMin, fMin, this.fill);
        float f4 = this.density * 2.0f;
        this.rect.set(bounds.left + f4, bounds.top + f4, bounds.right - f4, bounds.bottom - f4);
        float f5 = fMin - f4;
        canvas.drawRoundRect(this.rect, f5, f5, this.specular);
        float strokeWidth = this.innerShade.getStrokeWidth() / 2.0f;
        this.rect.set(bounds.left + strokeWidth, bounds.top + strokeWidth, bounds.right - strokeWidth, bounds.bottom - strokeWidth);
        float f6 = fMin - strokeWidth;
        canvas.drawRoundRect(this.rect, f6, f6, this.innerShade);
        if (this.innerRim.getShader() != null) {
            float f7 = this.density * 3.0f;
            this.rect.set(bounds.left + f7, bounds.top + f7, bounds.right - f7, bounds.bottom - f7);
            float f8 = fMin - f7;
            canvas.drawRoundRect(this.rect, f8, f8, this.innerRim);
        }
        float strokeWidth2 = this.rim.getStrokeWidth() / 2.0f;
        this.rect.set(bounds.left + strokeWidth2, bounds.top + strokeWidth2, bounds.right - strokeWidth2, bounds.bottom - strokeWidth2);
        float f9 = fMin - strokeWidth2;
        canvas.drawRoundRect(this.rect, f9, f9, this.rim);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public boolean isLive() {
        return this.liveSource != null;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        updateMatrix(rect);
        float f2 = rect.top;
        float f3 = rect.bottom;
        float fHeight = rect.height();
        if (this.liquid) {
            Paint paint = this.fill;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            paint.setShader(new LinearGradient(0.0f, f2, 0.0f, f3, 352321535, 100663295, tileMode));
            this.specular.setShader(new LinearGradient(0.0f, f2, 0.0f, (fHeight * 0.45f) + f2, 872415231, 16777215, tileMode));
            this.rim.setStrokeWidth(this.density * 1.4f);
            this.rim.setShader(new LinearGradient(0.0f, f2, 0.0f, f3, new int[]{-1, 1090519039, 654311423, -855638017}, new float[]{0.0f, 0.25f, 0.75f, 1.0f}, tileMode));
            this.innerRim.setStrokeWidth(this.density * 1.0f);
            this.innerRim.setShader(new LinearGradient(0.0f, f2, 0.0f, f3, new int[]{1728053247, 16777215, 16777215, 1308622847}, new float[]{0.0f, 0.3f, 0.7f, 1.0f}, tileMode));
        } else {
            Paint paint2 = this.fill;
            Shader.TileMode tileMode2 = Shader.TileMode.CLAMP;
            paint2.setShader(new LinearGradient(0.0f, f2, 0.0f, f3, 1392508927, 704643071, tileMode2));
            this.specular.setShader(new LinearGradient(0.0f, f2, 0.0f, (fHeight * 0.5f) + f2, 1090519039, 16777215, tileMode2));
            this.rim.setStrokeWidth(this.density * 1.2f);
            this.rim.setShader(new LinearGradient(0.0f, f2, 0.0f, f3, new int[]{-637534209, 1308622847, 872415231, -1711276033}, new float[]{0.0f, 0.3f, 0.7f, 1.0f}, tileMode2));
            this.innerRim.setShader(null);
        }
        this.innerShade.setShader(new LinearGradient(0.0f, f2, 0.0f, f3, new int[]{0, 0, this.liquid ? 436207616 : 637534208}, new float[]{0.0f, 0.6f, 1.0f}, Shader.TileMode.CLAMP));
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
    }

    public void setBackdrop(Bitmap bitmap, long j) {
        Bitmap bitmap2;
        ValueAnimator valueAnimator = this.fade;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        boolean z2 = j > 0 && bitmap != null;
        if (!z2 || (bitmap2 = this.backdropBmp) == null) {
            this.oldBmp = null;
        } else {
            this.oldBmp = bitmap2;
            this.oldBackdrop.setShader(this.backdrop.getShader());
            this.oldLens.setShader(this.lens.getShader());
        }
        this.backdropBmp = bitmap;
        if (bitmap == null) {
            this.backdrop.setShader(null);
            this.lens.setShader(null);
        } else {
            Paint paint = this.backdrop;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            paint.setShader(new BitmapShader(bitmap, tileMode, tileMode));
            this.lens.setShader(new BitmapShader(bitmap, tileMode, tileMode));
        }
        updateMatrix(getBounds());
        if (z2) {
            setNewAlpha(0);
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 255);
            this.fade = valueAnimatorOfInt;
            valueAnimatorOfInt.setDuration(j);
            this.fade.setInterpolator(new DecelerateInterpolator(1.4f));
            this.fade.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sid.tvos.k
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f310a.lambda$setBackdrop$0(valueAnimator2);
                }
            });
            this.fade.addListener(new AnimatorListenerAdapter() { // from class: com.sid.tvos.LiquidGlassDrawable.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    LiquidGlassDrawable.this.oldBmp = null;
                    LiquidGlassDrawable.this.setNewAlpha(255);
                    LiquidGlassDrawable.this.invalidateSelf();
                }
            });
            this.fade.start();
        } else {
            setNewAlpha(255);
        }
        invalidateSelf();
    }

    public void setBackdropOpacity(float f2) {
        float fMax = Math.max(0.0f, Math.min(1.0f, f2));
        float f3 = this.opacity;
        if (fMax != f3) {
            if (Math.abs(fMax - f3) >= 0.04f || fMax == 0.0f || fMax == 1.0f) {
                this.opacity = fMax;
                setNewAlpha(this.newAlpha);
                int i2 = (int) (fMax * 255.0f);
                this.oldBackdrop.setAlpha(i2);
                this.oldLens.setAlpha(i2);
                invalidateSelf();
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public void setLiquid(boolean z2) {
        this.liquid = z2;
        onBoundsChange(getBounds());
        invalidateSelf();
    }

    public void setLiveSource(View view, View view2) {
        if (Build.VERSION.SDK_INT < 31) {
            return;
        }
        this.liveSource = view;
        this.liveHost = view2;
        invalidateSelf();
    }

    public LiquidGlassDrawable(float f2, float f3) {
        this.backdrop = new Paint(3);
        this.lens = new Paint(3);
        this.fill = new Paint(1);
        this.specular = new Paint(1);
        Paint paint = new Paint(1);
        this.rim = paint;
        Paint paint2 = new Paint(1);
        this.innerRim = paint2;
        Paint paint3 = new Paint(1);
        this.innerShade = paint3;
        this.rect = new RectF();
        this.inner = new RectF();
        this.ring = new Path();
        this.matrix = new Matrix();
        this.lensMatrix = new Matrix();
        this.oldBackdrop = new Paint(3);
        this.oldLens = new Paint(3);
        this.liquid = true;
        this.hostLoc = new int[2];
        this.srcLoc = new int[2];
        this.newAlpha = 255;
        this.opacity = 1.0f;
        this.density = f2;
        this.corner = f3;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        paint2.setStyle(style);
        paint3.setStyle(style);
        paint3.setStrokeWidth(f2 * 3.0f);
    }
}
