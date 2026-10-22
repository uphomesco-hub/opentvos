package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import r.C0058y;
import r.N;
import r.X;
import r.Y;

/* JADX INFO: loaded from: classes.dex */
public abstract class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f82a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public RecyclerView f83b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public j f84c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f85d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f86e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public View f87f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final l f88g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f89h;

    public m() {
        l lVar = new l();
        lVar.f78d = -1;
        lVar.f80f = false;
        lVar.f81g = 0;
        lVar.f75a = 0;
        lVar.f76b = 0;
        lVar.f77c = Integer.MIN_VALUE;
        lVar.f79e = null;
        this.f88g = lVar;
    }

    public final PointF a(int i2) {
        Object obj = this.f84c;
        if (obj instanceof X) {
            return ((X) obj).computeScrollVectorForPosition(i2);
        }
        Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + X.class.getCanonicalName());
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x006a  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:81:0x01ad  */
    public final void b(int i2, int i3) {
        int i4;
        int iD;
        int iD2;
        PointF pointFA;
        RecyclerView recyclerView = this.f83b;
        int i5 = -1;
        if (this.f82a == -1 || recyclerView == null) {
            c();
        }
        if (this.f85d && this.f87f == null && this.f84c != null && (pointFA = a(this.f82a)) != null) {
            float f2 = pointFA.x;
            if (f2 != 0.0f || pointFA.y != 0.0f) {
                recyclerView.scrollStep((int) Math.signum(f2), (int) Math.signum(pointFA.y), null);
            }
        }
        this.f85d = false;
        View view = this.f87f;
        l lVar = this.f88g;
        if (view != null) {
            if (this.f83b.getChildLayoutPosition(view) == this.f82a) {
                View view2 = this.f87f;
                Y y2 = recyclerView.mState;
                C0058y c0058y = (C0058y) this;
                PointF pointF = c0058y.f753k;
                if (pointF != null) {
                    float f3 = pointF.x;
                    if (f3 == 0.0f) {
                        i4 = 0;
                    } else {
                        i4 = f3 > 0.0f ? 1 : -1;
                    }
                } else {
                    i4 = 0;
                }
                j jVar = c0058y.f84c;
                if (jVar == null || !jVar.canScrollHorizontally()) {
                    iD = 0;
                } else {
                    N n2 = (N) view2.getLayoutParams();
                    iD = C0058y.d(jVar.getDecoratedLeft(view2) - ((ViewGroup.MarginLayoutParams) n2).leftMargin, jVar.getDecoratedRight(view2) + ((ViewGroup.MarginLayoutParams) n2).rightMargin, jVar.getPaddingLeft(), jVar.getWidth() - jVar.getPaddingRight(), i4);
                }
                PointF pointF2 = c0058y.f753k;
                if (pointF2 != null) {
                    float f4 = pointF2.y;
                    if (f4 == 0.0f) {
                        i5 = 0;
                    } else if (f4 > 0.0f) {
                        i5 = 1;
                    }
                } else {
                    i5 = 0;
                }
                j jVar2 = c0058y.f84c;
                if (jVar2 == null || !jVar2.canScrollVertically()) {
                    iD2 = 0;
                } else {
                    N n3 = (N) view2.getLayoutParams();
                    iD2 = C0058y.d(jVar2.getDecoratedTop(view2) - ((ViewGroup.MarginLayoutParams) n3).topMargin, jVar2.getDecoratedBottom(view2) + ((ViewGroup.MarginLayoutParams) n3).bottomMargin, jVar2.getPaddingTop(), jVar2.getHeight() - jVar2.getPaddingBottom(), i5);
                }
                int iCeil = (int) Math.ceil(((double) c0058y.e((int) Math.sqrt((iD2 * iD2) + (iD * iD)))) / 0.3356d);
                if (iCeil > 0) {
                    DecelerateInterpolator decelerateInterpolator = c0058y.j;
                    lVar.f75a = -iD;
                    lVar.f76b = -iD2;
                    lVar.f77c = iCeil;
                    lVar.f79e = decelerateInterpolator;
                    lVar.f80f = true;
                }
                lVar.a(recyclerView);
                c();
            } else {
                Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                this.f87f = null;
            }
        }
        if (this.f86e) {
            Y y3 = recyclerView.mState;
            C0058y c0058y2 = (C0058y) this;
            if (c0058y2.f83b.mLayout.getChildCount() == 0) {
                c0058y2.c();
            } else {
                int i6 = c0058y2.f757o;
                int i7 = i6 - i2;
                if (i6 * i7 <= 0) {
                    i7 = 0;
                }
                c0058y2.f757o = i7;
                int i8 = c0058y2.f758p;
                int i9 = i8 - i3;
                if (i8 * i9 <= 0) {
                    i9 = 0;
                }
                c0058y2.f758p = i9;
                if (i7 == 0 && i9 == 0) {
                    PointF pointFA2 = c0058y2.a(c0058y2.f82a);
                    if (pointFA2 != null) {
                        float f5 = pointFA2.x;
                        if (f5 == 0.0f && pointFA2.y == 0.0f) {
                            lVar.f78d = c0058y2.f82a;
                            c0058y2.c();
                        } else {
                            float f6 = pointFA2.y;
                            float fSqrt = (float) Math.sqrt((f6 * f6) + (f5 * f5));
                            float f7 = pointFA2.x / fSqrt;
                            pointFA2.x = f7;
                            float f8 = pointFA2.y / fSqrt;
                            pointFA2.y = f8;
                            c0058y2.f753k = pointFA2;
                            c0058y2.f757o = (int) (f7 * 10000.0f);
                            c0058y2.f758p = (int) (f8 * 10000.0f);
                            int iE = c0058y2.e(10000);
                            int i10 = (int) (c0058y2.f757o * 1.2f);
                            int i11 = (int) (c0058y2.f758p * 1.2f);
                            LinearInterpolator linearInterpolator = c0058y2.f752i;
                            lVar.f75a = i10;
                            lVar.f76b = i11;
                            lVar.f77c = (int) (iE * 1.2f);
                            lVar.f79e = linearInterpolator;
                            lVar.f80f = true;
                        }
                    } else {
                        lVar.f78d = c0058y2.f82a;
                        c0058y2.c();
                    }
                }
            }
            boolean z2 = lVar.f78d >= 0;
            lVar.a(recyclerView);
            if (z2 && this.f86e) {
                this.f85d = true;
                recyclerView.mViewFlinger.b();
            }
        }
    }

    public final void c() {
        if (this.f86e) {
            this.f86e = false;
            C0058y c0058y = (C0058y) this;
            c0058y.f758p = 0;
            c0058y.f757o = 0;
            c0058y.f753k = null;
            this.f83b.mState.f572a = -1;
            this.f87f = null;
            this.f82a = -1;
            this.f85d = false;
            this.f84c.onSmoothScrollerStopped(this);
            this.f84c = null;
            this.f83b = null;
        }
    }
}
