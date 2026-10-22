package androidx.recyclerview.widget;

import android.os.Build;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import java.lang.reflect.Field;
import java.util.Arrays;
import k.AbstractC0031f;
import k.r;

/* JADX INFO: loaded from: classes.dex */
public final class n implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f90a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f91b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public OverScroller f92c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Interpolator f93d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f94e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f95f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f96g;

    public n(RecyclerView recyclerView) {
        this.f96g = recyclerView;
        Interpolator interpolator = RecyclerView.sQuinticInterpolator;
        this.f93d = interpolator;
        this.f94e = false;
        this.f95f = false;
        this.f92c = new OverScroller(recyclerView.getContext(), interpolator);
    }

    public final void a(int i2, int i3) {
        RecyclerView recyclerView = this.f96g;
        recyclerView.setScrollState(2);
        this.f91b = 0;
        this.f90a = 0;
        Interpolator interpolator = this.f93d;
        Interpolator interpolator2 = RecyclerView.sQuinticInterpolator;
        if (interpolator != interpolator2) {
            this.f93d = interpolator2;
            this.f92c = new OverScroller(recyclerView.getContext(), interpolator2);
        }
        this.f92c.fling(0, 0, i2, i3, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        b();
    }

    public final void b() {
        if (this.f94e) {
            this.f95f = true;
            return;
        }
        RecyclerView recyclerView = this.f96g;
        recyclerView.removeCallbacks(this);
        Field field = r.f469a;
        AbstractC0031f.m(recyclerView, this);
    }

    public final void c(int i2, int i3, Interpolator interpolator, int i4) {
        RecyclerView recyclerView = this.f96g;
        if (i4 == Integer.MIN_VALUE) {
            int iAbs = Math.abs(i2);
            int iAbs2 = Math.abs(i3);
            boolean z2 = iAbs > iAbs2;
            int width = z2 ? recyclerView.getWidth() : recyclerView.getHeight();
            if (!z2) {
                iAbs = iAbs2;
            }
            i4 = Math.min((int) (((iAbs / width) + 1.0f) * 300.0f), 2000);
        }
        int i5 = i4;
        if (interpolator == null) {
            interpolator = RecyclerView.sQuinticInterpolator;
        }
        if (this.f93d != interpolator) {
            this.f93d = interpolator;
            this.f92c = new OverScroller(recyclerView.getContext(), interpolator);
        }
        this.f91b = 0;
        this.f90a = 0;
        recyclerView.setScrollState(2);
        this.f92c.startScroll(0, 0, i2, i3, i5);
        if (Build.VERSION.SDK_INT < 23) {
            this.f92c.computeScrollOffset();
        }
        b();
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        RecyclerView recyclerView = this.f96g;
        if (recyclerView.mLayout == null) {
            recyclerView.removeCallbacks(this);
            this.f92c.abortAnimation();
            return;
        }
        this.f95f = false;
        this.f94e = true;
        recyclerView.consumePendingUpdateOperations();
        OverScroller overScroller = this.f92c;
        if (overScroller.computeScrollOffset()) {
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int i7 = currX - this.f90a;
            int i8 = currY - this.f91b;
            this.f90a = currX;
            this.f91b = currY;
            int iConsumeFlingInHorizontalStretch = recyclerView.consumeFlingInHorizontalStretch(i7);
            int iConsumeFlingInVerticalStretch = recyclerView.consumeFlingInVerticalStretch(i8);
            int[] iArr = recyclerView.mReusableIntPair;
            iArr[0] = 0;
            iArr[1] = 0;
            if (recyclerView.dispatchNestedPreScroll(iConsumeFlingInHorizontalStretch, iConsumeFlingInVerticalStretch, iArr, null, 1)) {
                int[] iArr2 = recyclerView.mReusableIntPair;
                iConsumeFlingInHorizontalStretch -= iArr2[0];
                iConsumeFlingInVerticalStretch -= iArr2[1];
            }
            if (recyclerView.getOverScrollMode() != 2) {
                recyclerView.considerReleasingGlowsOnScroll(iConsumeFlingInHorizontalStretch, iConsumeFlingInVerticalStretch);
            }
            if (recyclerView.mAdapter != null) {
                int[] iArr3 = recyclerView.mReusableIntPair;
                iArr3[0] = 0;
                iArr3[1] = 0;
                recyclerView.scrollStep(iConsumeFlingInHorizontalStretch, iConsumeFlingInVerticalStretch, iArr3);
                int[] iArr4 = recyclerView.mReusableIntPair;
                int i9 = iArr4[0];
                int i10 = iArr4[1];
                int i11 = iConsumeFlingInHorizontalStretch - i9;
                int i12 = iConsumeFlingInVerticalStretch - i10;
                m mVar = recyclerView.mLayout.mSmoothScroller;
                if (mVar != null && !mVar.f85d && mVar.f86e) {
                    int iB = recyclerView.mState.b();
                    if (iB == 0) {
                        mVar.c();
                    } else {
                        if (mVar.f82a >= iB) {
                            mVar.f82a = iB - 1;
                        }
                        mVar.b(i9, i10);
                    }
                }
                i4 = i10;
                i5 = i9;
                i2 = i11;
                i3 = i12;
            } else {
                i2 = iConsumeFlingInHorizontalStretch;
                i3 = iConsumeFlingInVerticalStretch;
                i4 = 0;
                i5 = 0;
            }
            if (!recyclerView.mItemDecorations.isEmpty()) {
                recyclerView.invalidate();
            }
            int[] iArr5 = recyclerView.mReusableIntPair;
            iArr5[0] = 0;
            iArr5[1] = 0;
            recyclerView.dispatchNestedScroll(i5, i4, i2, i3, null, 1, iArr5);
            int[] iArr6 = recyclerView.mReusableIntPair;
            int i13 = i2 - iArr6[0];
            int i14 = i3 - iArr6[1];
            if (i5 != 0 || i4 != 0) {
                recyclerView.dispatchOnScrolled(i5, i4);
            }
            if (!recyclerView.awakenScrollBars()) {
                recyclerView.invalidate();
            }
            boolean z2 = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i13 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i14 != 0));
            m mVar2 = recyclerView.mLayout.mSmoothScroller;
            if ((mVar2 == null || !mVar2.f85d) && z2) {
                if (recyclerView.getOverScrollMode() != 2) {
                    int currVelocity = (int) overScroller.getCurrVelocity();
                    if (i13 < 0) {
                        i6 = -currVelocity;
                    } else {
                        i6 = i13 > 0 ? currVelocity : 0;
                    }
                    if (i14 < 0) {
                        currVelocity = -currVelocity;
                    } else if (i14 <= 0) {
                        currVelocity = 0;
                    }
                    recyclerView.absorbGlows(i6, currVelocity);
                }
                if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                    c cVar = recyclerView.mPrefetchRegistry;
                    int[] iArr7 = cVar.f50c;
                    if (iArr7 != null) {
                        Arrays.fill(iArr7, -1);
                    }
                    cVar.f51d = 0;
                }
            } else {
                b();
                d dVar = recyclerView.mGapWorker;
                if (dVar != null) {
                    dVar.a(recyclerView, i5, i4);
                }
            }
        }
        m mVar3 = recyclerView.mLayout.mSmoothScroller;
        if (mVar3 != null && mVar3.f85d) {
            mVar3.b(0, 0);
        }
        this.f94e = false;
        if (!this.f95f) {
            recyclerView.setScrollState(0);
            recyclerView.stopNestedScroll(1);
        } else {
            recyclerView.removeCallbacks(this);
            Field field = r.f469a;
            AbstractC0031f.m(recyclerView, this);
        }
    }
}
