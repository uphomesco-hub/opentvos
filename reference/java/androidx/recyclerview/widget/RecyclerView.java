package androidx.recyclerview.widget;

import android.R;
import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import k.AbstractC0031f;
import k.AbstractC0032g;
import k.C0029d;
import k.r;
import k.t;
import r.B;
import r.C;
import r.C0035a;
import r.C0036b;
import r.C0043i;
import r.C0048n;
import r.F;
import r.G;
import r.H;
import r.I;
import r.J;
import r.N;
import r.O;
import r.P;
import r.Q;
import r.S;
import r.T;
import r.U;
import r.V;
import r.W;
import r.Y;
import r.Z;
import r.a0;
import r.c0;
import r.m0;
import r.n0;
import r.o0;

/* JADX INFO: loaded from: classes.dex */
public class RecyclerView extends ViewGroup {
    static final boolean ALLOW_SIZE_IN_UNSPECIFIED_SPEC;
    static final boolean ALLOW_THREAD_GAP_WORK;
    private static final boolean FORCE_ABS_FOCUS_SEARCH_DIRECTION;
    static final boolean FORCE_INVALIDATE_DISPLAY_LIST;
    private static final boolean IGNORE_DETACHED_FOCUSED_CHILD;
    private static final Class<?>[] LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE;
    static final boolean POST_UPDATES_ON_ANIMATION;
    static boolean sDebugAssertionsEnabled = false;
    static final Z sDefaultEdgeEffectFactory;
    static final Interpolator sQuinticInterpolator;
    static boolean sVerboseLoggingEnabled = false;
    c0 mAccessibilityDelegate;
    private final AccessibilityManager mAccessibilityManager;
    g mAdapter;
    a mAdapterHelper;
    boolean mAdapterUpdateDuringMeasure;
    private EdgeEffect mBottomGlow;
    b mChildHelper;
    boolean mClipToPadding;
    boolean mDataSetHasChangedAfterLayout;
    boolean mDispatchItemsChangedEvent;
    private int mDispatchScrollCounter;
    private int mEatenAccessibilityChangeFlags;
    private G mEdgeEffectFactory;
    boolean mEnableFastScroller;
    boolean mFirstLayoutComplete;
    d mGapWorker;
    boolean mHasFixedSize;
    private boolean mIgnoreMotionEventTillDown;
    private int mInitialTouchX;
    private int mInitialTouchY;
    private int mInterceptRequestLayoutDepth;
    private P mInterceptingOnItemTouchListener;
    boolean mIsAttached;
    i mItemAnimator;
    private H mItemAnimatorListener;
    private Runnable mItemAnimatorRunner;
    final ArrayList<J> mItemDecorations;
    boolean mItemsAddedOrRemoved;
    boolean mItemsChanged;
    private int mLastAutoMeasureNonExactMeasuredHeight;
    private int mLastAutoMeasureNonExactMeasuredWidth;
    private boolean mLastAutoMeasureSkippedDueToExact;
    private int mLastTouchX;
    private int mLastTouchY;
    j mLayout;
    private int mLayoutOrScrollCounter;
    boolean mLayoutSuppressed;
    boolean mLayoutWasDefered;
    private EdgeEffect mLeftGlow;
    private final int mMaxFlingVelocity;
    private final int mMinFlingVelocity;
    private final int[] mMinMaxLayoutPositions;
    private final int[] mNestedOffsets;
    private final V mObserver;
    private List<Object> mOnChildAttachStateListeners;
    private final ArrayList<P> mOnItemTouchListeners;
    final List<o> mPendingAccessibilityImportanceChange;
    W mPendingSavedState;
    private final float mPhysicalCoef;
    boolean mPostedAnimatorRunner;
    c mPrefetchRegistry;
    private boolean mPreserveFocusAfterLayout;
    final k mRecycler;
    final List<U> mRecyclerListeners;
    final int[] mReusableIntPair;
    private EdgeEffect mRightGlow;
    private float mScaledHorizontalScrollFactor;
    private float mScaledVerticalScrollFactor;
    private Q mScrollListener;
    private List<Q> mScrollListeners;
    private final int[] mScrollOffset;
    private int mScrollPointerId;
    private int mScrollState;
    private C0029d mScrollingChildHelper;
    final Y mState;
    final Rect mTempRect;
    private final Rect mTempRect2;
    final RectF mTempRectF;
    private EdgeEffect mTopGlow;
    private int mTouchSlop;
    final Runnable mUpdateChildViewsRunnable;
    private VelocityTracker mVelocityTracker;
    final n mViewFlinger;
    private final n0 mViewInfoProcessCallback;
    final o0 mViewInfoStore;
    private static final int[] NESTED_SCROLLING_ATTRS = {R.attr.nestedScrollingEnabled};
    private static final float DECELERATION_RATE = (float) (Math.log(0.78d) / Math.log(0.9d));

