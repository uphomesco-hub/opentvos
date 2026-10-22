package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;
import r.A;
import r.C0053t;
import r.C0054u;
import r.C0055v;
import r.C0057x;
import r.C0058y;
import r.L;
import r.M;
import r.N;
import r.X;
import r.Y;

/* JADX INFO: loaded from: classes.dex */
public class LinearLayoutManager extends j implements X {
    final C0053t mAnchorInfo;
    private int mInitialPrefetchItemCount;
    private boolean mLastStackFromEnd;
    private final C0054u mLayoutChunkResult;
    private C0055v mLayoutState;
    int mOrientation;
    A mOrientationHelper;
    C0057x mPendingSavedState;
    int mPendingScrollPosition;
    int mPendingScrollPositionOffset;
    private boolean mRecycleChildrenOnDetach;
    private int[] mReusableIntPair;
    private boolean mReverseLayout;
    boolean mShouldReverseLayout;
    private boolean mSmoothScrollbarEnabled;
    private boolean mStackFromEnd;

    public LinearLayoutManager() {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new C0053t();
        this.mLayoutChunkResult = new C0054u();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        setOrientation(1);
        setReverseLayout(false);
    }

    @Override // androidx.recyclerview.widget.j
    @SuppressLint({"UnknownNullness"})
    public void assertNotInLayoutOrScroll(String str) {
        RecyclerView recyclerView;
        if (this.mPendingSavedState != null || (recyclerView = this.mRecyclerView) == null) {
            return;
        }
        recyclerView.assertNotInLayoutOrScroll(str);
    }

