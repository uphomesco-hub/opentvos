package f;

import android.graphics.Insets;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final c f401e = new c(0, 0, 0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f402a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f403b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f404c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f405d;

    public c(int i2, int i3, int i4, int i5) {
        this.f402a = i2;
        this.f403b = i3;
        this.f404c = i4;
        this.f405d = i5;
    }

    public static c a(int i2, int i3, int i4, int i5) {
        return (i2 == 0 && i3 == 0 && i4 == 0 && i5 == 0) ? f401e : new c(i2, i3, i4, i5);
    }

    public final Insets b() {
        return Insets.of(this.f402a, this.f403b, this.f404c, this.f405d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f405d == cVar.f405d && this.f402a == cVar.f402a && this.f404c == cVar.f404c && this.f403b == cVar.f403b;
    }

    public final int hashCode() {
        return (((((this.f402a * 31) + this.f403b) * 31) + this.f404c) * 31) + this.f405d;
    }

    public final String toString() {
        return "Insets{left=" + this.f402a + ", top=" + this.f403b + ", right=" + this.f404c + ", bottom=" + this.f405d + '}';
    }
}
