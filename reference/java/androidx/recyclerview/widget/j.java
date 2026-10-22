package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import java.lang.reflect.Field;
import java.util.ArrayList;
import k.AbstractC0031f;
import k.AbstractC0032g;
import k.r;
import r.C;
import r.C0036b;
import r.K;
import r.L;
import r.M;
import r.N;
import r.Y;
import r.k0;
import r.l0;
import r.m0;

/* JADX INFO: loaded from: classes.dex */
public abstract class j {
    boolean mAutoMeasure;
    b mChildHelper;
    private int mHeight;
    private int mHeightMode;
    l0 mHorizontalBoundCheck;
    private final k0 mHorizontalBoundCheckCallback;
    boolean mIsAttachedToWindow;
    private boolean mItemPrefetchEnabled;
    private boolean mMeasurementCacheEnabled;
    int mPrefetchMaxCountObserved;
    boolean mPrefetchMaxObservedInInitialPrefetch;
    RecyclerView mRecyclerView;
    boolean mRequestedSimpleAnimations;
    m mSmoothScroller;
    l0 mVerticalBoundCheck;
    private final k0 mVerticalBoundCheckCallback;
    private int mWidth;
    private int mWidthMode;

    public j() {
        K k2 = new K(this, 0);
        this.mHorizontalBoundCheckCallback = k2;
        K k3 = new K(this, 1);
        this.mVerticalBoundCheckCallback = k3;
        this.mHorizontalBoundCheck = new l0(k2);
        this.mVerticalBoundCheck = new l0(k3);
        this.mRequestedSimpleAnimations = false;
        this.mIsAttachedToWindow = false;
        this.mAutoMeasure = false;
        this.mMeasurementCacheEnabled = true;
        this.mItemPrefetchEnabled = true;
    }

