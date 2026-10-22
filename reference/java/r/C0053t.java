package r;

import android.view.View;

/* JADX INFO: renamed from: r.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0053t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public A f728a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f729b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f730c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f731d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f732e;

    public C0053t() {
        d();
    }

    public final void a() {
        this.f730c = this.f731d ? this.f728a.g() : this.f728a.k();
    }

    public final void b(View view, int i2) {
        if (this.f731d) {
            this.f730c = this.f728a.m() + this.f728a.b(view);
        } else {
            this.f730c = this.f728a.e(view);
        }
        this.f729b = i2;
    }

    public final void c(View view, int i2) {
        int iMin;
        int iM = this.f728a.m();
        if (iM >= 0) {
            b(view, i2);
            return;
        }
        this.f729b = i2;
        if (this.f731d) {
            int iG = (this.f728a.g() - iM) - this.f728a.b(view);
            this.f730c = this.f728a.g() - iG;
            if (iG <= 0) {
                return;
            }
            int iC = this.f730c - this.f728a.c(view);
            int iK = this.f728a.k();
            int iMin2 = iC - (Math.min(this.f728a.e(view) - iK, 0) + iK);
            if (iMin2 >= 0) {
                return;
            }
            iMin = Math.min(iG, -iMin2) + this.f730c;
        } else {
            int iE = this.f728a.e(view);
            int iK2 = iE - this.f728a.k();
            this.f730c = iE;
            if (iK2 <= 0) {
                return;
            }
            int iG2 = (this.f728a.g() - Math.min(0, (this.f728a.g() - iM) - this.f728a.b(view))) - (this.f728a.c(view) + iE);
            if (iG2 >= 0) {
                return;
            } else {
                iMin = this.f730c - Math.min(iK2, -iG2);
            }
        }
        this.f730c = iMin;
    }

    public final void d() {
        this.f729b = -1;
        this.f730c = Integer.MIN_VALUE;
        this.f731d = false;
        this.f732e = false;
    }

    public final String toString() {
        return "AnchorInfo{mPosition=" + this.f729b + ", mCoordinate=" + this.f730c + ", mLayoutFromEnd=" + this.f731d + ", mValid=" + this.f732e + '}';
    }
}