    static {
        int i2 = Build.VERSION.SDK_INT;
        FORCE_INVALIDATE_DISPLAY_LIST = false;
        ALLOW_SIZE_IN_UNSPECIFIED_SPEC = i2 >= 23;
        POST_UPDATES_ON_ANIMATION = true;
        ALLOW_THREAD_GAP_WORK = true;
        FORCE_ABS_FOCUS_SEARCH_DIRECTION = false;
        IGNORE_DETACHED_FOCUSED_CHILD = false;
        Class<?> cls = Integer.TYPE;
        LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE = new Class[]{Context.class, AttributeSet.class, cls, cls};
        sQuinticInterpolator = new B();
        sDefaultEdgeEffectFactory = new Z();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code duplicated, block: B:53:0x029a A[Catch: ClassCastException -> 0x02a3, IllegalAccessException -> 0x02a6, InstantiationException -> 0x02a9, InvocationTargetException -> 0x02ac, ClassNotFoundException -> 0x02af, TryCatch #4 {ClassCastException -> 0x02a3, ClassNotFoundException -> 0x02af, IllegalAccessException -> 0x02a6, InstantiationException -> 0x02a9, InvocationTargetException -> 0x02ac, blocks: (B:51:0x0294, B:53:0x029a, B:65:0x02b6, B:66:0x02c0, B:72:0x02e5, B:70:0x02e0, B:74:0x02f4, B:75:0x0315, B:64:0x02b2), top: B:95:0x0294 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x02b2 A[Catch: ClassCastException -> 0x02a3, IllegalAccessException -> 0x02a6, InstantiationException -> 0x02a9, InvocationTargetException -> 0x02ac, ClassNotFoundException -> 0x02af, TryCatch #4 {ClassCastException -> 0x02a3, ClassNotFoundException -> 0x02af, IllegalAccessException -> 0x02a6, InstantiationException -> 0x02a9, InvocationTargetException -> 0x02ac, blocks: (B:51:0x0294, B:53:0x029a, B:65:0x02b6, B:66:0x02c0, B:72:0x02e5, B:70:0x02e0, B:74:0x02f4, B:75:0x0315, B:64:0x02b2), top: B:95:0x0294 }] */
    public RecyclerView(Context context, AttributeSet attributeSet) {
        float fA;
        int i2;
        StringBuilder sb;
        ClassLoader classLoader;
        Class<? extends U> clsAsSubclass;
        Object[] objArr;
        Constructor constructor;
        super(context, attributeSet, com.sid.tvos.R.attr.recyclerViewStyle);
        int i3 = 1;
        this.mObserver = new V(this);
        this.mRecycler = new k(this);
        this.mViewInfoStore = new o0();
        this.mUpdateChildViewsRunnable = new e(this, 0);
        this.mTempRect = new Rect();
        this.mTempRect2 = new Rect();
        this.mTempRectF = new RectF();
        this.mRecyclerListeners = new ArrayList();
        this.mItemDecorations = new ArrayList<>();
        this.mOnItemTouchListeners = new ArrayList<>();
        this.mInterceptRequestLayoutDepth = 0;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        this.mLayoutOrScrollCounter = 0;
        this.mDispatchScrollCounter = 0;
        this.mEdgeEffectFactory = sDefaultEdgeEffectFactory;
        C0043i c0043i = new C0043i();
        c0043i.f61a = null;
        c0043i.f62b = new ArrayList();
        c0043i.f63c = 120L;
        c0043i.f64d = 120L;
        c0043i.f65e = 250L;
        c0043i.f66f = 250L;
        c0043i.f649g = true;
        c0043i.f650h = new ArrayList();
        c0043i.f651i = new ArrayList();
        c0043i.j = new ArrayList();
        c0043i.f652k = new ArrayList();
        c0043i.f653l = new ArrayList();
        c0043i.f654m = new ArrayList();
        c0043i.f655n = new ArrayList();
        c0043i.f656o = new ArrayList();
        c0043i.f657p = new ArrayList();
        c0043i.f658q = new ArrayList();
        c0043i.f659r = new ArrayList();
        this.mItemAnimator = c0043i;
        this.mScrollState = 0;
        this.mScrollPointerId = -1;
        this.mScaledHorizontalScrollFactor = Float.MIN_VALUE;
        this.mScaledVerticalScrollFactor = Float.MIN_VALUE;
        this.mPreserveFocusAfterLayout = true;
        this.mViewFlinger = new n(this);
        this.mPrefetchRegistry = ALLOW_THREAD_GAP_WORK ? new c() : null;
        Y y2 = new Y();
        y2.f572a = -1;
        y2.f573b = 0;
        y2.f574c = 0;
        y2.f575d = 1;
        y2.f576e = 0;
        y2.f577f = false;
        y2.f578g = false;
        y2.f579h = false;
        y2.f580i = false;
        y2.j = false;
        y2.f581k = false;
        this.mState = y2;
        this.mItemsAddedOrRemoved = false;
        this.mItemsChanged = false;
        this.mItemAnimatorListener = new C(this);
        this.mPostedAnimatorRunner = false;
        this.mMinMaxLayoutPositions = new int[2];
        this.mScrollOffset = new int[2];
        this.mNestedOffsets = new int[2];
        this.mReusableIntPair = new int[2];
        this.mPendingAccessibilityImportanceChange = new ArrayList();
        this.mItemAnimatorRunner = new e(this, i3);
        this.mLastAutoMeasureNonExactMeasuredWidth = 0;
        this.mLastAutoMeasureNonExactMeasuredHeight = 0;
        this.mViewInfoProcessCallback = new C(this);
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 26) {
            Method method = t.f471a;
            fA = viewConfiguration.getScaledHorizontalScrollFactor();
        } else {
            fA = t.a(viewConfiguration, context);
        }
        this.mScaledHorizontalScrollFactor = fA;
        this.mScaledVerticalScrollFactor = i4 >= 26 ? viewConfiguration.getScaledVerticalScrollFactor() : t.a(viewConfiguration, context);
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mPhysicalCoef = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        setWillNotDraw(getOverScrollMode() == 2);
        this.mItemAnimator.f61a = this.mItemAnimatorListener;
        initAdapterManager();
        this.mChildHelper = new b(new C(this));
        Field field = r.f469a;
        if ((i4 >= 26 ? k.l.b(this) : 0) == 0 && i4 >= 26) {
            k.l.l(this, 8);
        }
        if (AbstractC0031f.c(this) == 0) {
            AbstractC0031f.s(this, 1);
        }
        this.mAccessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new c0(this));
        int[] iArr = q.a.f544a;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, com.sid.tvos.R.attr.recyclerViewStyle, 0);
        if (i4 >= 29) {
            i2 = 8;
            k.o.c(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, com.sid.tvos.R.attr.recyclerViewStyle, 0);
        } else {
            i2 = 8;
        }
        String string = typedArrayObtainStyledAttributes.getString(i2);
        if (typedArrayObtainStyledAttributes.getInt(2, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.mClipToPadding = typedArrayObtainStyledAttributes.getBoolean(1, true);
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(3, false);
        this.mEnableFastScroller = z2;
        if (z2) {
            initFastScroller((StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(6), typedArrayObtainStyledAttributes.getDrawable(7), (StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(4), typedArrayObtainStyledAttributes.getDrawable(5));
        }
        typedArrayObtainStyledAttributes.recycle();
        if (string != null) {
            String strTrim = string.trim();
            if (!strTrim.isEmpty()) {
                try {
                    try {
                        if (strTrim.charAt(0) == '.') {
                            sb = new StringBuilder();
                            sb.append(context.getPackageName());
                        } else {
                            if (!strTrim.contains(".")) {
                                sb = new StringBuilder();
                                sb.append(RecyclerView.class.getPackage().getName());
                                sb.append('.');
                            }
                            if (isInEditMode()) {
                                classLoader = getClass().getClassLoader();
                            } else {
                                classLoader = context.getClassLoader();
                            }
                            clsAsSubclass = Class.forName(strTrim, false, classLoader).asSubclass(j.class);
                            constructor = clsAsSubclass.getConstructor(LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE);
                            objArr = new Object[]{context, attributeSet, Integer.valueOf(com.sid.tvos.R.attr.recyclerViewStyle), 0};
                            Object[] objArr2 = objArr;
                            constructor.setAccessible(true);
                            setLayoutManager((j) constructor.newInstance(objArr2));
                        }
                        constructor = clsAsSubclass.getConstructor(LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE);
                        objArr = new Object[]{context, attributeSet, Integer.valueOf(com.sid.tvos.R.attr.recyclerViewStyle), 0};
                    } catch (NoSuchMethodException e2) {
                        objArr = null;
                        try {
                            constructor = clsAsSubclass.getConstructor(null);
                        } catch (NoSuchMethodException e3) {
                            e3.initCause(e2);
                            throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + strTrim, e3);
                        }
                    }
                    if (isInEditMode()) {
                        classLoader = getClass().getClassLoader();
                    } else {
                        classLoader = context.getClassLoader();
                    }
                    clsAsSubclass = Class.forName(strTrim, false, classLoader).asSubclass(j.class);
                    Object[] objArr3 = objArr;
                    constructor.setAccessible(true);
                    setLayoutManager((j) constructor.newInstance(objArr3));
                } catch (ClassCastException e4) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + strTrim, e4);
                } catch (ClassNotFoundException e5) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + strTrim, e5);
                } catch (IllegalAccessException e6) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + strTrim, e6);
                } catch (InstantiationException e7) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + strTrim, e7);
                } catch (InvocationTargetException e8) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + strTrim, e8);
                }
                sb.append(strTrim);
                strTrim = sb.toString();
            }
        }
        int[] iArr2 = NESTED_SCROLLING_ATTRS;
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, com.sid.tvos.R.attr.recyclerViewStyle, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            k.o.c(this, context, iArr2, attributeSet, typedArrayObtainStyledAttributes2, com.sid.tvos.R.attr.recyclerViewStyle, 0);
        }
        boolean z3 = typedArrayObtainStyledAttributes2.getBoolean(0, true);
        typedArrayObtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z3);
        setTag(com.sid.tvos.R.id.is_pooling_container_tag, Boolean.TRUE);
    }

    public static int b(int i2, EdgeEffect edgeEffect, EdgeEffect edgeEffect2, int i3) {
        if (i2 > 0 && edgeEffect != null && y.a.p(edgeEffect) != 0.0f) {
            int iRound = Math.round(y.a.u(edgeEffect, ((-i2) * 4.0f) / i3, 0.5f) * ((-i3) / 4.0f));
            if (iRound != i2) {
                edgeEffect.finish();
            }
            return i2 - iRound;
        }
        if (i2 >= 0 || edgeEffect2 == null || y.a.p(edgeEffect2) == 0.0f) {
            return i2;
        }
        float f2 = i3;
        int iRound2 = Math.round(y.a.u(edgeEffect2, (i2 * 4.0f) / f2, 0.5f) * (f2 / 4.0f));
        if (iRound2 != i2) {
            edgeEffect2.finish();
        }
        return i2 - iRound2;
    }

    public static void clearNestedRecyclerViewIfNotNested(o oVar) {
        WeakReference<RecyclerView> weakReference = oVar.mNestedRecyclerView;
        if (weakReference == null) {
            return;
        }
        Object parent = weakReference.get();
        while (true) {
            View view = (View) parent;
            while (true) {
                if (view == null) {
                    oVar.mNestedRecyclerView = null;
                    return;
                } else {
                    if (view == oVar.itemView) {
                        return;
                    }
                    parent = view.getParent();
                    if (parent instanceof View) {
                        break;
                    } else {
                        view = null;
                    }
                }
            }
        }
    }

    public static RecyclerView findNestedRecyclerView(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            RecyclerView recyclerViewFindNestedRecyclerView = findNestedRecyclerView(viewGroup.getChildAt(i2));
            if (recyclerViewFindNestedRecyclerView != null) {
                return recyclerViewFindNestedRecyclerView;
            }
        }
        return null;
    }

    public static o getChildViewHolderInt(View view) {
        if (view == null) {
            return null;
        }
        return ((N) view.getLayoutParams()).f559a;
    }

    public static void getDecoratedBoundsWithMarginsInt(View view, Rect rect) {
        N n2 = (N) view.getLayoutParams();
        Rect rect2 = n2.f560b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) n2).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) n2).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) n2).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) n2).bottomMargin);
    }

    private C0029d getScrollingChildHelper() {
        if (this.mScrollingChildHelper == null) {
            this.mScrollingChildHelper = new C0029d(this);
        }
        return this.mScrollingChildHelper;
    }

    public static void setDebugAssertionsEnabled(boolean z2) {
        sDebugAssertionsEnabled = z2;
    }

    public static void setVerboseLoggingEnabled(boolean z2) {
        sVerboseLoggingEnabled = z2;
    }

    public final void a(o oVar) {
        View view = oVar.itemView;
        boolean z2 = view.getParent() == this;
        this.mRecycler.m(getChildViewHolder(view));
        if (oVar.isTmpDetached()) {
            this.mChildHelper.b(view, -1, view.getLayoutParams(), true);
            return;
        }
        if (!z2) {
            this.mChildHelper.a(-1, view, true);
            return;
        }
        b bVar = this.mChildHelper;
        int iIndexOfChild = bVar.f43a.f548a.indexOfChild(view);
        if (iIndexOfChild >= 0) {
            bVar.f44b.h(iIndexOfChild);
            bVar.i(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    public void absorbGlows(int i2, int i3) {
        if (i2 < 0) {
            ensureLeftGlow();
            if (this.mLeftGlow.isFinished()) {
                this.mLeftGlow.onAbsorb(-i2);
            }
        } else if (i2 > 0) {
            ensureRightGlow();
            if (this.mRightGlow.isFinished()) {
                this.mRightGlow.onAbsorb(i2);
            }
        }
        if (i3 < 0) {
            ensureTopGlow();
            if (this.mTopGlow.isFinished()) {
                this.mTopGlow.onAbsorb(-i3);
            }
        } else if (i3 > 0) {
            ensureBottomGlow();
            if (this.mBottomGlow.isFinished()) {
                this.mBottomGlow.onAbsorb(i3);
            }
        }
        if (i2 == 0 && i3 == 0) {
            return;
        }
        Field field = r.f469a;
        AbstractC0031f.k(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        j jVar = this.mLayout;
        if (jVar == null || !jVar.onAddFocusables(this, arrayList, i2, i3)) {
            super.addFocusables(arrayList, i2, i3);
        }
    }

    public void addItemDecoration(J j) {
        addItemDecoration(j, -1);
    }

    public void addOnItemTouchListener(P p2) {
        this.mOnItemTouchListeners.add(p2);
    }

    public void addOnScrollListener(Q q2) {
        if (this.mScrollListeners == null) {
            this.mScrollListeners = new ArrayList();
        }
        this.mScrollListeners.add(q2);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0024  */
    public void animateAppearance(o oVar, I i2, I i3) {
        boolean zG;
        oVar.setIsRecyclable(false);
        C0043i c0043i = (C0043i) this.mItemAnimator;
        if (i2 != null) {
            c0043i.getClass();
            int i4 = i2.f551a;
            int i5 = i3.f551a;
            if (i4 == i5 && i2.f552b == i3.f552b) {
                c0043i.l(oVar);
                oVar.itemView.setAlpha(0.0f);
                c0043i.f651i.add(oVar);
                zG = true;
            } else {
                zG = c0043i.g(oVar, i4, i2.f552b, i5, i3.f552b);
            }
        } else {
            c0043i.l(oVar);
            oVar.itemView.setAlpha(0.0f);
            c0043i.f651i.add(oVar);
            zG = true;
        }
        if (zG) {
            postAnimationRunner();
        }
    }

    public void animateDisappearance(o oVar, I i2, I i3) {
        boolean zG;
        a(oVar);
        oVar.setIsRecyclable(false);
        C0043i c0043i = (C0043i) this.mItemAnimator;
        c0043i.getClass();
        int i4 = i2.f551a;
        int i5 = i2.f552b;
        View view = oVar.itemView;
        int left = i3 == null ? view.getLeft() : i3.f551a;
        int top = i3 == null ? view.getTop() : i3.f552b;
        if (oVar.isRemoved() || (i4 == left && i5 == top)) {
            c0043i.l(oVar);
            c0043i.f650h.add(oVar);
            zG = true;
        } else {
            view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
            zG = c0043i.g(oVar, i4, i5, left, top);
        }
        if (zG) {
            postAnimationRunner();
        }
    }

    public void assertNotInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException(n.a.a(this, new StringBuilder("Cannot call this method while RecyclerView is computing a layout or scrolling")));
        }
        if (this.mDispatchScrollCounter > 0) {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(n.a.a(this, new StringBuilder(""))));
        }
    }

    public final void c() {
        int id;
        m0 m0Var;
        this.mState.a(1);
        fillRemainingScrollValues(this.mState);
        this.mState.f580i = false;
        startInterceptRequestLayout();
        o0 o0Var = this.mViewInfoStore;
        o0Var.f713a.clear();
        b.d dVar = o0Var.f714b;
        int i2 = dVar.f109d;
        Object[] objArr = dVar.f108c;
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            objArr[i3] = null;
            i3++;
        }
        dVar.f109d = 0;
        dVar.f106a = false;
        onEnterLayoutOrScroll();
        h();
        View focusedChild = (this.mPreserveFocusAfterLayout && hasFocus() && this.mAdapter != null) ? getFocusedChild() : null;
        o oVarFindContainingViewHolder = focusedChild != null ? findContainingViewHolder(focusedChild) : null;
        if (oVarFindContainingViewHolder == null) {
            Y y2 = this.mState;
            y2.f583m = -1L;
            y2.f582l = -1;
            y2.f584n = -1;
        } else {
            this.mState.f583m = this.mAdapter.hasStableIds() ? oVarFindContainingViewHolder.getItemId() : -1L;
            Y y3 = this.mState;
            y3.f582l = this.mDataSetHasChangedAfterLayout ? -1 : oVarFindContainingViewHolder.isRemoved() ? oVarFindContainingViewHolder.mOldPosition : oVarFindContainingViewHolder.getAbsoluteAdapterPosition();
            Y y4 = this.mState;
            View focusedChild2 = oVarFindContainingViewHolder.itemView;
            loop3: while (true) {
                id = focusedChild2.getId();
                while (true) {
                    if (focusedChild2.isFocused() || !(focusedChild2 instanceof ViewGroup) || !focusedChild2.hasFocus()) {
                        break loop3;
                    }
                    focusedChild2 = ((ViewGroup) focusedChild2).getFocusedChild();
                    if (focusedChild2.getId() != -1) {
                    }
                }
            }
            y4.f584n = id;
        }
        Y y5 = this.mState;
        y5.f579h = y5.j && this.mItemsChanged;
        this.mItemsChanged = false;
        this.mItemsAddedOrRemoved = false;
        y5.f578g = y5.f581k;
        y5.f576e = this.mAdapter.getItemCount();
        f(this.mMinMaxLayoutPositions);
        if (this.mState.j) {
            int iE = this.mChildHelper.e();
            for (int i4 = 0; i4 < iE; i4++) {
                o childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i4));
                if (!childViewHolderInt.shouldIgnore() && (!childViewHolderInt.isInvalid() || this.mAdapter.hasStableIds())) {
                    i iVar = this.mItemAnimator;
                    i.b(childViewHolderInt);
                    childViewHolderInt.getUnmodifiedPayloads();
                    iVar.getClass();
                    I i5 = new I();
                    i5.a(childViewHolderInt);
                    b.j jVar = this.mViewInfoStore.f713a;
                    m0 m0VarA = (m0) jVar.get(childViewHolderInt);
                    if (m0VarA == null) {
                        m0VarA = m0.a();
                        jVar.put(childViewHolderInt, m0VarA);
                    }
                    m0VarA.f681b = i5;
                    m0VarA.f680a |= 4;
                    if (this.mState.f579h && childViewHolderInt.isUpdated() && !childViewHolderInt.isRemoved() && !childViewHolderInt.shouldIgnore() && !childViewHolderInt.isInvalid()) {
                        this.mViewInfoStore.a(getChangedHolderKey(childViewHolderInt), childViewHolderInt);
                    }
                }
            }
        }
        if (this.mState.f581k) {
            saveOldPositions();
            Y y6 = this.mState;
            boolean z2 = y6.f577f;
            y6.f577f = false;
            this.mLayout.onLayoutChildren(this.mRecycler, y6);
            this.mState.f577f = z2;
            for (int i6 = 0; i6 < this.mChildHelper.e(); i6++) {
                o childViewHolderInt2 = getChildViewHolderInt(this.mChildHelper.d(i6));
                if (!childViewHolderInt2.shouldIgnore() && ((m0Var = (m0) this.mViewInfoStore.f713a.get(childViewHolderInt2)) == null || (m0Var.f680a & 4) == 0)) {
                    i.b(childViewHolderInt2);
                    boolean zHasAnyOfTheFlags = childViewHolderInt2.hasAnyOfTheFlags(8192);
                    i iVar2 = this.mItemAnimator;
                    childViewHolderInt2.getUnmodifiedPayloads();
                    iVar2.getClass();
                    I i7 = new I();
                    i7.a(childViewHolderInt2);
                    if (zHasAnyOfTheFlags) {
                        recordAnimationInfoIfBouncedHiddenView(childViewHolderInt2, i7);
                    } else {
                        b.j jVar2 = this.mViewInfoStore.f713a;
                        m0 m0VarA2 = (m0) jVar2.get(childViewHolderInt2);
                        if (m0VarA2 == null) {
                            m0VarA2 = m0.a();
                            jVar2.put(childViewHolderInt2, m0VarA2);
                        }
                        m0VarA2.f680a |= 2;
                        m0VarA2.f681b = i7;
                    }
                }
            }
        }
        clearOldPositions();
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        this.mState.f575d = 2;
    }

    public boolean canReuseUpdatedViewHolder(o oVar) {
        i iVar = this.mItemAnimator;
        if (iVar != null) {
            List<Object> unmodifiedPayloads = oVar.getUnmodifiedPayloads();
            C0043i c0043i = (C0043i) iVar;
            c0043i.getClass();
            if (unmodifiedPayloads.isEmpty() && c0043i.f649g && !oVar.isInvalid()) {
                return false;
            }
        }
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof N) && this.mLayout.checkLayoutParams((N) layoutParams);
    }

    public void clearOldPositions() {
        int iH = this.mChildHelper.h();
        for (int i2 = 0; i2 < iH; i2++) {
            o childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i2));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.clearOldPosition();
            }
        }
        k kVar = this.mRecycler;
        ArrayList arrayList = kVar.f69c;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            ((o) arrayList.get(i3)).clearOldPosition();
        }
        ArrayList arrayList2 = kVar.f67a;
        int size2 = arrayList2.size();
        for (int i4 = 0; i4 < size2; i4++) {
            ((o) arrayList2.get(i4)).clearOldPosition();
        }
        ArrayList arrayList3 = kVar.f68b;
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            for (int i5 = 0; i5 < size3; i5++) {
                ((o) kVar.f68b.get(i5)).clearOldPosition();
            }
        }
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        j jVar = this.mLayout;
        if (jVar != null && jVar.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollExtent(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        j jVar = this.mLayout;
        if (jVar != null && jVar.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollOffset(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        j jVar = this.mLayout;
        if (jVar != null && jVar.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollRange(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        j jVar = this.mLayout;
        if (jVar != null && jVar.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollExtent(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        j jVar = this.mLayout;
        if (jVar != null && jVar.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollOffset(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        j jVar = this.mLayout;
        if (jVar != null && jVar.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollRange(this.mState);
        }
        return 0;
    }

    public void considerReleasingGlowsOnScroll(int i2, int i3) {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished() || i2 <= 0) {
            zIsFinished = false;
        } else {
            this.mLeftGlow.onRelease();
            zIsFinished = this.mLeftGlow.isFinished();
        }
        EdgeEffect edgeEffect2 = this.mRightGlow;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i2 < 0) {
            this.mRightGlow.onRelease();
            zIsFinished |= this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i3 > 0) {
            this.mTopGlow.onRelease();
            zIsFinished |= this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i3 < 0) {
            this.mBottomGlow.onRelease();
            zIsFinished |= this.mBottomGlow.isFinished();
        }
        if (zIsFinished) {
            Field field = r.f469a;
            AbstractC0031f.k(this);
        }
    }

    public int consumeFlingInHorizontalStretch(int i2) {
        return b(i2, this.mLeftGlow, this.mRightGlow, getWidth());
    }

    public int consumeFlingInVerticalStretch(int i2) {
        return b(i2, this.mTopGlow, this.mBottomGlow, getHeight());
    }

    public void consumePendingUpdateOperations() {
        if (!this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout) {
            int i2 = h.a.f423a;
            Trace.beginSection("RV FullInvalidate");
            dispatchLayout();
            Trace.endSection();
            return;
        }
        if (this.mAdapterHelper.g()) {
            a aVar = this.mAdapterHelper;
            int i3 = aVar.f42f;
            if ((i3 & 4) != 0 && (i3 & 11) == 0) {
                int i4 = h.a.f423a;
                Trace.beginSection("RV PartialInvalidate");
                startInterceptRequestLayout();
                onEnterLayoutOrScroll();
                this.mAdapterHelper.j();
                if (!this.mLayoutWasDefered) {
                    int iE = this.mChildHelper.e();
                    int i5 = 0;
                    while (true) {
                        if (i5 < iE) {
                            o childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i5));
                            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.isUpdated()) {
                                dispatchLayout();
                                break;
                            }
                            i5++;
                        } else {
                            this.mAdapterHelper.b();
                            break;
                        }
                    }
                }
                stopInterceptRequestLayout(true);
                onExitLayoutOrScroll();
            } else {
                if (!aVar.g()) {
                    return;
                }
                int i6 = h.a.f423a;
                Trace.beginSection("RV FullInvalidate");
                dispatchLayout();
            }
            Trace.endSection();
        }
    }

    public final void d() {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        this.mState.a(6);
        this.mAdapterHelper.c();
        this.mState.f576e = this.mAdapter.getItemCount();
        this.mState.f574c = 0;
        if (this.mPendingSavedState != null && this.mAdapter.canRestoreState()) {
            Parcelable parcelable = this.mPendingSavedState.f571c;
            if (parcelable != null) {
                this.mLayout.onRestoreInstanceState(parcelable);
            }
            this.mPendingSavedState = null;
        }
        Y y2 = this.mState;
        y2.f578g = false;
        this.mLayout.onLayoutChildren(this.mRecycler, y2);
        Y y3 = this.mState;
        y3.f577f = false;
        y3.j = y3.j && this.mItemAnimator != null;
        y3.f575d = 4;
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
    }

    public void defaultOnMeasure(int i2, int i3) {
        int paddingRight = getPaddingRight() + getPaddingLeft();
        Field field = r.f469a;
        setMeasuredDimension(j.chooseSize(i2, paddingRight, AbstractC0031f.e(this)), j.chooseSize(i3, getPaddingBottom() + getPaddingTop(), AbstractC0031f.d(this)));
    }

    public void dispatchChildAttached(View view) {
        int size;
        o childViewHolderInt = getChildViewHolderInt(view);
        onChildAttachedToWindow(view);
        g gVar = this.mAdapter;
        if (gVar != null && childViewHolderInt != null) {
            gVar.onViewAttachedToWindow(childViewHolderInt);
        }
        List<Object> list = this.mOnChildAttachStateListeners;
        if (list == null || (size = list.size() - 1) < 0) {
            return;
        }
        n.a.b(this.mOnChildAttachStateListeners.get(size));
        throw null;
    }

    public void dispatchChildDetached(View view) {
        int size;
        o childViewHolderInt = getChildViewHolderInt(view);
        onChildDetachedFromWindow(view);
        g gVar = this.mAdapter;
        if (gVar != null && childViewHolderInt != null) {
            gVar.onViewDetachedFromWindow(childViewHolderInt);
        }
        List<Object> list = this.mOnChildAttachStateListeners;
        if (list == null || (size = list.size() - 1) < 0) {
            return;
        }
        n.a.b(this.mOnChildAttachStateListeners.get(size));
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0204  */
    /* JADX WARN: Code duplicated, block: B:178:0x0397  */
    /* JADX WARN: Code duplicated, block: B:180:0x039f  */
    /* JADX WARN: Code duplicated, block: B:183:0x03b0  */
    /* JADX WARN: Code duplicated, block: B:185:0x03b3  */
    /* JADX WARN: Code duplicated, block: B:187:0x03bf  */
    /* JADX WARN: Code duplicated, block: B:191:0x03cb  */
    /* JADX WARN: Code duplicated, block: B:193:0x03d3  */
    /* JADX WARN: Code duplicated, block: B:195:0x03d9  */
    /* JADX WARN: Code duplicated, block: B:198:0x03e1  */
    /* JADX WARN: Code duplicated, block: B:201:0x03e8  */
    /* JADX WARN: Code duplicated, block: B:204:0x03f3 A[LOOP:4: B:197:0x03df->B:204:0x03f3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:207:0x03fe  */
    /* JADX WARN: Code duplicated, block: B:210:0x0405  */
    /* JADX WARN: Code duplicated, block: B:213:0x0410 A[LOOP:5: B:206:0x03fc->B:213:0x0410, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:215:0x0415  */
    /* JADX WARN: Code duplicated, block: B:217:0x041e  */
    /* JADX WARN: Code duplicated, block: B:247:0x03f6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:248:0x03f6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:249:0x03f0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:250:0x0413 A[EDGE_INSN: B:250:0x0413->B:214:0x0413 BREAK  A[LOOP:5: B:206:0x03fc->B:213:0x0410], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:251:0x040d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:0x01da  */
    public void dispatchLayout() {
        o oVarFindViewHolderForItemId;
        int i2;
        int iB;
        int i3;
        int iMin;
        o oVarFindViewHolderForAdapterPosition;
        o oVarFindViewHolderForAdapterPosition2;
        int i4;
        View viewFindViewById;
        boolean zG;
        Object obj;
        if (this.mAdapter == null) {
            Log.w("RecyclerView", "No adapter attached; skipping layout");
            return;
        }
        if (this.mLayout == null) {
            Log.e("RecyclerView", "No layout manager attached; skipping layout");
            return;
        }
        this.mState.f580i = false;
        boolean z2 = this.mLastAutoMeasureSkippedDueToExact && !(this.mLastAutoMeasureNonExactMeasuredWidth == getWidth() && this.mLastAutoMeasureNonExactMeasuredHeight == getHeight());
        this.mLastAutoMeasureNonExactMeasuredWidth = 0;
        this.mLastAutoMeasureNonExactMeasuredHeight = 0;
        this.mLastAutoMeasureSkippedDueToExact = false;
        if (this.mState.f575d == 1) {
            c();
            this.mLayout.setExactMeasureSpecsFrom(this);
            d();
        } else {
            a aVar = this.mAdapterHelper;
            if ((aVar.f39c.isEmpty() || aVar.f38b.isEmpty()) && !z2 && this.mLayout.getWidth() == getWidth() && this.mLayout.getHeight() == getHeight()) {
                this.mLayout.setExactMeasureSpecsFrom(this);
            } else {
                this.mLayout.setExactMeasureSpecsFrom(this);
                d();
            }
        }
        this.mState.a(4);
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        Y y2 = this.mState;
        y2.f575d = 1;
        View view = null;
        if (y2.j) {
            for (int iE = this.mChildHelper.e() - 1; iE >= 0; iE--) {
                o childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(iE));
                if (!childViewHolderInt.shouldIgnore()) {
                    long changedHolderKey = getChangedHolderKey(childViewHolderInt);
                    this.mItemAnimator.getClass();
                    I i5 = new I();
                    i5.a(childViewHolderInt);
                    b.d dVar = this.mViewInfoStore.f714b;
                    int iA = b.c.a(dVar.f107b, dVar.f109d, changedHolderKey);
                    if (iA < 0 || (obj = dVar.f108c[iA]) == b.d.f105e) {
                        obj = null;
                    }
                    o oVar = (o) obj;
                    if (oVar == null || oVar.shouldIgnore()) {
                        this.mViewInfoStore.b(childViewHolderInt, i5);
                    } else {
                        m0 m0Var = (m0) this.mViewInfoStore.f713a.get(oVar);
                        boolean z3 = (m0Var == null || (m0Var.f680a & 1) == 0) ? false : true;
                        m0 m0Var2 = (m0) this.mViewInfoStore.f713a.get(childViewHolderInt);
                        boolean z4 = (m0Var2 == null || (m0Var2.f680a & 1) == 0) ? false : true;
                        if (z3 && oVar == childViewHolderInt) {
                            this.mViewInfoStore.b(childViewHolderInt, i5);
                        } else {
                            I iC = this.mViewInfoStore.c(oVar, 4);
                            this.mViewInfoStore.b(childViewHolderInt, i5);
                            I iC2 = this.mViewInfoStore.c(childViewHolderInt, 8);
                            if (iC == null) {
                                int iE2 = this.mChildHelper.e();
                                for (int i6 = 0; i6 < iE2; i6++) {
                                    o childViewHolderInt2 = getChildViewHolderInt(this.mChildHelper.d(i6));
                                    if (childViewHolderInt2 != childViewHolderInt && getChangedHolderKey(childViewHolderInt2) == changedHolderKey) {
                                        g gVar = this.mAdapter;
                                        if (gVar == null || !gVar.hasStableIds()) {
                                            StringBuilder sb = new StringBuilder("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:");
                                            sb.append(childViewHolderInt2);
                                            sb.append(" \n View Holder 2:");
                                            sb.append(childViewHolderInt);
                                            throw new IllegalStateException(n.a.a(this, sb));
                                        }
                                        StringBuilder sb2 = new StringBuilder("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:");
                                        sb2.append(childViewHolderInt2);
                                        sb2.append(" \n View Holder 2:");
                                        sb2.append(childViewHolderInt);
                                        throw new IllegalStateException(n.a.a(this, sb2));
                                    }
                                }
                                Log.e("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + oVar + " cannot be found but it is necessary for " + childViewHolderInt + exceptionLabel());
                            } else {
                                oVar.setIsRecyclable(false);
                                if (z3) {
                                    a(oVar);
                                }
                                if (oVar != childViewHolderInt) {
                                    if (z4) {
                                        a(childViewHolderInt);
                                    }
                                    oVar.mShadowedHolder = childViewHolderInt;
                                    a(oVar);
                                    this.mRecycler.m(oVar);
                                    childViewHolderInt.setIsRecyclable(false);
                                    childViewHolderInt.mShadowingHolder = oVar;
                                }
                                if (this.mItemAnimator.a(oVar, childViewHolderInt, iC, iC2)) {
                                    postAnimationRunner();
                                }
                            }
                        }
                    }
                }
            }
            o0 o0Var = this.mViewInfoStore;
            n0 n0Var = this.mViewInfoProcessCallback;
            b.j jVar = o0Var.f713a;
            for (int i7 = jVar.f132c - 1; i7 >= 0; i7--) {
                o oVar2 = (o) jVar.f131b[i7 << 1];
                m0 m0Var3 = (m0) jVar.h(i7);
                int i8 = m0Var3.f680a;
                if ((i8 & 3) == 3) {
                    RecyclerView recyclerView = ((C) n0Var).f548a;
                    recyclerView.mLayout.removeAndRecycleView(oVar2.itemView, recyclerView.mRecycler);
                } else if ((i8 & 1) != 0) {
                    I i9 = m0Var3.f681b;
                    if (i9 == null) {
                        RecyclerView recyclerView2 = ((C) n0Var).f548a;
                        recyclerView2.mLayout.removeAndRecycleView(oVar2.itemView, recyclerView2.mRecycler);
                    } else {
                        I i10 = m0Var3.f682c;
                        RecyclerView recyclerView3 = ((C) n0Var).f548a;
                        recyclerView3.mRecycler.m(oVar2);
                        recyclerView3.animateDisappearance(oVar2, i9, i10);
                    }
                } else if ((i8 & 14) == 14) {
                    ((C) n0Var).f548a.animateAppearance(oVar2, m0Var3.f681b, m0Var3.f682c);
                } else if ((i8 & 12) == 12) {
                    I i11 = m0Var3.f681b;
                    I i12 = m0Var3.f682c;
                    C c2 = (C) n0Var;
                    c2.getClass();
                    oVar2.setIsRecyclable(false);
                    RecyclerView recyclerView4 = c2.f548a;
                    if (!recyclerView4.mDataSetHasChangedAfterLayout) {
                        C0043i c0043i = (C0043i) recyclerView4.mItemAnimator;
                        c0043i.getClass();
                        int i13 = i11.f551a;
                        int i14 = i12.f551a;
                        if (i13 == i14 && i11.f552b == i12.f552b) {
                            c0043i.c(oVar2);
                            zG = false;
                        } else {
                            zG = c0043i.g(oVar2, i13, i11.f552b, i14, i12.f552b);
                        }
                        if (zG) {
                            recyclerView4.postAnimationRunner();
                        }
                    } else if (recyclerView4.mItemAnimator.a(oVar2, oVar2, i11, i12)) {
                        recyclerView4.postAnimationRunner();
                    }
                } else if ((i8 & 4) != 0) {
                    I i15 = m0Var3.f681b;
                    RecyclerView recyclerView5 = ((C) n0Var).f548a;
                    recyclerView5.mRecycler.m(oVar2);
                    recyclerView5.animateDisappearance(oVar2, i15, null);
                } else if ((i8 & 8) != 0) {
                    ((C) n0Var).f548a.animateAppearance(oVar2, m0Var3.f681b, m0Var3.f682c);
                }
                m0Var3.f680a = 0;
                m0Var3.f681b = null;
                m0Var3.f682c = null;
                m0.f679d.b(m0Var3);
            }
        }
        this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
        Y y3 = this.mState;
        y3.f573b = y3.f576e;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        y3.j = false;
        y3.f581k = false;
        this.mLayout.mRequestedSimpleAnimations = false;
        ArrayList arrayList = this.mRecycler.f68b;
        if (arrayList != null) {
            arrayList.clear();
        }
        j jVar2 = this.mLayout;
        if (jVar2.mPrefetchMaxObservedInInitialPrefetch) {
            jVar2.mPrefetchMaxCountObserved = 0;
            jVar2.mPrefetchMaxObservedInInitialPrefetch = false;
            this.mRecycler.n();
        }
        this.mLayout.onLayoutCompleted(this.mState);
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        o0 o0Var2 = this.mViewInfoStore;
        o0Var2.f713a.clear();
        b.d dVar2 = o0Var2.f714b;
        int i16 = dVar2.f109d;
        Object[] objArr = dVar2.f108c;
        for (int i17 = 0; i17 < i16; i17++) {
            objArr[i17] = null;
        }
        dVar2.f109d = 0;
        dVar2.f106a = false;
        int[] iArr = this.mMinMaxLayoutPositions;
        int i18 = iArr[0];
        int i19 = iArr[1];
        f(iArr);
        int[] iArr2 = this.mMinMaxLayoutPositions;
        if ((iArr2[0] == i18 && iArr2[1] == i19) ? false : true) {
            dispatchOnScrolled(0, 0);
        }
        if (this.mPreserveFocusAfterLayout && this.mAdapter != null && hasFocus() && getDescendantFocusability() != 393216 && (getDescendantFocusability() != 131072 || !isFocused())) {
            if (isFocused()) {
                if (this.mState.f583m == -1) {
                    oVarFindViewHolderForItemId = null;
                } else {
                    oVarFindViewHolderForItemId = null;
                }
                if (oVarFindViewHolderForItemId == null) {
                    if (this.mChildHelper.e() > 0) {
                        Y y4 = this.mState;
                        int i20 = y4.f582l;
                        if (i20 != -1) {
                        }
                        iB = y4.b();
                        i3 = i2;
                        while (true) {
                            if (i3 >= iB) {
                                oVarFindViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(i3);
                                if (oVarFindViewHolderForAdapterPosition2 == null) {
                                    if (oVarFindViewHolderForAdapterPosition2.itemView.hasFocusable()) {
                                        view = oVarFindViewHolderForAdapterPosition2.itemView;
                                    } else {
                                        i3++;
                                    }
                                }
                            }
                            for (iMin = Math.min(iB, i2) - 1; iMin >= 0; iMin--) {
                                oVarFindViewHolderForAdapterPosition = findViewHolderForAdapterPosition(iMin);
                                if (oVarFindViewHolderForAdapterPosition != null) {
                                    break;
                                    break;
                                } else {
                                    if (oVarFindViewHolderForAdapterPosition.itemView.hasFocusable()) {
                                        view = oVarFindViewHolderForAdapterPosition.itemView;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                } else if (!this.mChildHelper.f45c.contains(oVarFindViewHolderForItemId.itemView)) {
                    if (this.mChildHelper.e() > 0) {
                        Y y5 = this.mState;
                        int i21 = y5.f582l;
                        if (i21 != -1) {
                        }
                        iB = y5.b();
                        i3 = i2;
                        while (true) {
                            if (i3 >= iB) {
                                oVarFindViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(i3);
                                if (oVarFindViewHolderForAdapterPosition2 == null) {
                                    if (oVarFindViewHolderForAdapterPosition2.itemView.hasFocusable()) {
                                        view = oVarFindViewHolderForAdapterPosition2.itemView;
                                    } else {
                                        i3++;
                                    }
                                }
                            }
                            while (iMin >= 0) {
                                oVarFindViewHolderForAdapterPosition = findViewHolderForAdapterPosition(iMin);
                                if (oVarFindViewHolderForAdapterPosition != null) {
                                    break;
                                    break;
                                } else {
                                    if (oVarFindViewHolderForAdapterPosition.itemView.hasFocusable()) {
                                        view = oVarFindViewHolderForAdapterPosition.itemView;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                } else if (this.mChildHelper.e() > 0) {
                    Y y6 = this.mState;
                    int i22 = y6.f582l;
                    if (i22 != -1) {
                    }
                    iB = y6.b();
                    i3 = i2;
                    while (true) {
                        if (i3 >= iB) {
                            oVarFindViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(i3);
                            if (oVarFindViewHolderForAdapterPosition2 == null) {
                                if (oVarFindViewHolderForAdapterPosition2.itemView.hasFocusable()) {
                                    view = oVarFindViewHolderForAdapterPosition2.itemView;
                                } else {
                                    i3++;
                                }
                            }
                        }
                        while (iMin >= 0) {
                            oVarFindViewHolderForAdapterPosition = findViewHolderForAdapterPosition(iMin);
                            if (oVarFindViewHolderForAdapterPosition != null) {
                                break;
                                break;
                            } else {
                                if (oVarFindViewHolderForAdapterPosition.itemView.hasFocusable()) {
                                    view = oVarFindViewHolderForAdapterPosition.itemView;
                                    break;
                                }
                            }
                        }
                    }
                }
                if (view != null) {
                    i4 = this.mState.f584n;
                    if (i4 != -1) {
                        view = viewFindViewById;
                    }
                    view.requestFocus();
                }
            } else {
                View focusedChild = getFocusedChild();
                if (!IGNORE_DETACHED_FOCUSED_CHILD || (focusedChild.getParent() != null && focusedChild.hasFocus())) {
                    if (this.mChildHelper.f45c.contains(focusedChild)) {
                        if (this.mState.f583m == -1 && this.mAdapter.hasStableIds()) {
                            oVarFindViewHolderForItemId = findViewHolderForItemId(this.mState.f583m);
                        } else {
                            oVarFindViewHolderForItemId = null;
                        }
                        if (oVarFindViewHolderForItemId == null) {
                            if (this.mChildHelper.e() > 0) {
                                Y y7 = this.mState;
                                int i23 = y7.f582l;
                                if (i23 != -1) {
                                }
                                iB = y7.b();
                                i3 = i2;
                                while (true) {
                                    if (i3 >= iB) {
                                        oVarFindViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(i3);
                                        if (oVarFindViewHolderForAdapterPosition2 == null) {
                                            if (oVarFindViewHolderForAdapterPosition2.itemView.hasFocusable()) {
                                                view = oVarFindViewHolderForAdapterPosition2.itemView;
                                            } else {
                                                i3++;
                                            }
                                        }
                                    }
                                    while (iMin >= 0) {
                                        oVarFindViewHolderForAdapterPosition = findViewHolderForAdapterPosition(iMin);
                                        if (oVarFindViewHolderForAdapterPosition != null) {
                                            break;
                                            break;
                                        } else {
                                            if (oVarFindViewHolderForAdapterPosition.itemView.hasFocusable()) {
                                                view = oVarFindViewHolderForAdapterPosition.itemView;
                                                break;
                                            }
                                        }
                                    }
                                }
                            }
                        } else if (!this.mChildHelper.f45c.contains(oVarFindViewHolderForItemId.itemView) && oVarFindViewHolderForItemId.itemView.hasFocusable()) {
                            view = oVarFindViewHolderForItemId.itemView;
                        } else if (this.mChildHelper.e() > 0) {
                            Y y8 = this.mState;
                            int i24 = y8.f582l;
                            i2 = i24 != -1 ? i24 : 0;
                            iB = y8.b();
                            i3 = i2;
                            while (true) {
                                if (i3 >= iB) {
                                    oVarFindViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(i3);
                                    if (oVarFindViewHolderForAdapterPosition2 == null) {
                                        if (oVarFindViewHolderForAdapterPosition2.itemView.hasFocusable()) {
                                            view = oVarFindViewHolderForAdapterPosition2.itemView;
                                        } else {
                                            i3++;
                                        }
                                    }
                                }
                                while (iMin >= 0) {
                                    oVarFindViewHolderForAdapterPosition = findViewHolderForAdapterPosition(iMin);
                                    if (oVarFindViewHolderForAdapterPosition != null) {
                                        break;
                                    }
                                    if (oVarFindViewHolderForAdapterPosition.itemView.hasFocusable()) {
                                        view = oVarFindViewHolderForAdapterPosition.itemView;
                                        break;
                                    }
                                }
                            }
                        }
                        if (view != null) {
                            i4 = this.mState.f584n;
                            if (i4 != -1 && (viewFindViewById = view.findViewById(i4)) != null && viewFindViewById.isFocusable()) {
                                view = viewFindViewById;
                            }
                            view.requestFocus();
                        }
                    }
                } else if (this.mChildHelper.e() == 0) {
                    requestFocus();
                } else {
                    if (this.mState.f583m == -1) {
                        oVarFindViewHolderForItemId = null;
                    } else {
                        oVarFindViewHolderForItemId = null;
                    }
                    if (oVarFindViewHolderForItemId == null) {
                        if (this.mChildHelper.e() > 0) {
                            Y y9 = this.mState;
                            int i25 = y9.f582l;
                            if (i25 != -1) {
                            }
                            iB = y9.b();
                            i3 = i2;
                            while (true) {
                                if (i3 >= iB) {
                                    oVarFindViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(i3);
                                    if (oVarFindViewHolderForAdapterPosition2 == null) {
                                        if (oVarFindViewHolderForAdapterPosition2.itemView.hasFocusable()) {
                                            view = oVarFindViewHolderForAdapterPosition2.itemView;
                                        } else {
                                            i3++;
                                        }
                                    }
                                }
                                while (iMin >= 0) {
                                    oVarFindViewHolderForAdapterPosition = findViewHolderForAdapterPosition(iMin);
                                    if (oVarFindViewHolderForAdapterPosition != null) {
                                        break;
                                        break;
                                    } else {
                                        if (oVarFindViewHolderForAdapterPosition.itemView.hasFocusable()) {
                                            view = oVarFindViewHolderForAdapterPosition.itemView;
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                    } else if (!this.mChildHelper.f45c.contains(oVarFindViewHolderForItemId.itemView)) {
                        if (this.mChildHelper.e() > 0) {
                            Y y10 = this.mState;
                            int i26 = y10.f582l;
                            if (i26 != -1) {
                            }
                            iB = y10.b();
                            i3 = i2;
                            while (true) {
                                if (i3 >= iB) {
                                    oVarFindViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(i3);
                                    if (oVarFindViewHolderForAdapterPosition2 == null) {
                                        if (oVarFindViewHolderForAdapterPosition2.itemView.hasFocusable()) {
                                            view = oVarFindViewHolderForAdapterPosition2.itemView;
                                        } else {
                                            i3++;
                                        }
                                    }
                                }
                                while (iMin >= 0) {
                                    oVarFindViewHolderForAdapterPosition = findViewHolderForAdapterPosition(iMin);
                                    if (oVarFindViewHolderForAdapterPosition != null) {
                                        break;
                                        break;
                                    } else {
                                        if (oVarFindViewHolderForAdapterPosition.itemView.hasFocusable()) {
                                            view = oVarFindViewHolderForAdapterPosition.itemView;
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                    } else if (this.mChildHelper.e() > 0) {
                        Y y11 = this.mState;
                        int i27 = y11.f582l;
                        if (i27 != -1) {
                        }
                        iB = y11.b();
                        i3 = i2;
                        while (true) {
                            if (i3 >= iB) {
                                oVarFindViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(i3);
                                if (oVarFindViewHolderForAdapterPosition2 == null) {
                                    if (oVarFindViewHolderForAdapterPosition2.itemView.hasFocusable()) {
                                        view = oVarFindViewHolderForAdapterPosition2.itemView;
                                    } else {
                                        i3++;
                                    }
                                }
                            }
                            while (iMin >= 0) {
                                oVarFindViewHolderForAdapterPosition = findViewHolderForAdapterPosition(iMin);
                                if (oVarFindViewHolderForAdapterPosition != null) {
                                    break;
                                    break;
                                } else {
                                    if (oVarFindViewHolderForAdapterPosition.itemView.hasFocusable()) {
                                        view = oVarFindViewHolderForAdapterPosition.itemView;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    if (view != null) {
                        i4 = this.mState.f584n;
                        if (i4 != -1) {
                            view = viewFindViewById;
                        }
                        view.requestFocus();
                    }
                }
            }
        }
        Y y12 = this.mState;
        y12.f583m = -1L;
        y12.f582l = -1;
        y12.f584n = -1;
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f2, float f3, boolean z2) {
        ViewParent viewParentC;
        C0029d scrollingChildHelper = getScrollingChildHelper();
        if (!scrollingChildHelper.f465d || (viewParentC = scrollingChildHelper.c(0)) == null) {
            return false;
        }
        try {
            return viewParentC.onNestedFling(scrollingChildHelper.f464c, f2, f3, z2);
        } catch (AbstractMethodError e2) {
            Log.e("ViewParentCompat", "ViewParent " + viewParentC + " does not implement interface method onNestedFling", e2);
            return false;
        }
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f2, float f3) {
        ViewParent viewParentC;
        C0029d scrollingChildHelper = getScrollingChildHelper();
        if (!scrollingChildHelper.f465d || (viewParentC = scrollingChildHelper.c(0)) == null) {
            return false;
        }
        try {
            return viewParentC.onNestedPreFling(scrollingChildHelper.f464c, f2, f3);
        } catch (AbstractMethodError e2) {
            Log.e("ViewParentCompat", "ViewParent " + viewParentC + " does not implement interface method onNestedPreFling", e2);
            return false;
        }
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().a(i2, i3, iArr, iArr2, 0);
    }

    public final void dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr, int i6, int[] iArr2) {
        getScrollingChildHelper().b(i2, i3, i4, i5, iArr, i6, iArr2);
    }

    public void dispatchOnScrollStateChanged(int i2) {
        j jVar = this.mLayout;
        if (jVar != null) {
            jVar.onScrollStateChanged(i2);
        }
        onScrollStateChanged(i2);
        Q q2 = this.mScrollListener;
        if (q2 != null) {
            q2.onScrollStateChanged(this, i2);
        }
        List<Q> list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).onScrollStateChanged(this, i2);
            }
        }
    }

    public void dispatchOnScrolled(int i2, int i3) {
        this.mDispatchScrollCounter++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i2, scrollY - i3);
        onScrolled(i2, i3);
        Q q2 = this.mScrollListener;
        if (q2 != null) {
            q2.onScrolled(this, i2, i3);
        }
        List<Q> list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).onScrolled(this, i2, i3);
            }
        }
        this.mDispatchScrollCounter--;
    }

    public void dispatchPendingImportantForAccessibilityChanges() {
        int i2;
        for (int size = this.mPendingAccessibilityImportanceChange.size() - 1; size >= 0; size--) {
            o oVar = this.mPendingAccessibilityImportanceChange.get(size);
            if (oVar.itemView.getParent() == this && !oVar.shouldIgnore() && (i2 = oVar.mPendingAccessibilityState) != -1) {
                View view = oVar.itemView;
                Field field = r.f469a;
                AbstractC0031f.s(view, i2);
                oVar.mPendingAccessibilityState = -1;
            }
        }
        this.mPendingAccessibilityImportanceChange.clear();
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z2;
        float paddingRight;
        float paddingBottom;
        super.draw(canvas);
        int size = this.mItemDecorations.size();
        boolean z3 = false;
        for (int i2 = 0; i2 < size; i2++) {
            this.mItemDecorations.get(i2).onDrawOver(canvas, this, this.mState);
        }
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z2 = false;
        } else {
            int iSave = canvas.save();
            int paddingBottom2 = this.mClipToPadding ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom2, 0.0f);
            EdgeEffect edgeEffect2 = this.mLeftGlow;
            z2 = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int iSave2 = canvas.save();
            if (this.mClipToPadding) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.mTopGlow;
            z2 |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(iSave2);
        }
        EdgeEffect edgeEffect5 = this.mRightGlow;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int iSave3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.mClipToPadding ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(paddingTop, -width);
            EdgeEffect edgeEffect6 = this.mRightGlow;
            z2 |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(iSave3);
        }
        EdgeEffect edgeEffect7 = this.mBottomGlow;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int iSave4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.mClipToPadding) {
                paddingRight = getPaddingRight() + (-getWidth());
                paddingBottom = getPaddingBottom() + (-getHeight());
            } else {
                paddingRight = -getWidth();
                paddingBottom = -getHeight();
            }
            canvas.translate(paddingRight, paddingBottom);
            EdgeEffect edgeEffect8 = this.mBottomGlow;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z3 = true;
            }
            z2 |= z3;
            canvas.restoreToCount(iSave4);
        }
        if ((z2 || this.mItemAnimator == null || this.mItemDecorations.size() <= 0 || !this.mItemAnimator.f()) ? z2 : true) {
            Field field = r.f469a;
            AbstractC0031f.k(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0062  */
    public final boolean e(MotionEvent motionEvent) {
        boolean z2;
        int action = motionEvent.getAction();
        int size = this.mOnItemTouchListeners.size();
        for (int i2 = 0; i2 < size; i2++) {
            P p2 = this.mOnItemTouchListeners.get(i2);
            C0048n c0048n = (C0048n) p2;
            int i3 = c0048n.f703v;
            if (i3 == 1) {
                boolean zB = c0048n.b(motionEvent.getX(), motionEvent.getY());
                boolean zA = c0048n.a(motionEvent.getX(), motionEvent.getY());
                if (motionEvent.getAction() == 0 && (zB || zA)) {
                    if (zA) {
                        c0048n.f704w = 1;
                        c0048n.f697p = (int) motionEvent.getX();
                    } else if (zB) {
                        c0048n.f704w = 2;
                        c0048n.f694m = (int) motionEvent.getY();
                    }
                    c0048n.d(2);
                    z2 = true;
                } else {
                    z2 = false;
                }
            } else if (i3 == 2) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2 && action != 3) {
                this.mInterceptingOnItemTouchListener = p2;
                return true;
            }
        }
        return false;
    }

    public void ensureBottomGlow() {
        int measuredWidth;
        int measuredHeight;
        if (this.mBottomGlow != null) {
            return;
        }
        ((Z) this.mEdgeEffectFactory).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.mBottomGlow = edgeEffect;
        if (this.mClipToPadding) {
            measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        } else {
            measuredWidth = getMeasuredWidth();
            measuredHeight = getMeasuredHeight();
        }
        edgeEffect.setSize(measuredWidth, measuredHeight);
    }

    public void ensureLeftGlow() {
        int measuredHeight;
        int measuredWidth;
        if (this.mLeftGlow != null) {
            return;
        }
        ((Z) this.mEdgeEffectFactory).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.mLeftGlow = edgeEffect;
        if (this.mClipToPadding) {
            measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
            measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
        } else {
            measuredHeight = getMeasuredHeight();
            measuredWidth = getMeasuredWidth();
        }
        edgeEffect.setSize(measuredHeight, measuredWidth);
    }

    public void ensureRightGlow() {
        int measuredHeight;
        int measuredWidth;
        if (this.mRightGlow != null) {
            return;
        }
        ((Z) this.mEdgeEffectFactory).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.mRightGlow = edgeEffect;
        if (this.mClipToPadding) {
            measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
            measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
        } else {
            measuredHeight = getMeasuredHeight();
            measuredWidth = getMeasuredWidth();
        }
        edgeEffect.setSize(measuredHeight, measuredWidth);
    }

    public void ensureTopGlow() {
        int measuredWidth;
        int measuredHeight;
        if (this.mTopGlow != null) {
            return;
        }
        ((Z) this.mEdgeEffectFactory).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.mTopGlow = edgeEffect;
        if (this.mClipToPadding) {
            measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        } else {
            measuredWidth = getMeasuredWidth();
            measuredHeight = getMeasuredHeight();
        }
        edgeEffect.setSize(measuredWidth, measuredHeight);
    }

    public String exceptionLabel() {
        return " " + super.toString() + ", adapter:" + this.mAdapter + ", layout:" + this.mLayout + ", context:" + getContext();
    }

    public final void f(int[] iArr) {
        int iE = this.mChildHelper.e();
        if (iE == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MIN_VALUE;
        for (int i4 = 0; i4 < iE; i4++) {
            o childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i4));
            if (!childViewHolderInt.shouldIgnore()) {
                int layoutPosition = childViewHolderInt.getLayoutPosition();
                if (layoutPosition < i2) {
                    i2 = layoutPosition;
                }
                if (layoutPosition > i3) {
                    i3 = layoutPosition;
                }
            }
        }
        iArr[0] = i2;
        iArr[1] = i3;
    }

    public final void fillRemainingScrollValues(Y y2) {
        if (getScrollState() != 2) {
            y2.getClass();
            return;
        }
        OverScroller overScroller = this.mViewFlinger.f92c;
        overScroller.getFinalX();
        overScroller.getCurrX();
        y2.getClass();
        overScroller.getFinalY();
        overScroller.getCurrY();
    }

    public View findContainingItemView(View view) {
        Object parent;
        while (true) {
            parent = view.getParent();
            if (parent == null || parent == this || !(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    public o findContainingViewHolder(View view) {
        View viewFindContainingItemView = findContainingItemView(view);
        if (viewFindContainingItemView == null) {
            return null;
        }
        return getChildViewHolder(viewFindContainingItemView);
    }

    public o findViewHolderForAdapterPosition(int i2) {
        o oVar = null;
        if (this.mDataSetHasChangedAfterLayout) {
            return null;
        }
        int iH = this.mChildHelper.h();
        for (int i3 = 0; i3 < iH; i3++) {
            o childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i3));
            if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && getAdapterPositionInRecyclerView(childViewHolderInt) == i2) {
                if (!this.mChildHelper.j(childViewHolderInt.itemView)) {
                    return childViewHolderInt;
                }
                oVar = childViewHolderInt;
            }
        }
        return oVar;
    }

    public o findViewHolderForItemId(long j) {
        g gVar = this.mAdapter;
        o oVar = null;
        if (gVar != null && gVar.hasStableIds()) {
            int iH = this.mChildHelper.h();
            for (int i2 = 0; i2 < iH; i2++) {
                o childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i2));
                if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && childViewHolderInt.getItemId() == j) {
                    if (!this.mChildHelper.j(childViewHolderInt.itemView)) {
                        return childViewHolderInt;
                    }
                    oVar = childViewHolderInt;
                }
            }
        }
        return oVar;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002a  */
    /* JADX WARN: Code duplicated, block: B:17:0x0034  */
    /* JADX WARN: Code duplicated, block: B:22:0x0036 A[SYNTHETIC] */
    public o findViewHolderForPosition(int i2, boolean z2) {
        int iH = this.mChildHelper.h();
        o oVar = null;
        for (int i3 = 0; i3 < iH; i3++) {
            o childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i3));
            if (childViewHolderInt != null && !childViewHolderInt.isRemoved()) {
                if (z2) {
                    if (childViewHolderInt.mPosition != i2) {
                        continue;
                    } else {
                        if (this.mChildHelper.j(childViewHolderInt.itemView)) {
                            return childViewHolderInt;
                        }
                        oVar = childViewHolderInt;
                    }
                } else if (childViewHolderInt.getLayoutPosition() != i2) {
                    continue;
                } else {
                    if (this.mChildHelper.j(childViewHolderInt.itemView)) {
                        return childViewHolderInt;
                    }
                    oVar = childViewHolderInt;
                }
            }
        }
        return oVar;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x007a  */
    /* JADX WARN: Code duplicated, block: B:57:0x00bc  */
    /* JADX WARN: Multi-variable type inference failed */
    public boolean fling(int i2, int i3) {
        int iMax;
        int i4;
        j jVar = this.mLayout;
        if (jVar == null) {
            Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return false;
        }
        if (this.mLayoutSuppressed) {
            return false;
        }
        boolean zCanScrollHorizontally = jVar.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        if (!zCanScrollHorizontally || Math.abs(i2) < this.mMinFlingVelocity) {
            i2 = 0;
        }
        if (!zCanScrollVertically || Math.abs(i3) < this.mMinFlingVelocity) {
            i3 = 0;
        }
        if (i2 == 0 && i3 == 0) {
            return false;
        }
        if (i2 == 0) {
            iMax = 0;
        } else {
            EdgeEffect edgeEffect = this.mLeftGlow;
            if (edgeEffect == null || y.a.p(edgeEffect) == 0.0f) {
                EdgeEffect edgeEffect2 = this.mRightGlow;
                if (edgeEffect2 == null || y.a.p(edgeEffect2) == 0.0f) {
                    iMax = 0;
                } else if (m(this.mRightGlow, i2, getWidth())) {
                    this.mRightGlow.onAbsorb(i2);
                    i2 = 0;
                }
            } else {
                int i5 = -i2;
                if (m(this.mLeftGlow, i5, getWidth())) {
                    this.mLeftGlow.onAbsorb(i5);
                    i2 = 0;
                }
            }
            iMax = i2;
            i2 = 0;
        }
        if (i3 == 0) {
            i4 = i3;
            i3 = 0;
        } else {
            EdgeEffect edgeEffect3 = this.mTopGlow;
            if (edgeEffect3 == null || y.a.p(edgeEffect3) == 0.0f) {
                EdgeEffect edgeEffect4 = this.mBottomGlow;
                if (edgeEffect4 == null || y.a.p(edgeEffect4) == 0.0f) {
                    i4 = i3;
                    i3 = 0;
                } else if (m(this.mBottomGlow, i3, getHeight())) {
                    this.mBottomGlow.onAbsorb(i3);
                    i3 = 0;
                }
            } else {
                int i6 = -i3;
                if (m(this.mTopGlow, i6, getHeight())) {
                    this.mTopGlow.onAbsorb(i6);
                    i3 = 0;
                }
            }
            i4 = 0;
        }
        if (iMax != 0 || i3 != 0) {
            int i7 = this.mMaxFlingVelocity;
            iMax = Math.max(-i7, Math.min(iMax, i7));
            int i8 = this.mMaxFlingVelocity;
            i3 = Math.max(-i8, Math.min(i3, i8));
            this.mViewFlinger.a(iMax, i3);
        }
        if (i2 == 0 && i4 == 0) {
            return (iMax == 0 && i3 == 0) ? false : true;
        }
        float f2 = i2;
        float f3 = i4;
        if (!dispatchNestedPreFling(f2, f3)) {
            boolean z2 = zCanScrollHorizontally || zCanScrollVertically;
            dispatchNestedFling(f2, f3, z2);
            int i9 = zCanScrollHorizontally;
            if (z2) {
                if (zCanScrollVertically) {
                    i9 = (zCanScrollHorizontally ? 1 : 0) | 2;
                }
                startNestedScroll(i9, 1);
                int i10 = this.mMaxFlingVelocity;
                int iMax2 = Math.max(-i10, Math.min(i2, i10));
                int i11 = this.mMaxFlingVelocity;
                this.mViewFlinger.a(iMax2, Math.max(-i11, Math.min(i4, i11)));
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i2) {
        View viewOnFocusSearchFailed;
        int i3;
        byte b2;
        boolean z2;
        int i4 = i2;
        View viewOnInterceptFocusSearch = this.mLayout.onInterceptFocusSearch(view, i4);
        if (viewOnInterceptFocusSearch != null) {
            return viewOnInterceptFocusSearch;
        }
        boolean z3 = (this.mAdapter == null || this.mLayout == null || isComputingLayout() || this.mLayoutSuppressed) ? false : true;
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (z3 && (i4 == 2 || i4 == 1)) {
            if (this.mLayout.canScrollVertically()) {
                int i5 = i4 == 2 ? 130 : 33;
                z2 = focusFinder.findNextFocus(this, view, i5) == null;
                if (FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
                    i4 = i5;
                }
            } else {
                z2 = false;
            }
            if (!z2 && this.mLayout.canScrollHorizontally()) {
                int i6 = (this.mLayout.getLayoutDirection() == 1) ^ (i4 == 2) ? 66 : 17;
                z2 = focusFinder.findNextFocus(this, view, i6) == null;
                if (FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
                    i4 = i6;
                }
            }
            if (z2) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                startInterceptRequestLayout();
                this.mLayout.onFocusSearchFailed(view, i4, this.mRecycler, this.mState);
                stopInterceptRequestLayout(false);
            }
            viewOnFocusSearchFailed = focusFinder.findNextFocus(this, view, i4);
        } else {
            View viewFindNextFocus = focusFinder.findNextFocus(this, view, i4);
            if (viewFindNextFocus == null && z3) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                startInterceptRequestLayout();
                viewOnFocusSearchFailed = this.mLayout.onFocusSearchFailed(view, i4, this.mRecycler, this.mState);
                stopInterceptRequestLayout(false);
            } else {
                viewOnFocusSearchFailed = viewFindNextFocus;
            }
        }
        if (viewOnFocusSearchFailed != null && !viewOnFocusSearchFailed.hasFocusable()) {
            if (getFocusedChild() == null) {
                return super.focusSearch(view, i4);
            }
            k(viewOnFocusSearchFailed, null);
            return view;
        }
        if (viewOnFocusSearchFailed != null && viewOnFocusSearchFailed != this && viewOnFocusSearchFailed != view && findContainingItemView(viewOnFocusSearchFailed) != null) {
            if (view == null || findContainingItemView(view) == null) {
                return viewOnFocusSearchFailed;
            }
            this.mTempRect.set(0, 0, view.getWidth(), view.getHeight());
            this.mTempRect2.set(0, 0, viewOnFocusSearchFailed.getWidth(), viewOnFocusSearchFailed.getHeight());
            offsetDescendantRectToMyCoords(view, this.mTempRect);
            offsetDescendantRectToMyCoords(viewOnFocusSearchFailed, this.mTempRect2);
            int i7 = this.mLayout.getLayoutDirection() == 1 ? -1 : 1;
            Rect rect = this.mTempRect;
            int i8 = rect.left;
            Rect rect2 = this.mTempRect2;
            int i9 = rect2.left;
            if ((i8 < i9 || rect.right <= i9) && rect.right < rect2.right) {
                i3 = 1;
            } else {
                int i10 = rect.right;
                int i11 = rect2.right;
                i3 = ((i10 > i11 || i8 >= i11) && i8 > i9) ? -1 : 0;
            }
            int i12 = rect.top;
            int i13 = rect2.top;
            if ((i12 < i13 || rect.bottom <= i13) && rect.bottom < rect2.bottom) {
                b2 = 1;
            } else {
                int i14 = rect.bottom;
                int i15 = rect2.bottom;
                b2 = ((i14 > i15 || i12 >= i15) && i12 > i13) ? (byte) -1 : (byte) 0;
            }
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 17) {
                        if (i4 != 33) {
                            if (i4 != 66) {
                                if (i4 != 130) {
                                    StringBuilder sb = new StringBuilder("Invalid direction: ");
                                    sb.append(i4);
                                    throw new IllegalArgumentException(n.a.a(this, sb));
                                }
                                if (b2 > 0) {
                                    return viewOnFocusSearchFailed;
                                }
                            } else if (i3 > 0) {
                                return viewOnFocusSearchFailed;
                            }
                        } else if (b2 < 0) {
                            return viewOnFocusSearchFailed;
                        }
                    } else if (i3 < 0) {
                        return viewOnFocusSearchFailed;
                    }
                } else {
                    if (b2 > 0) {
                        return viewOnFocusSearchFailed;
                    }
                    if (b2 == 0 && i3 * i7 > 0) {
                        return viewOnFocusSearchFailed;
                    }
                }
            } else {
                if (b2 < 0) {
                    return viewOnFocusSearchFailed;
                }
                if (b2 == 0 && i3 * i7 < 0) {
                    return viewOnFocusSearchFailed;
                }
            }
        }
        return super.focusSearch(view, i4);
    }

    public final void g(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mScrollPointerId) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.mScrollPointerId = motionEvent.getPointerId(i2);
            int x2 = (int) (motionEvent.getX(i2) + 0.5f);
            this.mLastTouchX = x2;
            this.mInitialTouchX = x2;
            int y2 = (int) (motionEvent.getY(i2) + 0.5f);
            this.mLastTouchY = y2;
            this.mInitialTouchY = y2;
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        j jVar = this.mLayout;
        if (jVar != null) {
            return jVar.generateDefaultLayoutParams();
        }
        throw new IllegalStateException(n.a.a(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        j jVar = this.mLayout;
        if (jVar != null) {
            return jVar.generateLayoutParams(getContext(), attributeSet);
        }
        throw new IllegalStateException(n.a.a(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public g getAdapter() {
        return this.mAdapter;
    }

    public int getAdapterPositionInRecyclerView(o oVar) {
        if (oVar.hasAnyOfTheFlags(524) || !oVar.isBound()) {
            return -1;
        }
        a aVar = this.mAdapterHelper;
        int i2 = oVar.mPosition;
        ArrayList arrayList = aVar.f38b;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            C0035a c0035a = (C0035a) arrayList.get(i3);
            int i4 = c0035a.f585a;
            if (i4 != 1) {
                if (i4 == 2) {
                    int i5 = c0035a.f586b;
                    if (i5 <= i2) {
                        int i6 = c0035a.f588d;
                        if (i5 + i6 > i2) {
                            return -1;
                        }
                        i2 -= i6;
                    } else {
                        continue;
                    }
                } else if (i4 == 8) {
                    int i7 = c0035a.f586b;
                    if (i7 == i2) {
                        i2 = c0035a.f588d;
                    } else {
                        if (i7 < i2) {
                            i2--;
                        }
                        if (c0035a.f588d <= i2) {
                            i2++;
                        }
                    }
                }
            } else if (c0035a.f586b <= i2) {
                i2 += c0035a.f588d;
            }
        }
        return i2;
    }

    @Override // android.view.View
    public int getBaseline() {
        j jVar = this.mLayout;
        return jVar != null ? jVar.getBaseline() : super.getBaseline();
    }

    public long getChangedHolderKey(o oVar) {
        return this.mAdapter.hasStableIds() ? oVar.getItemId() : oVar.mPosition;
    }

    public int getChildAdapterPosition(View view) {
        o childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            return childViewHolderInt.getAbsoluteAdapterPosition();
        }
        return -1;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i2, int i3) {
        return super.getChildDrawingOrder(i2, i3);
    }

    public int getChildLayoutPosition(View view) {
        o childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            return childViewHolderInt.getLayoutPosition();
        }
        return -1;
    }

    public o getChildViewHolder(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return getChildViewHolderInt(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.mClipToPadding;
    }

    public c0 getCompatAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    public G getEdgeEffectFactory() {
        return this.mEdgeEffectFactory;
    }

    public i getItemAnimator() {
        return this.mItemAnimator;
    }

    public Rect getItemDecorInsetsForChild(View view) {
        N n2 = (N) view.getLayoutParams();
        boolean z2 = n2.f561c;
        Rect rect = n2.f560b;
        if (!z2) {
            return rect;
        }
        if (this.mState.f578g && (n2.f559a.isUpdated() || n2.f559a.isInvalid())) {
            return rect;
        }
        rect.set(0, 0, 0, 0);
        int size = this.mItemDecorations.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mTempRect.set(0, 0, 0, 0);
            this.mItemDecorations.get(i2).getItemOffsets(this.mTempRect, view, this, this.mState);
            int i3 = rect.left;
            Rect rect2 = this.mTempRect;
            rect.left = i3 + rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        n2.f561c = false;
        return rect;
    }

    public int getItemDecorationCount() {
        return this.mItemDecorations.size();
    }

    public j getLayoutManager() {
        return this.mLayout;
    }

    public int getMaxFlingVelocity() {
        return this.mMaxFlingVelocity;
    }

    public int getMinFlingVelocity() {
        return this.mMinFlingVelocity;
    }

    public long getNanoTime() {
        if (ALLOW_THREAD_GAP_WORK) {
            return System.nanoTime();
        }
        return 0L;
    }

    public O getOnFlingListener() {
        return null;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.mPreserveFocusAfterLayout;
    }

    public T getRecycledViewPool() {
        return this.mRecycler.c();
    }

    public int getScrollState() {
        return this.mScrollState;
    }

    public final void h() {
        boolean z2;
        boolean z3 = false;
        if (this.mDataSetHasChangedAfterLayout) {
            a aVar = this.mAdapterHelper;
            aVar.l(aVar.f38b);
            aVar.l(aVar.f39c);
            aVar.f42f = 0;
            if (this.mDispatchItemsChangedEvent) {
                this.mLayout.onItemsChanged(this);
            }
        }
        if (this.mItemAnimator == null || !this.mLayout.supportsPredictiveItemAnimations()) {
            this.mAdapterHelper.c();
        } else {
            this.mAdapterHelper.j();
        }
        boolean z4 = this.mItemsAddedOrRemoved || this.mItemsChanged;
        this.mState.j = this.mFirstLayoutComplete && this.mItemAnimator != null && ((z2 = this.mDataSetHasChangedAfterLayout) || z4 || this.mLayout.mRequestedSimpleAnimations) && (!z2 || this.mAdapter.hasStableIds());
        Y y2 = this.mState;
        if (y2.j && z4 && !this.mDataSetHasChangedAfterLayout && this.mItemAnimator != null && this.mLayout.supportsPredictiveItemAnimations()) {
            z3 = true;
        }
        y2.f581k = z3;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().c(0) != null;
    }

    public boolean hasPendingAdapterUpdates() {
        return !this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout || this.mAdapterHelper.g();
    }

    public final int i(int i2, float f2) {
        float fU;
        EdgeEffect edgeEffect;
        float height = f2 / getHeight();
        float width = i2 / getWidth();
        EdgeEffect edgeEffect2 = this.mLeftGlow;
        float f3 = 0.0f;
        if (edgeEffect2 == null || y.a.p(edgeEffect2) == 0.0f) {
            EdgeEffect edgeEffect3 = this.mRightGlow;
            if (edgeEffect3 != null && y.a.p(edgeEffect3) != 0.0f) {
                if (canScrollHorizontally(1)) {
                    edgeEffect = this.mRightGlow;
                    edgeEffect.onRelease();
                    invalidate();
                } else {
                    fU = y.a.u(this.mRightGlow, width, height);
                    if (y.a.p(this.mRightGlow) == 0.0f) {
                        this.mRightGlow.onRelease();
                    }
                    f3 = fU;
                    invalidate();
                }
            }
        } else if (canScrollHorizontally(-1)) {
            edgeEffect = this.mLeftGlow;
            edgeEffect.onRelease();
            invalidate();
        } else {
            fU = -y.a.u(this.mLeftGlow, -width, 1.0f - height);
            if (y.a.p(this.mLeftGlow) == 0.0f) {
                this.mLeftGlow.onRelease();
            }
            f3 = fU;
            invalidate();
        }
        return Math.round(f3 * getWidth());
    }

    public void initAdapterManager() {
        this.mAdapterHelper = new a(new f(this));
    }

    public void initFastScroller(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
            throw new IllegalArgumentException(n.a.a(this, new StringBuilder("Trying to set fast scroller without both required drawables.")));
        }
        Resources resources = getContext().getResources();
        new C0048n(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(com.sid.tvos.R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(com.sid.tvos.R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(com.sid.tvos.R.dimen.fastscroll_margin));
    }

    public void invalidateGlows() {
        this.mBottomGlow = null;
        this.mTopGlow = null;
        this.mRightGlow = null;
        this.mLeftGlow = null;
    }

    public boolean isAccessibilityEnabled() {
        AccessibilityManager accessibilityManager = this.mAccessibilityManager;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.mIsAttached;
    }

    public boolean isComputingLayout() {
        return this.mLayoutOrScrollCounter > 0;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.mLayoutSuppressed;
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().f465d;
    }

    public final int j(int i2, float f2) {
        float fU;
        EdgeEffect edgeEffect;
        float width = f2 / getWidth();
        float height = i2 / getHeight();
        EdgeEffect edgeEffect2 = this.mTopGlow;
        float f3 = 0.0f;
        if (edgeEffect2 == null || y.a.p(edgeEffect2) == 0.0f) {
            EdgeEffect edgeEffect3 = this.mBottomGlow;
            if (edgeEffect3 != null && y.a.p(edgeEffect3) != 0.0f) {
                if (canScrollVertically(1)) {
                    edgeEffect = this.mBottomGlow;
                    edgeEffect.onRelease();
                    invalidate();
                } else {
                    fU = y.a.u(this.mBottomGlow, height, 1.0f - width);
                    if (y.a.p(this.mBottomGlow) == 0.0f) {
                        this.mBottomGlow.onRelease();
                    }
                    f3 = fU;
                    invalidate();
                }
            }
        } else if (canScrollVertically(-1)) {
            edgeEffect = this.mTopGlow;
            edgeEffect.onRelease();
            invalidate();
        } else {
            fU = -y.a.u(this.mTopGlow, -height, width);
            if (y.a.p(this.mTopGlow) == 0.0f) {
                this.mTopGlow.onRelease();
            }
            f3 = fU;
            invalidate();
        }
        return Math.round(f3 * getHeight());
    }

    public void jumpToPositionForSmoothScroller(int i2) {
        if (this.mLayout == null) {
            return;
        }
        setScrollState(2);
        this.mLayout.scrollToPosition(i2);
        awakenScrollBars();
    }

    public final void k(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.mTempRect.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof N) {
            N n2 = (N) layoutParams;
            if (!n2.f561c) {
                Rect rect = this.mTempRect;
                int i2 = rect.left;
                Rect rect2 = n2.f560b;
                rect.left = i2 - rect2.left;
                rect.right += rect2.right;
                rect.top -= rect2.top;
                rect.bottom += rect2.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.mTempRect);
            offsetRectIntoDescendantCoords(view, this.mTempRect);
        }
        this.mLayout.requestChildRectangleOnScreen(this, view, this.mTempRect, !this.mFirstLayoutComplete, view2 == null);
    }

    public final void l() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        boolean zIsFinished = false;
        stopNestedScroll(0);
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            zIsFinished = this.mLeftGlow.isFinished();
        }
        EdgeEffect edgeEffect2 = this.mTopGlow;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            zIsFinished |= this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mRightGlow;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            zIsFinished |= this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            zIsFinished |= this.mBottomGlow.isFinished();
        }
        if (zIsFinished) {
            Field field = r.f469a;
            AbstractC0031f.k(this);
        }
    }

    public final boolean m(EdgeEffect edgeEffect, int i2, int i3) {
        if (i2 > 0) {
            return true;
        }
        float fP = y.a.p(edgeEffect) * i3;
        double dLog = Math.log((Math.abs(-i2) * 0.35f) / (this.mPhysicalCoef * 0.015f));
        double d2 = DECELERATION_RATE;
        return ((float) (Math.exp((d2 / (d2 - 1.0d)) * dLog) * ((double) (this.mPhysicalCoef * 0.015f)))) < fP;
    }

    public void markItemDecorInsetsDirty() {
        int iH = this.mChildHelper.h();
        for (int i2 = 0; i2 < iH; i2++) {
            ((N) this.mChildHelper.g(i2).getLayoutParams()).f561c = true;
        }
        ArrayList arrayList = this.mRecycler.f69c;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            N n2 = (N) ((o) arrayList.get(i3)).itemView.getLayoutParams();
            if (n2 != null) {
                n2.f561c = true;
            }
        }
    }

    public void markKnownViewsInvalid() {
        int iH = this.mChildHelper.h();
        for (int i2 = 0; i2 < iH; i2++) {
            o childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i2));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.addFlags(6);
            }
        }
        markItemDecorInsetsDirty();
        k kVar = this.mRecycler;
        ArrayList arrayList = kVar.f69c;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            o oVar = (o) arrayList.get(i3);
            if (oVar != null) {
                oVar.addFlags(6);
                oVar.addChangePayload(null);
            }
        }
        g gVar = kVar.f74h.mAdapter;
        if (gVar == null || !gVar.hasStableIds()) {
            kVar.g();
        }
    }

    public void offsetChildrenHorizontal(int i2) {
        int iE = this.mChildHelper.e();
        for (int i3 = 0; i3 < iE; i3++) {
            this.mChildHelper.d(i3).offsetLeftAndRight(i2);
        }
    }

    public void offsetChildrenVertical(int i2) {
        int iE = this.mChildHelper.e();
        for (int i3 = 0; i3 < iE; i3++) {
            this.mChildHelper.d(i3).offsetTopAndBottom(i2);
        }
    }

    public void offsetPositionRecordsForInsert(int i2, int i3) {
        int iH = this.mChildHelper.h();
        for (int i4 = 0; i4 < iH; i4++) {
            o childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i4));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.mPosition >= i2) {
                if (sVerboseLoggingEnabled) {
                    Log.d("RecyclerView", "offsetPositionRecordsForInsert attached child " + i4 + " holder " + childViewHolderInt + " now at position " + (childViewHolderInt.mPosition + i3));
                }
                childViewHolderInt.offsetPosition(i3, false);
                this.mState.f577f = true;
            }
        }
        ArrayList arrayList = this.mRecycler.f69c;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            o oVar = (o) arrayList.get(i5);
            if (oVar != null && oVar.mPosition >= i2) {
                if (sVerboseLoggingEnabled) {
                    Log.d("RecyclerView", "offsetPositionRecordsForInsert cached " + i5 + " holder " + oVar + " now at position " + (oVar.mPosition + i3));
                }
                oVar.offsetPosition(i3, false);
            }
        }
        requestLayout();
    }

    public void offsetPositionRecordsForMove(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int iH = this.mChildHelper.h();
        int i11 = -1;
        if (i2 < i3) {
            i5 = i2;
            i4 = i3;
            i6 = -1;
        } else {
            i4 = i2;
            i5 = i3;
            i6 = 1;
        }
        for (int i12 = 0; i12 < iH; i12++) {
            o childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i12));
            if (childViewHolderInt != null && (i10 = childViewHolderInt.mPosition) >= i5 && i10 <= i4) {
                if (sVerboseLoggingEnabled) {
                    Log.d("RecyclerView", "offsetPositionRecordsForMove attached child " + i12 + " holder " + childViewHolderInt);
                }
                if (childViewHolderInt.mPosition == i2) {
                    childViewHolderInt.offsetPosition(i3 - i2, false);
                } else {
                    childViewHolderInt.offsetPosition(i6, false);
                }
                this.mState.f577f = true;
            }
        }
        k kVar = this.mRecycler;
        kVar.getClass();
        if (i2 < i3) {
            i8 = i2;
            i7 = i3;
        } else {
            i7 = i2;
            i8 = i3;
            i11 = 1;
        }
        ArrayList arrayList = kVar.f69c;
        int size = arrayList.size();
        for (int i13 = 0; i13 < size; i13++) {
            o oVar = (o) arrayList.get(i13);
            if (oVar != null && (i9 = oVar.mPosition) >= i8 && i9 <= i7) {
                if (i9 == i2) {
                    oVar.offsetPosition(i3 - i2, false);
                } else {
                    oVar.offsetPosition(i11, false);
                }
                if (sVerboseLoggingEnabled) {
                    Log.d("RecyclerView", "offsetPositionRecordsForMove cached child " + i13 + " holder " + oVar);
                }
            }
        }
        requestLayout();
    }

    public void offsetPositionRecordsForRemove(int i2, int i3, boolean z2) {
        int i4 = i2 + i3;
        int iH = this.mChildHelper.h();
        for (int i5 = 0; i5 < iH; i5++) {
            o childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i5));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                int i6 = childViewHolderInt.mPosition;
                if (i6 >= i4) {
                    if (sVerboseLoggingEnabled) {
                        Log.d("RecyclerView", "offsetPositionRecordsForRemove attached child " + i5 + " holder " + childViewHolderInt + " now at position " + (childViewHolderInt.mPosition - i3));
                    }
                    childViewHolderInt.offsetPosition(-i3, z2);
                } else if (i6 >= i2) {
                    if (sVerboseLoggingEnabled) {
                        Log.d("RecyclerView", "offsetPositionRecordsForRemove attached child " + i5 + " holder " + childViewHolderInt + " now REMOVED");
                    }
                    childViewHolderInt.flagRemovedAndOffsetPosition(i2 - 1, -i3, z2);
                }
                this.mState.f577f = true;
            }
        }
        k kVar = this.mRecycler;
        ArrayList arrayList = kVar.f69c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            o oVar = (o) arrayList.get(size);
            if (oVar != null) {
                int i7 = oVar.mPosition;
                if (i7 >= i4) {
                    if (sVerboseLoggingEnabled) {
                        Log.d("RecyclerView", "offsetPositionRecordsForRemove cached " + size + " holder " + oVar + " now at position " + (oVar.mPosition - i3));
                    }
                    oVar.offsetPosition(-i3, z2);
                } else if (i7 >= i2) {
                    oVar.addFlags(8);
                    kVar.h(size);
                }
            }
        }
        requestLayout();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0063  */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        float refreshRate;
        super.onAttachedToWindow();
        this.mLayoutOrScrollCounter = 0;
        this.mIsAttached = true;
        this.mFirstLayoutComplete = this.mFirstLayoutComplete && !isLayoutRequested();
        this.mRecycler.e();
        j jVar = this.mLayout;
        if (jVar != null) {
            jVar.dispatchAttachedToWindow(this);
        }
        this.mPostedAnimatorRunner = false;
        if (ALLOW_THREAD_GAP_WORK) {
            ThreadLocal threadLocal = d.f52e;
            d dVar = (d) threadLocal.get();
            this.mGapWorker = dVar;
            if (dVar == null) {
                d dVar2 = new d();
                dVar2.f54a = new ArrayList();
                dVar2.f57d = new ArrayList();
                this.mGapWorker = dVar2;
                Field field = r.f469a;
                Display displayB = AbstractC0032g.b(this);
                if (isInEditMode() || displayB == null) {
                    refreshRate = 60.0f;
                } else {
                    refreshRate = displayB.getRefreshRate();
                    if (refreshRate < 30.0f) {
                        refreshRate = 60.0f;
                    }
                }
                d dVar3 = this.mGapWorker;
                dVar3.f56c = (long) (1.0E9f / refreshRate);
                threadLocal.set(dVar3);
            }
            d dVar4 = this.mGapWorker;
            dVar4.getClass();
            boolean z2 = sDebugAssertionsEnabled;
            ArrayList arrayList = dVar4.f54a;
            if (z2 && arrayList.contains(this)) {
                throw new IllegalStateException("RecyclerView already present in worker list!");
            }
            arrayList.add(this);
        }
    }

    public void onChildAttachedToWindow(View view) {
    }

    public void onChildDetachedFromWindow(View view) {
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        d dVar;
        super.onDetachedFromWindow();
        i iVar = this.mItemAnimator;
        if (iVar != null) {
            iVar.e();
        }
        stopScroll();
        int i2 = 0;
        this.mIsAttached = false;
        j jVar = this.mLayout;
        if (jVar != null) {
            jVar.dispatchDetachedFromWindow(this, this.mRecycler);
        }
        this.mPendingAccessibilityImportanceChange.clear();
        removeCallbacks(this.mItemAnimatorRunner);
        this.mViewInfoStore.getClass();
        while (m0.f679d.a() != null) {
        }
        k kVar = this.mRecycler;
        int i3 = 0;
        while (true) {
            ArrayList arrayList = kVar.f69c;
            if (i3 >= arrayList.size()) {
                break;
            }
            y.a.a(((o) arrayList.get(i3)).itemView);
            i3++;
        }
        kVar.f(kVar.f74h.mAdapter, false);
        while (i2 < getChildCount()) {
            int i4 = i2 + 1;
            View childAt = getChildAt(i2);
            if (childAt == null) {
                throw new IndexOutOfBoundsException();
            }
            n.b bVar = (n.b) childAt.getTag(com.sid.tvos.R.id.pooling_container_listener_holder_tag);
            if (bVar == null) {
                bVar = new n.b();
                childAt.setTag(com.sid.tvos.R.id.pooling_container_listener_holder_tag, bVar);
            }
            ArrayList arrayList2 = bVar.f500a;
            y.a.d(arrayList2, "<this>");
            int size = arrayList2.size() - 1;
            if (-1 < size) {
                n.a.b(arrayList2.get(size));
                throw null;
            }
            i2 = i4;
        }
        if (!ALLOW_THREAD_GAP_WORK || (dVar = this.mGapWorker) == null) {
            return;
        }
        boolean zRemove = dVar.f54a.remove(this);
        if (sDebugAssertionsEnabled && !zRemove) {
            throw new IllegalStateException("RecyclerView removal failed!");
        }
        this.mGapWorker = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.mItemDecorations.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mItemDecorations.get(i2).onDraw(canvas, this, this.mState);
        }
    }

    public void onEnterLayoutOrScroll() {
        this.mLayoutOrScrollCounter++;
    }

    public void onExitLayoutOrScroll() {
        onExitLayoutOrScroll(true);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0062  */
    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f2;
        float axisValue;
        if (this.mLayout != null && !this.mLayoutSuppressed && motionEvent.getAction() == 8) {
            if ((motionEvent.getSource() & 2) != 0) {
                f2 = this.mLayout.canScrollVertically() ? -motionEvent.getAxisValue(9) : 0.0f;
                axisValue = this.mLayout.canScrollHorizontally() ? motionEvent.getAxisValue(10) : 0.0f;
            } else if ((motionEvent.getSource() & 4194304) != 0) {
                float axisValue2 = motionEvent.getAxisValue(26);
                if (this.mLayout.canScrollVertically()) {
                    f2 = -axisValue2;
                } else if (this.mLayout.canScrollHorizontally()) {
                    axisValue = axisValue2;
                    f2 = 0.0f;
                } else {
                    f2 = 0.0f;
                }
            } else {
                f2 = 0.0f;
            }
            if (f2 != 0.0f || axisValue != 0.0f) {
                int i2 = (int) (axisValue * this.mScaledHorizontalScrollFactor);
                int i3 = (int) (f2 * this.mScaledVerticalScrollFactor);
                j jVar = this.mLayout;
                if (jVar == null) {
                    Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
                } else if (!this.mLayoutSuppressed) {
                    int[] iArr = this.mReusableIntPair;
                    iArr[0] = 0;
                    iArr[1] = 0;
                    boolean zCanScrollHorizontally = jVar.canScrollHorizontally();
                    boolean zCanScrollVertically = this.mLayout.canScrollVertically();
                    int i4 = zCanScrollVertically ? (zCanScrollHorizontally ? 1 : 0) | 2 : zCanScrollHorizontally ? 1 : 0;
                    float y2 = motionEvent.getY();
                    float x2 = motionEvent.getX();
                    int i5 = i2 - i(i2, y2);
                    int iJ = i3 - j(i3, x2);
                    startNestedScroll(i4, 1);
                    if (dispatchNestedPreScroll(zCanScrollHorizontally ? i5 : 0, zCanScrollVertically ? iJ : 0, this.mReusableIntPair, this.mScrollOffset, 1)) {
                        int[] iArr2 = this.mReusableIntPair;
                        i5 -= iArr2[0];
                        iJ -= iArr2[1];
                    }
                    scrollByInternal(zCanScrollHorizontally ? i5 : 0, zCanScrollVertically ? iJ : 0, motionEvent, 1);
                    d dVar = this.mGapWorker;
                    if (dVar != null && (i5 != 0 || iJ != 0)) {
                        dVar.a(this, i5, iJ);
                    }
                    stopNestedScroll(1);
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        boolean z3;
        if (this.mLayoutSuppressed) {
            return false;
        }
        this.mInterceptingOnItemTouchListener = null;
        if (e(motionEvent)) {
            l();
            setScrollState(0);
            return true;
        }
        j jVar = this.mLayout;
        if (jVar == null) {
            return false;
        }
        boolean zCanScrollHorizontally = jVar.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.mIgnoreMotionEventTillDown) {
                this.mIgnoreMotionEventTillDown = false;
            }
            this.mScrollPointerId = motionEvent.getPointerId(0);
            int x2 = (int) (motionEvent.getX() + 0.5f);
            this.mLastTouchX = x2;
            this.mInitialTouchX = x2;
            int y2 = (int) (motionEvent.getY() + 0.5f);
            this.mLastTouchY = y2;
            this.mInitialTouchY = y2;
            EdgeEffect edgeEffect = this.mLeftGlow;
            if (edgeEffect == null || y.a.p(edgeEffect) == 0.0f || canScrollHorizontally(-1)) {
                z2 = false;
            } else {
                y.a.u(this.mLeftGlow, 0.0f, 1.0f - (motionEvent.getY() / getHeight()));
                z2 = true;
            }
            EdgeEffect edgeEffect2 = this.mRightGlow;
            if (edgeEffect2 != null && y.a.p(edgeEffect2) != 0.0f && !canScrollHorizontally(1)) {
                y.a.u(this.mRightGlow, 0.0f, motionEvent.getY() / getHeight());
                z2 = true;
            }
            EdgeEffect edgeEffect3 = this.mTopGlow;
            if (edgeEffect3 != null && y.a.p(edgeEffect3) != 0.0f && !canScrollVertically(-1)) {
                y.a.u(this.mTopGlow, 0.0f, motionEvent.getX() / getWidth());
                z2 = true;
            }
            EdgeEffect edgeEffect4 = this.mBottomGlow;
            if (edgeEffect4 != null && y.a.p(edgeEffect4) != 0.0f && !canScrollVertically(1)) {
                y.a.u(this.mBottomGlow, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
                z2 = true;
            }
            if (z2 || this.mScrollState == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                stopNestedScroll(1);
            }
            int[] iArr = this.mNestedOffsets;
            iArr[1] = 0;
            iArr[0] = 0;
            int i2 = zCanScrollHorizontally;
            if (zCanScrollVertically) {
                i2 = (zCanScrollHorizontally ? 1 : 0) | 2;
            }
            startNestedScroll(i2, 0);
        } else if (actionMasked == 1) {
            this.mVelocityTracker.clear();
            stopNestedScroll(0);
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
            if (iFindPointerIndex < 0) {
                Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.mScrollPointerId + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x3 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
            int y3 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
            if (this.mScrollState != 1) {
                int i3 = x3 - this.mInitialTouchX;
                int i4 = y3 - this.mInitialTouchY;
                if (!zCanScrollHorizontally || Math.abs(i3) <= this.mTouchSlop) {
                    z3 = false;
                } else {
                    this.mLastTouchX = x3;
                    z3 = true;
                }
                if (zCanScrollVertically && Math.abs(i4) > this.mTouchSlop) {
                    this.mLastTouchY = y3;
                    z3 = true;
                }
                if (z3) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            l();
            setScrollState(0);
        } else if (actionMasked == 5) {
            this.mScrollPointerId = motionEvent.getPointerId(actionIndex);
            int x4 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.mLastTouchX = x4;
            this.mInitialTouchX = x4;
            int y4 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.mLastTouchY = y4;
            this.mInitialTouchY = y4;
        } else if (actionMasked == 6) {
            g(motionEvent);
        }
        return this.mScrollState == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int i6 = h.a.f423a;
        Trace.beginSection("RV OnLayout");
        dispatchLayout();
        Trace.endSection();
        this.mFirstLayoutComplete = true;
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        j jVar = this.mLayout;
        if (jVar == null) {
            defaultOnMeasure(i2, i3);
            return;
        }
        boolean z2 = false;
        if (jVar.isAutoMeasureEnabled()) {
            int mode = View.MeasureSpec.getMode(i2);
            int mode2 = View.MeasureSpec.getMode(i3);
            this.mLayout.onMeasure(this.mRecycler, this.mState, i2, i3);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z2 = true;
            }
            this.mLastAutoMeasureSkippedDueToExact = z2;
            if (z2 || this.mAdapter == null) {
                return;
            }
            if (this.mState.f575d == 1) {
                c();
            }
            this.mLayout.setMeasureSpecs(i2, i3);
            this.mState.f580i = true;
            d();
            this.mLayout.setMeasuredDimensionFromChildren(i2, i3);
            if (this.mLayout.shouldMeasureTwice()) {
                this.mLayout.setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                this.mState.f580i = true;
                d();
                this.mLayout.setMeasuredDimensionFromChildren(i2, i3);
            }
            this.mLastAutoMeasureNonExactMeasuredWidth = getMeasuredWidth();
            this.mLastAutoMeasureNonExactMeasuredHeight = getMeasuredHeight();
            return;
        }
        if (this.mHasFixedSize) {
            this.mLayout.onMeasure(this.mRecycler, this.mState, i2, i3);
            return;
        }
        if (this.mAdapterUpdateDuringMeasure) {
            startInterceptRequestLayout();
            onEnterLayoutOrScroll();
            h();
            onExitLayoutOrScroll();
            Y y2 = this.mState;
            if (y2.f581k) {
                y2.f578g = true;
            } else {
                this.mAdapterHelper.c();
                this.mState.f578g = false;
            }
            this.mAdapterUpdateDuringMeasure = false;
            stopInterceptRequestLayout(false);
        } else if (this.mState.f581k) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        g gVar = this.mAdapter;
        if (gVar != null) {
            this.mState.f576e = gVar.getItemCount();
        } else {
            this.mState.f576e = 0;
        }
        startInterceptRequestLayout();
        this.mLayout.onMeasure(this.mRecycler, this.mState, i2, i3);
        stopInterceptRequestLayout(false);
        this.mState.f578g = false;
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        if (isComputingLayout()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i2, rect);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof W)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        W w2 = (W) parcelable;
        this.mPendingSavedState = w2;
        super.onRestoreInstanceState(w2.f503a);
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        W w2 = new W(super.onSaveInstanceState());
        W w3 = this.mPendingSavedState;
        if (w3 != null) {
            w2.f571c = w3.f571c;
        } else {
            j jVar = this.mLayout;
            w2.f571c = jVar != null ? jVar.onSaveInstanceState() : null;
        }
        return w2;
    }

    public void onScrollStateChanged(int i2) {
    }

    public void onScrolled(int i2, int i3) {
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 == i4 && i3 == i5) {
            return;
        }
        invalidateGlows();
    }

    /* JADX WARN: Code duplicated, block: B:96:0x01fa A[PHI: r0
      0x01fa: PHI (r0v45 int) = (r0v34 int), (r0v49 int) binds: [B:89:0x01e5, B:94:0x01f6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zE;
        int i2;
        boolean z2;
        if (this.mLayoutSuppressed || this.mIgnoreMotionEventTillDown) {
            return false;
        }
        P p2 = this.mInterceptingOnItemTouchListener;
        if (p2 == null) {
            zE = motionEvent.getAction() == 0 ? false : e(motionEvent);
        } else {
            C0048n c0048n = (C0048n) p2;
            if (c0048n.f703v != 0) {
                if (motionEvent.getAction() == 0) {
                    boolean zB = c0048n.b(motionEvent.getX(), motionEvent.getY());
                    boolean zA = c0048n.a(motionEvent.getX(), motionEvent.getY());
                    if (zB || zA) {
                        if (zA) {
                            c0048n.f704w = 1;
                            c0048n.f697p = (int) motionEvent.getX();
                        } else if (zB) {
                            c0048n.f704w = 2;
                            c0048n.f694m = (int) motionEvent.getY();
                        }
                        c0048n.d(2);
                    }
                } else if (motionEvent.getAction() == 1 && c0048n.f703v == 2) {
                    c0048n.f694m = 0.0f;
                    c0048n.f697p = 0.0f;
                    c0048n.d(1);
                    c0048n.f704w = 0;
                } else if (motionEvent.getAction() == 2 && c0048n.f703v == 2) {
                    c0048n.e();
                    int i3 = c0048n.f704w;
                    int i4 = c0048n.f684b;
                    if (i3 == 1) {
                        float x2 = motionEvent.getX();
                        int[] iArr = c0048n.f706y;
                        iArr[0] = i4;
                        int i5 = c0048n.f698q - i4;
                        iArr[1] = i5;
                        float fMax = Math.max(i4, Math.min(i5, x2));
                        if (Math.abs(c0048n.f696o - fMax) >= 2.0f) {
                            int iC = C0048n.c(c0048n.f697p, fMax, iArr, c0048n.f700s.computeHorizontalScrollRange(), c0048n.f700s.computeHorizontalScrollOffset(), c0048n.f698q);
                            if (iC != 0) {
                                c0048n.f700s.scrollBy(iC, 0);
                            }
                            c0048n.f697p = fMax;
                        }
                    }
                    if (c0048n.f704w == 2) {
                        float y2 = motionEvent.getY();
                        int[] iArr2 = c0048n.f705x;
                        iArr2[0] = i4;
                        int i6 = c0048n.f699r - i4;
                        iArr2[1] = i6;
                        float fMax2 = Math.max(i4, Math.min(i6, y2));
                        if (Math.abs(c0048n.f693l - fMax2) >= 2.0f) {
                            int iC2 = C0048n.c(c0048n.f694m, fMax2, iArr2, c0048n.f700s.computeVerticalScrollRange(), c0048n.f700s.computeVerticalScrollOffset(), c0048n.f699r);
                            if (iC2 != 0) {
                                c0048n.f700s.scrollBy(0, iC2);
                            }
                            c0048n.f694m = fMax2;
                        }
                    }
                }
            }
            int action = motionEvent.getAction();
            if (action == 3 || action == 1) {
                this.mInterceptingOnItemTouchListener = null;
            }
            zE = true;
        }
        if (zE) {
            l();
            setScrollState(0);
            return true;
        }
        j jVar = this.mLayout;
        if (jVar == null) {
            return false;
        }
        boolean zCanScrollHorizontally = jVar.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            int[] iArr3 = this.mNestedOffsets;
            iArr3[1] = 0;
            iArr3[0] = 0;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        int[] iArr4 = this.mNestedOffsets;
        motionEventObtain.offsetLocation(iArr4[0], iArr4[1]);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                this.mVelocityTracker.addMovement(motionEventObtain);
                this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaxFlingVelocity);
                float f2 = zCanScrollHorizontally ? -this.mVelocityTracker.getXVelocity(this.mScrollPointerId) : 0.0f;
                float f3 = zCanScrollVertically ? -this.mVelocityTracker.getYVelocity(this.mScrollPointerId) : 0.0f;
                if ((f2 == 0.0f && f3 == 0.0f) || !fling((int) f2, (int) f3)) {
                    setScrollState(0);
                }
                l();
            } else if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
                if (iFindPointerIndex < 0) {
                    Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.mScrollPointerId + " not found. Did any MotionEvents get skipped?");
                    return false;
                }
                int x3 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
                int y3 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
                int iMax = this.mLastTouchX - x3;
                int iMax2 = this.mLastTouchY - y3;
                if (this.mScrollState != 1) {
                    if (zCanScrollHorizontally) {
                        int i7 = this.mTouchSlop;
                        iMax = iMax > 0 ? Math.max(0, iMax - i7) : Math.min(0, iMax + i7);
                        if (iMax != 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                    } else {
                        z2 = false;
                    }
                    if (zCanScrollVertically) {
                        int i8 = this.mTouchSlop;
                        iMax2 = iMax2 > 0 ? Math.max(0, iMax2 - i8) : Math.min(0, iMax2 + i8);
                        if (iMax2 != 0) {
                            z2 = true;
                        }
                    }
                    if (z2) {
                        setScrollState(1);
                    }
                }
                if (this.mScrollState == 1) {
                    int[] iArr5 = this.mReusableIntPair;
                    iArr5[0] = 0;
                    iArr5[1] = 0;
                    int i9 = iMax - i(iMax, motionEvent.getY());
                    int iJ = iMax2 - j(iMax2, motionEvent.getX());
                    if (dispatchNestedPreScroll(zCanScrollHorizontally ? i9 : 0, zCanScrollVertically ? iJ : 0, this.mReusableIntPair, this.mScrollOffset, 0)) {
                        int[] iArr6 = this.mReusableIntPair;
                        i9 -= iArr6[0];
                        iJ -= iArr6[1];
                        int[] iArr7 = this.mNestedOffsets;
                        int i10 = iArr7[0];
                        int[] iArr8 = this.mScrollOffset;
                        iArr7[0] = i10 + iArr8[0];
                        iArr7[1] = iArr7[1] + iArr8[1];
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    int i11 = iJ;
                    int[] iArr9 = this.mScrollOffset;
                    this.mLastTouchX = x3 - iArr9[0];
                    this.mLastTouchY = y3 - iArr9[1];
                    if (scrollByInternal(zCanScrollHorizontally ? i9 : 0, zCanScrollVertically ? i11 : 0, motionEvent, 0)) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    d dVar = this.mGapWorker;
                    if (dVar != null && (i9 != 0 || i11 != 0)) {
                        dVar.a(this, i9, i11);
                    }
                }
            } else if (actionMasked == 3) {
                l();
                setScrollState(0);
            } else if (actionMasked == 5) {
                this.mScrollPointerId = motionEvent.getPointerId(actionIndex);
                int x4 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                this.mLastTouchX = x4;
                this.mInitialTouchX = x4;
                int y4 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                this.mLastTouchY = y4;
                this.mInitialTouchY = y4;
            } else if (actionMasked == 6) {
                g(motionEvent);
            }
            motionEventObtain.recycle();
            return true;
        }
        this.mScrollPointerId = motionEvent.getPointerId(0);
        int x5 = (int) (motionEvent.getX() + 0.5f);
        this.mLastTouchX = x5;
        this.mInitialTouchX = x5;
        int y5 = (int) (motionEvent.getY() + 0.5f);
        this.mLastTouchY = y5;
        this.mInitialTouchY = y5;
        if (zCanScrollVertically) {
            i2 = zCanScrollHorizontally;
            i2 = (zCanScrollHorizontally ? 1 : 0) | 2;
        }
        i2 = zCanScrollHorizontally;
        startNestedScroll(i2, 0);
        this.mVelocityTracker.addMovement(motionEventObtain);
        motionEventObtain.recycle();
        return true;
    }

    public void postAnimationRunner() {
        if (this.mPostedAnimatorRunner || !this.mIsAttached) {
            return;
        }
        Runnable runnable = this.mItemAnimatorRunner;
        Field field = r.f469a;
        AbstractC0031f.m(this, runnable);
        this.mPostedAnimatorRunner = true;
    }

    public void processDataSetCompletelyChanged(boolean z2) {
        this.mDispatchItemsChangedEvent = z2 | this.mDispatchItemsChangedEvent;
        this.mDataSetHasChangedAfterLayout = true;
        markKnownViewsInvalid();
    }

    public void recordAnimationInfoIfBouncedHiddenView(o oVar, I i2) {
        oVar.setFlags(0, 8192);
        if (this.mState.f579h && oVar.isUpdated() && !oVar.isRemoved() && !oVar.shouldIgnore()) {
            this.mViewInfoStore.a(getChangedHolderKey(oVar), oVar);
        }
        b.j jVar = this.mViewInfoStore.f713a;
        m0 m0VarA = (m0) jVar.get(oVar);
        if (m0VarA == null) {
            m0VarA = m0.a();
            jVar.put(oVar, m0VarA);
        }
        m0VarA.f681b = i2;
        m0VarA.f680a |= 4;
    }

    public void removeAndRecycleViews() {
        i iVar = this.mItemAnimator;
        if (iVar != null) {
            iVar.e();
        }
        j jVar = this.mLayout;
        if (jVar != null) {
            jVar.removeAndRecycleAllViews(this.mRecycler);
            this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
        }
        k kVar = this.mRecycler;
        kVar.f67a.clear();
        kVar.g();
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0048  */
    /* JADX WARN: Code duplicated, block: B:25:0x005a  */
    /* JADX WARN: Instruction removed from duplicated block: B:25:0x005a, please report this as an issue */
    public boolean removeAnimatingView(View view) {
        startInterceptRequestLayout();
        b bVar = this.mChildHelper;
        C0036b c0036b = bVar.f44b;
        C c2 = bVar.f43a;
        int i2 = bVar.f46d;
        boolean z2 = true;
        if (i2 != 1) {
            if (i2 == 2) {
                throw new IllegalStateException("Cannot call removeViewIfHidden within removeViewIfHidden");
            }
            try {
                bVar.f46d = 2;
                int iIndexOfChild = c2.f548a.indexOfChild(view);
                if (iIndexOfChild == -1) {
                    bVar.k(view);
                } else if (c0036b.d(iIndexOfChild)) {
                    c0036b.f(iIndexOfChild);
                    bVar.k(view);
                    c2.a(iIndexOfChild);
                } else {
                    bVar.f46d = 0;
                }
                bVar.f46d = 0;
                if (z2) {
                    o childViewHolderInt = getChildViewHolderInt(view);
                    this.mRecycler.m(childViewHolderInt);
                    this.mRecycler.j(childViewHolderInt);
                    if (sVerboseLoggingEnabled) {
                        Log.d("RecyclerView", "after removing animated view: " + view + ", " + this);
                    }
                }
                stopInterceptRequestLayout(!z2);
                return z2;
            } catch (Throwable th) {
                bVar.f46d = 0;
                throw th;
            }
        }
        if (bVar.f47e != view) {
            throw new IllegalStateException("Cannot call removeViewIfHidden within removeView(At) for a different view");
        }
        z2 = false;
        if (z2) {
            o childViewHolderInt2 = getChildViewHolderInt(view);
            this.mRecycler.m(childViewHolderInt2);
            this.mRecycler.j(childViewHolderInt2);
            if (sVerboseLoggingEnabled) {
                Log.d("RecyclerView", "after removing animated view: " + view + ", " + this);
            }
        }
        stopInterceptRequestLayout(!z2);
        return z2;
    }

    @Override // android.view.ViewGroup
    public void removeDetachedView(View view, boolean z2) {
        o childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (childViewHolderInt.isTmpDetached()) {
                childViewHolderInt.clearTmpDetachFlag();
            } else if (!childViewHolderInt.shouldIgnore()) {
                StringBuilder sb = new StringBuilder("Called removeDetachedView with a view which is not flagged as tmp detached.");
                sb.append(childViewHolderInt);
                throw new IllegalArgumentException(n.a.a(this, sb));
            }
        } else if (sDebugAssertionsEnabled) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            throw new IllegalArgumentException(n.a.a(this, sb2));
        }
        view.clearAnimation();
        dispatchChildDetached(view);
        super.removeDetachedView(view, z2);
    }

    public void removeItemDecoration(J j) {
        j jVar = this.mLayout;
        if (jVar != null) {
            jVar.assertNotInLayoutOrScroll("Cannot remove item decoration during a scroll  or layout");
        }
        this.mItemDecorations.remove(j);
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void removeOnItemTouchListener(P p2) {
        this.mOnItemTouchListeners.remove(p2);
        if (this.mInterceptingOnItemTouchListener == p2) {
            this.mInterceptingOnItemTouchListener = null;
        }
    }

    public void removeOnScrollListener(Q q2) {
        List<Q> list = this.mScrollListeners;
        if (list != null) {
            list.remove(q2);
        }
    }

    public void repositionShadowingViews() {
        o oVar;
        int iE = this.mChildHelper.e();
        for (int i2 = 0; i2 < iE; i2++) {
            View viewD = this.mChildHelper.d(i2);
            o childViewHolder = getChildViewHolder(viewD);
            if (childViewHolder != null && (oVar = childViewHolder.mShadowingHolder) != null) {
                View view = oVar.itemView;
                int left = viewD.getLeft();
                int top = viewD.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.mLayout.onRequestChildFocus(this, this.mState, view, view2) && view2 != null) {
            k(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        return this.mLayout.requestChildRectangleOnScreen(this, view, rect, z2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z2) {
        int size = this.mOnItemTouchListeners.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mOnItemTouchListeners.get(i2).getClass();
        }
        super.requestDisallowInterceptTouchEvent(z2);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.mInterceptRequestLayoutDepth != 0 || this.mLayoutSuppressed) {
            this.mLayoutWasDefered = true;
        } else {
            super.requestLayout();
        }
    }

    public void saveOldPositions() {
        int iH = this.mChildHelper.h();
        for (int i2 = 0; i2 < iH; i2++) {
            o childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i2));
            if (sDebugAssertionsEnabled && childViewHolderInt.mPosition == -1 && !childViewHolderInt.isRemoved()) {
                throw new IllegalStateException(n.a.a(this, new StringBuilder("view holder cannot have position -1 unless it is removed")));
            }
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.saveOldPosition();
            }
        }
    }

    @Override // android.view.View
    public void scrollBy(int i2, int i3) {
        j jVar = this.mLayout;
        if (jVar == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.mLayoutSuppressed) {
            return;
        }
        boolean zCanScrollHorizontally = jVar.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        if (zCanScrollHorizontally || zCanScrollVertically) {
            if (!zCanScrollHorizontally) {
                i2 = 0;
            }
            if (!zCanScrollVertically) {
                i3 = 0;
            }
            scrollByInternal(i2, i3, null, 0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:33:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:35:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:36:0x0108 A[DONT_INVERT, PHI: r4
      0x0108: PHI (r4v9 boolean) = (r4v7 boolean), (r4v10 boolean) binds: [B:34:0x00ef, B:32:0x00eb] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:37:0x010a  */
    /* JADX WARN: Code duplicated, block: B:41:0x0112  */
    public boolean scrollByInternal(int i2, int i3, MotionEvent motionEvent, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z2;
        consumePendingUpdateOperations();
        if (this.mAdapter != null) {
            int[] iArr = this.mReusableIntPair;
            iArr[0] = 0;
            iArr[1] = 0;
            scrollStep(i2, i3, iArr);
            int[] iArr2 = this.mReusableIntPair;
            int i9 = iArr2[0];
            int i10 = iArr2[1];
            i5 = i10;
            i6 = i9;
            i7 = i2 - i9;
            i8 = i3 - i10;
        } else {
            i5 = 0;
            i6 = 0;
            i7 = 0;
            i8 = 0;
        }
        if (!this.mItemDecorations.isEmpty()) {
            invalidate();
        }
        int[] iArr3 = this.mReusableIntPair;
        iArr3[0] = 0;
        iArr3[1] = 0;
        dispatchNestedScroll(i6, i5, i7, i8, this.mScrollOffset, i4, iArr3);
        int[] iArr4 = this.mReusableIntPair;
        int i11 = iArr4[0];
        int i12 = i7 - i11;
        int i13 = iArr4[1];
        int i14 = i8 - i13;
        boolean z3 = (i11 == 0 && i13 == 0) ? false : true;
        int i15 = this.mLastTouchX;
        int[] iArr5 = this.mScrollOffset;
        int i16 = iArr5[0];
        this.mLastTouchX = i15 - i16;
        int i17 = this.mLastTouchY;
        int i18 = iArr5[1];
        this.mLastTouchY = i17 - i18;
        int[] iArr6 = this.mNestedOffsets;
        iArr6[0] = iArr6[0] + i16;
        iArr6[1] = iArr6[1] + i18;
        if (getOverScrollMode() != 2) {
            if (motionEvent != null && (motionEvent.getSource() & 8194) != 8194) {
                float x2 = motionEvent.getX();
                float f2 = i12;
                float y2 = motionEvent.getY();
                float f3 = i14;
                if (f2 < 0.0f) {
                    ensureLeftGlow();
                    y.a.u(this.mLeftGlow, (-f2) / getWidth(), 1.0f - (y2 / getHeight()));
                } else {
                    if (f2 > 0.0f) {
                        ensureRightGlow();
                        y.a.u(this.mRightGlow, f2 / getWidth(), y2 / getHeight());
                    } else {
                        z2 = false;
                    }
                    if (f3 < 0.0f) {
                        ensureTopGlow();
                        y.a.u(this.mTopGlow, (-f3) / getHeight(), x2 / getWidth());
                    } else if (f3 > 0.0f) {
                        ensureBottomGlow();
                        y.a.u(this.mBottomGlow, f3 / getHeight(), 1.0f - (x2 / getWidth()));
                    } else if (z2 || f2 != 0.0f || f3 != 0.0f) {
                        Field field = r.f469a;
                        AbstractC0031f.k(this);
                    }
                    z2 = true;
                    if (z2) {
                        Field field2 = r.f469a;
                        AbstractC0031f.k(this);
                    } else {
                        Field field3 = r.f469a;
                        AbstractC0031f.k(this);
                    }
                }
                z2 = true;
                if (f3 < 0.0f) {
                    ensureTopGlow();
                    y.a.u(this.mTopGlow, (-f3) / getHeight(), x2 / getWidth());
                } else if (f3 > 0.0f) {
                    ensureBottomGlow();
                    y.a.u(this.mBottomGlow, f3 / getHeight(), 1.0f - (x2 / getWidth()));
                } else if (z2) {
                    Field field4 = r.f469a;
                    AbstractC0031f.k(this);
                } else {
                    Field field5 = r.f469a;
                    AbstractC0031f.k(this);
                }
                z2 = true;
                if (z2) {
                    Field field6 = r.f469a;
                    AbstractC0031f.k(this);
                } else {
                    Field field7 = r.f469a;
                    AbstractC0031f.k(this);
                }
            }
            considerReleasingGlowsOnScroll(i2, i3);
        }
        if (i6 != 0 || i5 != 0) {
            dispatchOnScrolled(i6, i5);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (!z3 && i6 == 0 && i5 == 0) ? false : true;
    }

    public void scrollStep(int i2, int i3, int[] iArr) {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        int i4 = h.a.f423a;
        Trace.beginSection("RV Scroll");
        fillRemainingScrollValues(this.mState);
        int iScrollHorizontallyBy = i2 != 0 ? this.mLayout.scrollHorizontallyBy(i2, this.mRecycler, this.mState) : 0;
        int iScrollVerticallyBy = i3 != 0 ? this.mLayout.scrollVerticallyBy(i3, this.mRecycler, this.mState) : 0;
        Trace.endSection();
        repositionShadowingViews();
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        if (iArr != null) {
            iArr[0] = iScrollHorizontallyBy;
            iArr[1] = iScrollVerticallyBy;
        }
    }

    @Override // android.view.View
    public void scrollTo(int i2, int i3) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    public void scrollToPosition(int i2) {
        if (this.mLayoutSuppressed) {
            return;
        }
        stopScroll();
        j jVar = this.mLayout;
        if (jVar == null) {
            Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            jVar.scrollToPosition(i2);
            awakenScrollBars();
        }
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (shouldDeferAccessibilityEvent(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(c0 c0Var) {
        this.mAccessibilityDelegate = c0Var;
        r.b(this, c0Var);
    }

    public void setAdapter(g gVar) {
        setLayoutFrozen(false);
        g gVar2 = this.mAdapter;
        if (gVar2 != null) {
            gVar2.unregisterAdapterDataObserver(this.mObserver);
            this.mAdapter.onDetachedFromRecyclerView(this);
        }
        removeAndRecycleViews();
        a aVar = this.mAdapterHelper;
        aVar.l(aVar.f38b);
        aVar.l(aVar.f39c);
        aVar.f42f = 0;
        g gVar3 = this.mAdapter;
        this.mAdapter = gVar;
        if (gVar != null) {
            gVar.registerAdapterDataObserver(this.mObserver);
            gVar.onAttachedToRecyclerView(this);
        }
        j jVar = this.mLayout;
        if (jVar != null) {
            jVar.onAdapterChanged(gVar3, this.mAdapter);
        }
        k kVar = this.mRecycler;
        g gVar4 = this.mAdapter;
        kVar.f67a.clear();
        kVar.g();
        kVar.f(gVar3, true);
        T tC = kVar.c();
        if (gVar3 != null) {
            tC.f568b--;
        }
        if (tC.f568b == 0) {
            int i2 = 0;
            while (true) {
                SparseArray sparseArray = tC.f567a;
                if (i2 >= sparseArray.size()) {
                    break;
                }
                S s2 = (S) sparseArray.valueAt(i2);
                Iterator it = s2.f563a.iterator();
                while (it.hasNext()) {
                    y.a.a(((o) it.next()).itemView);
                }
                s2.f563a.clear();
                i2++;
            }
        }
        if (gVar4 != null) {
            tC.f568b++;
        }
        kVar.e();
        this.mState.f577f = true;
        processDataSetCompletelyChanged(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(F f2) {
        if (f2 == null) {
            return;
        }
        setChildrenDrawingOrderEnabled(false);
    }

    public boolean setChildImportantForAccessibilityInternal(o oVar, int i2) {
        if (isComputingLayout()) {
            oVar.mPendingAccessibilityState = i2;
            this.mPendingAccessibilityImportanceChange.add(oVar);
            return false;
        }
        View view = oVar.itemView;
        Field field = r.f469a;
        AbstractC0031f.s(view, i2);
        return true;
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z2) {
        if (z2 != this.mClipToPadding) {
            invalidateGlows();
        }
        this.mClipToPadding = z2;
        super.setClipToPadding(z2);
        if (this.mFirstLayoutComplete) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(G g2) {
        g2.getClass();
        this.mEdgeEffectFactory = g2;
        invalidateGlows();
    }

    public void setHasFixedSize(boolean z2) {
        this.mHasFixedSize = z2;
    }

    public void setItemAnimator(i iVar) {
        i iVar2 = this.mItemAnimator;
        if (iVar2 != null) {
            iVar2.e();
            this.mItemAnimator.f61a = null;
        }
        this.mItemAnimator = iVar;
        if (iVar != null) {
            iVar.f61a = this.mItemAnimatorListener;
        }
    }

    public void setItemViewCacheSize(int i2) {
        k kVar = this.mRecycler;
        kVar.f71e = i2;
        kVar.n();
    }

    @Deprecated
    public void setLayoutFrozen(boolean z2) {
        suppressLayout(z2);
    }

    public void setLayoutManager(j jVar) {
        C c2;
        if (jVar == this.mLayout) {
            return;
        }
        stopScroll();
        if (this.mLayout != null) {
            i iVar = this.mItemAnimator;
            if (iVar != null) {
                iVar.e();
            }
            this.mLayout.removeAndRecycleAllViews(this.mRecycler);
            this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
            k kVar = this.mRecycler;
            kVar.f67a.clear();
            kVar.g();
            if (this.mIsAttached) {
                this.mLayout.dispatchDetachedFromWindow(this, this.mRecycler);
            }
            this.mLayout.setRecyclerView(null);
            this.mLayout = null;
        } else {
            k kVar2 = this.mRecycler;
            kVar2.f67a.clear();
            kVar2.g();
        }
        b bVar = this.mChildHelper;
        bVar.f44b.g();
        ArrayList arrayList = bVar.f45c;
        int size = arrayList.size();
        while (true) {
            size--;
            c2 = bVar.f43a;
            if (size < 0) {
                break;
            }
            View view = (View) arrayList.get(size);
            c2.getClass();
            o childViewHolderInt = getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                childViewHolderInt.onLeftHiddenState(c2.f548a);
            }
            arrayList.remove(size);
        }
        RecyclerView recyclerView = c2.f548a;
        int childCount = recyclerView.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerView.getChildAt(i2);
            recyclerView.dispatchChildDetached(childAt);
            childAt.clearAnimation();
        }
        recyclerView.removeAllViews();
        this.mLayout = jVar;
        if (jVar != null) {
            if (jVar.mRecyclerView != null) {
                StringBuilder sb = new StringBuilder("LayoutManager ");
                sb.append(jVar);
                sb.append(" is already attached to a RecyclerView:");
                throw new IllegalArgumentException(n.a.a(jVar.mRecyclerView, sb));
            }
            jVar.setRecyclerView(this);
            if (this.mIsAttached) {
                this.mLayout.dispatchAttachedToWindow(this);
            }
        }
        this.mRecycler.n();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition != null) {
            throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
        super.setLayoutTransition(null);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z2) {
        C0029d scrollingChildHelper = getScrollingChildHelper();
        if (scrollingChildHelper.f465d) {
            Field field = r.f469a;
            k.j.z(scrollingChildHelper.f464c);
        }
        scrollingChildHelper.f465d = z2;
    }

    @Deprecated
    public void setOnScrollListener(Q q2) {
        this.mScrollListener = q2;
    }

    public void setPreserveFocusAfterLayout(boolean z2) {
        this.mPreserveFocusAfterLayout = z2;
    }

    public void setRecycledViewPool(T t2) {
        k kVar = this.mRecycler;
        RecyclerView recyclerView = kVar.f74h;
        kVar.f(recyclerView.mAdapter, false);
        T t3 = kVar.f73g;
        if (t3 != null) {
            t3.f568b--;
        }
        kVar.f73g = t2;
        if (t2 != null && recyclerView.getAdapter() != null) {
            kVar.f73g.f568b++;
        }
        kVar.e();
    }

    public void setScrollState(int i2) {
        if (i2 == this.mScrollState) {
            return;
        }
        if (sVerboseLoggingEnabled) {
            Log.d("RecyclerView", "setting scroll state to " + i2 + " from " + this.mScrollState, new Exception());
        }
        this.mScrollState = i2;
        if (i2 != 2) {
            n nVar = this.mViewFlinger;
            nVar.f96g.removeCallbacks(nVar);
            nVar.f92c.abortAnimation();
            j jVar = this.mLayout;
            if (jVar != null) {
                jVar.stopSmoothScroller();
            }
        }
        dispatchOnScrollStateChanged(i2);
    }

    public void setScrollingTouchSlop(int i2) {
        int scaledTouchSlop;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i2 == 0) {
            scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
        } else if (i2 != 1) {
            Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i2 + "; using default value");
            scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
        } else {
            scaledTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
        }
        this.mTouchSlop = scaledTouchSlop;
    }

    public void setViewCacheExtension(a0 a0Var) {
        this.mRecycler.getClass();
    }

    public boolean shouldDeferAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (!isComputingLayout()) {
            return false;
        }
        int contentChangeTypes = accessibilityEvent != null ? accessibilityEvent.getContentChangeTypes() : 0;
        this.mEatenAccessibilityChangeFlags |= contentChangeTypes != 0 ? contentChangeTypes : 0;
        return true;
    }

    public void smoothScrollBy(int i2, int i3) {
        smoothScrollBy(i2, i3, null);
    }

    public void smoothScrollToPosition(int i2) {
        if (this.mLayoutSuppressed) {
            return;
        }
        j jVar = this.mLayout;
        if (jVar == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            jVar.smoothScrollToPosition(this, this.mState, i2);
        }
    }

    public void startInterceptRequestLayout() {
        int i2 = this.mInterceptRequestLayoutDepth + 1;
        this.mInterceptRequestLayoutDepth = i2;
        if (i2 != 1 || this.mLayoutSuppressed) {
            return;
        }
        this.mLayoutWasDefered = false;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i2) {
        return getScrollingChildHelper().d(i2, 0);
    }

    public void stopInterceptRequestLayout(boolean z2) {
        if (this.mInterceptRequestLayoutDepth < 1) {
            if (sDebugAssertionsEnabled) {
                throw new IllegalStateException(n.a.a(this, new StringBuilder("stopInterceptRequestLayout was called more times than startInterceptRequestLayout.")));
            }
            this.mInterceptRequestLayoutDepth = 1;
        }
        if (!z2 && !this.mLayoutSuppressed) {
            this.mLayoutWasDefered = false;
        }
        if (this.mInterceptRequestLayoutDepth == 1) {
            if (z2 && this.mLayoutWasDefered && !this.mLayoutSuppressed && this.mLayout != null && this.mAdapter != null) {
                dispatchLayout();
            }
            if (!this.mLayoutSuppressed) {
                this.mLayoutWasDefered = false;
            }
        }
        this.mInterceptRequestLayoutDepth--;
    }

    @Override // android.view.View
    public void stopNestedScroll() {
        getScrollingChildHelper().e(0);
    }

    public void stopScroll() {
        setScrollState(0);
        n nVar = this.mViewFlinger;
        nVar.f96g.removeCallbacks(nVar);
        nVar.f92c.abortAnimation();
        j jVar = this.mLayout;
        if (jVar != null) {
            jVar.stopSmoothScroller();
        }
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z2) {
        if (z2 != this.mLayoutSuppressed) {
            assertNotInLayoutOrScroll("Do not suppressLayout in layout or scroll");
            if (z2) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0));
                this.mLayoutSuppressed = true;
                this.mIgnoreMotionEventTillDown = true;
                stopScroll();
                return;
            }
            this.mLayoutSuppressed = false;
            if (this.mLayoutWasDefered && this.mLayout != null && this.mAdapter != null) {
                requestLayout();
            }
            this.mLayoutWasDefered = false;
        }
    }

    public void viewRangeUpdate(int i2, int i3, Object obj) {
        int i4;
        int i5;
        int iH = this.mChildHelper.h();
        int i6 = i3 + i2;
        for (int i7 = 0; i7 < iH; i7++) {
            View viewG = this.mChildHelper.g(i7);
            o childViewHolderInt = getChildViewHolderInt(viewG);
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && (i5 = childViewHolderInt.mPosition) >= i2 && i5 < i6) {
                childViewHolderInt.addFlags(2);
                childViewHolderInt.addChangePayload(obj);
                ((N) viewG.getLayoutParams()).f561c = true;
            }
        }
        k kVar = this.mRecycler;
        ArrayList arrayList = kVar.f69c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            o oVar = (o) arrayList.get(size);
            if (oVar != null && (i4 = oVar.mPosition) >= i2 && i4 < i6) {
                oVar.addFlags(2);
                kVar.h(size);
            }
        }
    }

    public void addItemDecoration(J j, int i2) {
        j jVar = this.mLayout;
        if (jVar != null) {
            jVar.assertNotInLayoutOrScroll("Cannot add item decoration during a scroll  or layout");
        }
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i2 < 0) {
            this.mItemDecorations.add(j);
        } else {
            this.mItemDecorations.add(i2, j);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2, int i4) {
        return getScrollingChildHelper().a(i2, i3, iArr, iArr2, i4);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        return getScrollingChildHelper().b(i2, i3, i4, i5, iArr, 0, null);
    }

    public void onExitLayoutOrScroll(boolean z2) {
        int i2 = this.mLayoutOrScrollCounter - 1;
        this.mLayoutOrScrollCounter = i2;
        if (i2 < 1) {
            if (sDebugAssertionsEnabled && i2 < 0) {
                throw new IllegalStateException(n.a.a(this, new StringBuilder("layout or scroll counter cannot go below zero.Some calls are not matching")));
            }
            this.mLayoutOrScrollCounter = 0;
            if (z2) {
                int i3 = this.mEatenAccessibilityChangeFlags;
                this.mEatenAccessibilityChangeFlags = 0;
                if (i3 != 0 && isAccessibilityEnabled()) {
                    AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                    accessibilityEventObtain.setEventType(2048);
                    accessibilityEventObtain.setContentChangeTypes(i3);
                    sendAccessibilityEventUnchecked(accessibilityEventObtain);
                }
                dispatchPendingImportantForAccessibilityChanges();
            }
        }
    }

    public void smoothScrollBy(int i2, int i3, Interpolator interpolator) {
        smoothScrollBy(i2, i3, interpolator, Integer.MIN_VALUE);
    }

    public boolean startNestedScroll(int i2, int i3) {
        return getScrollingChildHelper().d(i2, i3);
    }

    public void stopNestedScroll(int i2) {
        getScrollingChildHelper().e(i2);
    }

    public void smoothScrollBy(int i2, int i3, Interpolator interpolator, int i4) {
        smoothScrollBy(i2, i3, interpolator, i4, false);
    }

    public void smoothScrollBy(int i2, int i3, Interpolator interpolator, int i4, boolean z2) {
        j jVar = this.mLayout;
        if (jVar == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.mLayoutSuppressed) {
            return;
        }
        if (!jVar.canScrollHorizontally()) {
            i2 = 0;
        }
        if (!this.mLayout.canScrollVertically()) {
            i3 = 0;
        }
        if (i2 == 0 && i3 == 0) {
            return;
        }
        if (i4 != Integer.MIN_VALUE && i4 <= 0) {
            scrollBy(i2, i3);
            return;
        }
        if (z2) {
            int i5 = i2 != 0 ? 1 : 0;
            if (i3 != 0) {
                i5 |= 2;
            }
            startNestedScroll(i5, 1);
        }
        this.mViewFlinger.c(i2, i3, interpolator, i4);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        j jVar = this.mLayout;
        if (jVar != null) {
            return jVar.generateLayoutParams(layoutParams);
        }
        throw new IllegalStateException(n.a.a(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    public void setOnFlingListener(O o2) {
    }

    @Deprecated
    public void setRecyclerListener(U u2) {
    }
}
