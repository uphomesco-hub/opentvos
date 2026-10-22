package k;

import android.view.WindowInsets;

/* JADX INFO: loaded from: classes.dex */
public class C extends B {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public f.c f452k;

    public C(I i2, WindowInsets windowInsets) {
        super(i2, windowInsets);
        this.f452k = null;
    }

    @Override // k.H
    public I b() {
        return I.a(this.f449c.consumeStableInsets(), null);
    }

    @Override // k.H
    public I c() {
        return I.a(this.f449c.consumeSystemWindowInsets(), null);
    }

    @Override // k.H
    public final f.c f() {
        if (this.f452k == null) {
            WindowInsets windowInsets = this.f449c;
            this.f452k = f.c.a(windowInsets.getStableInsetLeft(), windowInsets.getStableInsetTop(), windowInsets.getStableInsetRight(), windowInsets.getStableInsetBottom());
        }
        return this.f452k;
    }

    @Override // k.H
    public boolean h() {
        return this.f449c.isConsumed();
    }

    @Override // k.H
    public void l(f.c cVar) {
        this.f452k = cVar;
    }
}
