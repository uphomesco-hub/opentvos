package r;

/* JADX INFO: renamed from: r.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0036b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f589a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public C0036b f590b;

    public final void a(int i2) {
        if (i2 < 64) {
            this.f589a &= ~(1 << i2);
            return;
        }
        C0036b c0036b = this.f590b;
        if (c0036b != null) {
            c0036b.a(i2 - 64);
        }
    }

    public final int b(int i2) {
        long j;
        C0036b c0036b = this.f590b;
        if (c0036b == null) {
            if (i2 >= 64) {
                j = this.f589a;
            }
            return Long.bitCount(j);
        }
        if (i2 >= 64) {
            return Long.bitCount(this.f589a) + c0036b.b(i2 - 64);
        }
        j = this.f589a & ((1 << i2) - 1);
        return Long.bitCount(j);
    }

    public final void c() {
        if (this.f590b == null) {
            this.f590b = new C0036b();
        }
    }

    public final boolean d(int i2) {
        if (i2 < 64) {
            return (this.f589a & (1 << i2)) != 0;
        }
        c();
        return this.f590b.d(i2 - 64);
    }

    public final void e(int i2, boolean z2) {
        if (i2 >= 64) {
            c();
            this.f590b.e(i2 - 64, z2);
            return;
        }
        long j = this.f589a;
        boolean z3 = (Long.MIN_VALUE & j) != 0;
        long j2 = (1 << i2) - 1;
        this.f589a = ((j & (~j2)) << 1) | (j & j2);
        if (z2) {
            h(i2);
        } else {
            a(i2);
        }
        if (z3 || this.f590b != null) {
            c();
            this.f590b.e(0, z3);
        }
    }

    public final boolean f(int i2) {
        if (i2 >= 64) {
            c();
            return this.f590b.f(i2 - 64);
        }
        long j = 1 << i2;
        long j2 = this.f589a;
        boolean z2 = (j2 & j) != 0;
        long j3 = j2 & (~j);
        this.f589a = j3;
        long j4 = j - 1;
        this.f589a = (j3 & j4) | Long.rotateRight((~j4) & j3, 1);
        C0036b c0036b = this.f590b;
        if (c0036b != null) {
            if (c0036b.d(0)) {
                h(63);
            }
            this.f590b.f(0);
        }
        return z2;
    }

    public final void g() {
        this.f589a = 0L;
        C0036b c0036b = this.f590b;
        if (c0036b != null) {
            c0036b.g();
        }
    }

    public final void h(int i2) {
        if (i2 < 64) {
            this.f589a |= 1 << i2;
        } else {
            c();
            this.f590b.h(i2 - 64);
        }
    }

    public final String toString() {
        if (this.f590b == null) {
            return Long.toBinaryString(this.f589a);
        }
        return this.f590b.toString() + "xx" + Long.toBinaryString(this.f589a);
    }
}