    public final int c(Y y2) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return y.a.f(y2, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    public void calculateExtraLayoutSpace(Y y2, int[] iArr) {
        int i2;
        int extraLayoutSpace = getExtraLayoutSpace(y2);
        if (this.mLayoutState.f742f == -1) {
            i2 = 0;
        } else {
            i2 = extraLayoutSpace;
            extraLayoutSpace = 0;
        }
        iArr[0] = extraLayoutSpace;
        iArr[1] = i2;
    }

    @Override // androidx.recyclerview.widget.j
    public boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    @Override // androidx.recyclerview.widget.j
    public boolean canScrollVertically() {
        return this.mOrientation == 1;
    }

    @Override // androidx.recyclerview.widget.j
    @SuppressLint({"UnknownNullness"})
    public void collectAdjacentPrefetchPositions(int i2, int i3, Y y2, L l2) {
        if (this.mOrientation != 0) {
            i2 = i3;
        }
        if (getChildCount() == 0 || i2 == 0) {
            return;
        }
        ensureLayoutState();
        m(i2 > 0 ? 1 : -1, Math.abs(i2), true, y2);
        collectPrefetchPositionsForLayoutState(y2, this.mLayoutState, l2);
    }

    @Override // androidx.recyclerview.widget.j
    @SuppressLint({"UnknownNullness"})
    public void collectInitialPrefetchPositions(int i2, L l2) {
        boolean z2;
        int i3;
        C0057x c0057x = this.mPendingSavedState;
        if (c0057x == null || (i3 = c0057x.f749a) < 0) {
            l();
            z2 = this.mShouldReverseLayout;
            i3 = this.mPendingScrollPosition;
            if (i3 == -1) {
                i3 = z2 ? i2 - 1 : 0;
            }
        } else {
            z2 = c0057x.f751c;
        }
        int i4 = z2 ? -1 : 1;
        for (int i5 = 0; i5 < this.mInitialPrefetchItemCount && i3 >= 0 && i3 < i2; i5++) {
            ((c) l2).a(i3, 0);
            i3 += i4;
        }
    }

    public void collectPrefetchPositionsForLayoutState(Y y2, C0055v c0055v, L l2) {
        int i2 = c0055v.f740d;
        if (i2 < 0 || i2 >= y2.b()) {
            return;
        }
        ((c) l2).a(i2, Math.max(0, c0055v.f743g));
    }

    @Override // androidx.recyclerview.widget.j
    @SuppressLint({"UnknownNullness"})
    public int computeHorizontalScrollExtent(Y y2) {
        return c(y2);
    }

    @Override // androidx.recyclerview.widget.j
    public int computeHorizontalScrollOffset(Y y2) {
        return d(y2);
    }

    @Override // androidx.recyclerview.widget.j
    public int computeHorizontalScrollRange(Y y2) {
        return e(y2);
    }

    @Override // r.X
    @SuppressLint({"UnknownNullness"})
    public PointF computeScrollVectorForPosition(int i2) {
        if (getChildCount() == 0) {
            return null;
        }
        int i3 = (i2 < getPosition(getChildAt(0))) != this.mShouldReverseLayout ? -1 : 1;
        return this.mOrientation == 0 ? new PointF(i3, 0.0f) : new PointF(0.0f, i3);
    }

    @Override // androidx.recyclerview.widget.j
    @SuppressLint({"UnknownNullness"})
    public int computeVerticalScrollExtent(Y y2) {
        return c(y2);
    }

    @Override // androidx.recyclerview.widget.j
    public int computeVerticalScrollOffset(Y y2) {
        return d(y2);
    }

    @Override // androidx.recyclerview.widget.j
    public int computeVerticalScrollRange(Y y2) {
        return e(y2);
    }

    public int convertFocusDirectionToLayoutDirection(int i2) {
        if (i2 == 1) {
            return (this.mOrientation != 1 && isLayoutRTL()) ? 1 : -1;
        }
        if (i2 == 2) {
            return (this.mOrientation != 1 && isLayoutRTL()) ? -1 : 1;
        }
        if (i2 == 17) {
            return this.mOrientation == 0 ? -1 : Integer.MIN_VALUE;
        }
        if (i2 == 33) {
            return this.mOrientation == 1 ? -1 : Integer.MIN_VALUE;
        }
        if (i2 != 66) {
            return (i2 == 130 && this.mOrientation == 1) ? 1 : Integer.MIN_VALUE;
        }
        return this.mOrientation == 0 ? 1 : Integer.MIN_VALUE;
    }

    public C0055v createLayoutState() {
        C0055v c0055v = new C0055v();
        c0055v.f737a = true;
        c0055v.f744h = 0;
        c0055v.f745i = 0;
        c0055v.f746k = null;
        return c0055v;
    }

    public final int d(Y y2) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return y.a.g(y2, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    public final int e(Y y2) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return y.a.h(y2, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    public void ensureLayoutState() {
        if (this.mLayoutState == null) {
            this.mLayoutState = createLayoutState();
        }
    }

    public final int f(int i2, k kVar, Y y2, boolean z2) {
        int iG;
        int iG2 = this.mOrientationHelper.g() - i2;
        if (iG2 <= 0) {
            return 0;
        }
        int i3 = -scrollBy(-iG2, kVar, y2);
        int i4 = i2 + i3;
        if (!z2 || (iG = this.mOrientationHelper.g() - i4) <= 0) {
            return i3;
        }
        this.mOrientationHelper.p(iG);
        return iG + i3;
    }

    public int fill(k kVar, C0055v c0055v, Y y2, boolean z2) {
        int i2;
        int i3 = c0055v.f739c;
        int i4 = c0055v.f743g;
        if (i4 != Integer.MIN_VALUE) {
            if (i3 < 0) {
                c0055v.f743g = i4 + i3;
            }
            j(kVar, c0055v);
        }
        int i5 = c0055v.f739c + c0055v.f744h;
        C0054u c0054u = this.mLayoutChunkResult;
        while (true) {
            if ((!c0055v.f747l && i5 <= 0) || (i2 = c0055v.f740d) < 0 || i2 >= y2.b()) {
                break;
            }
            c0054u.f733a = 0;
            c0054u.f734b = false;
            c0054u.f735c = false;
            c0054u.f736d = false;
            layoutChunk(kVar, y2, c0055v, c0054u);
            if (!c0054u.f734b) {
                int i6 = c0055v.f738b;
                int i7 = c0054u.f733a;
                c0055v.f738b = (c0055v.f742f * i7) + i6;
                if (!c0054u.f735c || c0055v.f746k != null || !y2.f578g) {
                    c0055v.f739c -= i7;
                    i5 -= i7;
                }
                int i8 = c0055v.f743g;
                if (i8 != Integer.MIN_VALUE) {
                    int i9 = i8 + i7;
                    c0055v.f743g = i9;
                    int i10 = c0055v.f739c;
                    if (i10 < 0) {
                        c0055v.f743g = i9 + i10;
                    }
                    j(kVar, c0055v);
                }
                if (z2 && c0054u.f736d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i3 - c0055v.f739c;
    }

    public View findFirstVisibleChildClosestToEnd(boolean z2, boolean z3) {
        int childCount;
        int childCount2;
        if (this.mShouldReverseLayout) {
            childCount = 0;
            childCount2 = getChildCount();
        } else {
            childCount = getChildCount() - 1;
            childCount2 = -1;
        }
        return findOneVisibleChild(childCount, childCount2, z2, z3);
    }

    public View findFirstVisibleChildClosestToStart(boolean z2, boolean z3) {
        int childCount;
        int childCount2;
        if (this.mShouldReverseLayout) {
            childCount = getChildCount() - 1;
            childCount2 = -1;
        } else {
            childCount = 0;
            childCount2 = getChildCount();
        }
        return findOneVisibleChild(childCount, childCount2, z2, z3);
    }

    public int findFirstVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(0, getChildCount(), false, true);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    public int findLastVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, false, true);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    public View findOnePartiallyOrCompletelyInvisibleChild(int i2, int i3) {
        int i4;
        int i5;
        ensureLayoutState();
        if (i3 <= i2 && i3 >= i2) {
            return getChildAt(i2);
        }
        if (this.mOrientationHelper.e(getChildAt(i2)) < this.mOrientationHelper.k()) {
            i4 = 16644;
            i5 = 16388;
        } else {
            i4 = 4161;
            i5 = 4097;
        }
        return (this.mOrientation == 0 ? this.mHorizontalBoundCheck : this.mVerticalBoundCheck).a(i2, i3, i4, i5);
    }

    public View findOneVisibleChild(int i2, int i3, boolean z2, boolean z3) {
        ensureLayoutState();
        return (this.mOrientation == 0 ? this.mHorizontalBoundCheck : this.mVerticalBoundCheck).a(i2, i3, z2 ? 24579 : 320, z3 ? 320 : 0);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0075  */
    /* JADX WARN: Code duplicated, block: B:35:0x0079  */
    public View findReferenceChild(k kVar, Y y2, boolean z2, boolean z3) {
        int i2;
        int childCount;
        int i3;
        ensureLayoutState();
        int childCount2 = getChildCount();
        if (z3) {
            childCount = getChildCount() - 1;
            i2 = -1;
            i3 = -1;
        } else {
            i2 = childCount2;
            childCount = 0;
            i3 = 1;
        }
        int iB = y2.b();
        int iK = this.mOrientationHelper.k();
        int iG = this.mOrientationHelper.g();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (childCount != i2) {
            View childAt = getChildAt(childCount);
            int position = getPosition(childAt);
            int iE = this.mOrientationHelper.e(childAt);
            int iB2 = this.mOrientationHelper.b(childAt);
            if (position >= 0 && position < iB) {
                if (!((N) childAt.getLayoutParams()).f559a.isRemoved()) {
                    boolean z4 = iB2 <= iK && iE < iK;
                    boolean z5 = iE >= iG && iB2 > iG;
                    if (!z4 && !z5) {
                        return childAt;
                    }
                    if (z2) {
                        if (z5) {
                            view2 = childAt;
                        } else if (view == null) {
                            view = childAt;
                        }
                    } else if (z4) {
                        view2 = childAt;
                    } else if (view == null) {
                        view = childAt;
                    }
                } else if (view3 == null) {
                    view3 = childAt;
                }
            }
            childCount += i3;
        }
        if (view != null) {
            return view;
        }
        return view2 != null ? view2 : view3;
    }

    @Override // androidx.recyclerview.widget.j
    @SuppressLint({"UnknownNullness"})
    public View findViewByPosition(int i2) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int position = i2 - getPosition(getChildAt(0));
        if (position >= 0 && position < childCount) {
            View childAt = getChildAt(position);
            if (getPosition(childAt) == i2) {
                return childAt;
            }
        }
        return super.findViewByPosition(i2);
    }

    public final int g(int i2, k kVar, Y y2, boolean z2) {
        int iK;
        int iK2 = i2 - this.mOrientationHelper.k();
        if (iK2 <= 0) {
            return 0;
        }
        int i3 = -scrollBy(iK2, kVar, y2);
        int i4 = i2 + i3;
        if (!z2 || (iK = i4 - this.mOrientationHelper.k()) <= 0) {
            return i3;
        }
        this.mOrientationHelper.p(-iK);
        return i3 - iK;
    }

    @Override // androidx.recyclerview.widget.j
    public N generateDefaultLayoutParams() {
        return new N(-2, -2);
    }

    @Deprecated
    public int getExtraLayoutSpace(Y y2) {
        if (y2.f572a != -1) {
            return this.mOrientationHelper.l();
        }
        return 0;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public final View h() {
        return getChildAt(this.mShouldReverseLayout ? 0 : getChildCount() - 1);
    }

    public final View i() {
        return getChildAt(this.mShouldReverseLayout ? getChildCount() - 1 : 0);
    }

    @Override // androidx.recyclerview.widget.j
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    public boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    public boolean isSmoothScrollbarEnabled() {
        return this.mSmoothScrollbarEnabled;
    }

    public final void j(k kVar, C0055v c0055v) {
        if (!c0055v.f737a || c0055v.f747l) {
            return;
        }
        int i2 = c0055v.f743g;
        int i3 = c0055v.f745i;
        if (c0055v.f742f == -1) {
            int childCount = getChildCount();
            if (i2 < 0) {
                return;
            }
            int iF = (this.mOrientationHelper.f() - i2) + i3;
            if (this.mShouldReverseLayout) {
                for (int i4 = 0; i4 < childCount; i4++) {
                    View childAt = getChildAt(i4);
                    if (this.mOrientationHelper.e(childAt) < iF || this.mOrientationHelper.o(childAt) < iF) {
                        k(kVar, 0, i4);
                        return;
                    }
                }
                return;
            }
            int i5 = childCount - 1;
            for (int i6 = i5; i6 >= 0; i6--) {
                View childAt2 = getChildAt(i6);
                if (this.mOrientationHelper.e(childAt2) < iF || this.mOrientationHelper.o(childAt2) < iF) {
                    k(kVar, i5, i6);
                    return;
                }
            }
            return;
        }
        if (i2 < 0) {
            return;
        }
        int i7 = i2 - i3;
        int childCount2 = getChildCount();
        if (!this.mShouldReverseLayout) {
            for (int i8 = 0; i8 < childCount2; i8++) {
                View childAt3 = getChildAt(i8);
                if (this.mOrientationHelper.b(childAt3) > i7 || this.mOrientationHelper.n(childAt3) > i7) {
                    k(kVar, 0, i8);
                    return;
                }
            }
            return;
        }
        int i9 = childCount2 - 1;
        for (int i10 = i9; i10 >= 0; i10--) {
            View childAt4 = getChildAt(i10);
            if (this.mOrientationHelper.b(childAt4) > i7 || this.mOrientationHelper.n(childAt4) > i7) {
                k(kVar, i9, i10);
                return;
            }
        }
    }

    public final void k(k kVar, int i2, int i3) {
        if (i2 == i3) {
            return;
        }
        if (i3 <= i2) {
            while (i2 > i3) {
                removeAndRecycleViewAt(i2, kVar);
                i2--;
            }
        } else {
            for (int i4 = i3 - 1; i4 >= i2; i4--) {
                removeAndRecycleViewAt(i4, kVar);
            }
        }
    }

    public final void l() {
        this.mShouldReverseLayout = (this.mOrientation == 1 || !isLayoutRTL()) ? this.mReverseLayout : !this.mReverseLayout;
    }

    public void layoutChunk(k kVar, Y y2, C0055v c0055v, C0054u c0054u) {
        int i2;
        int i3;
        int i4;
        int paddingLeft;
        int iD;
        View viewB = c0055v.b(kVar);
        if (viewB == null) {
            c0054u.f734b = true;
            return;
        }
        N n2 = (N) viewB.getLayoutParams();
        if (c0055v.f746k == null) {
            if (this.mShouldReverseLayout == (c0055v.f742f == -1)) {
                addView(viewB);
            } else {
                addView(viewB, 0);
            }
        } else {
            if (this.mShouldReverseLayout == (c0055v.f742f == -1)) {
                addDisappearingView(viewB);
            } else {
                addDisappearingView(viewB, 0);
            }
        }
        measureChildWithMargins(viewB, 0, 0);
        c0054u.f733a = this.mOrientationHelper.c(viewB);
        if (this.mOrientation == 1) {
            if (isLayoutRTL()) {
                iD = getWidth() - getPaddingRight();
                paddingLeft = iD - this.mOrientationHelper.d(viewB);
            } else {
                paddingLeft = getPaddingLeft();
                iD = this.mOrientationHelper.d(viewB) + paddingLeft;
            }
            int i5 = c0055v.f742f;
            int i6 = c0055v.f738b;
            if (i5 == -1) {
                i4 = i6;
                i3 = iD;
                i2 = i6 - c0054u.f733a;
            } else {
                i2 = i6;
                i3 = iD;
                i4 = c0054u.f733a + i6;
            }
        } else {
            int paddingTop = getPaddingTop();
            int iD2 = this.mOrientationHelper.d(viewB) + paddingTop;
            int i7 = c0055v.f742f;
            int i8 = c0055v.f738b;
            if (i7 == -1) {
                i3 = i8;
                i2 = paddingTop;
                i4 = iD2;
                paddingLeft = i8 - c0054u.f733a;
            } else {
                i2 = paddingTop;
                i3 = c0054u.f733a + i8;
                i4 = iD2;
                paddingLeft = i8;
            }
        }
        layoutDecoratedWithMargins(viewB, paddingLeft, i2, i3, i4);
        if (n2.f559a.isRemoved() || n2.f559a.isUpdated()) {
            c0054u.f735c = true;
        }
        c0054u.f736d = viewB.hasFocusable();
    }

    public final void m(int i2, int i3, boolean z2, Y y2) {
        int iK;
        this.mLayoutState.f747l = resolveIsInfinite();
        this.mLayoutState.f742f = i2;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(y2, iArr);
        int iMax = Math.max(0, this.mReusableIntPair[0]);
        int iMax2 = Math.max(0, this.mReusableIntPair[1]);
        boolean z3 = i2 == 1;
        C0055v c0055v = this.mLayoutState;
        int i4 = z3 ? iMax2 : iMax;
        c0055v.f744h = i4;
        if (!z3) {
            iMax = iMax2;
        }
        c0055v.f745i = iMax;
        if (z3) {
            c0055v.f744h = this.mOrientationHelper.h() + i4;
            View viewH = h();
            C0055v c0055v2 = this.mLayoutState;
            c0055v2.f741e = this.mShouldReverseLayout ? -1 : 1;
            int position = getPosition(viewH);
            C0055v c0055v3 = this.mLayoutState;
            c0055v2.f740d = position + c0055v3.f741e;
            c0055v3.f738b = this.mOrientationHelper.b(viewH);
            iK = this.mOrientationHelper.b(viewH) - this.mOrientationHelper.g();
        } else {
            View viewI = i();
            C0055v c0055v4 = this.mLayoutState;
            c0055v4.f744h = this.mOrientationHelper.k() + c0055v4.f744h;
            C0055v c0055v5 = this.mLayoutState;
            c0055v5.f741e = this.mShouldReverseLayout ? 1 : -1;
            int position2 = getPosition(viewI);
            C0055v c0055v6 = this.mLayoutState;
            c0055v5.f740d = position2 + c0055v6.f741e;
            c0055v6.f738b = this.mOrientationHelper.e(viewI);
            iK = (-this.mOrientationHelper.e(viewI)) + this.mOrientationHelper.k();
        }
        C0055v c0055v7 = this.mLayoutState;
        c0055v7.f739c = i3;
        if (z2) {
            c0055v7.f739c = i3 - iK;
        }
        c0055v7.f743g = iK;
    }

    public final void n(int i2, int i3) {
        this.mLayoutState.f739c = this.mOrientationHelper.g() - i3;
        C0055v c0055v = this.mLayoutState;
        c0055v.f741e = this.mShouldReverseLayout ? -1 : 1;
        c0055v.f740d = i2;
        c0055v.f742f = 1;
        c0055v.f738b = i3;
        c0055v.f743g = Integer.MIN_VALUE;
    }

    public final void o(int i2, int i3) {
        this.mLayoutState.f739c = i3 - this.mOrientationHelper.k();
        C0055v c0055v = this.mLayoutState;
        c0055v.f740d = i2;
        c0055v.f741e = this.mShouldReverseLayout ? 1 : -1;
        c0055v.f742f = -1;
        c0055v.f738b = i3;
        c0055v.f743g = Integer.MIN_VALUE;
    }

    @Override // androidx.recyclerview.widget.j
    @SuppressLint({"UnknownNullness"})
    public void onDetachedFromWindow(RecyclerView recyclerView, k kVar) {
        onDetachedFromWindow(recyclerView);
        if (this.mRecycleChildrenOnDetach) {
            removeAndRecycleAllViews(kVar);
            kVar.f67a.clear();
            kVar.g();
        }
    }

    @Override // androidx.recyclerview.widget.j
    public View onFocusSearchFailed(View view, int i2, k kVar, Y y2) {
        int iConvertFocusDirectionToLayoutDirection;
        View viewFindOnePartiallyOrCompletelyInvisibleChild;
        l();
        if (getChildCount() == 0 || (iConvertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i2)) == Integer.MIN_VALUE) {
            return null;
        }
        ensureLayoutState();
        m(iConvertFocusDirectionToLayoutDirection, (int) (this.mOrientationHelper.l() * 0.33333334f), false, y2);
        C0055v c0055v = this.mLayoutState;
        c0055v.f743g = Integer.MIN_VALUE;
        c0055v.f737a = false;
        fill(kVar, c0055v, y2, true);
        if (iConvertFocusDirectionToLayoutDirection == -1) {
            viewFindOnePartiallyOrCompletelyInvisibleChild = this.mShouldReverseLayout ? findOnePartiallyOrCompletelyInvisibleChild(getChildCount() - 1, -1) : findOnePartiallyOrCompletelyInvisibleChild(0, getChildCount());
        } else {
            viewFindOnePartiallyOrCompletelyInvisibleChild = this.mShouldReverseLayout ? findOnePartiallyOrCompletelyInvisibleChild(0, getChildCount()) : findOnePartiallyOrCompletelyInvisibleChild(getChildCount() - 1, -1);
        }
        View viewI = iConvertFocusDirectionToLayoutDirection == -1 ? i() : h();
        if (!viewI.hasFocusable()) {
            return viewFindOnePartiallyOrCompletelyInvisibleChild;
        }
        if (viewFindOnePartiallyOrCompletelyInvisibleChild == null) {
            return null;
        }
        return viewI;
    }

    @Override // androidx.recyclerview.widget.j
    @SuppressLint({"UnknownNullness"})
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.mRecyclerView;
        onInitializeAccessibilityEvent(recyclerView.mRecycler, recyclerView.mState, accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(findFirstVisibleItemPosition());
            accessibilityEvent.setToIndex(findLastVisibleItemPosition());
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:106:0x01d3 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:108:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:110:0x01da A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:112:0x01de  */
    /* JADX WARN: Code duplicated, block: B:114:0x01e1 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:115:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:117:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:119:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:121:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:122:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:86:0x0169  */
    /* JADX WARN: Code duplicated, block: B:88:0x016f  */
    /* JADX WARN: Code duplicated, block: B:95:0x0199  */
    /* JADX WARN: Code duplicated, block: B:98:0x01a0  */
    @Override // androidx.recyclerview.widget.j
    public void onLayoutChildren(k kVar, Y y2) {
        int iB;
        View focusedChild;
        boolean z2;
        boolean z3;
        View viewFindReferenceChild;
        int iE;
        int iB2;
        int iK;
        int iG;
        boolean z4;
        boolean z5;
        N n2;
        int i2;
        int iK2;
        int i3;
        int iG2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int iF;
        int i10;
        View viewFindViewByPosition;
        int iE2;
        int iG3;
        int i11;
        int i12 = -1;
        if (!(this.mPendingSavedState == null && this.mPendingScrollPosition == -1) && y2.b() == 0) {
            removeAndRecycleAllViews(kVar);
            return;
        }
        C0057x c0057x = this.mPendingSavedState;
        if (c0057x != null && (i11 = c0057x.f749a) >= 0) {
            this.mPendingScrollPosition = i11;
        }
        ensureLayoutState();
        this.mLayoutState.f737a = false;
        l();
        View focusedChild2 = getFocusedChild();
        C0053t c0053t = this.mAnchorInfo;
        if (!c0053t.f732e || this.mPendingScrollPosition != -1 || this.mPendingSavedState != null) {
            c0053t.d();
            C0053t c0053t2 = this.mAnchorInfo;
            c0053t2.f731d = this.mShouldReverseLayout ^ this.mStackFromEnd;
            if (y2.f578g || (i2 = this.mPendingScrollPosition) == -1) {
                if (getChildCount() != 0) {
                    focusedChild = getFocusedChild();
                    if (focusedChild != null) {
                        n2 = (N) focusedChild.getLayoutParams();
                        if (!n2.f559a.isRemoved() || n2.f559a.getLayoutPosition() < 0 || n2.f559a.getLayoutPosition() >= y2.b()) {
                            z2 = this.mLastStackFromEnd;
                            z3 = this.mStackFromEnd;
                            if (z2 == z3 || (viewFindReferenceChild = findReferenceChild(kVar, y2, c0053t2.f731d, z3)) == null) {
                                c0053t2.a();
                                if (this.mStackFromEnd) {
                                    iB = y2.b() - 1;
                                } else {
                                    iB = 0;
                                }
                                c0053t2.f729b = iB;
                            } else {
                                c0053t2.b(viewFindReferenceChild, getPosition(viewFindReferenceChild));
                                if (!y2.f578g && supportsPredictiveItemAnimations()) {
                                    iE = this.mOrientationHelper.e(viewFindReferenceChild);
                                    iB2 = this.mOrientationHelper.b(viewFindReferenceChild);
                                    iK = this.mOrientationHelper.k();
                                    iG = this.mOrientationHelper.g();
                                    if (iB2 <= iK || iE >= iK) {
                                        z4 = false;
                                    } else {
                                        z4 = true;
                                    }
                                    if (iE >= iG || iB2 <= iG) {
                                        z5 = false;
                                    } else {
                                        z5 = true;
                                    }
                                    if (z4 || z5) {
                                        if (c0053t2.f731d) {
                                            iK = iG;
                                        }
                                        c0053t2.f730c = iK;
                                    }
                                }
                            }
                        } else {
                            c0053t2.c(focusedChild, getPosition(focusedChild));
                        }
                    } else {
                        z2 = this.mLastStackFromEnd;
                        z3 = this.mStackFromEnd;
                        if (z2 == z3) {
                            c0053t2.a();
                            if (this.mStackFromEnd) {
                                iB = y2.b() - 1;
                            } else {
                                iB = 0;
                            }
                            c0053t2.f729b = iB;
                        } else {
                            c0053t2.b(viewFindReferenceChild, getPosition(viewFindReferenceChild));
                            if (!y2.f578g) {
                                iE = this.mOrientationHelper.e(viewFindReferenceChild);
                                iB2 = this.mOrientationHelper.b(viewFindReferenceChild);
                                iK = this.mOrientationHelper.k();
                                iG = this.mOrientationHelper.g();
                                if (iB2 <= iK) {
                                    z4 = false;
                                } else {
                                    z4 = false;
                                }
                                if (iE >= iG) {
                                    z5 = false;
                                } else {
                                    z5 = false;
                                }
                                if (z4) {
                                    if (c0053t2.f731d) {
                                        iK = iG;
                                    }
                                    c0053t2.f730c = iK;
                                } else {
                                    if (c0053t2.f731d) {
                                        iK = iG;
                                    }
                                    c0053t2.f730c = iK;
                                }
                            }
                        }
                    }
                } else {
                    c0053t2.a();
                    if (this.mStackFromEnd) {
                        iB = y2.b() - 1;
                    } else {
                        iB = 0;
                    }
                    c0053t2.f729b = iB;
                }
            } else if (i2 < 0 || i2 >= y2.b()) {
                this.mPendingScrollPosition = -1;
                this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
                if (getChildCount() != 0) {
                    focusedChild = getFocusedChild();
                    if (focusedChild != null) {
                        n2 = (N) focusedChild.getLayoutParams();
                        if (n2.f559a.isRemoved()) {
                            z2 = this.mLastStackFromEnd;
                            z3 = this.mStackFromEnd;
                            if (z2 == z3) {
                                c0053t2.a();
                                if (this.mStackFromEnd) {
                                    iB = y2.b() - 1;
                                } else {
                                    iB = 0;
                                }
                                c0053t2.f729b = iB;
                            } else {
                                c0053t2.b(viewFindReferenceChild, getPosition(viewFindReferenceChild));
                                if (!y2.f578g) {
                                    iE = this.mOrientationHelper.e(viewFindReferenceChild);
                                    iB2 = this.mOrientationHelper.b(viewFindReferenceChild);
                                    iK = this.mOrientationHelper.k();
                                    iG = this.mOrientationHelper.g();
                                    if (iB2 <= iK) {
                                        z4 = false;
                                    } else {
                                        z4 = false;
                                    }
                                    if (iE >= iG) {
                                        z5 = false;
                                    } else {
                                        z5 = false;
                                    }
                                    if (z4) {
                                        if (c0053t2.f731d) {
                                            iK = iG;
                                        }
                                        c0053t2.f730c = iK;
                                    } else {
                                        if (c0053t2.f731d) {
                                            iK = iG;
                                        }
                                        c0053t2.f730c = iK;
                                    }
                                }
                            }
                        } else {
                            z2 = this.mLastStackFromEnd;
                            z3 = this.mStackFromEnd;
                            if (z2 == z3) {
                                c0053t2.a();
                                if (this.mStackFromEnd) {
                                    iB = y2.b() - 1;
                                } else {
                                    iB = 0;
                                }
                                c0053t2.f729b = iB;
                            } else {
                                c0053t2.b(viewFindReferenceChild, getPosition(viewFindReferenceChild));
                                if (!y2.f578g) {
                                    iE = this.mOrientationHelper.e(viewFindReferenceChild);
                                    iB2 = this.mOrientationHelper.b(viewFindReferenceChild);
                                    iK = this.mOrientationHelper.k();
                                    iG = this.mOrientationHelper.g();
                                    if (iB2 <= iK) {
                                        z4 = false;
                                    } else {
                                        z4 = false;
                                    }
                                    if (iE >= iG) {
                                        z5 = false;
                                    } else {
                                        z5 = false;
                                    }
                                    if (z4) {
                                        if (c0053t2.f731d) {
                                            iK = iG;
                                        }
                                        c0053t2.f730c = iK;
                                    } else {
                                        if (c0053t2.f731d) {
                                            iK = iG;
                                        }
                                        c0053t2.f730c = iK;
                                    }
                                }
                            }
                        }
                    } else {
                        z2 = this.mLastStackFromEnd;
                        z3 = this.mStackFromEnd;
                        if (z2 == z3) {
                            c0053t2.a();
                            if (this.mStackFromEnd) {
                                iB = y2.b() - 1;
                            } else {
                                iB = 0;
                            }
                            c0053t2.f729b = iB;
                        } else {
                            c0053t2.b(viewFindReferenceChild, getPosition(viewFindReferenceChild));
                            if (!y2.f578g) {
                                iE = this.mOrientationHelper.e(viewFindReferenceChild);
                                iB2 = this.mOrientationHelper.b(viewFindReferenceChild);
                                iK = this.mOrientationHelper.k();
                                iG = this.mOrientationHelper.g();
                                if (iB2 <= iK) {
                                    z4 = false;
                                } else {
                                    z4 = false;
                                }
                                if (iE >= iG) {
                                    z5 = false;
                                } else {
                                    z5 = false;
                                }
                                if (z4) {
                                    if (c0053t2.f731d) {
                                        iK = iG;
                                    }
                                    c0053t2.f730c = iK;
                                } else {
                                    if (c0053t2.f731d) {
                                        iK = iG;
                                    }
                                    c0053t2.f730c = iK;
                                }
                            }
                        }
                    }
                } else {
                    c0053t2.a();
                    if (this.mStackFromEnd) {
                        iB = y2.b() - 1;
                    } else {
                        iB = 0;
                    }
                    c0053t2.f729b = iB;
                }
            } else {
                int i13 = this.mPendingScrollPosition;
                c0053t2.f729b = i13;
                C0057x c0057x2 = this.mPendingSavedState;
                if (c0057x2 != null && c0057x2.f749a >= 0) {
                    boolean z6 = c0057x2.f751c;
                    c0053t2.f731d = z6;
                    if (z6) {
                        iG2 = this.mOrientationHelper.g();
                        i4 = this.mPendingSavedState.f750b;
                        i5 = iG2 - i4;
                        c0053t2.f730c = i5;
                    } else {
                        iK2 = this.mOrientationHelper.k();
                        i3 = this.mPendingSavedState.f750b;
                        i5 = iK2 + i3;
                        c0053t2.f730c = i5;
                    }
                } else if (this.mPendingScrollPositionOffset == Integer.MIN_VALUE) {
                    View viewFindViewByPosition2 = findViewByPosition(i13);
                    if (viewFindViewByPosition2 != null) {
                        if (this.mOrientationHelper.c(viewFindViewByPosition2) <= this.mOrientationHelper.l()) {
                            if (this.mOrientationHelper.e(viewFindViewByPosition2) - this.mOrientationHelper.k() < 0) {
                                c0053t2.f730c = this.mOrientationHelper.k();
                                c0053t2.f731d = false;
                            } else if (this.mOrientationHelper.g() - this.mOrientationHelper.b(viewFindViewByPosition2) < 0) {
                                c0053t2.f730c = this.mOrientationHelper.g();
                                c0053t2.f731d = true;
                            } else {
                                c0053t2.f730c = c0053t2.f731d ? this.mOrientationHelper.m() + this.mOrientationHelper.b(viewFindViewByPosition2) : this.mOrientationHelper.e(viewFindViewByPosition2);
                            }
                        }
                    } else if (getChildCount() > 0) {
                        c0053t2.f731d = (this.mPendingScrollPosition < getPosition(getChildAt(0))) == this.mShouldReverseLayout;
                    }
                    c0053t2.a();
                } else {
                    boolean z7 = this.mShouldReverseLayout;
                    c0053t2.f731d = z7;
                    if (z7) {
                        iG2 = this.mOrientationHelper.g();
                        i4 = this.mPendingScrollPositionOffset;
                        i5 = iG2 - i4;
                        c0053t2.f730c = i5;
                    } else {
                        iK2 = this.mOrientationHelper.k();
                        i3 = this.mPendingScrollPositionOffset;
                        i5 = iK2 + i3;
                        c0053t2.f730c = i5;
                    }
                }
            }
            this.mAnchorInfo.f732e = true;
        } else if (focusedChild2 != null && (this.mOrientationHelper.e(focusedChild2) >= this.mOrientationHelper.g() || this.mOrientationHelper.b(focusedChild2) <= this.mOrientationHelper.k())) {
            this.mAnchorInfo.c(focusedChild2, getPosition(focusedChild2));
        }
        C0055v c0055v = this.mLayoutState;
        c0055v.f742f = c0055v.j >= 0 ? 1 : -1;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(y2, iArr);
        int iK3 = this.mOrientationHelper.k() + Math.max(0, this.mReusableIntPair[0]);
        int iH = this.mOrientationHelper.h() + Math.max(0, this.mReusableIntPair[1]);
        if (y2.f578g && (i10 = this.mPendingScrollPosition) != -1 && this.mPendingScrollPositionOffset != Integer.MIN_VALUE && (viewFindViewByPosition = findViewByPosition(i10)) != null) {
            if (this.mShouldReverseLayout) {
                iG3 = this.mOrientationHelper.g() - this.mOrientationHelper.b(viewFindViewByPosition);
                iE2 = this.mPendingScrollPositionOffset;
            } else {
                iE2 = this.mOrientationHelper.e(viewFindViewByPosition) - this.mOrientationHelper.k();
                iG3 = this.mPendingScrollPositionOffset;
            }
            int i14 = iG3 - iE2;
            if (i14 > 0) {
                iK3 += i14;
            } else {
                iH -= i14;
            }
        }
        C0053t c0053t3 = this.mAnchorInfo;
        if (!c0053t3.f731d ? !this.mShouldReverseLayout : this.mShouldReverseLayout) {
            i12 = 1;
        }
        onAnchorReady(kVar, y2, c0053t3, i12);
        detachAndScrapAttachedViews(kVar);
        this.mLayoutState.f747l = resolveIsInfinite();
        this.mLayoutState.getClass();
        this.mLayoutState.f745i = 0;
        C0053t c0053t4 = this.mAnchorInfo;
        if (c0053t4.f731d) {
            o(c0053t4.f729b, c0053t4.f730c);
            C0055v c0055v2 = this.mLayoutState;
            c0055v2.f744h = iK3;
            fill(kVar, c0055v2, y2, false);
            C0055v c0055v3 = this.mLayoutState;
            i7 = c0055v3.f738b;
            int i15 = c0055v3.f740d;
            int i16 = c0055v3.f739c;
            if (i16 > 0) {
                iH += i16;
            }
            C0053t c0053t5 = this.mAnchorInfo;
            n(c0053t5.f729b, c0053t5.f730c);
            C0055v c0055v4 = this.mLayoutState;
            c0055v4.f744h = iH;
            c0055v4.f740d += c0055v4.f741e;
            fill(kVar, c0055v4, y2, false);
            C0055v c0055v5 = this.mLayoutState;
            i6 = c0055v5.f738b;
            int i17 = c0055v5.f739c;
            if (i17 > 0) {
                o(i15, i7);
                C0055v c0055v6 = this.mLayoutState;
                c0055v6.f744h = i17;
                fill(kVar, c0055v6, y2, false);
                i7 = this.mLayoutState.f738b;
            }
        } else {
            n(c0053t4.f729b, c0053t4.f730c);
            C0055v c0055v7 = this.mLayoutState;
            c0055v7.f744h = iH;
            fill(kVar, c0055v7, y2, false);
            C0055v c0055v8 = this.mLayoutState;
            i6 = c0055v8.f738b;
            int i18 = c0055v8.f740d;
            int i19 = c0055v8.f739c;
            if (i19 > 0) {
                iK3 += i19;
            }
            C0053t c0053t6 = this.mAnchorInfo;
            o(c0053t6.f729b, c0053t6.f730c);
            C0055v c0055v9 = this.mLayoutState;
            c0055v9.f744h = iK3;
            c0055v9.f740d += c0055v9.f741e;
            fill(kVar, c0055v9, y2, false);
            C0055v c0055v10 = this.mLayoutState;
            int i20 = c0055v10.f738b;
            int i21 = c0055v10.f739c;
            if (i21 > 0) {
                n(i18, i6);
                C0055v c0055v11 = this.mLayoutState;
                c0055v11.f744h = i21;
                fill(kVar, c0055v11, y2, false);
                i6 = this.mLayoutState.f738b;
            }
            i7 = i20;
        }
        if (getChildCount() > 0) {
            if (this.mShouldReverseLayout ^ this.mStackFromEnd) {
                int iF2 = f(i6, kVar, y2, true);
                i8 = i7 + iF2;
                i9 = i6 + iF2;
                iF = g(i8, kVar, y2, false);
            } else {
                int iG4 = g(i7, kVar, y2, true);
                i8 = i7 + iG4;
                i9 = i6 + iG4;
                iF = f(i9, kVar, y2, false);
            }
            i7 = i8 + iF;
            i6 = i9 + iF;
        }
        if (y2.f581k && getChildCount() != 0 && !y2.f578g && supportsPredictiveItemAnimations()) {
            List list = kVar.f70d;
            int size = list.size();
            int position = getPosition(getChildAt(0));
            int iC = 0;
            int iC2 = 0;
            for (int i22 = 0; i22 < size; i22++) {
                o oVar = (o) list.get(i22);
                if (!oVar.isRemoved()) {
                    if ((oVar.getLayoutPosition() < position) != this.mShouldReverseLayout) {
                        iC += this.mOrientationHelper.c(oVar.itemView);
                    } else {
                        iC2 += this.mOrientationHelper.c(oVar.itemView);
                    }
                }
            }
            this.mLayoutState.f746k = list;
            if (iC > 0) {
                o(getPosition(i()), i7);
                C0055v c0055v12 = this.mLayoutState;
                c0055v12.f744h = iC;
                c0055v12.f739c = 0;
                c0055v12.a(null);
                fill(kVar, this.mLayoutState, y2, false);
            }
            if (iC2 > 0) {
                n(getPosition(h()), i6);
                C0055v c0055v13 = this.mLayoutState;
                c0055v13.f744h = iC2;
                c0055v13.f739c = 0;
                c0055v13.a(null);
                fill(kVar, this.mLayoutState, y2, false);
            }
            this.mLayoutState.f746k = null;
        }
        if (y2.f578g) {
            this.mAnchorInfo.d();
        } else {
            A a2 = this.mOrientationHelper;
            a2.f546b = a2.l();
        }
        this.mLastStackFromEnd = this.mStackFromEnd;
    }

    @Override // androidx.recyclerview.widget.j
    public void onLayoutCompleted(Y y2) {
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mAnchorInfo.d();
    }

    @Override // androidx.recyclerview.widget.j
    @SuppressLint({"UnknownNullness"})
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof C0057x) {
            C0057x c0057x = (C0057x) parcelable;
            this.mPendingSavedState = c0057x;
            if (this.mPendingScrollPosition != -1) {
                c0057x.f749a = -1;
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.j
    @SuppressLint({"UnknownNullness"})
    public Parcelable onSaveInstanceState() {
        C0057x c0057x = this.mPendingSavedState;
        if (c0057x != null) {
            C0057x c0057x2 = new C0057x();
            c0057x2.f749a = c0057x.f749a;
            c0057x2.f750b = c0057x.f750b;
            c0057x2.f751c = c0057x.f751c;
            return c0057x2;
        }
        C0057x c0057x3 = new C0057x();
        if (getChildCount() > 0) {
            ensureLayoutState();
            boolean z2 = this.mLastStackFromEnd ^ this.mShouldReverseLayout;
            c0057x3.f751c = z2;
            if (z2) {
                View viewH = h();
                c0057x3.f750b = this.mOrientationHelper.g() - this.mOrientationHelper.b(viewH);
                c0057x3.f749a = getPosition(viewH);
            } else {
                View viewI = i();
                c0057x3.f749a = getPosition(viewI);
                c0057x3.f750b = this.mOrientationHelper.e(viewI) - this.mOrientationHelper.k();
            }
        } else {
            c0057x3.f749a = -1;
        }
        return c0057x3;
    }

    public boolean resolveIsInfinite() {
        return this.mOrientationHelper.i() == 0 && this.mOrientationHelper.f() == 0;
    }

    public int scrollBy(int i2, k kVar, Y y2) {
        if (getChildCount() == 0 || i2 == 0) {
            return 0;
        }
        ensureLayoutState();
        this.mLayoutState.f737a = true;
        int i3 = i2 > 0 ? 1 : -1;
        int iAbs = Math.abs(i2);
        m(i3, iAbs, true, y2);
        C0055v c0055v = this.mLayoutState;
        int iFill = fill(kVar, c0055v, y2, false) + c0055v.f743g;
        if (iFill < 0) {
            return 0;
        }
        if (iAbs > iFill) {
            i2 = i3 * iFill;
        }
        this.mOrientationHelper.p(-i2);
        this.mLayoutState.j = i2;
        return i2;
    }

    @Override // androidx.recyclerview.widget.j
    public int scrollHorizontallyBy(int i2, k kVar, Y y2) {
        if (this.mOrientation == 1) {
            return 0;
        }
        return scrollBy(i2, kVar, y2);
    }

    @Override // androidx.recyclerview.widget.j
    public void scrollToPosition(int i2) {
        this.mPendingScrollPosition = i2;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        C0057x c0057x = this.mPendingSavedState;
        if (c0057x != null) {
            c0057x.f749a = -1;
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.j
    public int scrollVerticallyBy(int i2, k kVar, Y y2) {
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy(i2, kVar, y2);
    }

    public void setOrientation(int i2) {
        if (i2 != 0 && i2 != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i2);
        }
        assertNotInLayoutOrScroll(null);
        if (i2 != this.mOrientation || this.mOrientationHelper == null) {
            A a2 = A.a(this, i2);
            this.mOrientationHelper = a2;
            this.mAnchorInfo.f728a = a2;
            this.mOrientation = i2;
            requestLayout();
        }
    }

    public void setReverseLayout(boolean z2) {
        assertNotInLayoutOrScroll(null);
        if (z2 == this.mReverseLayout) {
            return;
        }
        this.mReverseLayout = z2;
        requestLayout();
    }

    public void setStackFromEnd(boolean z2) {
        assertNotInLayoutOrScroll(null);
        if (this.mStackFromEnd == z2) {
            return;
        }
        this.mStackFromEnd = z2;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.j
    public boolean shouldMeasureTwice() {
        return (getHeightMode() == 1073741824 || getWidthMode() == 1073741824 || !hasFlexibleChildInBothOrientations()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.j
    @SuppressLint({"UnknownNullness"})
    public void smoothScrollToPosition(RecyclerView recyclerView, Y y2, int i2) {
        C0058y c0058y = new C0058y(recyclerView.getContext());
        c0058y.f82a = i2;
        startSmoothScroll(c0058y);
    }

    @Override // androidx.recyclerview.widget.j
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && this.mLastStackFromEnd == this.mStackFromEnd;
    }

    @SuppressLint({"UnknownNullness"})
    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i2, int i3) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new C0053t();
        this.mLayoutChunkResult = new C0054u();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        M properties = j.getProperties(context, attributeSet, i2, i3);
        setOrientation(properties.f555a);
        setReverseLayout(properties.f557c);
        setStackFromEnd(properties.f558d);
    }

    public void onAnchorReady(k kVar, Y y2, C0053t c0053t, int i2) {
    }
}
