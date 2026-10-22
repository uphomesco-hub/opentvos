package k;

import android.os.Build;
import android.view.View;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class H {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f454b = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final I f455a;

    static {
        A yVar;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            yVar = new z();
        } else {
            yVar = i2 >= 29 ? new y() : new x();
        }
        yVar.b().f456a.a().f456a.b().f456a.c();
    }

    public H(I i2) {
        this.f455a = i2;
    }

    public I a() {
        return this.f455a;
    }

    public I b() {
        return this.f455a;
    }

    public I c() {
        return this.f455a;
    }

    public C0028c e() {
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof H)) {
            return false;
        }
        H h2 = (H) obj;
        return i() == h2.i() && h() == h2.h() && Objects.equals(g(), h2.g()) && Objects.equals(f(), h2.f()) && Objects.equals(e(), h2.e());
    }

    public f.c f() {
        return f.c.f401e;
    }

    public f.c g() {
        return f.c.f401e;
    }

    public boolean h() {
        return false;
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(i()), Boolean.valueOf(h()), g(), f(), e());
    }

    public boolean i() {
        return false;
    }

    public void d(View view) {
    }

    public void j(f.c[] cVarArr) {
    }

    public void k(I i2) {
    }

    public void l(f.c cVar) {
    }
}
