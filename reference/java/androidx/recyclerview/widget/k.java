package androidx.recyclerview.widget;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Set;
import k.AbstractC0031f;
import k.C0026a;
import k.C0027b;
import k.r;
import r.C0036b;
import r.I;
import r.N;
import r.S;
import r.T;
import r.b0;
import r.c0;

/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f67a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList f68b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f69c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f70d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f71e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f72f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public T f73g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f74h;

    public k(RecyclerView recyclerView) {
        this.f74h = recyclerView;
        ArrayList arrayList = new ArrayList();
        this.f67a = arrayList;
        this.f68b = null;
        this.f69c = new ArrayList();
        this.f70d = Collections.unmodifiableList(arrayList);
        this.f71e = 2;
        this.f72f = 2;
    }

    public static void d(ViewGroup viewGroup, boolean z2) {
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt instanceof ViewGroup) {
                d((ViewGroup) childAt, true);
            }
        }
        if (z2) {
            if (viewGroup.getVisibility() == 4) {
                viewGroup.setVisibility(0);
                viewGroup.setVisibility(4);
            } else {
                int visibility = viewGroup.getVisibility();
                viewGroup.setVisibility(4);
                viewGroup.setVisibility(visibility);
            }
        }
    }

    public final void a(o oVar, boolean z2) {
        RecyclerView.clearNestedRecyclerViewIfNotNested(oVar);
        View view = oVar.itemView;
        RecyclerView recyclerView = this.f74h;
        c0 c0Var = recyclerView.mAccessibilityDelegate;
        if (c0Var != null) {
            b0 b0Var = c0Var.f597e;
            r.b(view, b0Var instanceof b0 ? (C0027b) b0Var.f592e.remove(view) : null);
        }
        if (z2) {
            if (recyclerView.mRecyclerListeners.size() > 0) {
                n.a.b(recyclerView.mRecyclerListeners.get(0));
                throw null;
            }
            g gVar = recyclerView.mAdapter;
            if (gVar != null) {
                gVar.onViewRecycled(oVar);
            }
            if (recyclerView.mState != null) {
                recyclerView.mViewInfoStore.e(oVar);
            }
            if (RecyclerView.sVerboseLoggingEnabled) {
                Log.d("RecyclerView", "dispatchViewRecycled: " + oVar);
            }
        }
        oVar.mBindingAdapter = null;
        oVar.mOwnerRecyclerView = null;
        T tC = c();
        tC.getClass();
        int itemViewType = oVar.getItemViewType();
        ArrayList arrayList = tC.a(itemViewType).f563a;
        if (((S) tC.f567a.get(itemViewType)).f564b <= arrayList.size()) {
            y.a.a(oVar.itemView);
        } else {
            if (RecyclerView.sDebugAssertionsEnabled && arrayList.contains(oVar)) {
                throw new IllegalArgumentException("this scrap item already exists");
            }
            oVar.resetInternal();
            arrayList.add(oVar);
        }
    }

    public final int b(int i2) {
        RecyclerView recyclerView = this.f74h;
        if (i2 >= 0 && i2 < recyclerView.mState.b()) {
            return !recyclerView.mState.f578g ? i2 : recyclerView.mAdapterHelper.f(i2, 0);
        }
        throw new IndexOutOfBoundsException("invalid position " + i2 + ". State item count is " + recyclerView.mState.b() + recyclerView.exceptionLabel());
    }

    public final T c() {
        if (this.f73g == null) {
            T t2 = new T();
            t2.f567a = new SparseArray();
            t2.f568b = 0;
            t2.f569c = Collections.newSetFromMap(new IdentityHashMap());
            this.f73g = t2;
            e();
        }
        return this.f73g;
    }

    public final void e() {
        if (this.f73g != null) {
            RecyclerView recyclerView = this.f74h;
            if (recyclerView.mAdapter == null || !recyclerView.isAttachedToWindow()) {
                return;
            }
            T t2 = this.f73g;
            t2.f569c.add(recyclerView.mAdapter);
        }
    }

    public final void f(g gVar, boolean z2) {
        T t2 = this.f73g;
        if (t2 == null) {
            return;
        }
        Set set = t2.f569c;
        set.remove(gVar);
        if (set.size() != 0 || z2) {
            return;
        }
        int i2 = 0;
        while (true) {
            SparseArray sparseArray = t2.f567a;
            if (i2 >= sparseArray.size()) {
                return;
            }
            ArrayList arrayList = ((S) sparseArray.get(sparseArray.keyAt(i2))).f563a;
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                y.a.a(((o) arrayList.get(i3)).itemView);
            }
            i2++;
        }
    }

    public final void g() {
        ArrayList arrayList = this.f69c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            h(size);
        }
        arrayList.clear();
        if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
            c cVar = this.f74h.mPrefetchRegistry;
            int[] iArr = cVar.f50c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            cVar.f51d = 0;
        }
    }

    public final void h(int i2) {
        if (RecyclerView.sVerboseLoggingEnabled) {
            Log.d("RecyclerView", "Recycling cached view at index " + i2);
        }
        ArrayList arrayList = this.f69c;
        o oVar = (o) arrayList.get(i2);
        if (RecyclerView.sVerboseLoggingEnabled) {
            Log.d("RecyclerView", "CachedViewHolder to be recycled: " + oVar);
        }
        a(oVar, true);
        arrayList.remove(i2);
    }

    public final void i(View view) {
        o childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        boolean zIsTmpDetached = childViewHolderInt.isTmpDetached();
        RecyclerView recyclerView = this.f74h;
        if (zIsTmpDetached) {
            recyclerView.removeDetachedView(view, false);
        }
        if (childViewHolderInt.isScrap()) {
            childViewHolderInt.unScrap();
        } else if (childViewHolderInt.wasReturnedFromScrap()) {
            childViewHolderInt.clearReturnedFromScrapFlag();
        }
        j(childViewHolderInt);
        if (recyclerView.mItemAnimator == null || childViewHolderInt.isRecyclable()) {
            return;
        }
        recyclerView.mItemAnimator.d(childViewHolderInt);
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:56:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:58:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:61:0x00d7 A[LOOP:2: B:57:0x00cc->B:61:0x00d7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:86:0x00da A[EDGE_INSN: B:86:0x00da->B:62:0x00da BREAK  A[LOOP:1: B:53:0x00b7->B:60:0x00d4], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x00da A[EDGE_INSN: B:87:0x00da->B:62:0x00da BREAK  A[LOOP:1: B:53:0x00b7->B:60:0x00d4, LOOP_LABEL: LOOP:1: B:53:0x00b7->B:60:0x00d4], SYNTHETIC] */
    public final void j(o oVar) {
        boolean z2;
        int i2;
        int i3;
        c cVar;
        int i4;
        int i5;
        boolean zIsScrap = oVar.isScrap();
        boolean z3 = false;
        boolean z4 = true;
        RecyclerView recyclerView = this.f74h;
        if (zIsScrap || oVar.itemView.getParent() != null) {
            StringBuilder sb = new StringBuilder("Scrapped or attached views may not be recycled. isScrap:");
            sb.append(oVar.isScrap());
            sb.append(" isAttached:");
            sb.append(oVar.itemView.getParent() != null);
            sb.append(recyclerView.exceptionLabel());
            throw new IllegalArgumentException(sb.toString());
        }
        if (oVar.isTmpDetached()) {
            StringBuilder sb2 = new StringBuilder("Tmp detached view should be removed from RecyclerView before it can be recycled: ");
            sb2.append(oVar);
            throw new IllegalArgumentException(n.a.a(recyclerView, sb2));
        }
        if (oVar.shouldIgnore()) {
            throw new IllegalArgumentException(n.a.a(recyclerView, new StringBuilder("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.")));
        }
        boolean zDoesTransientStatePreventRecycling = oVar.doesTransientStatePreventRecycling();
        g gVar = recyclerView.mAdapter;
        boolean z5 = gVar != null && zDoesTransientStatePreventRecycling && gVar.onFailedToRecycleView(oVar);
        boolean z6 = RecyclerView.sDebugAssertionsEnabled;
        ArrayList arrayList = this.f69c;
        if (z6 && arrayList.contains(oVar)) {
            StringBuilder sb3 = new StringBuilder("cached view received recycle internal? ");
            sb3.append(oVar);
            throw new IllegalArgumentException(n.a.a(recyclerView, sb3));
        }
        if (z5 || oVar.isRecyclable()) {
            if (this.f72f <= 0 || oVar.hasAnyOfTheFlags(526)) {
                z2 = false;
            } else {
                int size = arrayList.size();
                if (size >= this.f72f && size > 0) {
                    h(0);
                    size--;
                }
                if (RecyclerView.ALLOW_THREAD_GAP_WORK && size > 0) {
                    c cVar2 = recyclerView.mPrefetchRegistry;
                    int i6 = oVar.mPosition;
                    if (cVar2.f50c != null) {
                        int i7 = cVar2.f51d * 2;
                        int i8 = 0;
                        while (true) {
                            if (i8 >= i7) {
                                i2 = size - 1;
                                loop1: while (i2 >= 0) {
                                    i3 = ((o) arrayList.get(i2)).mPosition;
                                    cVar = recyclerView.mPrefetchRegistry;
                                    if (cVar.f50c != null) {
                                        break;
                                    }
                                    i4 = cVar.f51d * 2;
                                    i5 = 0;
                                    while (true) {
                                        if (i5 < i4) {
                                            break loop1;
                                        } else if (cVar.f50c[i5] == i3) {
                                            break;
                                        } else {
                                            i5 += 2;
                                        }
                                    }
                                    i2--;
                                }
                                size = i2 + 1;
                            } else if (cVar2.f50c[i8] != i6) {
                                i8 += 2;
                            }
                        }
                    } else {
                        i2 = size - 1;
                        loop1: while (i2 >= 0) {
                            i3 = ((o) arrayList.get(i2)).mPosition;
                            cVar = recyclerView.mPrefetchRegistry;
                            if (cVar.f50c != null) {
                                break;
                                break;
                            }
                            i4 = cVar.f51d * 2;
                            i5 = 0;
                            while (true) {
                                if (i5 < i4) {
                                    break loop1;
                                    break loop1;
                                } else if (cVar.f50c[i5] == i3) {
                                    break;
                                } else {
                                    i5 += 2;
                                }
                            }
                            i2--;
                        }
                        size = i2 + 1;
                    }
                }
                arrayList.add(size, oVar);
                z2 = true;
            }
            if (z2) {
                z3 = z2;
            } else {
                a(oVar, true);
                z3 = z2;
            }
            recyclerView.mViewInfoStore.e(oVar);
            if (z3 && !z4 && zDoesTransientStatePreventRecycling) {
                y.a.a(oVar.itemView);
                oVar.mBindingAdapter = null;
                oVar.mOwnerRecyclerView = null;
                return;
            }
            return;
        }
        if (RecyclerView.sVerboseLoggingEnabled) {
            Log.d("RecyclerView", "trying to recycle a non-recycleable holder. Hopefully, it will re-visit here. We are still removing it from animation lists" + recyclerView.exceptionLabel());
        }
        z4 = false;
        recyclerView.mViewInfoStore.e(oVar);
        if (z3) {
        }
    }

    public final void k(View view) {
        o childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        boolean zHasAnyOfTheFlags = childViewHolderInt.hasAnyOfTheFlags(12);
        RecyclerView recyclerView = this.f74h;
        if (!zHasAnyOfTheFlags && childViewHolderInt.isUpdated() && !recyclerView.canReuseUpdatedViewHolder(childViewHolderInt)) {
            if (this.f68b == null) {
                this.f68b = new ArrayList();
            }
            childViewHolderInt.setScrapContainer(this, true);
            this.f68b.add(childViewHolderInt);
            return;
        }
        if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !recyclerView.mAdapter.hasStableIds()) {
            throw new IllegalArgumentException(n.a.a(recyclerView, new StringBuilder("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.")));
        }
        childViewHolderInt.setScrapContainer(this, false);
        this.f67a.add(childViewHolderInt);
    }

    /* JADX WARN: Code duplicated, block: B:188:0x036c A[EDGE_INSN: B:188:0x036c->B:189:0x036d BREAK  A[LOOP:6: B:183:0x0355->B:187:0x036a]] */
    /* JADX WARN: Code duplicated, block: B:297:0x0559  */
    /* JADX WARN: Code duplicated, block: B:299:0x0565  */
    /* JADX WARN: Code duplicated, block: B:301:0x056b  */
    /* JADX WARN: Code duplicated, block: B:302:0x0570  */
    /* JADX WARN: Code duplicated, block: B:305:0x0576 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:307:0x057a  */
    /* JADX WARN: Code duplicated, block: B:35:0x0081 A[EDGE_INSN: B:35:0x0081->B:36:0x0082 BREAK  A[LOOP:0: B:14:0x0027->B:20:0x0041]] */
    /* JADX WARN: Code duplicated, block: B:74:0x0125  */
    public final o l(int i2, long j) {
        boolean z2;
        o oVarCreateViewHolder;
        boolean z3;
        boolean z4;
        ViewGroup.LayoutParams layoutParams;
        N n2;
        ViewGroup.LayoutParams layoutParamsGenerateLayoutParams;
        boolean z5;
        RecyclerView recyclerViewFindNestedRecyclerView;
        o oVar;
        o oVar2;
        View view;
        int iB;
        boolean z6;
        int size;
        int iF;
        RecyclerView recyclerView = this.f74h;
        if (i2 < 0 || i2 >= recyclerView.mState.b()) {
            throw new IndexOutOfBoundsException("Invalid item position " + i2 + "(" + i2 + "). Item count:" + recyclerView.mState.b() + recyclerView.exceptionLabel());
        }
        if (recyclerView.mState.f578g) {
            ArrayList arrayList = this.f68b;
            if (arrayList != null && (size = arrayList.size()) != 0) {
                int i3 = 0;
                while (true) {
                    if (i3 >= size) {
                        if (recyclerView.mAdapter.hasStableIds() && (iF = recyclerView.mAdapterHelper.f(i2, 0)) > 0 && iF < recyclerView.mAdapter.getItemCount()) {
                            long itemId = recyclerView.mAdapter.getItemId(iF);
                            int i4 = 0;
                            while (true) {
                                if (i4 >= size) {
                                    oVarCreateViewHolder = null;
                                    break;
                                }
                                o oVar3 = (o) this.f68b.get(i4);
                                if (!oVar3.wasReturnedFromScrap() && oVar3.getItemId() == itemId) {
                                    oVar3.addFlags(32);
                                    oVarCreateViewHolder = oVar3;
                                    break;
                                }
                                i4++;
                            }
                        } else {
                            oVarCreateViewHolder = null;
                            break;
                        }
                    } else {
                        oVarCreateViewHolder = (o) this.f68b.get(i3);
                        if (!oVarCreateViewHolder.wasReturnedFromScrap() && oVarCreateViewHolder.getLayoutPosition() == i2) {
                            oVarCreateViewHolder.addFlags(32);
                            break;
                        }
                        i3++;
                    }
                }
            } else {
                oVarCreateViewHolder = null;
                break;
            }
            z2 = oVarCreateViewHolder != null;
        } else {
            z2 = false;
            oVarCreateViewHolder = null;
        }
        ArrayList arrayList2 = this.f69c;
        ArrayList arrayList3 = this.f67a;
        if (oVarCreateViewHolder == null) {
            int size2 = arrayList3.size();
            int i5 = 0;
            while (true) {
                if (i5 >= size2) {
                    b bVar = recyclerView.mChildHelper;
                    ArrayList arrayList4 = bVar.f45c;
                    int size3 = arrayList4.size();
                    int i6 = 0;
                    while (true) {
                        if (i6 >= size3) {
                            view = null;
                            break;
                        }
                        View view2 = (View) arrayList4.get(i6);
                        bVar.f43a.getClass();
                        o childViewHolderInt = RecyclerView.getChildViewHolderInt(view2);
                        if (childViewHolderInt.getLayoutPosition() == i2 && !childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved()) {
                            view = view2;
                            break;
                        }
                        i6++;
                    }
                    if (view == null) {
                        int size4 = arrayList2.size();
                        int i7 = 0;
                        while (true) {
                            if (i7 >= size4) {
                                oVarCreateViewHolder = null;
                                break;
                            }
                            oVarCreateViewHolder = (o) arrayList2.get(i7);
                            if (!oVarCreateViewHolder.isInvalid() && oVarCreateViewHolder.getLayoutPosition() == i2 && !oVarCreateViewHolder.isAttachedToTransitionOverlay()) {
                                arrayList2.remove(i7);
                                if (!RecyclerView.sVerboseLoggingEnabled) {
                                    break;
                                }
                                Log.d("RecyclerView", "getScrapOrHiddenOrCachedHolderForPosition(" + i2 + ") found match in cache: " + oVarCreateViewHolder);
                                break;
                            }
                            i7++;
                        }
                    } else {
                        o childViewHolderInt2 = RecyclerView.getChildViewHolderInt(view);
                        b bVar2 = recyclerView.mChildHelper;
                        int iIndexOfChild = bVar2.f43a.f548a.indexOfChild(view);
                        if (iIndexOfChild < 0) {
                            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
                        }
                        C0036b c0036b = bVar2.f44b;
                        if (!c0036b.d(iIndexOfChild)) {
                            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
                        }
                        c0036b.a(iIndexOfChild);
                        bVar2.k(view);
                        b bVar3 = recyclerView.mChildHelper;
                        int iIndexOfChild2 = bVar3.f43a.f548a.indexOfChild(view);
                        if (iIndexOfChild2 == -1) {
                            iB = -1;
                        } else {
                            C0036b c0036b2 = bVar3.f44b;
                            if (c0036b2.d(iIndexOfChild2)) {
                                iB = -1;
                            } else {
                                iB = iIndexOfChild2 - c0036b2.b(iIndexOfChild2);
                            }
                        }
                        if (iB == -1) {
                            StringBuilder sb = new StringBuilder("layout index should not be -1 after unhiding a view:");
                            sb.append(childViewHolderInt2);
                            throw new IllegalStateException(n.a.a(recyclerView, sb));
                        }
                        recyclerView.mChildHelper.c(iB);
                        k(view);
                        childViewHolderInt2.addFlags(8224);
                        oVarCreateViewHolder = childViewHolderInt2;
                        break;
                    }
                } else {
                    o oVar4 = (o) arrayList3.get(i5);
                    if (!oVar4.wasReturnedFromScrap() && oVar4.getLayoutPosition() == i2 && !oVar4.isInvalid() && (recyclerView.mState.f578g || !oVar4.isRemoved())) {
                        oVar4.addFlags(32);
                        oVarCreateViewHolder = oVar4;
                        break;
                    }
                    i5++;
                }
            }
            if (oVarCreateViewHolder != null) {
                if (!oVarCreateViewHolder.isRemoved()) {
                    int i8 = oVarCreateViewHolder.mPosition;
                    if (i8 < 0 || i8 >= recyclerView.mAdapter.getItemCount()) {
                        StringBuilder sb2 = new StringBuilder("Inconsistency detected. Invalid view holder adapter position");
                        sb2.append(oVarCreateViewHolder);
                        throw new IndexOutOfBoundsException(n.a.a(recyclerView, sb2));
                    }
                    z6 = (recyclerView.mState.f578g || recyclerView.mAdapter.getItemViewType(oVarCreateViewHolder.mPosition) == oVarCreateViewHolder.getItemViewType()) && (!recyclerView.mAdapter.hasStableIds() || oVarCreateViewHolder.getItemId() == recyclerView.mAdapter.getItemId(oVarCreateViewHolder.mPosition));
                } else {
                    if (RecyclerView.sDebugAssertionsEnabled && !recyclerView.mState.f578g) {
                        throw new IllegalStateException(n.a.a(recyclerView, new StringBuilder("should not receive a removed view unless it is pre layout")));
                    }
                    z6 = recyclerView.mState.f578g;
                }
                if (z6) {
                    z2 = true;
                } else {
                    oVarCreateViewHolder.addFlags(4);
                    if (oVarCreateViewHolder.isScrap()) {
                        recyclerView.removeDetachedView(oVarCreateViewHolder.itemView, false);
                        oVarCreateViewHolder.unScrap();
                    } else if (oVarCreateViewHolder.wasReturnedFromScrap()) {
                        oVarCreateViewHolder.clearReturnedFromScrapFlag();
                    }
                    j(oVarCreateViewHolder);
                    oVarCreateViewHolder = null;
                }
            }
        }
        if (oVarCreateViewHolder == null) {
            int iF2 = recyclerView.mAdapterHelper.f(i2, 0);
            if (iF2 < 0 || iF2 >= recyclerView.mAdapter.getItemCount()) {
                throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + i2 + "(offset:" + iF2 + ").state:" + recyclerView.mState.b() + recyclerView.exceptionLabel());
            }
            int itemViewType = recyclerView.mAdapter.getItemViewType(iF2);
            if (recyclerView.mAdapter.hasStableIds()) {
                long itemId2 = recyclerView.mAdapter.getItemId(iF2);
                int size5 = arrayList3.size() - 1;
                while (true) {
                    if (size5 < 0) {
                        int size6 = arrayList2.size() - 1;
                        while (true) {
                            if (size6 >= 0) {
                                o oVar5 = (o) arrayList2.get(size6);
                                if (oVar5.getItemId() != itemId2 || oVar5.isAttachedToTransitionOverlay()) {
                                    size6--;
                                } else {
                                    if (itemViewType == oVar5.getItemViewType()) {
                                        arrayList2.remove(size6);
                                        oVar2 = oVar5;
                                        break;
                                    }
                                    h(size6);
                                }
                            }
                            oVar2 = null;
                            break;
                        }
                    }
                    oVar2 = (o) arrayList3.get(size5);
                    if (oVar2.getItemId() == itemId2 && !oVar2.wasReturnedFromScrap()) {
                        if (itemViewType == oVar2.getItemViewType()) {
                            oVar2.addFlags(32);
                            if (!oVar2.isRemoved() || recyclerView.mState.f578g) {
                                break;
                                break;
                            }
                            oVar2.setFlags(2, 14);
                            break;
                        }
                        arrayList3.remove(size5);
                        recyclerView.removeDetachedView(oVar2.itemView, false);
                        o childViewHolderInt3 = RecyclerView.getChildViewHolderInt(oVar2.itemView);
                        childViewHolderInt3.mScrapContainer = null;
                        childViewHolderInt3.mInChangeScrap = false;
                        childViewHolderInt3.clearReturnedFromScrapFlag();
                        j(childViewHolderInt3);
                    }
                    size5--;
                }
                if (oVar2 != null) {
                    oVar2.mPosition = iF2;
                    oVarCreateViewHolder = oVar2;
                    z2 = true;
                } else {
                    oVarCreateViewHolder = oVar2;
                }
            }
            if (oVarCreateViewHolder == null) {
                if (RecyclerView.sVerboseLoggingEnabled) {
                    Log.d("RecyclerView", "tryGetViewHolderForPositionByDeadline(" + i2 + ") fetching from shared pool");
                }
                S s2 = (S) c().f567a.get(itemViewType);
                if (s2 == null) {
                    oVar = null;
                    break;
                }
                ArrayList arrayList5 = s2.f563a;
                if (!arrayList5.isEmpty()) {
                    int size7 = arrayList5.size() - 1;
                    while (true) {
                        if (size7 < 0) {
                            oVar = null;
                            break;
                        }
                        if (!((o) arrayList5.get(size7)).isAttachedToTransitionOverlay()) {
                            oVar = (o) arrayList5.remove(size7);
                            break;
                        }
                        size7--;
                    }
                } else {
                    oVar = null;
                    break;
                }
                if (oVar != null) {
                    oVar.resetInternal();
                    if (RecyclerView.FORCE_INVALIDATE_DISPLAY_LIST) {
                        View view3 = oVar.itemView;
                        if (view3 instanceof ViewGroup) {
                            d((ViewGroup) view3, false);
                        }
                    }
                }
                oVarCreateViewHolder = oVar;
            }
            if (oVarCreateViewHolder == null) {
                long nanoTime = recyclerView.getNanoTime();
                if (j != Long.MAX_VALUE) {
                    long j2 = this.f73g.a(itemViewType).f565c;
                    if (!(j2 == 0 || j2 + nanoTime < j)) {
                        return null;
                    }
                }
                oVarCreateViewHolder = recyclerView.mAdapter.createViewHolder(recyclerView, itemViewType);
                if (RecyclerView.ALLOW_THREAD_GAP_WORK && (recyclerViewFindNestedRecyclerView = RecyclerView.findNestedRecyclerView(oVarCreateViewHolder.itemView)) != null) {
                    oVarCreateViewHolder.mNestedRecyclerView = new WeakReference<>(recyclerViewFindNestedRecyclerView);
                }
                long nanoTime2 = recyclerView.getNanoTime() - nanoTime;
                S sA = this.f73g.a(itemViewType);
                long j3 = sA.f565c;
                if (j3 != 0) {
                    nanoTime2 = (nanoTime2 / 4) + ((j3 / 4) * 3);
                }
                sA.f565c = nanoTime2;
                if (RecyclerView.sVerboseLoggingEnabled) {
                    Log.d("RecyclerView", "tryGetViewHolderForPositionByDeadline created new ViewHolder");
                }
            }
        }
        if (z2 && !recyclerView.mState.f578g && oVarCreateViewHolder.hasAnyOfTheFlags(8192)) {
            oVarCreateViewHolder.setFlags(0, 8192);
            if (recyclerView.mState.j) {
                i.b(oVarCreateViewHolder);
                i iVar = recyclerView.mItemAnimator;
                oVarCreateViewHolder.getUnmodifiedPayloads();
                iVar.getClass();
                I i9 = new I();
                i9.a(oVarCreateViewHolder);
                recyclerView.recordAnimationInfoIfBouncedHiddenView(oVarCreateViewHolder, i9);
            }
        }
        if (!recyclerView.mState.f578g || !oVarCreateViewHolder.isBound()) {
            if (!oVarCreateViewHolder.isBound() || oVarCreateViewHolder.needsUpdate() || oVarCreateViewHolder.isInvalid()) {
                if (RecyclerView.sDebugAssertionsEnabled && oVarCreateViewHolder.isRemoved()) {
                    StringBuilder sb3 = new StringBuilder("Removed holder should be bound and it should come here only in pre-layout. Holder: ");
                    sb3.append(oVarCreateViewHolder);
                    throw new IllegalStateException(n.a.a(recyclerView, sb3));
                }
                int iF3 = recyclerView.mAdapterHelper.f(i2, 0);
                C0027b c0027b = null;
                oVarCreateViewHolder.mBindingAdapter = null;
                oVarCreateViewHolder.mOwnerRecyclerView = recyclerView;
                int itemViewType2 = oVarCreateViewHolder.getItemViewType();
                long nanoTime3 = recyclerView.getNanoTime();
                if (j != Long.MAX_VALUE) {
                    long j4 = this.f73g.a(itemViewType2).f566d;
                    if (j4 == 0 || j4 + nanoTime3 < j) {
                    }
                }
                if (oVarCreateViewHolder.isTmpDetached()) {
                    recyclerView.attachViewToParent(oVarCreateViewHolder.itemView, recyclerView.getChildCount(), oVarCreateViewHolder.itemView.getLayoutParams());
                    z3 = true;
                } else {
                    z3 = false;
                }
                recyclerView.mAdapter.bindViewHolder(oVarCreateViewHolder, iF3);
                if (z3) {
                    recyclerView.detachViewFromParent(oVarCreateViewHolder.itemView);
                }
                long nanoTime4 = recyclerView.getNanoTime() - nanoTime3;
                S sA2 = this.f73g.a(oVarCreateViewHolder.getItemViewType());
                long j5 = sA2.f566d;
                if (j5 != 0) {
                    nanoTime4 = (nanoTime4 / 4) + ((j5 / 4) * 3);
                }
                sA2.f566d = nanoTime4;
                if (recyclerView.isAccessibilityEnabled()) {
                    View view4 = oVarCreateViewHolder.itemView;
                    Field field = r.f469a;
                    if (AbstractC0031f.c(view4) == 0) {
                        AbstractC0031f.s(view4, 1);
                    }
                    c0 c0Var = recyclerView.mAccessibilityDelegate;
                    if (c0Var != null) {
                        b0 b0Var = c0Var.f597e;
                        if (b0Var instanceof b0) {
                            b0Var.getClass();
                            View.AccessibilityDelegate accessibilityDelegateA = r.a(view4);
                            if (accessibilityDelegateA != null) {
                                c0027b = accessibilityDelegateA instanceof C0026a ? ((C0026a) accessibilityDelegateA).f457a : new C0027b(accessibilityDelegateA);
                            }
                            if (c0027b != null && c0027b != b0Var) {
                                b0Var.f592e.put(view4, c0027b);
                            }
                        }
                        r.b(view4, b0Var);
                    }
                }
                if (recyclerView.mState.f578g) {
                    oVarCreateViewHolder.mPreLayoutPosition = i2;
                }
                z4 = true;
            }
            layoutParams = oVarCreateViewHolder.itemView.getLayoutParams();
            if (layoutParams == null) {
                if (recyclerView.checkLayoutParams(layoutParams)) {
                    n2 = (N) layoutParams;
                } else {
                    layoutParamsGenerateLayoutParams = recyclerView.generateLayoutParams(layoutParams);
                }
                n2.f559a = oVarCreateViewHolder;
                if (z2 || !z4) {
                    z5 = false;
                } else {
                    z5 = true;
                }
                n2.f562d = z5;
                return oVarCreateViewHolder;
            }
            layoutParamsGenerateLayoutParams = recyclerView.generateDefaultLayoutParams();
            n2 = (N) layoutParamsGenerateLayoutParams;
            oVarCreateViewHolder.itemView.setLayoutParams(n2);
            n2.f559a = oVarCreateViewHolder;
            if (z2) {
                z5 = false;
            } else {
                z5 = false;
            }
            n2.f562d = z5;
            return oVarCreateViewHolder;
        }
        oVarCreateViewHolder.mPreLayoutPosition = i2;
        z4 = false;
        layoutParams = oVarCreateViewHolder.itemView.getLayoutParams();
        if (layoutParams == null) {
            if (recyclerView.checkLayoutParams(layoutParams)) {
                layoutParamsGenerateLayoutParams = recyclerView.generateLayoutParams(layoutParams);
            } else {
                n2 = (N) layoutParams;
            }
            n2.f559a = oVarCreateViewHolder;
            if (z2) {
                z5 = false;
            } else {
                z5 = false;
            }
            n2.f562d = z5;
            return oVarCreateViewHolder;
        }
        layoutParamsGenerateLayoutParams = recyclerView.generateDefaultLayoutParams();
        n2 = (N) layoutParamsGenerateLayoutParams;
        oVarCreateViewHolder.itemView.setLayoutParams(n2);
        n2.f559a = oVarCreateViewHolder;
        if (z2) {
            z5 = false;
        } else {
            z5 = false;
        }
        n2.f562d = z5;
        return oVarCreateViewHolder;
    }

    public final void m(o oVar) {
        (oVar.mInChangeScrap ? this.f68b : this.f67a).remove(oVar);
        oVar.mScrapContainer = null;
        oVar.mInChangeScrap = false;
        oVar.clearReturnedFromScrapFlag();
    }

    public final void n() {
        j jVar = this.f74h.mLayout;
        this.f72f = this.f71e + (jVar != null ? jVar.mPrefetchMaxCountObserved : 0);
        ArrayList arrayList = this.f69c;
        for (int size = arrayList.size() - 1; size >= 0 && arrayList.size() > this.f72f; size--) {
            h(size);
        }
    }
}
