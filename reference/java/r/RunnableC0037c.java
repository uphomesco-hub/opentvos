package r;

import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: r.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0037c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f593a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f594b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0043i f595c;

    public /* synthetic */ RunnableC0037c(C0043i c0043i, ArrayList arrayList, int i2) {
        this.f593a = i2;
        this.f595c = c0043i;
        this.f594b = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f593a) {
            case 0:
                ArrayList arrayList = this.f594b;
                Iterator it = arrayList.iterator();
                while (true) {
                    boolean zHasNext = it.hasNext();
                    C0043i c0043i = this.f595c;
                    if (!zHasNext) {
                        arrayList.clear();
                        c0043i.f654m.remove(arrayList);
                    } else {
                        C0042h c0042h = (C0042h) it.next();
                        androidx.recyclerview.widget.o oVar = c0042h.f634a;
                        c0043i.getClass();
                        View view = oVar.itemView;
                        int i2 = c0042h.f637d - c0042h.f635b;
                        int i3 = c0042h.f638e - c0042h.f636c;
                        if (i2 != 0) {
                            view.animate().translationX(0.0f);
                        }
                        if (i3 != 0) {
                            view.animate().translationY(0.0f);
                        }
                        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
                        c0043i.f657p.add(oVar);
                        viewPropertyAnimatorAnimate.setDuration(c0043i.f65e).setListener(new C0039e(c0043i, oVar, i2, view, i3, viewPropertyAnimatorAnimate)).start();
                    }
                    break;
                }
                break;
            case 1:
                ArrayList arrayList2 = this.f594b;
                Iterator it2 = arrayList2.iterator();
                while (true) {
                    boolean zHasNext2 = it2.hasNext();
                    C0043i c0043i2 = this.f595c;
                    if (!zHasNext2) {
                        arrayList2.clear();
                        c0043i2.f655n.remove(arrayList2);
                    } else {
                        C0041g c0041g = (C0041g) it2.next();
                        c0043i2.getClass();
                        androidx.recyclerview.widget.o oVar2 = c0041g.f626a;
                        View view2 = oVar2 == null ? null : oVar2.itemView;
                        androidx.recyclerview.widget.o oVar3 = c0041g.f627b;
                        View view3 = oVar3 != null ? oVar3.itemView : null;
                        ArrayList arrayList3 = c0043i2.f659r;
                        long j = c0043i2.f66f;
                        if (view2 != null) {
                            ViewPropertyAnimator duration = view2.animate().setDuration(j);
                            arrayList3.add(c0041g.f626a);
                            duration.translationX(c0041g.f630e - c0041g.f628c);
                            duration.translationY(c0041g.f631f - c0041g.f629d);
                            duration.alpha(0.0f).setListener(new C0040f(c0043i2, c0041g, duration, view2, 0)).start();
                        }
                        if (view3 != null) {
                            ViewPropertyAnimator viewPropertyAnimatorAnimate2 = view3.animate();
                            arrayList3.add(c0041g.f627b);
                            viewPropertyAnimatorAnimate2.translationX(0.0f).translationY(0.0f).setDuration(j).alpha(1.0f).setListener(new C0040f(c0043i2, c0041g, viewPropertyAnimatorAnimate2, view3, 1)).start();
                        }
                        it2 = it2;
                    }
                    break;
                }
                break;
            default:
                ArrayList arrayList4 = this.f594b;
                Iterator it3 = arrayList4.iterator();
                while (true) {
                    boolean zHasNext3 = it3.hasNext();
                    C0043i c0043i3 = this.f595c;
                    if (!zHasNext3) {
                        arrayList4.clear();
                        c0043i3.f653l.remove(arrayList4);
                    } else {
                        androidx.recyclerview.widget.o oVar4 = (androidx.recyclerview.widget.o) it3.next();
                        c0043i3.getClass();
                        View view4 = oVar4.itemView;
                        ViewPropertyAnimator viewPropertyAnimatorAnimate3 = view4.animate();
                        c0043i3.f656o.add(oVar4);
                        viewPropertyAnimatorAnimate3.alpha(1.0f).setDuration(c0043i3.f63c).setListener(new C0038d(c0043i3, oVar4, view4, viewPropertyAnimatorAnimate3)).start();
                    }
                    break;
                }
                break;
        }
    }
}
