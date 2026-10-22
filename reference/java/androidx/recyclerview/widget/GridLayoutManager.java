package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.GridView;
import java.util.Arrays;
import r.C0050p;
import r.C0051q;
import r.C0053t;
import r.C0054u;
import r.C0055v;
import r.L;
import r.N;
import r.Y;
import r.r;

/* JADX INFO: loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {
    int[] mCachedBorders;
    final Rect mDecorInsets;
    boolean mPendingSpanCountChange;
    final SparseIntArray mPreLayoutSpanIndexCache;
    final SparseIntArray mPreLayoutSpanSizeCache;
    View[] mSet;
    int mSpanCount;
    r mSpanSizeLookup;
    private boolean mUsingSpansToEstimateScrollBarDimensions;

    public GridLayoutManager(int i2) {
        this.mPendingSpanCountChange = false;
        this.mSpanCount = -1;
        this.mPreLayoutSpanSizeCache = new SparseIntArray();
        this.mPreLayoutSpanIndexCache = new SparseIntArray();
        this.mSpanSizeLookup = new C0050p();
        this.mDecorInsets = new Rect();
        setSpanCount(i2);
    }

    public static int[] calculateItemBorders(int[] iArr, int i2, int i3) {
        int i4;
        if (iArr == null || iArr.length != i2 + 1 || iArr[iArr.length - 1] != i3) {
            iArr = new int[i2 + 1];
        }
        int i5 = 0;
        iArr[0] = 0;
        int i6 = i3 / i2;
        int i7 = i3 % i2;
        int i8 = 0;
        for (int i9 = 1; i9 <= i2; i9++) {
            i5 += i7;
            if (i5 <= 0 || i2 - i5 >= i7) {
                i4 = i6;
            } else {
                i4 = i6 + 1;
                i5 -= i2;
            }
            i8 += i4;
            iArr[i9] = i8;
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.j
    public boolean checkLayoutParams(N n2) {
        return n2 instanceof C0051q;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void collectPrefetchPositionsForLayoutState(Y y2, C0055v c0055v, L l2) {
        int i2;
        int i3 = this.mSpanCount;
        for (int i4 = 0; i4 < this.mSpanCount && (i2 = c0055v.f740d) >= 0 && i2 < y2.b() && i3 > 0; i4++) {
            ((c) l2).a(c0055v.f740d, Math.max(0, c0055v.f743g));
            this.mSpanSizeLookup.getClass();
            i3--;
            c0055v.f740d += c0055v.f741e;
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.j
    public int computeHorizontalScrollOffset(Y y2) {
        return this.mUsingSpansToEstimateScrollBarDimensions ? p(y2) : d(y2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.j
    public int computeHorizontalScrollRange(Y y2) {
        return this.mUsingSpansToEstimateScrollBarDimensions ? q(y2) : e(y2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.j
    public int computeVerticalScrollOffset(Y y2) {
        return this.mUsingSpansToEstimateScrollBarDimensions ? p(y2) : d(y2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.j
    public int computeVerticalScrollRange(Y y2) {
        return this.mUsingSpansToEstimateScrollBarDimensions ? q(y2) : e(y2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public View findReferenceChild(k kVar, Y y2, boolean z2, boolean z3) {
        int i2;
        int childCount;
        int childCount2 = getChildCount();
        int i3 = 1;
        if (z3) {
            childCount = getChildCount() - 1;
            i2 = -1;
            i3 = -1;
        } else {
            i2 = childCount2;
            childCount = 0;
        }
        int iB = y2.b();
        ensureLayoutState();
        int iK = this.mOrientationHelper.k();
        int iG = this.mOrientationHelper.g();
        View view = null;
        View view2 = null;
        while (childCount != i2) {
            View childAt = getChildAt(childCount);
            int position = getPosition(childAt);
            if (position >= 0 && position < iB && t(position, kVar, y2) == 0) {
                if (((N) childAt.getLayoutParams()).f559a.isRemoved()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else {
                    if (this.mOrientationHelper.e(childAt) < iG && this.mOrientationHelper.b(childAt) >= iK) {
                        return childAt;
                    }
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            childCount += i3;
        }
        return view != null ? view : view2;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.j
    public N generateDefaultLayoutParams() {
        return this.mOrientation == 0 ? new C0051q(-2, -1) : new C0051q(-1, -2);
    }

    @Override // androidx.recyclerview.widget.j
    public N generateLayoutParams(Context context, AttributeSet attributeSet) {
        C0051q c0051q = new C0051q(context, attributeSet);
        c0051q.f715e = -1;
        c0051q.f716f = 0;
        return c0051q;
    }

    @Override // androidx.recyclerview.widget.j
    public int getColumnCountForAccessibility(k kVar, Y y2) {
        if (this.mOrientation == 1) {
            return this.mSpanCount;
        }
        if (y2.b() < 1) {
            return 0;
        }
        return s(y2.b() - 1, kVar, y2) + 1;
    }

    @Override // androidx.recyclerview.widget.j
    public int getRowCountForAccessibility(k kVar, Y y2) {
        if (this.mOrientation == 0) {
            return this.mSpanCount;
        }
        if (y2.b() < 1) {
            return 0;
        }
        return s(y2.b() - 1, kVar, y2) + 1;
    }

    public int getSpaceForSpanRange(int i2, int i3) {
        if (this.mOrientation != 1 || !isLayoutRTL()) {
            int[] iArr = this.mCachedBorders;
            return iArr[i3 + i2] - iArr[i2];
        }
        int[] iArr2 = this.mCachedBorders;
        int i4 = this.mSpanCount;
        return iArr2[i4 - i2] - iArr2[(i4 - i2) - i3];
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void layoutChunk(k kVar, Y y2, C0055v c0055v, C0054u c0054u) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int iD;
        int iD2;
        int i9;
        int iD3;
        int childMeasureSpec;
        int childMeasureSpec2;
        boolean z2;
        int i10;
        View viewB;
        int iJ = this.mOrientationHelper.j();
        boolean z3 = iJ != 1073741824;
        int i11 = getChildCount() > 0 ? this.mCachedBorders[this.mSpanCount] : 0;
        if (z3) {
            w();
        }
        boolean z4 = c0055v.f741e == 1;
        int iT = this.mSpanCount;
        if (!z4) {
            iT = t(c0055v.f740d, kVar, y2) + u(c0055v.f740d, kVar, y2);
        }
        int i12 = 0;
        while (i12 < this.mSpanCount && (i10 = c0055v.f740d) >= 0 && i10 < y2.b() && iT > 0) {
            int i13 = c0055v.f740d;
            int iU = u(i13, kVar, y2);
            if (iU > this.mSpanCount) {
                throw new IllegalArgumentException("Item at position " + i13 + " requires " + iU + " spans but GridLayoutManager has only " + this.mSpanCount + " spans.");
            }
            iT -= iU;
            if (iT < 0 || (viewB = c0055v.b(kVar)) == null) {
                break;
            }
            this.mSet[i12] = viewB;
            i12++;
        }
        if (i12 == 0) {
            c0054u.f734b = true;
            return;
        }
        if (z4) {
            i3 = i12;
            i2 = 0;
            i4 = 1;
        } else {
            i2 = i12 - 1;
            i3 = -1;
            i4 = -1;
        }
        int i14 = 0;
        while (i2 != i3) {
            View view = this.mSet[i2];
            C0051q c0051q = (C0051q) view.getLayoutParams();
            int iU2 = u(getPosition(view), kVar, y2);
            c0051q.f716f = iU2;
            c0051q.f715e = i14;
            i14 += iU2;
            i2 += i4;
        }
        float f2 = 0.0f;
        int i15 = 0;
        for (int i16 = 0; i16 < i12; i16++) {
            View view2 = this.mSet[i16];
            if (c0055v.f746k != null) {
                z2 = false;
                if (z4) {
                    addDisappearingView(view2);
                } else {
                    addDisappearingView(view2, 0);
                }
            } else if (z4) {
                addView(view2);
                z2 = false;
            } else {
                z2 = false;
                addView(view2, 0);
            }
            calculateItemDecorationsForChild(view2, this.mDecorInsets);
            v(iJ, view2, z2);
            int iC = this.mOrientationHelper.c(view2);
            if (iC > i15) {
                i15 = iC;
            }
            float fD = (this.mOrientationHelper.d(view2) * 1.0f) / ((C0051q) view2.getLayoutParams()).f716f;
            if (fD > f2) {
                f2 = fD;
            }
        }
        if (z3) {
            this.mCachedBorders = calculateItemBorders(this.mCachedBorders, this.mSpanCount, Math.max(Math.round(f2 * this.mSpanCount), i11));
            i15 = 0;
            for (int i17 = 0; i17 < i12; i17++) {
                View view3 = this.mSet[i17];
                v(1073741824, view3, true);
                int iC2 = this.mOrientationHelper.c(view3);
                if (iC2 > i15) {
                    i15 = iC2;
                }
            }
        }
        for (int i18 = 0; i18 < i12; i18++) {
            View view4 = this.mSet[i18];
            if (this.mOrientationHelper.c(view4) != i15) {
                C0051q c0051q2 = (C0051q) view4.getLayoutParams();
                Rect rect = c0051q2.f560b;
                int i19 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) c0051q2).topMargin + ((ViewGroup.MarginLayoutParams) c0051q2).bottomMargin;
                int i20 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) c0051q2).leftMargin + ((ViewGroup.MarginLayoutParams) c0051q2).rightMargin;
                int spaceForSpanRange = getSpaceForSpanRange(c0051q2.f715e, c0051q2.f716f);
                if (this.mOrientation == 1) {
                    childMeasureSpec2 = j.getChildMeasureSpec(spaceForSpanRange, 1073741824, i20, ((ViewGroup.MarginLayoutParams) c0051q2).width, false);
                    childMeasureSpec = View.MeasureSpec.makeMeasureSpec(i15 - i19, 1073741824);
                } else {
                    int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i15 - i20, 1073741824);
                    childMeasureSpec = j.getChildMeasureSpec(spaceForSpanRange, 1073741824, i19, ((ViewGroup.MarginLayoutParams) c0051q2).height, false);
                    childMeasureSpec2 = iMakeMeasureSpec;
                }
                if (shouldReMeasureChild(view4, childMeasureSpec2, childMeasureSpec, (N) view4.getLayoutParams())) {
                    view4.measure(childMeasureSpec2, childMeasureSpec);
                }
            }
        }
        int i21 = 0;
        c0054u.f733a = i15;
        if (this.mOrientation == 1) {
            int i22 = c0055v.f742f;
            i8 = c0055v.f738b;
            if (i22 == -1) {
                i7 = i8 - i15;
                i6 = 0;
                i5 = 0;
            } else {
                i7 = i8;
                i5 = 0;
                i8 += i15;
                i6 = 0;
            }
        } else {
            int i23 = c0055v.f742f;
            int i24 = c0055v.f738b;
            if (i23 == -1) {
                i6 = i24 - i15;
                i5 = i24;
            } else {
                i5 = i24 + i15;
                i6 = i24;
            }
            i7 = 0;
            i8 = 0;
        }
        while (i21 < i12) {
            View view5 = this.mSet[i21];
            C0051q c0051q3 = (C0051q) view5.getLayoutParams();
            if (this.mOrientation != 1) {
                int paddingTop = getPaddingTop() + this.mCachedBorders[c0051q3.f715e];
                iD = i6;
                iD2 = i5;
                i9 = paddingTop;
                iD3 = this.mOrientationHelper.d(view5) + paddingTop;
            } else if (isLayoutRTL()) {
                int paddingLeft = getPaddingLeft() + this.mCachedBorders[this.mSpanCount - c0051q3.f715e];
                iD2 = paddingLeft;
                i9 = i7;
                iD3 = i8;
                iD = paddingLeft - this.mOrientationHelper.d(view5);
            } else {
                int paddingLeft2 = getPaddingLeft() + this.mCachedBorders[c0051q3.f715e];
                iD2 = this.mOrientationHelper.d(view5) + paddingLeft2;
                i9 = i7;
                iD3 = i8;
                iD = paddingLeft2;
            }
            layoutDecoratedWithMargins(view5, iD, i9, iD2, iD3);
            if (c0051q3.f559a.isRemoved() || c0051q3.f559a.isUpdated()) {
                c0054u.f735c = true;
            }
            c0054u.f736d |= view5.hasFocusable();
            i21++;
            i6 = iD;
            i5 = iD2;
            i7 = i9;
            i8 = iD3;
        }
        Arrays.fill(this.mSet, (Object) null);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void onAnchorReady(k kVar, Y y2, C0053t c0053t, int i2) {
        w();
        if (y2.b() > 0 && !y2.f578g) {
            boolean z2 = i2 == 1;
            int iT = t(c0053t.f729b, kVar, y2);
            if (z2) {
                while (iT > 0) {
                    int i3 = c0053t.f729b;
                    if (i3 <= 0) {
                        break;
                    }
                    int i4 = i3 - 1;
                    c0053t.f729b = i4;
                    iT = t(i4, kVar, y2);
                }
            } else {
                int iB = y2.b() - 1;
                int i5 = c0053t.f729b;
                while (i5 < iB) {
                    int i6 = i5 + 1;
                    int iT2 = t(i6, kVar, y2);
                    if (iT2 <= iT) {
                        break;
                    }
                    i5 = i6;
                    iT = iT2;
                }
                c0053t.f729b = i5;
            }
        }
        r();
    }

    /* JADX WARN: Code duplicated, block: B:72:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:73:0x010f  */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00d1, code lost:
    
        if (r13 == (r2 > r15)) goto L47;
     */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View onFocusSearchFailed(View view, int i2, k kVar, Y y2) {
        int childCount;
        int childCount2;
        int i3;
        View view2;
        View view3;
        int i4;
        int i5;
        int i6;
        int i7;
        k kVar2 = kVar;
        Y y3 = y2;
        View viewFindContainingItemView = findContainingItemView(view);
        View view4 = null;
        if (viewFindContainingItemView == null) {
            return null;
        }
        C0051q c0051q = (C0051q) viewFindContainingItemView.getLayoutParams();
        int i8 = c0051q.f715e;
        int i9 = c0051q.f716f + i8;
        if (super.onFocusSearchFailed(view, i2, kVar, y2) == null) {
            return null;
        }
        if ((convertFocusDirectionToLayoutDirection(i2) == 1) != this.mShouldReverseLayout) {
            childCount2 = getChildCount() - 1;
            childCount = -1;
            i3 = -1;
        } else {
            childCount = getChildCount();
            childCount2 = 0;
            i3 = 1;
        }
        boolean z2 = this.mOrientation == 1 && isLayoutRTL();
        int iS = s(childCount2, kVar2, y3);
        int i10 = childCount2;
        int iMin = 0;
        int i11 = -1;
        int i12 = -1;
        int iMin2 = 0;
        View view5 = null;
        while (i10 != childCount) {
            int iS2 = s(i10, kVar2, y3);
            View childAt = getChildAt(i10);
            if (childAt == viewFindContainingItemView) {
                break;
            }
            if (!childAt.hasFocusable() || iS2 == iS) {
                C0051q c0051q2 = (C0051q) childAt.getLayoutParams();
                int i13 = c0051q2.f715e;
                view2 = viewFindContainingItemView;
                int i14 = c0051q2.f716f + i13;
                if (childAt.hasFocusable() && i13 == i8 && i14 == i9) {
                    return childAt;
                }
                if (!(childAt.hasFocusable() && view4 == null) && (childAt.hasFocusable() || view5 != null)) {
                    view3 = view5;
                    int iMin3 = Math.min(i14, i9) - Math.max(i13, i8);
                    if (!childAt.hasFocusable()) {
                        if (view4 == null) {
                            i4 = iMin;
                            i5 = childCount;
                            if (isViewPartiallyVisible(childAt, false, true)) {
                                i6 = iMin2;
                                if (iMin3 > i6) {
                                    i7 = i12;
                                } else if (iMin3 == i6) {
                                    i7 = i12;
                                    if (z2 == (i13 > i7)) {
                                    }
                                    i10 += i3;
                                    kVar2 = kVar;
                                    y3 = y2;
                                    viewFindContainingItemView = view2;
                                    childCount = i5;
                                } else {
                                    i7 = i12;
                                }
                                if (childAt.hasFocusable()) {
                                    i11 = c0051q2.f715e;
                                    i12 = i7;
                                    iMin2 = i6;
                                    view5 = view3;
                                    view4 = childAt;
                                    iMin = Math.min(i14, i9) - Math.max(i13, i8);
                                } else {
                                    int i15 = c0051q2.f715e;
                                    iMin2 = Math.min(i14, i9) - Math.max(i13, i8);
                                    i12 = i15;
                                    iMin = i4;
                                    view5 = childAt;
                                }
                                i10 += i3;
                                kVar2 = kVar;
                                y3 = y2;
                                viewFindContainingItemView = view2;
                                childCount = i5;
                            }
                            i12 = i7;
                            iMin2 = i6;
                            iMin = i4;
                            view5 = view3;
                            i10 += i3;
                            kVar2 = kVar;
                            y3 = y2;
                            viewFindContainingItemView = view2;
                            childCount = i5;
                        }
                        i7 = i12;
                        i6 = iMin2;
                        i12 = i7;
                        iMin2 = i6;
                        iMin = i4;
                        view5 = view3;
                        i10 += i3;
                        kVar2 = kVar;
                        y3 = y2;
                        viewFindContainingItemView = view2;
                        childCount = i5;
                    } else if (iMin3 <= iMin) {
                        if (iMin3 == iMin) {
                        }
                    }
                } else {
                    view3 = view5;
                }
                i4 = iMin;
                i5 = childCount;
                i7 = i12;
                i6 = iMin2;
                if (childAt.hasFocusable()) {
                    i11 = c0051q2.f715e;
                    i12 = i7;
                    iMin2 = i6;
                    view5 = view3;
                    view4 = childAt;
                    iMin = Math.min(i14, i9) - Math.max(i13, i8);
                } else {
                    int i16 = c0051q2.f715e;
                    iMin2 = Math.min(i14, i9) - Math.max(i13, i8);
                    i12 = i16;
                    iMin = i4;
                    view5 = childAt;
                }
                i10 += i3;
                kVar2 = kVar;
                y3 = y2;
                viewFindContainingItemView = view2;
                childCount = i5;
            } else {
                if (view4 != null) {
                    break;
                }
                view2 = viewFindContainingItemView;
                view3 = view5;
            }
            i4 = iMin;
            i5 = childCount;
            i7 = i12;
            i6 = iMin2;
            i12 = i7;
            iMin2 = i6;
            iMin = i4;
            view5 = view3;
            i10 += i3;
            kVar2 = kVar;
            y3 = y2;
            viewFindContainingItemView = view2;
            childCount = i5;
        }
        return view4 != null ? view4 : view5;
    }

    @Override // androidx.recyclerview.widget.j
    public void onInitializeAccessibilityNodeInfo(k kVar, Y y2, l.d dVar) {
        super.onInitializeAccessibilityNodeInfo(kVar, y2, dVar);
        dVar.f498a.setClassName(GridView.class.getName());
    }

    @Override // androidx.recyclerview.widget.j
    public void onInitializeAccessibilityNodeInfoForItem(k kVar, Y y2, View view, l.d dVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof C0051q)) {
            super.onInitializeAccessibilityNodeInfoForItem(view, dVar);
            return;
        }
        C0051q c0051q = (C0051q) layoutParams;
        int iS = s(c0051q.f559a.getLayoutPosition(), kVar, y2);
        AccessibilityNodeInfo.CollectionItemInfo collectionItemInfoObtain = this.mOrientation == 0 ? AccessibilityNodeInfo.CollectionItemInfo.obtain(c0051q.f715e, c0051q.f716f, iS, 1, false, false) : AccessibilityNodeInfo.CollectionItemInfo.obtain(iS, 1, c0051q.f715e, c0051q.f716f, false, false);
        dVar.getClass();
        dVar.f498a.setCollectionItemInfo(collectionItemInfoObtain);
    }

    @Override // androidx.recyclerview.widget.j
    public void onItemsAdded(RecyclerView recyclerView, int i2, int i3) {
        this.mSpanSizeLookup.b();
        this.mSpanSizeLookup.f718b.clear();
    }

    @Override // androidx.recyclerview.widget.j
    public void onItemsChanged(RecyclerView recyclerView) {
        this.mSpanSizeLookup.b();
        this.mSpanSizeLookup.f718b.clear();
    }

    @Override // androidx.recyclerview.widget.j
    public void onItemsMoved(RecyclerView recyclerView, int i2, int i3, int i4) {
        this.mSpanSizeLookup.b();
        this.mSpanSizeLookup.f718b.clear();
    }

    @Override // androidx.recyclerview.widget.j
    public void onItemsRemoved(RecyclerView recyclerView, int i2, int i3) {
        this.mSpanSizeLookup.b();
        this.mSpanSizeLookup.f718b.clear();
    }

    @Override // androidx.recyclerview.widget.j
    public void onItemsUpdated(RecyclerView recyclerView, int i2, int i3, Object obj) {
        this.mSpanSizeLookup.b();
        this.mSpanSizeLookup.f718b.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.j
    public void onLayoutChildren(k kVar, Y y2) {
        if (y2.f578g) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                C0051q c0051q = (C0051q) getChildAt(i2).getLayoutParams();
                int layoutPosition = c0051q.f559a.getLayoutPosition();
                this.mPreLayoutSpanSizeCache.put(layoutPosition, c0051q.f716f);
                this.mPreLayoutSpanIndexCache.put(layoutPosition, c0051q.f715e);
            }
        }
        super.onLayoutChildren(kVar, y2);
        this.mPreLayoutSpanSizeCache.clear();
        this.mPreLayoutSpanIndexCache.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.j
    public void onLayoutCompleted(Y y2) {
        super.onLayoutCompleted(y2);
        this.mPendingSpanCountChange = false;
    }

    public final int p(Y y2) {
        if (getChildCount() != 0 && y2.b() != 0) {
            ensureLayoutState();
            boolean zIsSmoothScrollbarEnabled = isSmoothScrollbarEnabled();
            boolean z2 = !zIsSmoothScrollbarEnabled;
            View viewFindFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart(z2, true);
            View viewFindFirstVisibleChildClosestToEnd = findFirstVisibleChildClosestToEnd(z2, true);
            if (viewFindFirstVisibleChildClosestToStart != null && viewFindFirstVisibleChildClosestToEnd != null) {
                r rVar = this.mSpanSizeLookup;
                int position = getPosition(viewFindFirstVisibleChildClosestToStart);
                int i2 = this.mSpanCount;
                rVar.getClass();
                int iA = r.a(position, i2);
                r rVar2 = this.mSpanSizeLookup;
                int position2 = getPosition(viewFindFirstVisibleChildClosestToEnd);
                int i3 = this.mSpanCount;
                rVar2.getClass();
                int iA2 = r.a(position2, i3);
                int iMin = Math.min(iA, iA2);
                int iMax = Math.max(iA, iA2);
                r rVar3 = this.mSpanSizeLookup;
                int iB = y2.b() - 1;
                int i4 = this.mSpanCount;
                rVar3.getClass();
                int iMax2 = this.mShouldReverseLayout ? Math.max(0, ((r.a(iB, i4) + 1) - iMax) - 1) : Math.max(0, iMin);
                if (!zIsSmoothScrollbarEnabled) {
                    return iMax2;
                }
                int iAbs = Math.abs(this.mOrientationHelper.b(viewFindFirstVisibleChildClosestToEnd) - this.mOrientationHelper.e(viewFindFirstVisibleChildClosestToStart));
                r rVar4 = this.mSpanSizeLookup;
                int position3 = getPosition(viewFindFirstVisibleChildClosestToStart);
                int i5 = this.mSpanCount;
                rVar4.getClass();
                int iA3 = r.a(position3, i5);
                r rVar5 = this.mSpanSizeLookup;
                int position4 = getPosition(viewFindFirstVisibleChildClosestToEnd);
                int i6 = this.mSpanCount;
                rVar5.getClass();
                return Math.round((iMax2 * (iAbs / ((r.a(position4, i6) - iA3) + 1))) + (this.mOrientationHelper.k() - this.mOrientationHelper.e(viewFindFirstVisibleChildClosestToStart)));
            }
        }
        return 0;
    }

    public final int q(Y y2) {
        if (getChildCount() != 0 && y2.b() != 0) {
            ensureLayoutState();
            View viewFindFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart(!isSmoothScrollbarEnabled(), true);
            View viewFindFirstVisibleChildClosestToEnd = findFirstVisibleChildClosestToEnd(!isSmoothScrollbarEnabled(), true);
            if (viewFindFirstVisibleChildClosestToStart != null && viewFindFirstVisibleChildClosestToEnd != null) {
                if (!isSmoothScrollbarEnabled()) {
                    r rVar = this.mSpanSizeLookup;
                    int iB = y2.b() - 1;
                    int i2 = this.mSpanCount;
                    rVar.getClass();
                    return r.a(iB, i2) + 1;
                }
                int iB2 = this.mOrientationHelper.b(viewFindFirstVisibleChildClosestToEnd) - this.mOrientationHelper.e(viewFindFirstVisibleChildClosestToStart);
                r rVar2 = this.mSpanSizeLookup;
                int position = getPosition(viewFindFirstVisibleChildClosestToStart);
                int i3 = this.mSpanCount;
                rVar2.getClass();
                int iA = r.a(position, i3);
                r rVar3 = this.mSpanSizeLookup;
                int position2 = getPosition(viewFindFirstVisibleChildClosestToEnd);
                int i4 = this.mSpanCount;
                rVar3.getClass();
                int iA2 = r.a(position2, i4);
                r rVar4 = this.mSpanSizeLookup;
                int iB3 = y2.b() - 1;
                int i5 = this.mSpanCount;
                rVar4.getClass();
                return (int) ((iB2 / ((iA2 - iA) + 1)) * (r.a(iB3, i5) + 1));
            }
        }
        return 0;
    }

    public final void r() {
        View[] viewArr = this.mSet;
        if (viewArr == null || viewArr.length != this.mSpanCount) {
            this.mSet = new View[this.mSpanCount];
        }
    }

    public final int s(int i2, k kVar, Y y2) {
        if (!y2.f578g) {
            r rVar = this.mSpanSizeLookup;
            int i3 = this.mSpanCount;
            rVar.getClass();
            return r.a(i2, i3);
        }
        int iB = kVar.b(i2);
        if (iB == -1) {
            Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i2);
            return 0;
        }
        r rVar2 = this.mSpanSizeLookup;
        int i4 = this.mSpanCount;
        rVar2.getClass();
        return r.a(iB, i4);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.j
    public int scrollHorizontallyBy(int i2, k kVar, Y y2) {
        w();
        r();
        return super.scrollHorizontallyBy(i2, kVar, y2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.j
    public int scrollVerticallyBy(int i2, k kVar, Y y2) {
        w();
        r();
        return super.scrollVerticallyBy(i2, kVar, y2);
    }

    @Override // androidx.recyclerview.widget.j
    public void setMeasuredDimension(Rect rect, int i2, int i3) {
        int iChooseSize;
        int iChooseSize2;
        if (this.mCachedBorders == null) {
            super.setMeasuredDimension(rect, i2, i3);
        }
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (this.mOrientation == 1) {
            iChooseSize2 = j.chooseSize(i3, rect.height() + paddingBottom, getMinimumHeight());
            int[] iArr = this.mCachedBorders;
            iChooseSize = j.chooseSize(i2, iArr[iArr.length - 1] + paddingRight, getMinimumWidth());
        } else {
            iChooseSize = j.chooseSize(i2, rect.width() + paddingRight, getMinimumWidth());
            int[] iArr2 = this.mCachedBorders;
            iChooseSize2 = j.chooseSize(i3, iArr2[iArr2.length - 1] + paddingBottom, getMinimumHeight());
        }
        setMeasuredDimension(iChooseSize, iChooseSize2);
    }

    public void setSpanCount(int i2) {
        if (i2 == this.mSpanCount) {
            return;
        }
        this.mPendingSpanCountChange = true;
        if (i2 < 1) {
            throw new IllegalArgumentException("Span count should be at least 1. Provided " + i2);
        }
        this.mSpanCount = i2;
        this.mSpanSizeLookup.b();
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void setStackFromEnd(boolean z2) {
        if (z2) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.setStackFromEnd(false);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.j
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && !this.mPendingSpanCountChange;
    }

    public final int t(int i2, k kVar, Y y2) {
        if (!y2.f578g) {
            r rVar = this.mSpanSizeLookup;
            int i3 = this.mSpanCount;
            rVar.getClass();
            return i2 % i3;
        }
        int i4 = this.mPreLayoutSpanIndexCache.get(i2, -1);
        if (i4 != -1) {
            return i4;
        }
        int iB = kVar.b(i2);
        if (iB == -1) {
            Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i2);
            return 0;
        }
        r rVar2 = this.mSpanSizeLookup;
        int i5 = this.mSpanCount;
        rVar2.getClass();
        return iB % i5;
    }

    public final int u(int i2, k kVar, Y y2) {
        if (!y2.f578g) {
            this.mSpanSizeLookup.getClass();
            return 1;
        }
        int i3 = this.mPreLayoutSpanSizeCache.get(i2, -1);
        if (i3 != -1) {
            return i3;
        }
        if (kVar.b(i2) != -1) {
            this.mSpanSizeLookup.getClass();
            return 1;
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i2);
        return 1;
    }

    public final void v(int i2, View view, boolean z2) {
        int childMeasureSpec;
        int childMeasureSpec2;
        C0051q c0051q = (C0051q) view.getLayoutParams();
        Rect rect = c0051q.f560b;
        int i3 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) c0051q).topMargin + ((ViewGroup.MarginLayoutParams) c0051q).bottomMargin;
        int i4 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) c0051q).leftMargin + ((ViewGroup.MarginLayoutParams) c0051q).rightMargin;
        int spaceForSpanRange = getSpaceForSpanRange(c0051q.f715e, c0051q.f716f);
        if (this.mOrientation == 1) {
            childMeasureSpec2 = j.getChildMeasureSpec(spaceForSpanRange, i2, i4, ((ViewGroup.MarginLayoutParams) c0051q).width, false);
            childMeasureSpec = j.getChildMeasureSpec(this.mOrientationHelper.l(), getHeightMode(), i3, ((ViewGroup.MarginLayoutParams) c0051q).height, true);
        } else {
            int childMeasureSpec3 = j.getChildMeasureSpec(spaceForSpanRange, i2, i3, ((ViewGroup.MarginLayoutParams) c0051q).height, false);
            int childMeasureSpec4 = j.getChildMeasureSpec(this.mOrientationHelper.l(), getWidthMode(), i4, ((ViewGroup.MarginLayoutParams) c0051q).width, true);
            childMeasureSpec = childMeasureSpec3;
            childMeasureSpec2 = childMeasureSpec4;
        }
        N n2 = (N) view.getLayoutParams();
        if (z2 ? shouldReMeasureChild(view, childMeasureSpec2, childMeasureSpec, n2) : shouldMeasureChild(view, childMeasureSpec2, childMeasureSpec, n2)) {
            view.measure(childMeasureSpec2, childMeasureSpec);
        }
    }

    public final void w() {
        int height;
        int paddingTop;
        if (getOrientation() == 1) {
            height = getWidth() - getPaddingRight();
            paddingTop = getPaddingLeft();
        } else {
            height = getHeight() - getPaddingBottom();
            paddingTop = getPaddingTop();
        }
        this.mCachedBorders = calculateItemBorders(this.mCachedBorders, this.mSpanCount, height - paddingTop);
    }

    @Override // androidx.recyclerview.widget.j
    public N generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            C0051q c0051q = new C0051q((ViewGroup.MarginLayoutParams) layoutParams);
            c0051q.f715e = -1;
            c0051q.f716f = 0;
            return c0051q;
        }
        C0051q c0051q2 = new C0051q(layoutParams);
        c0051q2.f715e = -1;
        c0051q2.f716f = 0;
        return c0051q2;
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mPendingSpanCountChange = false;
        this.mSpanCount = -1;
        this.mPreLayoutSpanSizeCache = new SparseIntArray();
        this.mPreLayoutSpanIndexCache = new SparseIntArray();
        this.mSpanSizeLookup = new C0050p();
        this.mDecorInsets = new Rect();
        setSpanCount(j.getProperties(context, attributeSet, i2, i3).f556b);
    }
}
