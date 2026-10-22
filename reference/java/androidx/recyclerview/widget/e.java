package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewPropertyAnimator;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import k.AbstractC0031f;
import k.r;
import r.C0038d;
import r.C0041g;
import r.C0042h;
import r.C0043i;
import r.RunnableC0037c;

/* JADX INFO: loaded from: classes.dex */
public final class e implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f58a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f59b;

    public /* synthetic */ e(RecyclerView recyclerView, int i2) {
        this.f58a = i2;
        this.f59b = recyclerView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3 = this.f59b;
        switch (this.f58a) {
            case 0:
                if (recyclerView3.mFirstLayoutComplete && !recyclerView3.isLayoutRequested()) {
                    if (!recyclerView3.mIsAttached) {
                        recyclerView3.requestLayout();
                    } else if (!recyclerView3.mLayoutSuppressed) {
                        recyclerView3.consumePendingUpdateOperations();
                    } else {
                        recyclerView3.mLayoutWasDefered = true;
                    }
                    break;
                }
                break;
            default:
                i iVar = recyclerView3.mItemAnimator;
                if (iVar != null) {
                    C0043i c0043i = (C0043i) iVar;
                    ArrayList arrayList = c0043i.f650h;
                    boolean z2 = !arrayList.isEmpty();
                    ArrayList arrayList2 = c0043i.j;
                    boolean z3 = !arrayList2.isEmpty();
                    ArrayList arrayList3 = c0043i.f652k;
                    boolean z4 = !arrayList3.isEmpty();
                    ArrayList arrayList4 = c0043i.f651i;
                    boolean z5 = !arrayList4.isEmpty();
                    if (z2 || z3 || z5 || z4) {
                        Iterator it = arrayList.iterator();
                        while (true) {
                            boolean zHasNext = it.hasNext();
                            recyclerView2 = recyclerView3;
                            long j = c0043i.f64d;
                            if (zHasNext) {
                                o oVar = (o) it.next();
                                View view = oVar.itemView;
                                ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
                                c0043i.f658q.add(oVar);
                                viewPropertyAnimatorAnimate.setDuration(j).alpha(0.0f).setListener(new C0038d(c0043i, oVar, viewPropertyAnimatorAnimate, view)).start();
                                recyclerView3 = recyclerView2;
                            } else {
                                arrayList.clear();
                                if (z3) {
                                    ArrayList arrayList5 = new ArrayList();
                                    arrayList5.addAll(arrayList2);
                                    c0043i.f654m.add(arrayList5);
                                    arrayList2.clear();
                                    RunnableC0037c runnableC0037c = new RunnableC0037c(c0043i, arrayList5, 0);
                                    if (z2) {
                                        View view2 = ((C0042h) arrayList5.get(0)).f634a.itemView;
                                        Field field = r.f469a;
                                        AbstractC0031f.n(view2, runnableC0037c, j);
                                    } else {
                                        runnableC0037c.run();
                                    }
                                }
                                if (z4) {
                                    ArrayList arrayList6 = new ArrayList();
                                    arrayList6.addAll(arrayList3);
                                    c0043i.f655n.add(arrayList6);
                                    arrayList3.clear();
                                    RunnableC0037c runnableC0037c2 = new RunnableC0037c(c0043i, arrayList6, 1);
                                    if (z2) {
                                        View view3 = ((C0041g) arrayList6.get(0)).f626a.itemView;
                                        Field field2 = r.f469a;
                                        AbstractC0031f.n(view3, runnableC0037c2, j);
                                    } else {
                                        runnableC0037c2.run();
                                    }
                                }
                                if (z5) {
                                    ArrayList arrayList7 = new ArrayList();
                                    arrayList7.addAll(arrayList4);
                                    c0043i.f653l.add(arrayList7);
                                    arrayList4.clear();
                                    RunnableC0037c runnableC0037c3 = new RunnableC0037c(c0043i, arrayList7, 2);
                                    if (z2 || z3 || z4) {
                                        if (!z2) {
                                            j = 0;
                                        }
                                        long jMax = Math.max(z3 ? c0043i.f65e : 0L, z4 ? c0043i.f66f : 0L) + j;
                                        View view4 = ((o) arrayList7.get(0)).itemView;
                                        Field field3 = r.f469a;
                                        AbstractC0031f.n(view4, runnableC0037c3, jMax);
                                    } else {
                                        runnableC0037c3.run();
                                    }
                                }
                            }
                        }
                    } else {
                        recyclerView2 = recyclerView3;
                    }
                    recyclerView = recyclerView2;
                } else {
                    recyclerView = recyclerView3;
                }
                recyclerView.mPostedAnimatorRunner = false;
                break;
        }
    }
}
