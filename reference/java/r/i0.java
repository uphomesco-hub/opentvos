package r;

import android.view.View;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f660a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f661b = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f662c = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f663d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f664e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ StaggeredGridLayoutManager f665f;

    public i0(StaggeredGridLayoutManager staggeredGridLayoutManager, int i2) {
        this.f665f = staggeredGridLayoutManager;
        this.f664e = i2;
    }

    public final void a() {
        ArrayList arrayList = this.f660a;
        View view = (View) arrayList.get(arrayList.size() - 1);
        e0 e0Var = (e0) view.getLayoutParams();
        this.f662c = this.f665f.f18c.b(view);
        e0Var.getClass();
    }

    public final void b() {
        this.f660a.clear();
        this.f661b = Integer.MIN_VALUE;
        this.f662c = Integer.MIN_VALUE;
        this.f663d = 0;
    }

    public final int c() {
        boolean z2 = this.f665f.f23h;
        ArrayList arrayList = this.f660a;
        return z2 ? e(arrayList.size() - 1, -1) : e(0, arrayList.size());
    }

    public final int d() {
        boolean z2 = this.f665f.f23h;
        ArrayList arrayList = this.f660a;
        return z2 ? e(0, arrayList.size()) : e(arrayList.size() - 1, -1);
    }

    public final int e(int i2, int i3) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.f665f;
        int iK = staggeredGridLayoutManager.f18c.k();
        int iG = staggeredGridLayoutManager.f18c.g();
        int i4 = i3 > i2 ? 1 : -1;
        while (i2 != i3) {
            View view = (View) this.f660a.get(i2);
            int iE = staggeredGridLayoutManager.f18c.e(view);
            int iB = staggeredGridLayoutManager.f18c.b(view);
            boolean z2 = iE <= iG;
            boolean z3 = iB >= iK;
            if (z2 && z3 && (iE < iK || iB > iG)) {
                return staggeredGridLayoutManager.getPosition(view);
            }
            i2 += i4;
        }
        return -1;
    }

    public final int f(int i2) {
        int i3 = this.f662c;
        if (i3 != Integer.MIN_VALUE) {
            return i3;
        }
        if (this.f660a.size() == 0) {
            return i2;
        }
        a();
        return this.f662c;
    }

    public final View g(int i2, int i3) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.f665f;
        ArrayList arrayList = this.f660a;
        View view = null;
        if (i3 != -1) {
            int size = arrayList.size() - 1;
            while (size >= 0) {
                View view2 = (View) arrayList.get(size);
                if ((staggeredGridLayoutManager.f23h && staggeredGridLayoutManager.getPosition(view2) >= i2) || ((!staggeredGridLayoutManager.f23h && staggeredGridLayoutManager.getPosition(view2) <= i2) || !view2.hasFocusable())) {
                    break;
                }
                size--;
                view = view2;
            }
        } else {
            int size2 = arrayList.size();
            int i4 = 0;
            while (i4 < size2) {
                View view3 = (View) arrayList.get(i4);
                if ((staggeredGridLayoutManager.f23h && staggeredGridLayoutManager.getPosition(view3) <= i2) || ((!staggeredGridLayoutManager.f23h && staggeredGridLayoutManager.getPosition(view3) >= i2) || !view3.hasFocusable())) {
                    break;
                }
                i4++;
                view = view3;
            }
        }
        return view;
    }

    public final int h(int i2) {
        int i3 = this.f661b;
        if (i3 != Integer.MIN_VALUE) {
            return i3;
        }
        if (this.f660a.size() == 0) {
            return i2;
        }
        View view = (View) this.f660a.get(0);
        e0 e0Var = (e0) view.getLayoutParams();
        this.f661b = this.f665f.f18c.e(view);
        e0Var.getClass();
        return this.f661b;
    }
}
