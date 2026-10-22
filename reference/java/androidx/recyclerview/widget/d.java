package androidx.recyclerview.widget;

import android.os.Trace;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.TimeUnit;
import r.C0049o;
import r.Y;

/* JADX INFO: loaded from: classes.dex */
public final class d implements Runnable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ThreadLocal f52e = new ThreadLocal();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final i.b f53f = new i.b(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ArrayList f54a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f55b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f56c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ArrayList f57d;

    public static o c(RecyclerView recyclerView, int i2, long j) {
        int iH = recyclerView.mChildHelper.h();
        for (int i3 = 0; i3 < iH; i3++) {
            o childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.g(i3));
            if (childViewHolderInt.mPosition == i2 && !childViewHolderInt.isInvalid()) {
                return null;
            }
        }
        k kVar = recyclerView.mRecycler;
        try {
            recyclerView.onEnterLayoutOrScroll();
            o oVarL = kVar.l(i2, j);
            if (oVarL != null) {
                if (!oVarL.isBound() || oVarL.isInvalid()) {
                    kVar.a(oVarL, false);
                } else {
                    kVar.i(oVarL.itemView);
                }
            }
            return oVarL;
        } finally {
            recyclerView.onExitLayoutOrScroll(false);
        }
    }

    public final void a(RecyclerView recyclerView, int i2, int i3) {
        if (recyclerView.isAttachedToWindow()) {
            if (RecyclerView.sDebugAssertionsEnabled && !this.f54a.contains(recyclerView)) {
                throw new IllegalStateException("attempting to post unregistered view!");
            }
            if (this.f55b == 0) {
                this.f55b = recyclerView.getNanoTime();
                recyclerView.post(this);
            }
        }
        c cVar = recyclerView.mPrefetchRegistry;
        cVar.f48a = i2;
        cVar.f49b = i3;
    }

    /* JADX WARN: Code duplicated, block: B:64:0x011d  */
    public final void b(long j) {
        C0049o c0049o;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        C0049o c0049o2;
        ArrayList arrayList = this.f54a;
        int size = arrayList.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            RecyclerView recyclerView3 = (RecyclerView) arrayList.get(i3);
            if (recyclerView3.getWindowVisibility() == 0) {
                recyclerView3.mPrefetchRegistry.b(recyclerView3, false);
                i2 += recyclerView3.mPrefetchRegistry.f51d;
            }
        }
        ArrayList arrayList2 = this.f57d;
        arrayList2.ensureCapacity(i2);
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            RecyclerView recyclerView4 = (RecyclerView) arrayList.get(i5);
            if (recyclerView4.getWindowVisibility() == 0) {
                c cVar = recyclerView4.mPrefetchRegistry;
                int iAbs = Math.abs(cVar.f49b) + Math.abs(cVar.f48a);
                for (int i6 = 0; i6 < cVar.f51d * 2; i6 += 2) {
                    if (i4 >= arrayList2.size()) {
                        c0049o2 = new C0049o();
                        arrayList2.add(c0049o2);
                    } else {
                        c0049o2 = (C0049o) arrayList2.get(i4);
                    }
                    int[] iArr = cVar.f50c;
                    int i7 = iArr[i6 + 1];
                    c0049o2.f708a = i7 <= iAbs;
                    c0049o2.f709b = iAbs;
                    c0049o2.f710c = i7;
                    c0049o2.f711d = recyclerView4;
                    c0049o2.f712e = iArr[i6];
                    i4++;
                }
            }
        }
        Collections.sort(arrayList2, f53f);
        for (int i8 = 0; i8 < arrayList2.size() && (recyclerView = (c0049o = (C0049o) arrayList2.get(i8)).f711d) != null; i8++) {
            o oVarC = c(recyclerView, c0049o.f712e, c0049o.f708a ? Long.MAX_VALUE : j);
            if (oVarC != null && oVarC.mNestedRecyclerView != null && oVarC.isBound() && !oVarC.isInvalid() && (recyclerView2 = oVarC.mNestedRecyclerView.get()) != null) {
                if (recyclerView2.mDataSetHasChangedAfterLayout && recyclerView2.mChildHelper.h() != 0) {
                    recyclerView2.removeAndRecycleViews();
                }
                c cVar2 = recyclerView2.mPrefetchRegistry;
                cVar2.b(recyclerView2, true);
                if (cVar2.f51d != 0) {
                    try {
                        int i9 = h.a.f423a;
                        Trace.beginSection("RV Nested Prefetch");
                        Y y2 = recyclerView2.mState;
                        g gVar = recyclerView2.mAdapter;
                        y2.f575d = 1;
                        y2.f576e = gVar.getItemCount();
                        y2.f578g = false;
                        y2.f579h = false;
                        y2.f580i = false;
                        for (int i10 = 0; i10 < cVar2.f51d * 2; i10 += 2) {
                            c(recyclerView2, cVar2.f50c[i10], j);
                        }
                        Trace.endSection();
                    } catch (Throwable th) {
                        int i11 = h.a.f423a;
                        Trace.endSection();
                        throw th;
                    }
                }
            }
            c0049o.f708a = false;
            c0049o.f709b = 0;
            c0049o.f710c = 0;
            c0049o.f711d = null;
            c0049o.f712e = 0;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            int i2 = h.a.f423a;
            Trace.beginSection("RV Prefetch");
            ArrayList arrayList = this.f54a;
            if (arrayList.isEmpty()) {
                this.f55b = 0L;
                return;
            }
            int size = arrayList.size();
            long jMax = 0;
            for (int i3 = 0; i3 < size; i3++) {
                RecyclerView recyclerView = (RecyclerView) arrayList.get(i3);
                if (recyclerView.getWindowVisibility() == 0) {
                    jMax = Math.max(recyclerView.getDrawingTime(), jMax);
                }
            }
            if (jMax == 0) {
                this.f55b = 0L;
            } else {
                b(TimeUnit.MILLISECONDS.toNanos(jMax) + this.f56c);
                this.f55b = 0L;
            }
        } finally {
            this.f55b = 0L;
            int i4 = h.a.f423a;
            Trace.endSection();
        }
    }
}
