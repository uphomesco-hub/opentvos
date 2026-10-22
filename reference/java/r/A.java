package r;

import android.graphics.Rect;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class A {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.recyclerview.widget.j f545a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f546b = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Rect f547c = new Rect();

    public A(androidx.recyclerview.widget.j jVar) {
        this.f545a = jVar;
    }

    public static A a(androidx.recyclerview.widget.j jVar, int i2) {
        if (i2 == 0) {
            return new C0059z(jVar, 0);
        }
        if (i2 == 1) {
            return new C0059z(jVar, 1);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public abstract int b(View view);

    public abstract int c(View view);

    public abstract int d(View view);

    public abstract int e(View view);

    public abstract int f();

    public abstract int g();

    public abstract int h();

    public abstract int i();

    public abstract int j();

    public abstract int k();

    public abstract int l();

    public final int m() {
        if (Integer.MIN_VALUE == this.f546b) {
            return 0;
        }
        return l() - this.f546b;
    }

    public abstract int n(View view);

    public abstract int o(View view);

    public abstract void p(int i2);
}
