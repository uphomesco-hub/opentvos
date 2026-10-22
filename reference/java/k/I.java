package k;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.lang.reflect.Field;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class I {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final H f456a;

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            int i2 = G.f453l;
        } else {
            int i3 = H.f454b;
        }
    }

    public I() {
        this.f456a = new H(this);
    }

    public static I a(WindowInsets windowInsets, View view) {
        windowInsets.getClass();
        I i2 = new I(windowInsets);
        if (view != null) {
            Field field = r.f469a;
            if (AbstractC0033h.b(view)) {
                I iA = Build.VERSION.SDK_INT >= 23 ? k.a(view) : j.j(view);
                H h2 = i2.f456a;
                h2.k(iA);
                h2.d(view.getRootView());
            }
        }
        return i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof I)) {
            return false;
        }
        return Objects.equals(this.f456a, ((I) obj).f456a);
    }

    public final int hashCode() {
        H h2 = this.f456a;
        if (h2 == null) {
            return 0;
        }
        return h2.hashCode();
    }

    public I(WindowInsets windowInsets) {
        int i2 = Build.VERSION.SDK_INT;
        this.f456a = i2 >= 30 ? new G(this, windowInsets) : i2 >= 29 ? new E(this, windowInsets) : i2 >= 28 ? new D(this, windowInsets) : new C(this, windowInsets);
    }
}
