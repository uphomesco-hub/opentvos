package k;

import android.view.WindowInsets;

/* JADX INFO: loaded from: classes.dex */
public class y extends A {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WindowInsets.Builder f492a = f.b.g();

    @Override // k.A
    public I b() {
        a();
        I iA = I.a(this.f492a.build(), null);
        iA.f456a.j(null);
        return iA;
    }

    @Override // k.A
    public void c(f.c cVar) {
        this.f492a.setStableInsets(cVar.b());
    }

    @Override // k.A
    public void d(f.c cVar) {
        this.f492a.setSystemWindowInsets(cVar.b());
    }
}
