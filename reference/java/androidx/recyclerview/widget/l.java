package androidx.recyclerview.widget;

import android.util.Log;
import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f75a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f76b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f77c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f78d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Interpolator f79e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f80f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f81g;

    public final void a(RecyclerView recyclerView) {
        int i2 = this.f78d;
        if (i2 >= 0) {
            this.f78d = -1;
            recyclerView.jumpToPositionForSmoothScroller(i2);
            this.f80f = false;
            return;
        }
        if (!this.f80f) {
            this.f81g = 0;
            return;
        }
        Interpolator interpolator = this.f79e;
        if (interpolator != null && this.f77c < 1) {
            throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
        }
        int i3 = this.f77c;
        if (i3 < 1) {
            throw new IllegalStateException("Scroll duration must be a positive number");
        }
        recyclerView.mViewFlinger.c(this.f75a, this.f76b, interpolator, i3);
        int i4 = this.f81g + 1;
        this.f81g = i4;
        if (i4 > 10) {
            Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
        }
        this.f80f = false;
    }
}
