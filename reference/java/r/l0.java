package r;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k0 f676a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final j0 f677b;

    public l0(k0 k0Var) {
        this.f676a = k0Var;
        j0 j0Var = new j0();
        j0Var.f668a = 0;
        this.f677b = j0Var;
    }

    public final View a(int i2, int i3, int i4, int i5) {
        k0 k0Var = this.f676a;
        int iC = k0Var.c();
        int iA = k0Var.a();
        int i6 = i3 > i2 ? 1 : -1;
        View view = null;
        while (i2 != i3) {
            View viewE = k0Var.e(i2);
            int iB = k0Var.b(viewE);
            int iD = k0Var.d(viewE);
            j0 j0Var = this.f677b;
            j0Var.f669b = iC;
            j0Var.f670c = iA;
            j0Var.f671d = iB;
            j0Var.f672e = iD;
            if (i4 != 0) {
                j0Var.f668a = i4;
                if (j0Var.a()) {
                    return viewE;
                }
            }
            if (i5 != 0) {
                j0Var.f668a = i5;
                if (j0Var.a()) {
                    view = viewE;
                }
            }
            i2 += i6;
        }
        return view;
    }

    public final boolean b(View view) {
        k0 k0Var = this.f676a;
        int iC = k0Var.c();
        int iA = k0Var.a();
        int iB = k0Var.b(view);
        int iD = k0Var.d(view);
        j0 j0Var = this.f677b;
        j0Var.f669b = iC;
        j0Var.f670c = iA;
        j0Var.f671d = iB;
        j0Var.f672e = iD;
        j0Var.f668a = 24579;
        return j0Var.a();
    }
}
