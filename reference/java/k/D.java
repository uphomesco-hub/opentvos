package k;

import android.view.DisplayCutout;
import android.view.WindowInsets;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class D extends C {
    public D(I i2, WindowInsets windowInsets) {
        super(i2, windowInsets);
    }

    @Override // k.H
    public I a() {
        return I.a(this.f449c.consumeDisplayCutout(), null);
    }

    @Override // k.H
    public C0028c e() {
        DisplayCutout displayCutout = this.f449c.getDisplayCutout();
        if (displayCutout == null) {
            return null;
        }
        return new C0028c(displayCutout);
    }

    @Override // k.B, k.H
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof D)) {
            return false;
        }
        D d2 = (D) obj;
        return Objects.equals(this.f449c, d2.f449c) && Objects.equals(this.f451e, d2.f451e);
    }

    @Override // k.H
    public int hashCode() {
        return this.f449c.hashCode();
    }
}
