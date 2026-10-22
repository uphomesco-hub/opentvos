package u;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Throwable f930a;

    public a(Throwable th) {
        this.f930a = th;
    }

    public final boolean equals(Object obj) {
        boolean zEquals;
        if (!(obj instanceof a)) {
            return false;
        }
        Throwable th = ((a) obj).f930a;
        Throwable th2 = this.f930a;
        if (th2 == null) {
            zEquals = th == null;
        } else {
            zEquals = th2.equals(th);
        }
        return zEquals;
    }

    public final int hashCode() {
        return this.f930a.hashCode();
    }

    public final String toString() {
        return "Failure(" + this.f930a + ')';
    }
}
