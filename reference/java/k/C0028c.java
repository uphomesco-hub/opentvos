package k;

import java.util.Objects;

/* JADX INFO: renamed from: k.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0028c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f461a;

    public C0028c(Object obj) {
        this.f461a = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0028c.class != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.f461a, ((C0028c) obj).f461a);
    }

    public final int hashCode() {
        Object obj = this.f461a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public final String toString() {
        return "DisplayCutoutCompat{" + this.f461a + "}";
    }
}
