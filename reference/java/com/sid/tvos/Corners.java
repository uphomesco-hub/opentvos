package com.sid.tvos;

import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import android.view.ViewOutlineProvider;

/* JADX INFO: loaded from: classes.dex */
abstract class Corners {
    public static boolean canClip() {
        return Build.VERSION.SDK_INT >= 33;
    }

    public static void clip(View view, final float f2) {
        view.setOutlineProvider(new ViewOutlineProvider() { // from class: com.sid.tvos.Corners.1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view2, Outline outline) {
                Corners.set(outline, view2, f2);
            }
        });
        view.setClipToOutline(true);
    }

    public static void set(Outline outline, View view, float f2) {
        int width = view.getWidth();
        int height = view.getHeight();
        if (!canClip() || width <= 0 || height <= 0) {
            outline.setRoundRect(0, 0, width, height, f2);
        } else {
            outline.setPath(squircle(new Path(), new RectF(0.0f, 0.0f, width, height), f2));
        }
    }

    public static Path squircle(Path path, RectF rectF, float f2) {
        path.reset();
        float fMin = Math.min(rectF.width(), rectF.height()) / 2.0f;
        float fMin2 = Math.min(f2, fMin);
        if (fMin2 <= 0.0f) {
            path.addRect(rectF, Path.Direction.CW);
            return path;
        }
        float fMin3 = Math.min(0.6f, (fMin / fMin2) - 1.0f);
        float fMin4 = Math.min((fMin3 + 1.0f) * fMin2, fMin);
        double d2 = (1.0f - fMin3) * 90.0f;
        double d3 = fMin2;
        float fSin = (float) (Math.sin(Math.toRadians(d2 / 2.0d)) * d3 * Math.sqrt(2.0d));
        double d4 = fMin3 * 45.0f;
        float fCos = (float) (Math.cos(Math.toRadians(d4)) * ((double) ((float) (Math.tan(Math.toRadians(((90.0d - d2) / 2.0d) / 2.0d)) * d3))));
        float fTan = (float) (Math.tan(Math.toRadians(d4)) * ((double) fCos));
        float f3 = (((fMin4 - fSin) - fCos) - fTan) / 3.0f;
        float f4 = f3 * 2.0f;
        float f5 = (float) d2;
        float f6 = rectF.left;
        float f7 = rectF.top;
        float f8 = rectF.right;
        float f9 = rectF.bottom;
        RectF rectF2 = new RectF();
        float f10 = f6 + fMin4;
        path.moveTo(f10, f7);
        path.lineTo(f8 - fMin4, f7);
        float f11 = f4 + f3;
        float f12 = f11 + fCos;
        path.rCubicTo(f4, 0.0f, f11, 0.0f, f12, fTan);
        float f13 = fMin2 * 2.0f;
        float f14 = f8 - f13;
        float f15 = f7 + f13;
        rectF2.set(f14, f7, f8, f15);
        float f16 = f5 / 2.0f;
        path.arcTo(rectF2, (-45.0f) - f16, f5, false);
        float f17 = f3 + fCos;
        path.rCubicTo(fTan, fCos, fTan, f17, fTan, f12);
        path.lineTo(f8, f9 - fMin4);
        float f18 = -fTan;
        path.rCubicTo(0.0f, f4, 0.0f, f11, f18, f12);
        float f19 = f9 - f13;
        rectF2.set(f14, f19, f8, f9);
        path.arcTo(rectF2, 45.0f - f16, f5, false);
        float f20 = -fCos;
        float f21 = -f17;
        float f22 = -f12;
        path.rCubicTo(f20, fTan, f21, fTan, f22, fTan);
        path.lineTo(f10, f9);
        float f23 = -f4;
        float f24 = -f11;
        path.rCubicTo(f23, 0.0f, f24, 0.0f, f22, f18);
        float f25 = f13 + f6;
        rectF2.set(f6, f19, f25, f9);
        path.arcTo(rectF2, 135.0f - f16, f5, false);
        path.rCubicTo(f18, f20, f18, f21, f18, f22);
        path.lineTo(f6, f7 + fMin4);
        path.rCubicTo(0.0f, f23, 0.0f, f24, fTan, f22);
        rectF2.set(f6, f7, f25, f15);
        path.arcTo(rectF2, 225.0f - f16, f5, false);
        path.rCubicTo(fCos, f18, f17, f18, f12, f18);
        path.close();
        return path;
    }
}
