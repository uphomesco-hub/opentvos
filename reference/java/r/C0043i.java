package r;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: r.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0043i extends androidx.recyclerview.widget.i {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static TimeInterpolator f648s;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f649g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ArrayList f650h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ArrayList f651i;
    public ArrayList j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ArrayList f652k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ArrayList f653l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ArrayList f654m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ArrayList f655n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ArrayList f656o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ArrayList f657p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ArrayList f658q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public ArrayList f659r;

    public static void h(ArrayList arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((androidx.recyclerview.widget.o) arrayList.get(size)).itemView.animate().cancel();
        }
    }

    @Override // androidx.recyclerview.widget.i
    public final boolean a(androidx.recyclerview.widget.o oVar, androidx.recyclerview.widget.o oVar2, I i2, I i3) {
        int i4;
        int i5;
        int i6 = i2.f551a;
        int i7 = i2.f552b;
        if (oVar2.shouldIgnore()) {
            int i8 = i2.f551a;
            i5 = i2.f552b;
            i4 = i8;
        } else {
            i4 = i3.f551a;
            i5 = i3.f552b;
        }
        if (oVar == oVar2) {
            return g(oVar, i6, i7, i4, i5);
        }
        float translationX = oVar.itemView.getTranslationX();
        float translationY = oVar.itemView.getTranslationY();
        float alpha = oVar.itemView.getAlpha();
        l(oVar);
        oVar.itemView.setTranslationX(translationX);
        oVar.itemView.setTranslationY(translationY);
        oVar.itemView.setAlpha(alpha);
        l(oVar2);
        oVar2.itemView.setTranslationX(-((int) ((i4 - i6) - translationX)));
        oVar2.itemView.setTranslationY(-((int) ((i5 - i7) - translationY)));
        oVar2.itemView.setAlpha(0.0f);
        ArrayList arrayList = this.f652k;
        C0041g c0041g = new C0041g();
        c0041g.f626a = oVar;
        c0041g.f627b = oVar2;
        c0041g.f628c = i6;
        c0041g.f629d = i7;
        c0041g.f630e = i4;
        c0041g.f631f = i5;
        arrayList.add(c0041g);
        return true;
    }

    @Override // androidx.recyclerview.widget.i
    public final void d(androidx.recyclerview.widget.o oVar) {
        View view = oVar.itemView;
        view.animate().cancel();
        ArrayList arrayList = this.j;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (((C0042h) arrayList.get(size)).f634a == oVar) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                c(oVar);
                arrayList.remove(size);
            }
        }
        j(this.f652k, oVar);
        if (this.f650h.remove(oVar)) {
            view.setAlpha(1.0f);
            c(oVar);
        }
        if (this.f651i.remove(oVar)) {
            view.setAlpha(1.0f);
            c(oVar);
        }
        ArrayList arrayList2 = this.f655n;
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            ArrayList arrayList3 = (ArrayList) arrayList2.get(size2);
            j(arrayList3, oVar);
            if (arrayList3.isEmpty()) {
                arrayList2.remove(size2);
            }
        }
        ArrayList arrayList4 = this.f654m;
        for (int size3 = arrayList4.size() - 1; size3 >= 0; size3--) {
            ArrayList arrayList5 = (ArrayList) arrayList4.get(size3);
            for (int size4 = arrayList5.size() - 1; size4 >= 0; size4--) {
                if (((C0042h) arrayList5.get(size4)).f634a == oVar) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    c(oVar);
                    arrayList5.remove(size4);
                    if (!arrayList5.isEmpty()) {
                        break;
                    }
                    arrayList4.remove(size3);
                    break;
                }
            }
        }
        ArrayList arrayList6 = this.f653l;
        for (int size5 = arrayList6.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList7 = (ArrayList) arrayList6.get(size5);
            if (arrayList7.remove(oVar)) {
                view.setAlpha(1.0f);
                c(oVar);
                if (arrayList7.isEmpty()) {
                    arrayList6.remove(size5);
                }
            }
        }
        this.f658q.remove(oVar);
        this.f656o.remove(oVar);
        this.f659r.remove(oVar);
        this.f657p.remove(oVar);
        i();
    }

    @Override // androidx.recyclerview.widget.i
    public final void e() {
        ArrayList arrayList = this.j;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            C0042h c0042h = (C0042h) arrayList.get(size);
            View view = c0042h.f634a.itemView;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            c(c0042h.f634a);
            arrayList.remove(size);
        }
        ArrayList arrayList2 = this.f650h;
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            c((androidx.recyclerview.widget.o) arrayList2.get(size2));
            arrayList2.remove(size2);
        }
        ArrayList arrayList3 = this.f651i;
        int size3 = arrayList3.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            androidx.recyclerview.widget.o oVar = (androidx.recyclerview.widget.o) arrayList3.get(size3);
            oVar.itemView.setAlpha(1.0f);
            c(oVar);
            arrayList3.remove(size3);
        }
        ArrayList arrayList4 = this.f652k;
        for (int size4 = arrayList4.size() - 1; size4 >= 0; size4--) {
            C0041g c0041g = (C0041g) arrayList4.get(size4);
            androidx.recyclerview.widget.o oVar2 = c0041g.f626a;
            if (oVar2 != null) {
                k(c0041g, oVar2);
            }
            androidx.recyclerview.widget.o oVar3 = c0041g.f627b;
            if (oVar3 != null) {
                k(c0041g, oVar3);
            }
        }
        arrayList4.clear();
        if (f()) {
            ArrayList arrayList5 = this.f654m;
            for (int size5 = arrayList5.size() - 1; size5 >= 0; size5--) {
                ArrayList arrayList6 = (ArrayList) arrayList5.get(size5);
                for (int size6 = arrayList6.size() - 1; size6 >= 0; size6--) {
                    C0042h c0042h2 = (C0042h) arrayList6.get(size6);
                    View view2 = c0042h2.f634a.itemView;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    c(c0042h2.f634a);
                    arrayList6.remove(size6);
                    if (arrayList6.isEmpty()) {
                        arrayList5.remove(arrayList6);
                    }
                }
            }
            ArrayList arrayList7 = this.f653l;
            for (int size7 = arrayList7.size() - 1; size7 >= 0; size7--) {
                ArrayList arrayList8 = (ArrayList) arrayList7.get(size7);
                for (int size8 = arrayList8.size() - 1; size8 >= 0; size8--) {
                    androidx.recyclerview.widget.o oVar4 = (androidx.recyclerview.widget.o) arrayList8.get(size8);
                    oVar4.itemView.setAlpha(1.0f);
                    c(oVar4);
                    arrayList8.remove(size8);
                    if (arrayList8.isEmpty()) {
                        arrayList7.remove(arrayList8);
                    }
                }
            }
            ArrayList arrayList9 = this.f655n;
            for (int size9 = arrayList9.size() - 1; size9 >= 0; size9--) {
                ArrayList arrayList10 = (ArrayList) arrayList9.get(size9);
                for (int size10 = arrayList10.size() - 1; size10 >= 0; size10--) {
                    C0041g c0041g2 = (C0041g) arrayList10.get(size10);
                    androidx.recyclerview.widget.o oVar5 = c0041g2.f626a;
                    if (oVar5 != null) {
                        k(c0041g2, oVar5);
                    }
                    androidx.recyclerview.widget.o oVar6 = c0041g2.f627b;
                    if (oVar6 != null) {
                        k(c0041g2, oVar6);
                    }
                    if (arrayList10.isEmpty()) {
                        arrayList9.remove(arrayList10);
                    }
                }
            }
            h(this.f658q);
            h(this.f657p);
            h(this.f656o);
            h(this.f659r);
            ArrayList arrayList11 = this.f62b;
            if (arrayList11.size() > 0) {
                n.a.b(arrayList11.get(0));
                throw null;
            }
            arrayList11.clear();
        }
    }

    @Override // androidx.recyclerview.widget.i
    public final boolean f() {
        return (this.f651i.isEmpty() && this.f652k.isEmpty() && this.j.isEmpty() && this.f650h.isEmpty() && this.f657p.isEmpty() && this.f658q.isEmpty() && this.f656o.isEmpty() && this.f659r.isEmpty() && this.f654m.isEmpty() && this.f653l.isEmpty() && this.f655n.isEmpty()) ? false : true;
    }

    public final boolean g(androidx.recyclerview.widget.o oVar, int i2, int i3, int i4, int i5) {
        View view = oVar.itemView;
        int translationX = i2 + ((int) view.getTranslationX());
        int translationY = i3 + ((int) oVar.itemView.getTranslationY());
        l(oVar);
        int i6 = i4 - translationX;
        int i7 = i5 - translationY;
        if (i6 == 0 && i7 == 0) {
            c(oVar);
            return false;
        }
        if (i6 != 0) {
            view.setTranslationX(-i6);
        }
        if (i7 != 0) {
            view.setTranslationY(-i7);
        }
        ArrayList arrayList = this.j;
        C0042h c0042h = new C0042h();
        c0042h.f634a = oVar;
        c0042h.f635b = translationX;
        c0042h.f636c = translationY;
        c0042h.f637d = i4;
        c0042h.f638e = i5;
        arrayList.add(c0042h);
        return true;
    }

    public final void i() {
        if (f()) {
            return;
        }
        ArrayList arrayList = this.f62b;
        if (arrayList.size() <= 0) {
            arrayList.clear();
        } else {
            n.a.b(arrayList.get(0));
            throw null;
        }
    }

    public final void j(List list, androidx.recyclerview.widget.o oVar) {
        for (int size = list.size() - 1; size >= 0; size--) {
            C0041g c0041g = (C0041g) list.get(size);
            if (k(c0041g, oVar) && c0041g.f626a == null && c0041g.f627b == null) {
                list.remove(c0041g);
            }
        }
    }

    public final boolean k(C0041g c0041g, androidx.recyclerview.widget.o oVar) {
        if (c0041g.f627b == oVar) {
            c0041g.f627b = null;
        } else {
            if (c0041g.f626a != oVar) {
                return false;
            }
            c0041g.f626a = null;
        }
        oVar.itemView.setAlpha(1.0f);
        oVar.itemView.setTranslationX(0.0f);
        oVar.itemView.setTranslationY(0.0f);
        c(oVar);
        return true;
    }

    public final void l(androidx.recyclerview.widget.o oVar) {
        if (f648s == null) {
            f648s = new ValueAnimator().getInterpolator();
        }
        oVar.itemView.animate().setInterpolator(f648s);
        d(oVar);
    }
}