    public static boolean b(int i2, int i3, int i4) {
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i3);
        if (i4 > 0 && i2 != i4) {
            return false;
        }
        if (mode == Integer.MIN_VALUE) {
            return size >= i2;
        }
        if (mode != 0) {
            return mode == 1073741824 && size == i2;
        }
        return true;
    }

    public static int chooseSize(int i2, int i3, int i4) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode != Integer.MIN_VALUE) {
            return mode != 1073741824 ? Math.max(i3, i4) : size;
        }
        return Math.min(size, Math.max(i3, i4));
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001b  */
    /* JADX WARN: Code duplicated, block: B:5:0x0010  */
    public static int getChildMeasureSpec(int i2, int i3, int i4, int i5, boolean z2) {
        int iMax = Math.max(0, i2 - i4);
        if (z2) {
            if (i5 >= 0) {
                i3 = 1073741824;
            } else if (i5 != -1 || (i3 != Integer.MIN_VALUE && (i3 == 0 || i3 != 1073741824))) {
                i3 = 0;
                i5 = 0;
            } else {
                i5 = iMax;
            }
        } else if (i5 >= 0) {
            i3 = 1073741824;
        } else {
            if (i5 != -1) {
                if (i5 == -2) {
                    i3 = (i3 == Integer.MIN_VALUE || i3 == 1073741824) ? Integer.MIN_VALUE : 0;
                } else {
                    i3 = 0;
                    i5 = 0;
                }
            }
            i5 = iMax;
        }
        return View.MeasureSpec.makeMeasureSpec(i5, i3);
    }

    public static M getProperties(Context context, AttributeSet attributeSet, int i2, int i3) {
        M m2 = new M();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q.a.f544a, i2, i3);
        m2.f555a = typedArrayObtainStyledAttributes.getInt(0, 1);
        m2.f556b = typedArrayObtainStyledAttributes.getInt(10, 1);
        m2.f557c = typedArrayObtainStyledAttributes.getBoolean(9, false);
        m2.f558d = typedArrayObtainStyledAttributes.getBoolean(11, false);
        typedArrayObtainStyledAttributes.recycle();
        return m2;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005c  */
    public final void a(int i2, View view, boolean z2) {
        int iB;
        o childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (z2 || childViewHolderInt.isRemoved()) {
            b.j jVar = this.mRecyclerView.mViewInfoStore.f713a;
            m0 m0VarA = (m0) jVar.get(childViewHolderInt);
            if (m0VarA == null) {
                m0VarA = m0.a();
                jVar.put(childViewHolderInt, m0VarA);
            }
            m0VarA.f680a |= 1;
        } else {
            this.mRecyclerView.mViewInfoStore.d(childViewHolderInt);
        }
        N n2 = (N) view.getLayoutParams();
        if (childViewHolderInt.wasReturnedFromScrap() || childViewHolderInt.isScrap()) {
            if (childViewHolderInt.isScrap()) {
                childViewHolderInt.unScrap();
            } else {
                childViewHolderInt.clearReturnedFromScrapFlag();
            }
            this.mChildHelper.b(view, i2, view.getLayoutParams(), false);
        } else if (view.getParent() == this.mRecyclerView) {
            b bVar = this.mChildHelper;
            int iIndexOfChild = bVar.f43a.f548a.indexOfChild(view);
            if (iIndexOfChild == -1) {
                iB = -1;
            } else {
                C0036b c0036b = bVar.f44b;
                if (c0036b.d(iIndexOfChild)) {
                    iB = -1;
                } else {
                    iB = iIndexOfChild - c0036b.b(iIndexOfChild);
                }
            }
            if (i2 == -1) {
                i2 = this.mChildHelper.e();
            }
            if (iB == -1) {
                StringBuilder sb = new StringBuilder("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:");
                sb.append(this.mRecyclerView.indexOfChild(view));
                throw new IllegalStateException(n.a.a(this.mRecyclerView, sb));
            }
            if (iB != i2) {
                this.mRecyclerView.mLayout.moveView(iB, i2);
            }
        } else {
            this.mChildHelper.a(i2, view, false);
            n2.f561c = true;
            m mVar = this.mSmoothScroller;
            if (mVar != null && mVar.f86e && mVar.f83b.getChildLayoutPosition(view) == mVar.f82a) {
                mVar.f87f = view;
                if (RecyclerView.sVerboseLoggingEnabled) {
                    Log.d("RecyclerView", "smooth scroll target view has been attached");
                }
            }
        }
        if (n2.f562d) {
            if (RecyclerView.sVerboseLoggingEnabled) {
                Log.d("RecyclerView", "consuming pending invalidate on child " + n2.f559a);
            }
            childViewHolderInt.itemView.invalidate();
            n2.f562d = false;
        }
    }

    @SuppressLint({"UnknownNullness"})
    public void addDisappearingView(View view) {
        addDisappearingView(view, -1);
    }

    @SuppressLint({"UnknownNullness"})
    public void addView(View view) {
        addView(view, -1);
    }

    public abstract void assertNotInLayoutOrScroll(String str);

    public void attachView(View view, int i2) {
        attachView(view, i2, (N) view.getLayoutParams());
    }

    public void calculateItemDecorationsForChild(View view, Rect rect) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(recyclerView.getItemDecorInsetsForChild(view));
        }
    }

    public abstract boolean canScrollHorizontally();

    public abstract boolean canScrollVertically();

    public boolean checkLayoutParams(N n2) {
        return n2 != null;
    }

    public abstract void collectAdjacentPrefetchPositions(int i2, int i3, Y y2, L l2);

    public abstract int computeHorizontalScrollExtent(Y y2);

    public abstract int computeHorizontalScrollOffset(Y y2);

    public abstract int computeHorizontalScrollRange(Y y2);

    public abstract int computeVerticalScrollExtent(Y y2);

    public abstract int computeVerticalScrollOffset(Y y2);

    public abstract int computeVerticalScrollRange(Y y2);

    public void detachAndScrapAttachedViews(k kVar) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            o childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
            if (childViewHolderInt.shouldIgnore()) {
                if (RecyclerView.sVerboseLoggingEnabled) {
                    Log.d("RecyclerView", "ignoring view " + childViewHolderInt);
                }
            } else if (!childViewHolderInt.isInvalid() || childViewHolderInt.isRemoved() || this.mRecyclerView.mAdapter.hasStableIds()) {
                detachViewAt(childCount);
                kVar.k(childAt);
                this.mRecyclerView.mViewInfoStore.d(childViewHolderInt);
            } else {
                removeViewAt(childCount);
                kVar.j(childViewHolderInt);
            }
        }
    }

    public void detachViewAt(int i2) {
        getChildAt(i2);
        this.mChildHelper.c(i2);
    }

    public void dispatchAttachedToWindow(RecyclerView recyclerView) {
        this.mIsAttachedToWindow = true;
        onAttachedToWindow(recyclerView);
    }

    public void dispatchDetachedFromWindow(RecyclerView recyclerView, k kVar) {
        this.mIsAttachedToWindow = false;
        onDetachedFromWindow(recyclerView, kVar);
    }

    public View findContainingItemView(View view) {
        View viewFindContainingItemView;
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || (viewFindContainingItemView = recyclerView.findContainingItemView(view)) == null || this.mChildHelper.j(viewFindContainingItemView)) {
            return null;
        }
        return viewFindContainingItemView;
    }

    public View findViewByPosition(int i2) {
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            o childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
            if (childViewHolderInt != null && childViewHolderInt.getLayoutPosition() == i2 && !childViewHolderInt.shouldIgnore() && (this.mRecyclerView.mState.f578g || !childViewHolderInt.isRemoved())) {
                return childAt;
            }
        }
        return null;
    }

    public abstract N generateDefaultLayoutParams();

    public N generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new N(context, attributeSet);
    }

    public int getBaseline() {
        return -1;
    }

    public int getBottomDecorationHeight(View view) {
        return ((N) view.getLayoutParams()).f560b.bottom;
    }

    public View getChildAt(int i2) {
        b bVar = this.mChildHelper;
        if (bVar != null) {
            return bVar.d(i2);
        }
        return null;
    }

    public int getChildCount() {
        b bVar = this.mChildHelper;
        if (bVar != null) {
            return bVar.e();
        }
        return 0;
    }

    public boolean getClipToPadding() {
        RecyclerView recyclerView = this.mRecyclerView;
        return recyclerView != null && recyclerView.mClipToPadding;
    }

    public int getColumnCountForAccessibility(k kVar, Y y2) {
        return -1;
    }

    public int getDecoratedBottom(View view) {
        return getBottomDecorationHeight(view) + view.getBottom();
    }

    public void getDecoratedBoundsWithMargins(View view, Rect rect) {
        RecyclerView.getDecoratedBoundsWithMarginsInt(view, rect);
    }

    public int getDecoratedLeft(View view) {
        return view.getLeft() - getLeftDecorationWidth(view);
    }

    public int getDecoratedMeasuredHeight(View view) {
        Rect rect = ((N) view.getLayoutParams()).f560b;
        return view.getMeasuredHeight() + rect.top + rect.bottom;
    }

    public int getDecoratedMeasuredWidth(View view) {
        Rect rect = ((N) view.getLayoutParams()).f560b;
        return view.getMeasuredWidth() + rect.left + rect.right;
    }

    public int getDecoratedRight(View view) {
        return getRightDecorationWidth(view) + view.getRight();
    }

    public int getDecoratedTop(View view) {
        return view.getTop() - getTopDecorationHeight(view);
    }

    public View getFocusedChild() {
        View focusedChild;
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.mChildHelper.j(focusedChild)) {
            return null;
        }
        return focusedChild;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getHeightMode() {
        return this.mHeightMode;
    }

    public int getLayoutDirection() {
        RecyclerView recyclerView = this.mRecyclerView;
        Field field = r.f469a;
        return AbstractC0032g.d(recyclerView);
    }

    public int getLeftDecorationWidth(View view) {
        return ((N) view.getLayoutParams()).f560b.left;
    }

    public int getMinimumHeight() {
        RecyclerView recyclerView = this.mRecyclerView;
        Field field = r.f469a;
        return AbstractC0031f.d(recyclerView);
    }

    public int getMinimumWidth() {
        RecyclerView recyclerView = this.mRecyclerView;
        Field field = r.f469a;
        return AbstractC0031f.e(recyclerView);
    }

    public int getPaddingBottom() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return recyclerView.getPaddingBottom();
        }
        return 0;
    }

    public int getPaddingLeft() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return recyclerView.getPaddingLeft();
        }
        return 0;
    }

    public int getPaddingRight() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return recyclerView.getPaddingRight();
        }
        return 0;
    }

    public int getPaddingTop() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return recyclerView.getPaddingTop();
        }
        return 0;
    }

    public int getPosition(View view) {
        return ((N) view.getLayoutParams()).f559a.getLayoutPosition();
    }

    public int getRightDecorationWidth(View view) {
        return ((N) view.getLayoutParams()).f560b.right;
    }

    public int getRowCountForAccessibility(k kVar, Y y2) {
        return -1;
    }

    public int getSelectionModeForAccessibility(k kVar, Y y2) {
        return 0;
    }

    public int getTopDecorationHeight(View view) {
        return ((N) view.getLayoutParams()).f560b.top;
    }

    public void getTransformedBoundingBox(View view, boolean z2, Rect rect) {
        Matrix matrix;
        if (z2) {
            Rect rect2 = ((N) view.getLayoutParams()).f560b;
            rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
        } else {
            rect.set(0, 0, view.getWidth(), view.getHeight());
        }
        if (this.mRecyclerView != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
            RectF rectF = this.mRecyclerView.mTempRectF;
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
        }
        rect.offset(view.getLeft(), view.getTop());
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getWidthMode() {
        return this.mWidthMode;
    }

    public boolean hasFlexibleChildInBothOrientations() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            ViewGroup.LayoutParams layoutParams = getChildAt(i2).getLayoutParams();
            if (layoutParams.width < 0 && layoutParams.height < 0) {
                return true;
            }
        }
        return false;
    }

    public boolean isAttachedToWindow() {
        return this.mIsAttachedToWindow;
    }

    public abstract boolean isAutoMeasureEnabled();

    public final boolean isItemPrefetchEnabled() {
        return this.mItemPrefetchEnabled;
    }

    public boolean isLayoutHierarchical(k kVar, Y y2) {
        return false;
    }

    public boolean isSmoothScrolling() {
        m mVar = this.mSmoothScroller;
        return mVar != null && mVar.f86e;
    }

    public boolean isViewPartiallyVisible(View view, boolean z2, boolean z3) {
        boolean z4 = this.mHorizontalBoundCheck.b(view) && this.mVerticalBoundCheck.b(view);
        return z2 ? z4 : !z4;
    }

    public void layoutDecoratedWithMargins(View view, int i2, int i3, int i4, int i5) {
        N n2 = (N) view.getLayoutParams();
        Rect rect = n2.f560b;
        view.layout(i2 + rect.left + ((ViewGroup.MarginLayoutParams) n2).leftMargin, i3 + rect.top + ((ViewGroup.MarginLayoutParams) n2).topMargin, (i4 - rect.right) - ((ViewGroup.MarginLayoutParams) n2).rightMargin, (i5 - rect.bottom) - ((ViewGroup.MarginLayoutParams) n2).bottomMargin);
    }

    public void measureChildWithMargins(View view, int i2, int i3) {
        N n2 = (N) view.getLayoutParams();
        Rect itemDecorInsetsForChild = this.mRecyclerView.getItemDecorInsetsForChild(view);
        int i4 = itemDecorInsetsForChild.left + itemDecorInsetsForChild.right + i2;
        int i5 = itemDecorInsetsForChild.top + itemDecorInsetsForChild.bottom + i3;
        int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingRight() + getPaddingLeft() + ((ViewGroup.MarginLayoutParams) n2).leftMargin + ((ViewGroup.MarginLayoutParams) n2).rightMargin + i4, ((ViewGroup.MarginLayoutParams) n2).width, canScrollHorizontally());
        int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingBottom() + getPaddingTop() + ((ViewGroup.MarginLayoutParams) n2).topMargin + ((ViewGroup.MarginLayoutParams) n2).bottomMargin + i5, ((ViewGroup.MarginLayoutParams) n2).height, canScrollVertically());
        if (shouldMeasureChild(view, childMeasureSpec, childMeasureSpec2, n2)) {
            view.measure(childMeasureSpec, childMeasureSpec2);
        }
    }

    public void moveView(int i2, int i3) {
        View childAt = getChildAt(i2);
        if (childAt != null) {
            detachViewAt(i2);
            attachView(childAt, i3);
        } else {
            throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i2 + this.mRecyclerView.toString());
        }
    }

    public void offsetChildrenHorizontal(int i2) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.offsetChildrenHorizontal(i2);
        }
    }

    public void offsetChildrenVertical(int i2) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.offsetChildrenVertical(i2);
        }
    }

    public void onAdapterChanged(g gVar, g gVar2) {
    }

    public boolean onAddFocusables(RecyclerView recyclerView, ArrayList<View> arrayList, int i2, int i3) {
        return false;
    }

    public void onAttachedToWindow(RecyclerView recyclerView) {
    }

    @Deprecated
    public void onDetachedFromWindow(RecyclerView recyclerView) {
    }

    public abstract void onDetachedFromWindow(RecyclerView recyclerView, k kVar);

    public abstract View onFocusSearchFailed(View view, int i2, k kVar, Y y2);

    public abstract void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent);

    public void onInitializeAccessibilityEvent(k kVar, Y y2, AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || accessibilityEvent == null) {
            return;
        }
        boolean z2 = true;
        if (!recyclerView.canScrollVertically(1) && !this.mRecyclerView.canScrollVertically(-1) && !this.mRecyclerView.canScrollHorizontally(-1) && !this.mRecyclerView.canScrollHorizontally(1)) {
            z2 = false;
        }
        accessibilityEvent.setScrollable(z2);
        g gVar = this.mRecyclerView.mAdapter;
        if (gVar != null) {
            accessibilityEvent.setItemCount(gVar.getItemCount());
        }
    }

    public void onInitializeAccessibilityNodeInfo(k kVar, Y y2, l.d dVar) {
        if (this.mRecyclerView.canScrollVertically(-1) || this.mRecyclerView.canScrollHorizontally(-1)) {
            dVar.f498a.addAction(8192);
            dVar.f498a.setScrollable(true);
        }
        if (this.mRecyclerView.canScrollVertically(1) || this.mRecyclerView.canScrollHorizontally(1)) {
            dVar.f498a.addAction(4096);
            dVar.f498a.setScrollable(true);
        }
        AccessibilityNodeInfo.CollectionInfo collectionInfoObtain = AccessibilityNodeInfo.CollectionInfo.obtain(getRowCountForAccessibility(kVar, y2), getColumnCountForAccessibility(kVar, y2), isLayoutHierarchical(kVar, y2), getSelectionModeForAccessibility(kVar, y2));
        dVar.getClass();
        dVar.f498a.setCollectionInfo(collectionInfoObtain);
    }

    public void onInitializeAccessibilityNodeInfoForItem(View view, l.d dVar) {
        o childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt == null || childViewHolderInt.isRemoved() || this.mChildHelper.j(childViewHolderInt.itemView)) {
            return;
        }
        RecyclerView recyclerView = this.mRecyclerView;
        onInitializeAccessibilityNodeInfoForItem(recyclerView.mRecycler, recyclerView.mState, view, dVar);
    }

    public View onInterceptFocusSearch(View view, int i2) {
        return null;
    }

    public void onItemsAdded(RecyclerView recyclerView, int i2, int i3) {
    }

    public void onItemsChanged(RecyclerView recyclerView) {
    }

    public void onItemsMoved(RecyclerView recyclerView, int i2, int i3, int i4) {
    }

    public void onItemsRemoved(RecyclerView recyclerView, int i2, int i3) {
    }

    public void onItemsUpdated(RecyclerView recyclerView, int i2, int i3) {
    }

    public abstract void onLayoutChildren(k kVar, Y y2);

    public abstract void onLayoutCompleted(Y y2);

    public void onMeasure(k kVar, Y y2, int i2, int i3) {
        this.mRecyclerView.defaultOnMeasure(i2, i3);
    }

    @Deprecated
    public boolean onRequestChildFocus(RecyclerView recyclerView, View view, View view2) {
        return isSmoothScrolling() || recyclerView.isComputingLayout();
    }

    public abstract void onRestoreInstanceState(Parcelable parcelable);

    public abstract Parcelable onSaveInstanceState();

    public void onScrollStateChanged(int i2) {
    }

    public void onSmoothScrollerStopped(m mVar) {
        if (this.mSmoothScroller == mVar) {
            this.mSmoothScroller = null;
        }
    }

    public boolean performAccessibilityAction(int i2, Bundle bundle) {
        RecyclerView recyclerView = this.mRecyclerView;
        return performAccessibilityAction(recyclerView.mRecycler, recyclerView.mState, i2, bundle);
    }

    public boolean performAccessibilityActionForItem(View view, int i2, Bundle bundle) {
        RecyclerView recyclerView = this.mRecyclerView;
        return performAccessibilityActionForItem(recyclerView.mRecycler, recyclerView.mState, view, i2, bundle);
    }

    public void removeAndRecycleAllViews(k kVar) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (!RecyclerView.getChildViewHolderInt(getChildAt(childCount)).shouldIgnore()) {
                removeAndRecycleViewAt(childCount, kVar);
            }
        }
    }

    public void removeAndRecycleScrapInt(k kVar) {
        ArrayList arrayList;
        int size = kVar.f67a.size();
        int i2 = size - 1;
        while (true) {
            arrayList = kVar.f67a;
            if (i2 < 0) {
                break;
            }
            View view = ((o) arrayList.get(i2)).itemView;
            o childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.setIsRecyclable(false);
                if (childViewHolderInt.isTmpDetached()) {
                    this.mRecyclerView.removeDetachedView(view, false);
                }
                i iVar = this.mRecyclerView.mItemAnimator;
                if (iVar != null) {
                    iVar.d(childViewHolderInt);
                }
                childViewHolderInt.setIsRecyclable(true);
                o childViewHolderInt2 = RecyclerView.getChildViewHolderInt(view);
                childViewHolderInt2.mScrapContainer = null;
                childViewHolderInt2.mInChangeScrap = false;
                childViewHolderInt2.clearReturnedFromScrapFlag();
                kVar.j(childViewHolderInt2);
            }
            i2--;
        }
        arrayList.clear();
        ArrayList arrayList2 = kVar.f68b;
        if (arrayList2 != null) {
            arrayList2.clear();
        }
        if (size > 0) {
            this.mRecyclerView.invalidate();
        }
    }

    public void removeAndRecycleView(View view, k kVar) {
        removeView(view);
        kVar.i(view);
    }

    public void removeAndRecycleViewAt(int i2, k kVar) {
        View childAt = getChildAt(i2);
        removeViewAt(i2);
        kVar.i(childAt);
    }

    public boolean removeCallbacks(Runnable runnable) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return recyclerView.removeCallbacks(runnable);
        }
        return false;
    }

    @SuppressLint({"UnknownNullness"})
    public void removeView(View view) {
        b bVar = this.mChildHelper;
        C c2 = bVar.f43a;
        int i2 = bVar.f46d;
        if (i2 == 1) {
            throw new IllegalStateException("Cannot call removeView(At) within removeView(At)");
        }
        if (i2 == 2) {
            throw new IllegalStateException("Cannot call removeView(At) within removeViewIfHidden");
        }
        try {
            bVar.f46d = 1;
            bVar.f47e = view;
            int iIndexOfChild = c2.f548a.indexOfChild(view);
            if (iIndexOfChild >= 0) {
                if (bVar.f44b.f(iIndexOfChild)) {
                    bVar.k(view);
                }
                c2.a(iIndexOfChild);
            }
        } finally {
            bVar.f46d = 0;
            bVar.f47e = null;
        }
    }

    public void removeViewAt(int i2) {
        if (getChildAt(i2) != null) {
            b bVar = this.mChildHelper;
            C c2 = bVar.f43a;
            int i3 = bVar.f46d;
            if (i3 == 1) {
                throw new IllegalStateException("Cannot call removeView(At) within removeView(At)");
            }
            if (i3 == 2) {
                throw new IllegalStateException("Cannot call removeView(At) within removeViewIfHidden");
            }
            try {
                int iF = bVar.f(i2);
                View childAt = c2.f548a.getChildAt(iF);
                if (childAt != null) {
                    bVar.f46d = 1;
                    bVar.f47e = childAt;
                    if (bVar.f44b.f(iF)) {
                        bVar.k(childAt);
                    }
                    c2.a(iF);
                }
            } finally {
                bVar.f46d = 0;
                bVar.f47e = null;
            }
        }
    }

    public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z2) {
        return requestChildRectangleOnScreen(recyclerView, view, rect, z2, false);
    }

    public void requestLayout() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.requestLayout();
        }
    }

    public void requestSimpleAnimationsInNextLayout() {
        this.mRequestedSimpleAnimations = true;
    }

    public abstract int scrollHorizontallyBy(int i2, k kVar, Y y2);

    public abstract void scrollToPosition(int i2);

    public abstract int scrollVerticallyBy(int i2, k kVar, Y y2);

    public void setExactMeasureSpecsFrom(RecyclerView recyclerView) {
        setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
    }

    public void setMeasureSpecs(int i2, int i3) {
        this.mWidth = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i2);
        this.mWidthMode = mode;
        if (mode == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
            this.mWidth = 0;
        }
        this.mHeight = View.MeasureSpec.getSize(i3);
        int mode2 = View.MeasureSpec.getMode(i3);
        this.mHeightMode = mode2;
        if (mode2 != 0 || RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
            return;
        }
        this.mHeight = 0;
    }

    public void setMeasuredDimension(int i2, int i3) {
        this.mRecyclerView.setMeasuredDimension(i2, i3);
    }

    public void setMeasuredDimensionFromChildren(int i2, int i3) {
        int childCount = getChildCount();
        if (childCount == 0) {
            this.mRecyclerView.defaultOnMeasure(i2, i3);
            return;
        }
        int i4 = Integer.MIN_VALUE;
        int i5 = Integer.MIN_VALUE;
        int i6 = Integer.MAX_VALUE;
        int i7 = Integer.MAX_VALUE;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            Rect rect = this.mRecyclerView.mTempRect;
            getDecoratedBoundsWithMargins(childAt, rect);
            int i9 = rect.left;
            if (i9 < i6) {
                i6 = i9;
            }
            int i10 = rect.right;
            if (i10 > i4) {
                i4 = i10;
            }
            int i11 = rect.top;
            if (i11 < i7) {
                i7 = i11;
            }
            int i12 = rect.bottom;
            if (i12 > i5) {
                i5 = i12;
            }
        }
        this.mRecyclerView.mTempRect.set(i6, i7, i4, i5);
        setMeasuredDimension(this.mRecyclerView.mTempRect, i2, i3);
    }

    public void setRecyclerView(RecyclerView recyclerView) {
        int height;
        if (recyclerView == null) {
            this.mRecyclerView = null;
            this.mChildHelper = null;
            height = 0;
            this.mWidth = 0;
        } else {
            this.mRecyclerView = recyclerView;
            this.mChildHelper = recyclerView.mChildHelper;
            this.mWidth = recyclerView.getWidth();
            height = recyclerView.getHeight();
        }
        this.mHeight = height;
        this.mWidthMode = 1073741824;
        this.mHeightMode = 1073741824;
    }

    public boolean shouldMeasureChild(View view, int i2, int i3, N n2) {
        return (!view.isLayoutRequested() && this.mMeasurementCacheEnabled && b(view.getWidth(), i2, ((ViewGroup.MarginLayoutParams) n2).width) && b(view.getHeight(), i3, ((ViewGroup.MarginLayoutParams) n2).height)) ? false : true;
    }

    public boolean shouldMeasureTwice() {
        return false;
    }

    public boolean shouldReMeasureChild(View view, int i2, int i3, N n2) {
        return (this.mMeasurementCacheEnabled && b(view.getMeasuredWidth(), i2, ((ViewGroup.MarginLayoutParams) n2).width) && b(view.getMeasuredHeight(), i3, ((ViewGroup.MarginLayoutParams) n2).height)) ? false : true;
    }

    public abstract void smoothScrollToPosition(RecyclerView recyclerView, Y y2, int i2);

    @SuppressLint({"UnknownNullness"})
    public void startSmoothScroll(m mVar) {
        m mVar2 = this.mSmoothScroller;
        if (mVar2 != null && mVar != mVar2 && mVar2.f86e) {
            mVar2.c();
        }
        this.mSmoothScroller = mVar;
        RecyclerView recyclerView = this.mRecyclerView;
        mVar.getClass();
        n nVar = recyclerView.mViewFlinger;
        nVar.f96g.removeCallbacks(nVar);
        nVar.f92c.abortAnimation();
        if (mVar.f89h) {
            Log.w("RecyclerView", "An instance of " + mVar.getClass().getSimpleName() + " was started more than once. Each instance of" + mVar.getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
        }
        mVar.f83b = recyclerView;
        mVar.f84c = this;
        int i2 = mVar.f82a;
        if (i2 == -1) {
            throw new IllegalArgumentException("Invalid target position");
        }
        recyclerView.mState.f572a = i2;
        mVar.f86e = true;
        mVar.f85d = true;
        mVar.f87f = recyclerView.mLayout.findViewByPosition(i2);
        mVar.f83b.mViewFlinger.b();
        mVar.f89h = true;
    }

    public void stopSmoothScroller() {
        m mVar = this.mSmoothScroller;
        if (mVar != null) {
            mVar.c();
        }
    }

    public abstract boolean supportsPredictiveItemAnimations();

    @SuppressLint({"UnknownNullness"})
    public void addDisappearingView(View view, int i2) {
        a(i2, view, true);
    }

    @SuppressLint({"UnknownNullness"})
    public void addView(View view, int i2) {
        a(i2, view, false);
    }

    public void attachView(View view, int i2, N n2) {
        o childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt.isRemoved()) {
            b.j jVar = this.mRecyclerView.mViewInfoStore.f713a;
            m0 m0VarA = (m0) jVar.get(childViewHolderInt);
            if (m0VarA == null) {
                m0VarA = m0.a();
                jVar.put(childViewHolderInt, m0VarA);
            }
            m0VarA.f680a |= 1;
        } else {
            this.mRecyclerView.mViewInfoStore.d(childViewHolderInt);
        }
        this.mChildHelper.b(view, i2, n2, childViewHolderInt.isRemoved());
    }

    public N generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof N) {
            return new N((N) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new N((ViewGroup.MarginLayoutParams) layoutParams) : new N(layoutParams);
    }

    public void onInitializeAccessibilityNodeInfoForItem(k kVar, Y y2, View view, l.d dVar) {
    }

    public void onItemsUpdated(RecyclerView recyclerView, int i2, int i3, Object obj) {
        onItemsUpdated(recyclerView, i2, i3);
    }

    public boolean onRequestChildFocus(RecyclerView recyclerView, Y y2, View view, View view2) {
        return onRequestChildFocus(recyclerView, view, view2);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0067 A[PHI: r9
      0x0067: PHI (r9v8 int) = (r9v5 int), (r9v11 int) binds: [B:29:0x0084, B:20:0x0057] A[DONT_GENERATE, DONT_INLINE]] */
    public boolean performAccessibilityAction(k kVar, Y y2, int i2, Bundle bundle) {
        int paddingTop;
        int paddingLeft;
        int i3;
        int i4;
        if (this.mRecyclerView == null) {
            return false;
        }
        int height = getHeight();
        int width = getWidth();
        Rect rect = new Rect();
        if (this.mRecyclerView.getMatrix().isIdentity() && this.mRecyclerView.getGlobalVisibleRect(rect)) {
            height = rect.height();
            width = rect.width();
        }
        if (i2 == 4096) {
            paddingTop = this.mRecyclerView.canScrollVertically(1) ? (height - getPaddingTop()) - getPaddingBottom() : 0;
            if (this.mRecyclerView.canScrollHorizontally(1)) {
                paddingLeft = (width - getPaddingLeft()) - getPaddingRight();
                i3 = paddingTop;
                i4 = paddingLeft;
            } else {
                i3 = paddingTop;
                i4 = 0;
            }
        } else if (i2 != 8192) {
            i4 = 0;
            i3 = 0;
        } else {
            paddingTop = this.mRecyclerView.canScrollVertically(-1) ? -((height - getPaddingTop()) - getPaddingBottom()) : 0;
            if (this.mRecyclerView.canScrollHorizontally(-1)) {
                paddingLeft = -((width - getPaddingLeft()) - getPaddingRight());
                i3 = paddingTop;
                i4 = paddingLeft;
            } else {
                i3 = paddingTop;
                i4 = 0;
            }
        }
        if (i3 == 0 && i4 == 0) {
            return false;
        }
        this.mRecyclerView.smoothScrollBy(i4, i3, null, Integer.MIN_VALUE, true);
        return true;
    }

    public boolean performAccessibilityActionForItem(k kVar, Y y2, View view, int i2, Bundle bundle) {
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:33:0x00be  */
    /* JADX WARN: Code duplicated, block: B:34:0x00c2  */
    public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z2, boolean z3) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int height = getHeight() - getPaddingBottom();
        int left = (view.getLeft() + rect.left) - view.getScrollX();
        int top = (view.getTop() + rect.top) - view.getScrollY();
        int iWidth = rect.width() + left;
        int iHeight = rect.height() + top;
        int i2 = left - paddingLeft;
        int iMin = Math.min(0, i2);
        int i3 = top - paddingTop;
        int iMin2 = Math.min(0, i3);
        int i4 = iWidth - width;
        int iMax = Math.max(0, i4);
        int iMax2 = Math.max(0, iHeight - height);
        if (getLayoutDirection() != 1) {
            if (iMin == 0) {
                iMin = Math.min(i2, iMax);
            }
            iMax = iMin;
        } else if (iMax == 0) {
            iMax = Math.max(iMin, i4);
        }
        if (iMin2 == 0) {
            iMin2 = Math.min(i3, iMax2);
        }
        int[] iArr = {iMax, iMin2};
        int i5 = iArr[0];
        int i6 = iArr[1];
        if (z3) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild != null) {
                int paddingLeft2 = getPaddingLeft();
                int paddingTop2 = getPaddingTop();
                int width2 = getWidth() - getPaddingRight();
                int height2 = getHeight() - getPaddingBottom();
                Rect rect2 = this.mRecyclerView.mTempRect;
                getDecoratedBoundsWithMargins(focusedChild, rect2);
                if (rect2.left - i5 < width2 && rect2.right - i5 > paddingLeft2 && rect2.top - i6 < height2 && rect2.bottom - i6 > paddingTop2) {
                    if (i5 == 0) {
                    }
                    if (z2) {
                        recyclerView.scrollBy(i5, i6);
                    } else {
                        recyclerView.smoothScrollBy(i5, i6);
                    }
                    return true;
                }
            }
        } else if (i5 == 0 || i6 != 0) {
            if (z2) {
                recyclerView.scrollBy(i5, i6);
            } else {
                recyclerView.smoothScrollBy(i5, i6);
            }
            return true;
        }
        return false;
    }

    public void setMeasuredDimension(Rect rect, int i2, int i3) {
        setMeasuredDimension(chooseSize(i2, getPaddingRight() + getPaddingLeft() + rect.width(), getMinimumWidth()), chooseSize(i3, getPaddingBottom() + getPaddingTop() + rect.height(), getMinimumHeight()));
    }

    public void onInitializeAccessibilityNodeInfo(l.d dVar) {
        RecyclerView recyclerView = this.mRecyclerView;
        onInitializeAccessibilityNodeInfo(recyclerView.mRecycler, recyclerView.mState, dVar);
    }

    public void collectInitialPrefetchPositions(int i2, L l2) {
    }
}
