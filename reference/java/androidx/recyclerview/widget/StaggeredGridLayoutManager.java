package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import r.A;
import r.C0052s;
import r.C0058y;
import r.L;
import r.M;
import r.N;
import r.RunnableC0044j;
import r.X;
import r.Y;
import r.d0;
import r.e0;
import r.g0;
import r.h0;
import r.i0;

/* JADX INFO: loaded from: classes.dex */
public class StaggeredGridLayoutManager extends j implements X {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f16a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final i0[] f17b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final A f18c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final A f19d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f20e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f21f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final C0052s f22g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f23h;
    public final BitSet j;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final g0 f27m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f28n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f29o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f30p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public h0 f31q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final Rect f32r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final d0 f33s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final boolean f34t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int[] f35u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final RunnableC0044j f36v;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f24i = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f25k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f26l = Integer.MIN_VALUE;

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i2, int i3) {
        this.f16a = -1;
        this.f23h = false;
        g0 g0Var = new g0();
        this.f27m = g0Var;
        this.f28n = 2;
        this.f32r = new Rect();
        this.f33s = new d0(this);
        this.f34t = true;
        this.f36v = new RunnableC0044j(this, 1);
        M properties = j.getProperties(context, attributeSet, i2, i3);
        int i4 = properties.f555a;
        if (i4 != 0 && i4 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        assertNotInLayoutOrScroll(null);
        if (i4 != this.f20e) {
            this.f20e = i4;
            A a2 = this.f18c;
            this.f18c = this.f19d;
            this.f19d = a2;
            requestLayout();
        }
        int i5 = properties.f556b;
        assertNotInLayoutOrScroll(null);
        if (i5 != this.f16a) {
            g0Var.a();
            requestLayout();
            this.f16a = i5;
            this.j = new BitSet(this.f16a);
            this.f17b = new i0[this.f16a];
            for (int i6 = 0; i6 < this.f16a; i6++) {
                this.f17b[i6] = new i0(this, i6);
            }
            requestLayout();
        }
        boolean z2 = properties.f557c;
        assertNotInLayoutOrScroll(null);
        h0 h0Var = this.f31q;
        if (h0Var != null && h0Var.f646h != z2) {
            h0Var.f646h = z2;
        }
        this.f23h = z2;
        requestLayout();
        C0052s c0052s = new C0052s();
        c0052s.f719a = true;
        c0052s.f724f = 0;
        c0052s.f725g = 0;
        this.f22g = c0052s;
        this.f18c = A.a(this, this.f20e);
        this.f19d = A.a(this, 1 - this.f20e);
    }

    public static int D(int i2, int i3, int i4) {
        if (i3 == 0 && i4 == 0) {
            return i2;
        }
        int mode = View.MeasureSpec.getMode(i2);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i2) - i3) - i4), mode) : i2;
    }

    public final void A(int i2) {
        C0052s c0052s = this.f22g;
        c0052s.f723e = i2;
        c0052s.f722d = this.f24i != (i2 == -1) ? -1 : 1;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0035  */
    /* JADX WARN: Code duplicated, block: B:18:0x0048  */
    public final void B(int i2, Y y2) {
        int iL;
        int iL2;
        int i3;
        C0052s c0052s = this.f22g;
        boolean z2 = false;
        c0052s.f720b = 0;
        c0052s.f721c = i2;
        if (isSmoothScrolling() && (i3 = y2.f572a) != -1) {
            if (this.f24i == (i3 < i2)) {
                iL = this.f18c.l();
            } else {
                iL2 = this.f18c.l();
                iL = 0;
            }
            if (getClipToPadding()) {
                c0052s.f724f = this.f18c.k() - iL2;
                c0052s.f725g = this.f18c.g() + iL;
            } else {
                c0052s.f725g = this.f18c.f() + iL;
                c0052s.f724f = -iL2;
            }
            c0052s.f726h = false;
            c0052s.f719a = true;
            if (this.f18c.i() == 0 && this.f18c.f() == 0) {
                z2 = true;
            }
            c0052s.f727i = z2;
        }
        iL = 0;
        iL2 = 0;
        if (getClipToPadding()) {
            c0052s.f724f = this.f18c.k() - iL2;
            c0052s.f725g = this.f18c.g() + iL;
        } else {
            c0052s.f725g = this.f18c.f() + iL;
            c0052s.f724f = -iL2;
        }
        c0052s.f726h = false;
        c0052s.f719a = true;
        if (this.f18c.i() == 0) {
            z2 = true;
        }
        c0052s.f727i = z2;
    }

    public final void C(i0 i0Var, int i2, int i3) {
        int i4 = i0Var.f663d;
        int i5 = i0Var.f664e;
        if (i2 == -1) {
            int i6 = i0Var.f661b;
            if (i6 == Integer.MIN_VALUE) {
                View view = (View) i0Var.f660a.get(0);
                e0 e0Var = (e0) view.getLayoutParams();
                i0Var.f661b = i0Var.f665f.f18c.e(view);
                e0Var.getClass();
                i6 = i0Var.f661b;
            }
            if (i6 + i4 > i3) {
                return;
            }
        } else {
            int i7 = i0Var.f662c;
            if (i7 == Integer.MIN_VALUE) {
                i0Var.a();
                i7 = i0Var.f662c;
            }
            if (i7 - i4 < i3) {
                return;
            }
        }
        this.j.set(i5, false);
    }

    @Override // androidx.recyclerview.widget.j
    public final void assertNotInLayoutOrScroll(String str) {
        RecyclerView recyclerView;
        if (this.f31q != null || (recyclerView = this.mRecyclerView) == null) {
            return;
        }
        recyclerView.assertNotInLayoutOrScroll(str);
    }

    public final int c(int i2) {
        if (getChildCount() == 0) {
            return this.f24i ? 1 : -1;
        }
        return (i2 < m()) != this.f24i ? -1 : 1;
    }

    @Override // androidx.recyclerview.widget.j
    public final boolean canScrollHorizontally() {
        return this.f20e == 0;
    }

    @Override // androidx.recyclerview.widget.j
    public final boolean canScrollVertically() {
        return this.f20e == 1;
    }

    @Override // androidx.recyclerview.widget.j
    public final boolean checkLayoutParams(N n2) {
        return n2 instanceof e0;
    }

    @Override // androidx.recyclerview.widget.j
    public final void collectAdjacentPrefetchPositions(int i2, int i3, Y y2, L l2) {
        C0052s c0052s;
        int iF;
        int iH;
        if (this.f20e != 0) {
            i2 = i3;
        }
        if (getChildCount() == 0 || i2 == 0) {
            return;
        }
        v(i2, y2);
        int[] iArr = this.f35u;
        if (iArr == null || iArr.length < this.f16a) {
            this.f35u = new int[this.f16a];
        }
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = this.f16a;
            c0052s = this.f22g;
            if (i4 >= i6) {
                break;
            }
            if (c0052s.f722d == -1) {
                iF = c0052s.f724f;
                iH = this.f17b[i4].h(iF);
            } else {
                iF = this.f17b[i4].f(c0052s.f725g);
                iH = c0052s.f725g;
            }
            int i7 = iF - iH;
            if (i7 >= 0) {
                this.f35u[i5] = i7;
                i5++;
            }
            i4++;
        }
        Arrays.sort(this.f35u, 0, i5);
        for (int i8 = 0; i8 < i5; i8++) {
            int i9 = c0052s.f721c;
            if (i9 < 0 || i9 >= y2.b()) {
                return;
            }
            ((c) l2).a(c0052s.f721c, this.f35u[i8]);
            c0052s.f721c += c0052s.f722d;
        }
    }

    @Override // androidx.recyclerview.widget.j
    public final int computeHorizontalScrollExtent(Y y2) {
        return e(y2);
    }

    @Override // androidx.recyclerview.widget.j
    public final int computeHorizontalScrollOffset(Y y2) {
        return f(y2);
    }

    @Override // androidx.recyclerview.widget.j
    public final int computeHorizontalScrollRange(Y y2) {
        return g(y2);
    }

    @Override // r.X
    public final PointF computeScrollVectorForPosition(int i2) {
        int iC = c(i2);
        PointF pointF = new PointF();
        if (iC == 0) {
            return null;
        }
        if (this.f20e == 0) {
            pointF.x = iC;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = iC;
        }
        return pointF;
    }

    @Override // androidx.recyclerview.widget.j
    public final int computeVerticalScrollExtent(Y y2) {
        return e(y2);
    }

    @Override // androidx.recyclerview.widget.j
    public final int computeVerticalScrollOffset(Y y2) {
        return f(y2);
    }

    @Override // androidx.recyclerview.widget.j
    public final int computeVerticalScrollRange(Y y2) {
        return g(y2);
    }

    public final boolean d() {
        int iM;
        if (getChildCount() != 0 && this.f28n != 0 && isAttachedToWindow()) {
            if (this.f24i) {
                iM = n();
                m();
            } else {
                iM = m();
                n();
            }
            g0 g0Var = this.f27m;
            if (iM == 0 && r() != null) {
                g0Var.a();
                requestSimpleAnimationsInNextLayout();
                requestLayout();
                return true;
            }
        }
        return false;
    }

    public final int e(Y y2) {
        if (getChildCount() == 0) {
            return 0;
        }
        A a2 = this.f18c;
        boolean z2 = this.f34t;
        return y.a.f(y2, a2, j(!z2), i(!z2), this, this.f34t);
    }

    public final int f(Y y2) {
        if (getChildCount() == 0) {
            return 0;
        }
        A a2 = this.f18c;
        boolean z2 = this.f34t;
        return y.a.g(y2, a2, j(!z2), i(!z2), this, this.f34t, this.f24i);
    }

    public final int g(Y y2) {
        if (getChildCount() == 0) {
            return 0;
        }
        A a2 = this.f18c;
        boolean z2 = this.f34t;
        return y.a.h(y2, a2, j(!z2), i(!z2), this, this.f34t);
    }

    @Override // androidx.recyclerview.widget.j
    public final N generateDefaultLayoutParams() {
        return this.f20e == 0 ? new e0(-2, -1) : new e0(-1, -2);
    }

    @Override // androidx.recyclerview.widget.j
    public final N generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new e0(context, attributeSet);
    }

    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r1v57 */
    public final int h(k kVar, C0052s c0052s, Y y2) {
        i0 i0Var;
        ?? r1;
        int iC;
        int iC2;
        int iK;
        int iC3;
        View view;
        View view2;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        k kVar2 = kVar;
        int i7 = 1;
        this.j.set(0, this.f16a, true);
        C0052s c0052s2 = this.f22g;
        int i8 = c0052s2.f727i ? c0052s.f723e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE : c0052s.f723e == 1 ? c0052s.f725g + c0052s.f720b : c0052s.f724f - c0052s.f720b;
        int i9 = c0052s.f723e;
        for (int i10 = 0; i10 < this.f16a; i10++) {
            if (!this.f17b[i10].f660a.isEmpty()) {
                C(this.f17b[i10], i9, i8);
            }
        }
        int iG = this.f24i ? this.f18c.g() : this.f18c.k();
        boolean z2 = false;
        while (true) {
            int i11 = c0052s.f721c;
            int i12 = -1;
            if (!(i11 >= 0 && i11 < y2.b()) || (!c0052s2.f727i && this.j.isEmpty())) {
                break;
            }
            View view3 = kVar2.l(c0052s.f721c, Long.MAX_VALUE).itemView;
            c0052s.f721c += c0052s.f722d;
            e0 e0Var = (e0) view3.getLayoutParams();
            int layoutPosition = e0Var.f559a.getLayoutPosition();
            g0 g0Var = this.f27m;
            int[] iArr = g0Var.f632a;
            int i13 = (iArr == null || layoutPosition >= iArr.length) ? -1 : iArr[layoutPosition];
            if (i13 == -1) {
                if (u(c0052s.f723e)) {
                    i6 = this.f16a - i7;
                    i5 = -1;
                } else {
                    i12 = this.f16a;
                    i5 = 1;
                    i6 = 0;
                }
                i0 i0Var2 = null;
                if (c0052s.f723e == i7) {
                    int iK2 = this.f18c.k();
                    int i14 = Integer.MAX_VALUE;
                    while (i6 != i12) {
                        i0 i0Var3 = this.f17b[i6];
                        int iF = i0Var3.f(iK2);
                        if (iF < i14) {
                            i14 = iF;
                            i0Var2 = i0Var3;
                        }
                        i6 += i5;
                    }
                } else {
                    int iG2 = this.f18c.g();
                    int i15 = Integer.MIN_VALUE;
                    while (i6 != i12) {
                        i0 i0Var4 = this.f17b[i6];
                        int iH = i0Var4.h(iG2);
                        if (iH > i15) {
                            i0Var2 = i0Var4;
                            i15 = iH;
                        }
                        i6 += i5;
                    }
                }
                i0Var = i0Var2;
                g0Var.b(layoutPosition);
                g0Var.f632a[layoutPosition] = i0Var.f664e;
            } else {
                i0Var = this.f17b[i13];
            }
            i0 i0Var5 = i0Var;
            e0Var.f616e = i0Var5;
            if (c0052s.f723e == 1) {
                addView(view3);
                r1 = 0;
            } else {
                r1 = 0;
                addView(view3, 0);
            }
            if (this.f20e == 1) {
                s(view3, j.getChildMeasureSpec(this.f21f, getWidthMode(), r1, ((ViewGroup.MarginLayoutParams) e0Var).width, r1), j.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingBottom() + getPaddingTop(), ((ViewGroup.MarginLayoutParams) e0Var).height, true));
            } else {
                s(view3, j.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingRight() + getPaddingLeft(), ((ViewGroup.MarginLayoutParams) e0Var).width, true), j.getChildMeasureSpec(this.f21f, getHeightMode(), 0, ((ViewGroup.MarginLayoutParams) e0Var).height, false));
            }
            if (c0052s.f723e == 1) {
                int iF2 = i0Var5.f(iG);
                iC2 = iF2;
                iC = this.f18c.c(view3) + iF2;
            } else {
                int iH2 = i0Var5.h(iG);
                iC = iH2;
                iC2 = iH2 - this.f18c.c(view3);
            }
            int i16 = c0052s.f723e;
            i0 i0Var6 = e0Var.f616e;
            i0Var6.getClass();
            if (i16 == 1) {
                e0 e0Var2 = (e0) view3.getLayoutParams();
                e0Var2.f616e = i0Var6;
                ArrayList arrayList = i0Var6.f660a;
                arrayList.add(view3);
                i0Var6.f662c = Integer.MIN_VALUE;
                if (arrayList.size() == 1) {
                    i0Var6.f661b = Integer.MIN_VALUE;
                }
                if (e0Var2.f559a.isRemoved() || e0Var2.f559a.isUpdated()) {
                    i0Var6.f663d = i0Var6.f665f.f18c.c(view3) + i0Var6.f663d;
                }
            } else {
                e0 e0Var3 = (e0) view3.getLayoutParams();
                e0Var3.f616e = i0Var6;
                ArrayList arrayList2 = i0Var6.f660a;
                arrayList2.add(0, view3);
                i0Var6.f661b = Integer.MIN_VALUE;
                if (arrayList2.size() == 1) {
                    i0Var6.f662c = Integer.MIN_VALUE;
                }
                if (e0Var3.f559a.isRemoved() || e0Var3.f559a.isUpdated()) {
                    i0Var6.f663d = i0Var6.f665f.f18c.c(view3) + i0Var6.f663d;
                }
            }
            if (isLayoutRTL() && this.f20e == 1) {
                iC3 = this.f19d.g() - (((this.f16a - 1) - i0Var5.f664e) * this.f21f);
                iK = iC3 - this.f19d.c(view3);
            } else {
                iK = this.f19d.k() + (i0Var5.f664e * this.f21f);
                iC3 = this.f19d.c(view3) + iK;
            }
            int i17 = iC3;
            int i18 = iK;
            if (this.f20e == 1) {
                view2 = view3;
                i2 = i18;
                i3 = i17;
                view = view3;
                i4 = iC;
            } else {
                view = view3;
                view2 = view;
                i2 = iC2;
                iC2 = i18;
                i3 = iC;
                i4 = i17;
            }
            layoutDecoratedWithMargins(view2, i2, iC2, i3, i4);
            C(i0Var5, c0052s2.f723e, i8);
            w(kVar, c0052s2);
            if (c0052s2.f726h && view.hasFocusable()) {
                this.j.set(i0Var5.f664e, false);
            }
            kVar2 = kVar;
            z2 = true;
            i7 = 1;
        }
        k kVar3 = kVar2;
        if (!z2) {
            w(kVar3, c0052s2);
        }
        int iK3 = c0052s2.f723e == -1 ? this.f18c.k() - p(this.f18c.k()) : o(this.f18c.g()) - this.f18c.g();
        if (iK3 > 0) {
            return Math.min(c0052s.f720b, iK3);
        }
        return 0;
    }

    public final View i(boolean z2) {
        int iK = this.f18c.k();
        int iG = this.f18c.g();
        View view = null;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            int iE = this.f18c.e(childAt);
            int iB = this.f18c.b(childAt);
            if (iB > iK && iE < iG) {
                if (iB <= iG || !z2) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.j
    public final boolean isAutoMeasureEnabled() {
        return this.f28n != 0;
    }

    public final boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    public final View j(boolean z2) {
        int iK = this.f18c.k();
        int iG = this.f18c.g();
        int childCount = getChildCount();
        View view = null;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int iE = this.f18c.e(childAt);
            if (this.f18c.b(childAt) > iK && iE < iG) {
                if (iE >= iK || !z2) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    public final void k(k kVar, Y y2, boolean z2) {
        int iG;
        int iO = o(Integer.MIN_VALUE);
        if (iO != Integer.MIN_VALUE && (iG = this.f18c.g() - iO) > 0) {
            int i2 = iG - (-scrollBy(-iG, kVar, y2));
            if (!z2 || i2 <= 0) {
                return;
            }
            this.f18c.p(i2);
        }
    }

    public final void l(k kVar, Y y2, boolean z2) {
        int iK;
        int iP = p(Integer.MAX_VALUE);
        if (iP != Integer.MAX_VALUE && (iK = iP - this.f18c.k()) > 0) {
            int iScrollBy = iK - scrollBy(iK, kVar, y2);
            if (!z2 || iScrollBy <= 0) {
                return;
            }
            this.f18c.p(-iScrollBy);
        }
    }

    public final int m() {
        if (getChildCount() == 0) {
            return 0;
        }
        return getPosition(getChildAt(0));
    }

    public final int n() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return getPosition(getChildAt(childCount - 1));
    }

    public final int o(int i2) {
        int iF = this.f17b[0].f(i2);
        for (int i3 = 1; i3 < this.f16a; i3++) {
            int iF2 = this.f17b[i3].f(i2);
            if (iF2 > iF) {
                iF = iF2;
            }
        }
        return iF;
    }

    @Override // androidx.recyclerview.widget.j
    public final void offsetChildrenHorizontal(int i2) {
        super.offsetChildrenHorizontal(i2);
        for (int i3 = 0; i3 < this.f16a; i3++) {
            i0 i0Var = this.f17b[i3];
            int i4 = i0Var.f661b;
            if (i4 != Integer.MIN_VALUE) {
                i0Var.f661b = i4 + i2;
            }
            int i5 = i0Var.f662c;
            if (i5 != Integer.MIN_VALUE) {
                i0Var.f662c = i5 + i2;
            }
        }
    }

    @Override // androidx.recyclerview.widget.j
    public final void offsetChildrenVertical(int i2) {
        super.offsetChildrenVertical(i2);
        for (int i3 = 0; i3 < this.f16a; i3++) {
            i0 i0Var = this.f17b[i3];
            int i4 = i0Var.f661b;
            if (i4 != Integer.MIN_VALUE) {
                i0Var.f661b = i4 + i2;
            }
            int i5 = i0Var.f662c;
            if (i5 != Integer.MIN_VALUE) {
                i0Var.f662c = i5 + i2;
            }
        }
    }

    @Override // androidx.recyclerview.widget.j
    public final void onAdapterChanged(g gVar, g gVar2) {
        this.f27m.a();
        for (int i2 = 0; i2 < this.f16a; i2++) {
            this.f17b[i2].b();
        }
    }

    @Override // androidx.recyclerview.widget.j
    public final void onDetachedFromWindow(RecyclerView recyclerView, k kVar) {
        onDetachedFromWindow(recyclerView);
        removeCallbacks(this.f36v);
        for (int i2 = 0; i2 < this.f16a; i2++) {
            this.f17b[i2].b();
        }
        recyclerView.requestLayout();
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0046  */
    /* JADX WARN: Code duplicated, block: B:38:0x004e  */
    @Override // androidx.recyclerview.widget.j
    public final View onFocusSearchFailed(View view, int i2, k kVar, Y y2) {
        View viewFindContainingItemView;
        int i3;
        if (getChildCount() == 0 || (viewFindContainingItemView = findContainingItemView(view)) == null) {
            return null;
        }
        z();
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 17) {
                    if (i2 != 33) {
                        if (i2 == 66 ? this.f20e == 0 : !(i2 != 130 || this.f20e != 1)) {
                            i3 = 1;
                        }
                    } else if (this.f20e == 1) {
                        i3 = -1;
                    }
                    i3 = Integer.MIN_VALUE;
                } else if (this.f20e == 0) {
                    i3 = -1;
                } else {
                    i3 = Integer.MIN_VALUE;
                }
            } else if (this.f20e != 1 && isLayoutRTL()) {
                i3 = -1;
            } else {
                i3 = 1;
            }
        } else if (this.f20e != 1 && isLayoutRTL()) {
            i3 = 1;
        } else {
            i3 = -1;
        }
        if (i3 == Integer.MIN_VALUE) {
            return null;
        }
        e0 e0Var = (e0) viewFindContainingItemView.getLayoutParams();
        e0Var.getClass();
        i0 i0Var = e0Var.f616e;
        int iN = i3 == 1 ? n() : m();
        B(iN, y2);
        A(i3);
        C0052s c0052s = this.f22g;
        c0052s.f721c = c0052s.f722d + iN;
        c0052s.f720b = (int) (this.f18c.l() * 0.33333334f);
        c0052s.f726h = true;
        c0052s.f719a = false;
        h(kVar, c0052s, y2);
        this.f29o = this.f24i;
        View viewG = i0Var.g(iN, i3);
        if (viewG != null && viewG != viewFindContainingItemView) {
            return viewG;
        }
        if (u(i3)) {
            for (int i4 = this.f16a - 1; i4 >= 0; i4--) {
                View viewG2 = this.f17b[i4].g(iN, i3);
                if (viewG2 != null && viewG2 != viewFindContainingItemView) {
                    return viewG2;
                }
            }
        } else {
            for (int i5 = 0; i5 < this.f16a; i5++) {
                View viewG3 = this.f17b[i5].g(iN, i3);
                if (viewG3 != null && viewG3 != viewFindContainingItemView) {
                    return viewG3;
                }
            }
        }
        boolean z2 = (this.f23h ^ true) == (i3 == -1);
        View viewFindViewByPosition = findViewByPosition(z2 ? i0Var.c() : i0Var.d());
        if (viewFindViewByPosition != null && viewFindViewByPosition != viewFindContainingItemView) {
            return viewFindViewByPosition;
        }
        if (u(i3)) {
            for (int i6 = this.f16a - 1; i6 >= 0; i6--) {
                if (i6 != i0Var.f664e) {
                    i0[] i0VarArr = this.f17b;
                    View viewFindViewByPosition2 = findViewByPosition(z2 ? i0VarArr[i6].c() : i0VarArr[i6].d());
                    if (viewFindViewByPosition2 != null && viewFindViewByPosition2 != viewFindContainingItemView) {
                        return viewFindViewByPosition2;
                    }
                }
            }
        } else {
            for (int i7 = 0; i7 < this.f16a; i7++) {
                i0[] i0VarArr2 = this.f17b;
                View viewFindViewByPosition3 = findViewByPosition(z2 ? i0VarArr2[i7].c() : i0VarArr2[i7].d());
                if (viewFindViewByPosition3 != null && viewFindViewByPosition3 != viewFindContainingItemView) {
                    return viewFindViewByPosition3;
                }
            }
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.j
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.mRecyclerView;
        onInitializeAccessibilityEvent(recyclerView.mRecycler, recyclerView.mState, accessibilityEvent);
        if (getChildCount() > 0) {
            View viewJ = j(false);
            View viewI = i(false);
            if (viewJ == null || viewI == null) {
                return;
            }
            int position = getPosition(viewJ);
            int position2 = getPosition(viewI);
            if (position < position2) {
                accessibilityEvent.setFromIndex(position);
                accessibilityEvent.setToIndex(position2);
            } else {
                accessibilityEvent.setFromIndex(position2);
                accessibilityEvent.setToIndex(position);
            }
        }
    }

    @Override // androidx.recyclerview.widget.j
    public final void onItemsAdded(RecyclerView recyclerView, int i2, int i3) {
        q(i2, i3, 1);
    }

    @Override // androidx.recyclerview.widget.j
    public final void onItemsChanged(RecyclerView recyclerView) {
        this.f27m.a();
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.j
    public final void onItemsMoved(RecyclerView recyclerView, int i2, int i3, int i4) {
        q(i2, i3, 8);
    }

    @Override // androidx.recyclerview.widget.j
    public final void onItemsRemoved(RecyclerView recyclerView, int i2, int i3) {
        q(i2, i3, 2);
    }

    @Override // androidx.recyclerview.widget.j
    public final void onItemsUpdated(RecyclerView recyclerView, int i2, int i3, Object obj) {
        q(i2, i3, 4);
    }

    @Override // androidx.recyclerview.widget.j
    public final void onLayoutChildren(k kVar, Y y2) {
        t(kVar, y2, true);
    }

    @Override // androidx.recyclerview.widget.j
    public final void onLayoutCompleted(Y y2) {
        this.f25k = -1;
        this.f26l = Integer.MIN_VALUE;
        this.f31q = null;
        this.f33s.a();
    }

    @Override // androidx.recyclerview.widget.j
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof h0) {
            h0 h0Var = (h0) parcelable;
            this.f31q = h0Var;
            if (this.f25k != -1) {
                h0Var.f642d = null;
                h0Var.f641c = 0;
                h0Var.f639a = -1;
                h0Var.f640b = -1;
                h0Var.f642d = null;
                h0Var.f641c = 0;
                h0Var.f643e = 0;
                h0Var.f644f = null;
                h0Var.f645g = null;
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.j
    public final Parcelable onSaveInstanceState() {
        int iH;
        int iK;
        int[] iArr;
        h0 h0Var = this.f31q;
        if (h0Var != null) {
            h0 h0Var2 = new h0();
            h0Var2.f641c = h0Var.f641c;
            h0Var2.f639a = h0Var.f639a;
            h0Var2.f640b = h0Var.f640b;
            h0Var2.f642d = h0Var.f642d;
            h0Var2.f643e = h0Var.f643e;
            h0Var2.f644f = h0Var.f644f;
            h0Var2.f646h = h0Var.f646h;
            h0Var2.f647i = h0Var.f647i;
            h0Var2.j = h0Var.j;
            h0Var2.f645g = h0Var.f645g;
            return h0Var2;
        }
        h0 h0Var3 = new h0();
        h0Var3.f646h = this.f23h;
        h0Var3.f647i = this.f29o;
        h0Var3.j = this.f30p;
        g0 g0Var = this.f27m;
        if (g0Var == null || (iArr = g0Var.f632a) == null) {
            h0Var3.f643e = 0;
        } else {
            h0Var3.f644f = iArr;
            h0Var3.f643e = iArr.length;
            h0Var3.f645g = g0Var.f633b;
        }
        if (getChildCount() > 0) {
            h0Var3.f639a = this.f29o ? n() : m();
            View viewI = this.f24i ? i(true) : j(true);
            h0Var3.f640b = viewI != null ? getPosition(viewI) : -1;
            int i2 = this.f16a;
            h0Var3.f641c = i2;
            h0Var3.f642d = new int[i2];
            for (int i3 = 0; i3 < this.f16a; i3++) {
                if (this.f29o) {
                    iH = this.f17b[i3].f(Integer.MIN_VALUE);
                    if (iH != Integer.MIN_VALUE) {
                        iK = this.f18c.g();
                        iH -= iK;
                    }
                } else {
                    iH = this.f17b[i3].h(Integer.MIN_VALUE);
                    if (iH != Integer.MIN_VALUE) {
                        iK = this.f18c.k();
                        iH -= iK;
                    }
                }
                h0Var3.f642d[i3] = iH;
            }
        } else {
            h0Var3.f639a = -1;
            h0Var3.f640b = -1;
            h0Var3.f641c = 0;
        }
        return h0Var3;
    }

    @Override // androidx.recyclerview.widget.j
    public final void onScrollStateChanged(int i2) {
        if (i2 == 0) {
            d();
        }
    }

    public final int p(int i2) {
        int iH = this.f17b[0].h(i2);
        for (int i3 = 1; i3 < this.f16a; i3++) {
            int iH2 = this.f17b[i3].h(i2);
            if (iH2 < iH) {
                iH = iH2;
            }
        }
        return iH;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0026  */
    /* JADX WARN: Code duplicated, block: B:17:0x0029 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:19:0x002c  */
    /* JADX WARN: Code duplicated, block: B:20:0x0033  */
    /* JADX WARN: Code duplicated, block: B:21:0x0037  */
    /* JADX WARN: Code duplicated, block: B:23:0x003c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x003d  */
    /* JADX WARN: Code duplicated, block: B:26:0x0041  */
    /* JADX WARN: Code duplicated, block: B:27:0x0046  */
    /* JADX WARN: Code duplicated, block: B:29:0x004c  */
    /* JADX WARN: Code duplicated, block: B:31:? A[RETURN, SYNTHETIC] */
    public final void q(int i2, int i3, int i4) {
        int i5;
        int i6;
        g0 g0Var;
        int iN;
        int iN2 = this.f24i ? n() : m();
        if (i4 == 8) {
            if (i2 < i3) {
                i5 = i3 + 1;
            } else {
                i5 = i2 + 1;
                i6 = i3;
            }
            g0Var = this.f27m;
            g0Var.c(i6);
            if (i4 != 1) {
                g0Var.d(i2, i3);
            } else if (i4 != 2) {
                g0Var.e(i2, i3);
            } else if (i4 == 8) {
                g0Var.e(i2, 1);
                g0Var.d(i3, 1);
            }
            if (i5 <= iN2) {
                return;
            }
            if (this.f24i) {
                iN = m();
            } else {
                iN = n();
            }
            if (i6 <= iN) {
                requestLayout();
            }
        }
        i5 = i2 + i3;
        i6 = i2;
        g0Var = this.f27m;
        g0Var.c(i6);
        if (i4 != 1) {
            g0Var.d(i2, i3);
        } else if (i4 != 2) {
            g0Var.e(i2, i3);
        } else if (i4 == 8) {
            g0Var.e(i2, 1);
            g0Var.d(i3, 1);
        }
        if (i5 <= iN2) {
            return;
        }
        if (this.f24i) {
            iN = m();
        } else {
            iN = n();
        }
        if (i6 <= iN) {
            requestLayout();
        }
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:52:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:54:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:55:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:68:0x00f7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x002c A[SYNTHETIC] */
    public final View r() {
        boolean z2;
        boolean z3;
        View view;
        int childCount = getChildCount();
        int i2 = childCount - 1;
        BitSet bitSet = new BitSet(this.f16a);
        bitSet.set(0, this.f16a, true);
        byte b2 = (this.f20e == 1 && isLayoutRTL()) ? (byte) 1 : (byte) -1;
        if (this.f24i) {
            childCount = -1;
        } else {
            i2 = 0;
        }
        int i3 = i2 < childCount ? 1 : -1;
        while (i2 != childCount) {
            View childAt = getChildAt(i2);
            e0 e0Var = (e0) childAt.getLayoutParams();
            if (bitSet.get(e0Var.f616e.f664e)) {
                i0 i0Var = e0Var.f616e;
                if (this.f24i) {
                    int i4 = i0Var.f662c;
                    if (i4 == Integer.MIN_VALUE) {
                        i0Var.a();
                        i4 = i0Var.f662c;
                    }
                    if (i4 < this.f18c.g()) {
                        ArrayList arrayList = i0Var.f660a;
                        view = (View) arrayList.get(arrayList.size() - 1);
                        ((e0) view.getLayoutParams()).getClass();
                        return childAt;
                    }
                    bitSet.clear(e0Var.f616e.f664e);
                } else {
                    int i5 = i0Var.f661b;
                    if (i5 == Integer.MIN_VALUE) {
                        View view2 = (View) i0Var.f660a.get(0);
                        e0 e0Var2 = (e0) view2.getLayoutParams();
                        i0Var.f661b = i0Var.f665f.f18c.e(view2);
                        e0Var2.getClass();
                        i5 = i0Var.f661b;
                    }
                    if (i5 > this.f18c.k()) {
                        view = (View) i0Var.f660a.get(0);
                        ((e0) view.getLayoutParams()).getClass();
                        return childAt;
                    }
                    bitSet.clear(e0Var.f616e.f664e);
                }
            }
            i2 += i3;
            if (i2 != childCount) {
                View childAt2 = getChildAt(i2);
                if (this.f24i) {
                    int iB = this.f18c.b(childAt);
                    int iB2 = this.f18c.b(childAt2);
                    if (iB < iB2) {
                        return childAt;
                    }
                    if (iB == iB2) {
                        if (e0Var.f616e.f664e - ((e0) childAt2.getLayoutParams()).f616e.f664e < 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (b2 < 0) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (z2 != z3) {
                            return childAt;
                        }
                    } else {
                        continue;
                    }
                } else {
                    int iE = this.f18c.e(childAt);
                    int iE2 = this.f18c.e(childAt2);
                    if (iE > iE2) {
                        return childAt;
                    }
                    if (iE == iE2) {
                        if (e0Var.f616e.f664e - ((e0) childAt2.getLayoutParams()).f616e.f664e < 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (b2 < 0) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (z2 != z3) {
                            return childAt;
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        return null;
    }

    public final void s(View view, int i2, int i3) {
        Rect rect = this.f32r;
        calculateItemDecorationsForChild(view, rect);
        e0 e0Var = (e0) view.getLayoutParams();
        int iD = D(i2, ((ViewGroup.MarginLayoutParams) e0Var).leftMargin + rect.left, ((ViewGroup.MarginLayoutParams) e0Var).rightMargin + rect.right);
        int iD2 = D(i3, ((ViewGroup.MarginLayoutParams) e0Var).topMargin + rect.top, ((ViewGroup.MarginLayoutParams) e0Var).bottomMargin + rect.bottom);
        if (shouldMeasureChild(view, iD, iD2, e0Var)) {
            view.measure(iD, iD2);
        }
    }

    public final int scrollBy(int i2, k kVar, Y y2) {
        if (getChildCount() == 0 || i2 == 0) {
            return 0;
        }
        v(i2, y2);
        C0052s c0052s = this.f22g;
        int iH = h(kVar, c0052s, y2);
        if (c0052s.f720b >= iH) {
            i2 = i2 < 0 ? -iH : iH;
        }
        this.f18c.p(-i2);
        this.f29o = this.f24i;
        c0052s.f720b = 0;
        w(kVar, c0052s);
        return i2;
    }

    @Override // androidx.recyclerview.widget.j
    public final int scrollHorizontallyBy(int i2, k kVar, Y y2) {
        return scrollBy(i2, kVar, y2);
    }

    @Override // androidx.recyclerview.widget.j
    public final void scrollToPosition(int i2) {
        h0 h0Var = this.f31q;
        if (h0Var != null && h0Var.f639a != i2) {
            h0Var.f642d = null;
            h0Var.f641c = 0;
            h0Var.f639a = -1;
            h0Var.f640b = -1;
        }
        this.f25k = i2;
        this.f26l = Integer.MIN_VALUE;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.j
    public final int scrollVerticallyBy(int i2, k kVar, Y y2) {
        return scrollBy(i2, kVar, y2);
    }

    @Override // androidx.recyclerview.widget.j
    public final void setMeasuredDimension(Rect rect, int i2, int i3) {
        int iChooseSize;
        int iChooseSize2;
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (this.f20e == 1) {
            iChooseSize2 = j.chooseSize(i3, rect.height() + paddingBottom, getMinimumHeight());
            iChooseSize = j.chooseSize(i2, (this.f21f * this.f16a) + paddingRight, getMinimumWidth());
        } else {
            iChooseSize = j.chooseSize(i2, rect.width() + paddingRight, getMinimumWidth());
            iChooseSize2 = j.chooseSize(i3, (this.f21f * this.f16a) + paddingBottom, getMinimumHeight());
        }
        setMeasuredDimension(iChooseSize, iChooseSize2);
    }

    @Override // androidx.recyclerview.widget.j
    public final void smoothScrollToPosition(RecyclerView recyclerView, Y y2, int i2) {
        C0058y c0058y = new C0058y(recyclerView.getContext());
        c0058y.f82a = i2;
        startSmoothScroll(c0058y);
    }

    @Override // androidx.recyclerview.widget.j
    public final boolean supportsPredictiveItemAnimations() {
        return this.f31q == null;
    }

    /* JADX WARN: Code duplicated, block: B:118:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:120:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:126:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:128:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:249:0x03ed  */
    /* JADX WARN: Code duplicated, block: B:260:0x01de A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:265:0x01de A[SYNTHETIC] */
    public final void t(k kVar, Y y2, boolean z2) {
        boolean z3;
        int i2;
        h0 h0Var;
        int childCount;
        int i3;
        int position;
        int position2;
        int childCount2;
        int i4;
        int iG;
        int iG2;
        int iK;
        int iE;
        boolean z4;
        h0 h0Var2 = this.f31q;
        d0 d0Var = this.f33s;
        if (!(h0Var2 == null && this.f25k == -1) && y2.b() == 0) {
            removeAndRecycleAllViews(kVar);
            d0Var.a();
            return;
        }
        boolean z5 = (d0Var.f607e && this.f25k == -1 && this.f31q == null) ? false : true;
        g0 g0Var = this.f27m;
        StaggeredGridLayoutManager staggeredGridLayoutManager = d0Var.f609g;
        if (z5) {
            d0Var.a();
            h0 h0Var3 = this.f31q;
            if (h0Var3 != null) {
                int i5 = h0Var3.f641c;
                if (i5 > 0) {
                    if (i5 == this.f16a) {
                        for (int i6 = 0; i6 < this.f16a; i6++) {
                            this.f17b[i6].b();
                            h0 h0Var4 = this.f31q;
                            int iG3 = h0Var4.f642d[i6];
                            if (iG3 != Integer.MIN_VALUE) {
                                iG3 += h0Var4.f647i ? this.f18c.g() : this.f18c.k();
                            }
                            i0 i0Var = this.f17b[i6];
                            i0Var.f661b = iG3;
                            i0Var.f662c = iG3;
                        }
                    } else {
                        h0Var3.f642d = null;
                        h0Var3.f641c = 0;
                        h0Var3.f643e = 0;
                        h0Var3.f644f = null;
                        h0Var3.f645g = null;
                        h0Var3.f639a = h0Var3.f640b;
                    }
                }
                h0 h0Var5 = this.f31q;
                this.f30p = h0Var5.j;
                boolean z6 = h0Var5.f646h;
                assertNotInLayoutOrScroll(null);
                h0 h0Var6 = this.f31q;
                if (h0Var6 != null && h0Var6.f646h != z6) {
                    h0Var6.f646h = z6;
                }
                this.f23h = z6;
                requestLayout();
                z();
                h0 h0Var7 = this.f31q;
                int i7 = h0Var7.f639a;
                if (i7 != -1) {
                    this.f25k = i7;
                    z4 = h0Var7.f647i;
                } else {
                    z4 = this.f24i;
                }
                d0Var.f605c = z4;
                if (h0Var7.f643e > 1) {
                    g0Var.f632a = h0Var7.f644f;
                    g0Var.f633b = h0Var7.f645g;
                }
            } else {
                z();
                d0Var.f605c = this.f24i;
            }
            if (y2.f578g || (i4 = this.f25k) == -1) {
                if (this.f29o) {
                    int iB = y2.b();
                    childCount2 = getChildCount() - 1;
                    while (true) {
                        if (childCount2 < 0) {
                            position2 = 0;
                            break;
                        }
                        position2 = getPosition(getChildAt(childCount2));
                        if (position2 < 0 && position2 < iB) {
                            break;
                        } else {
                            childCount2--;
                        }
                    }
                } else {
                    int iB2 = y2.b();
                    childCount = getChildCount();
                    i3 = 0;
                    while (true) {
                        if (i3 >= childCount) {
                            position2 = 0;
                            break;
                        }
                        position = getPosition(getChildAt(i3));
                        if (position < 0 && position < iB2) {
                            position2 = position;
                            break;
                        }
                        i3++;
                    }
                }
                d0Var.f603a = position2;
                d0Var.f604b = Integer.MIN_VALUE;
            } else if (i4 < 0 || i4 >= y2.b()) {
                this.f25k = -1;
                this.f26l = Integer.MIN_VALUE;
                if (this.f29o) {
                    int iB3 = y2.b();
                    childCount2 = getChildCount() - 1;
                    while (true) {
                        if (childCount2 < 0) {
                            position2 = 0;
                            break;
                        } else {
                            position2 = getPosition(getChildAt(childCount2));
                            if (position2 < 0) {
                            }
                            childCount2--;
                        }
                    }
                } else {
                    int iB4 = y2.b();
                    childCount = getChildCount();
                    i3 = 0;
                    while (true) {
                        if (i3 >= childCount) {
                            position2 = 0;
                            break;
                        } else {
                            position = getPosition(getChildAt(i3));
                            if (position < 0) {
                            }
                            i3++;
                        }
                    }
                }
                d0Var.f603a = position2;
                d0Var.f604b = Integer.MIN_VALUE;
            } else {
                h0 h0Var8 = this.f31q;
                if (h0Var8 == null || h0Var8.f639a == -1 || h0Var8.f641c < 1) {
                    View viewFindViewByPosition = findViewByPosition(this.f25k);
                    if (viewFindViewByPosition != null) {
                        d0Var.f603a = this.f24i ? n() : m();
                        if (this.f26l != Integer.MIN_VALUE) {
                            if (d0Var.f605c) {
                                iK = this.f18c.g() - this.f26l;
                                iE = this.f18c.b(viewFindViewByPosition);
                            } else {
                                iK = this.f18c.k() + this.f26l;
                                iE = this.f18c.e(viewFindViewByPosition);
                            }
                            iG = iK - iE;
                        } else {
                            if (this.f18c.c(viewFindViewByPosition) > this.f18c.l()) {
                                iG2 = d0Var.f605c ? this.f18c.g() : this.f18c.k();
                            } else {
                                int iE2 = this.f18c.e(viewFindViewByPosition) - this.f18c.k();
                                if (iE2 < 0) {
                                    iG2 = -iE2;
                                } else {
                                    iG = this.f18c.g() - this.f18c.b(viewFindViewByPosition);
                                    if (iG >= 0) {
                                        d0Var.f604b = Integer.MIN_VALUE;
                                    }
                                }
                            }
                            d0Var.f604b = iG2;
                        }
                        d0Var.f604b = iG;
                    } else {
                        int i8 = this.f25k;
                        d0Var.f603a = i8;
                        int i9 = this.f26l;
                        if (i9 == Integer.MIN_VALUE) {
                            boolean z7 = c(i8) == 1;
                            d0Var.f605c = z7;
                            d0Var.f604b = z7 ? staggeredGridLayoutManager.f18c.g() : staggeredGridLayoutManager.f18c.k();
                        } else {
                            d0Var.f604b = d0Var.f605c ? staggeredGridLayoutManager.f18c.g() - i9 : staggeredGridLayoutManager.f18c.k() + i9;
                        }
                        d0Var.f606d = true;
                    }
                } else {
                    d0Var.f604b = Integer.MIN_VALUE;
                    d0Var.f603a = this.f25k;
                }
            }
            d0Var.f607e = true;
        }
        if (this.f31q == null && this.f25k == -1 && (d0Var.f605c != this.f29o || isLayoutRTL() != this.f30p)) {
            g0Var.a();
            d0Var.f606d = true;
        }
        if (getChildCount() > 0 && ((h0Var = this.f31q) == null || h0Var.f641c < 1)) {
            if (d0Var.f606d) {
                for (int i10 = 0; i10 < this.f16a; i10++) {
                    this.f17b[i10].b();
                    int i11 = d0Var.f604b;
                    if (i11 != Integer.MIN_VALUE) {
                        i0 i0Var2 = this.f17b[i10];
                        i0Var2.f661b = i11;
                        i0Var2.f662c = i11;
                    }
                }
            } else if (z5 || d0Var.f608f == null) {
                for (int i12 = 0; i12 < this.f16a; i12++) {
                    i0 i0Var3 = this.f17b[i12];
                    boolean z8 = this.f24i;
                    int i13 = d0Var.f604b;
                    int iF = z8 ? i0Var3.f(Integer.MIN_VALUE) : i0Var3.h(Integer.MIN_VALUE);
                    i0Var3.b();
                    if (iF != Integer.MIN_VALUE) {
                        StaggeredGridLayoutManager staggeredGridLayoutManager2 = i0Var3.f665f;
                        if ((!z8 || iF >= staggeredGridLayoutManager2.f18c.g()) && (z8 || iF <= staggeredGridLayoutManager2.f18c.k())) {
                            if (i13 != Integer.MIN_VALUE) {
                                iF += i13;
                            }
                            i0Var3.f662c = iF;
                            i0Var3.f661b = iF;
                        }
                    }
                }
                i0[] i0VarArr = this.f17b;
                int length = i0VarArr.length;
                int[] iArr = d0Var.f608f;
                if (iArr == null || iArr.length < length) {
                    d0Var.f608f = new int[staggeredGridLayoutManager.f17b.length];
                }
                for (int i14 = 0; i14 < length; i14++) {
                    d0Var.f608f[i14] = i0VarArr[i14].h(Integer.MIN_VALUE);
                }
            } else {
                for (int i15 = 0; i15 < this.f16a; i15++) {
                    i0 i0Var4 = this.f17b[i15];
                    i0Var4.b();
                    int i16 = d0Var.f608f[i15];
                    i0Var4.f661b = i16;
                    i0Var4.f662c = i16;
                }
            }
        }
        detachAndScrapAttachedViews(kVar);
        C0052s c0052s = this.f22g;
        c0052s.f719a = false;
        int iL = this.f19d.l();
        this.f21f = iL / this.f16a;
        View.MeasureSpec.makeMeasureSpec(iL, this.f19d.i());
        B(d0Var.f603a, y2);
        if (d0Var.f605c) {
            A(-1);
            h(kVar, c0052s, y2);
            A(1);
        } else {
            A(1);
            h(kVar, c0052s, y2);
            A(-1);
        }
        c0052s.f721c = d0Var.f603a + c0052s.f722d;
        h(kVar, c0052s, y2);
        if (this.f19d.i() != 1073741824) {
            int childCount3 = getChildCount();
            float fMax = 0.0f;
            for (int i17 = 0; i17 < childCount3; i17++) {
                View childAt = getChildAt(i17);
                float fC = this.f19d.c(childAt);
                if (fC >= fMax) {
                    ((e0) childAt.getLayoutParams()).getClass();
                    fMax = Math.max(fMax, fC);
                }
            }
            int i18 = this.f21f;
            int iRound = Math.round(fMax * this.f16a);
            if (this.f19d.i() == Integer.MIN_VALUE) {
                iRound = Math.min(iRound, this.f19d.l());
            }
            this.f21f = iRound / this.f16a;
            View.MeasureSpec.makeMeasureSpec(iRound, this.f19d.i());
            if (this.f21f != i18) {
                for (int i19 = 0; i19 < childCount3; i19++) {
                    View childAt2 = getChildAt(i19);
                    e0 e0Var = (e0) childAt2.getLayoutParams();
                    e0Var.getClass();
                    if (isLayoutRTL() && this.f20e == 1) {
                        int i20 = -((this.f16a - 1) - e0Var.f616e.f664e);
                        i2 = (this.f21f * i20) - (i20 * i18);
                    } else {
                        int i21 = e0Var.f616e.f664e;
                        int i22 = this.f20e;
                        i2 = (this.f21f * i21) - (i21 * i18);
                        if (i22 != 1) {
                            childAt2.offsetTopAndBottom(i2);
                        }
                    }
                    childAt2.offsetLeftAndRight(i2);
                }
            }
        }
        if (getChildCount() > 0) {
            if (this.f24i) {
                k(kVar, y2, true);
                l(kVar, y2, false);
            } else {
                l(kVar, y2, true);
                k(kVar, y2, false);
            }
        }
        if (z2 && !y2.f578g && this.f28n != 0 && getChildCount() > 0 && r() != null) {
            removeCallbacks(this.f36v);
            z3 = d();
        }
        if (y2.f578g) {
            d0Var.a();
        }
        this.f29o = d0Var.f605c;
        this.f30p = isLayoutRTL();
        if (z3) {
            d0Var.a();
            t(kVar, y2, false);
        }
    }

    public final boolean u(int i2) {
        if (this.f20e == 0) {
            return (i2 == -1) != this.f24i;
        }
        return ((i2 == -1) == this.f24i) == isLayoutRTL();
    }

    public final void v(int i2, Y y2) {
        int iM;
        int i3;
        if (i2 > 0) {
            iM = n();
            i3 = 1;
        } else {
            iM = m();
            i3 = -1;
        }
        C0052s c0052s = this.f22g;
        c0052s.f719a = true;
        B(iM, y2);
        A(i3);
        c0052s.f721c = iM + c0052s.f722d;
        c0052s.f720b = Math.abs(i2);
    }

    public final void w(k kVar, C0052s c0052s) {
        int iMin;
        if (!c0052s.f719a || c0052s.f727i) {
            return;
        }
        if (c0052s.f720b == 0) {
            if (c0052s.f723e == -1) {
                x(c0052s.f725g, kVar);
                return;
            } else {
                y(c0052s.f724f, kVar);
                return;
            }
        }
        int i2 = 1;
        if (c0052s.f723e == -1) {
            int i3 = c0052s.f724f;
            int iH = this.f17b[0].h(i3);
            while (i2 < this.f16a) {
                int iH2 = this.f17b[i2].h(i3);
                if (iH2 > iH) {
                    iH = iH2;
                }
                i2++;
            }
            int i4 = i3 - iH;
            x(i4 < 0 ? c0052s.f725g : c0052s.f725g - Math.min(i4, c0052s.f720b), kVar);
            return;
        }
        int i5 = c0052s.f725g;
        int iF = this.f17b[0].f(i5);
        while (i2 < this.f16a) {
            int iF2 = this.f17b[i2].f(i5);
            if (iF2 < iF) {
                iF = iF2;
            }
            i2++;
        }
        int i6 = iF - c0052s.f725g;
        if (i6 < 0) {
            iMin = c0052s.f724f;
        } else {
            iMin = Math.min(i6, c0052s.f720b) + c0052s.f724f;
        }
        y(iMin, kVar);
    }

    public final void x(int i2, k kVar) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (this.f18c.e(childAt) < i2 || this.f18c.o(childAt) < i2) {
                return;
            }
            e0 e0Var = (e0) childAt.getLayoutParams();
            e0Var.getClass();
            if (e0Var.f616e.f660a.size() == 1) {
                return;
            }
            i0 i0Var = e0Var.f616e;
            ArrayList arrayList = i0Var.f660a;
            int size = arrayList.size();
            View view = (View) arrayList.remove(size - 1);
            e0 e0Var2 = (e0) view.getLayoutParams();
            e0Var2.f616e = null;
            if (e0Var2.f559a.isRemoved() || e0Var2.f559a.isUpdated()) {
                i0Var.f663d -= i0Var.f665f.f18c.c(view);
            }
            if (size == 1) {
                i0Var.f661b = Integer.MIN_VALUE;
            }
            i0Var.f662c = Integer.MIN_VALUE;
            removeAndRecycleView(childAt, kVar);
        }
    }

    public final void y(int i2, k kVar) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (this.f18c.b(childAt) > i2 || this.f18c.n(childAt) > i2) {
                return;
            }
            e0 e0Var = (e0) childAt.getLayoutParams();
            e0Var.getClass();
            if (e0Var.f616e.f660a.size() == 1) {
                return;
            }
            i0 i0Var = e0Var.f616e;
            ArrayList arrayList = i0Var.f660a;
            View view = (View) arrayList.remove(0);
            e0 e0Var2 = (e0) view.getLayoutParams();
            e0Var2.f616e = null;
            if (arrayList.size() == 0) {
                i0Var.f662c = Integer.MIN_VALUE;
            }
            if (e0Var2.f559a.isRemoved() || e0Var2.f559a.isUpdated()) {
                i0Var.f663d -= i0Var.f665f.f18c.c(view);
            }
            i0Var.f661b = Integer.MIN_VALUE;
            removeAndRecycleView(childAt, kVar);
        }
    }

    public final void z() {
        this.f24i = (this.f20e == 1 || !isLayoutRTL()) ? this.f23h : !this.f23h;
    }

    @Override // androidx.recyclerview.widget.j
    public final N generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new e0((ViewGroup.MarginLayoutParams) layoutParams) : new e0(layoutParams);
    }
}
