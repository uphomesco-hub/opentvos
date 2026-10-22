package r;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;

/* JADX INFO: renamed from: r.y, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0058y extends androidx.recyclerview.widget.m {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public PointF f753k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final DisplayMetrics f754l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f756n;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LinearInterpolator f752i = new LinearInterpolator();
    public final DecelerateInterpolator j = new DecelerateInterpolator();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f755m = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f757o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f758p = 0;

    public C0058y(Context context) {
        this.f754l = context.getResources().getDisplayMetrics();
    }

    public static int d(int i2, int i3, int i4, int i5, int i6) {
        if (i6 == -1) {
            return i4 - i2;
        }
        if (i6 != 0) {
            if (i6 == 1) {
                return i5 - i3;
            }
            throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
        }
        int i7 = i4 - i2;
        if (i7 > 0) {
            return i7;
        }
        int i8 = i5 - i3;
        if (i8 < 0) {
            return i8;
        }
        return 0;
    }

    public final int e(int i2) {
        float fAbs = Math.abs(i2);
        if (!this.f755m) {
            this.f756n = 25.0f / this.f754l.densityDpi;
            this.f755m = true;
        }
        return (int) Math.ceil(fAbs * this.f756n);
    }
}
