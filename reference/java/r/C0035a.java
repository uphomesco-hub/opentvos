package r;

/* JADX INFO: renamed from: r.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0035a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f585a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f586b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f587c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f588d;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0035a)) {
            return false;
        }
        C0035a c0035a = (C0035a) obj;
        int i2 = this.f585a;
        if (i2 != c0035a.f585a) {
            return false;
        }
        if (i2 == 8 && Math.abs(this.f588d - this.f586b) == 1 && this.f588d == c0035a.f586b && this.f586b == c0035a.f588d) {
            return true;
        }
        if (this.f588d != c0035a.f588d || this.f586b != c0035a.f586b) {
            return false;
        }
        Object obj2 = this.f587c;
        Object obj3 = c0035a.f587c;
        if (obj2 != null) {
            if (!obj2.equals(obj3)) {
                return false;
            }
        } else if (obj3 != null) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (((this.f585a * 31) + this.f586b) * 31) + this.f588d;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[");
        int i2 = this.f585a;
        if (i2 == 1) {
            str = "add";
        } else if (i2 == 2) {
            str = "rm";
        } else if (i2 != 4) {
            str = i2 != 8 ? "??" : "mv";
        } else {
            str = "up";
        }
        sb.append(str);
        sb.append(",s:");
        sb.append(this.f586b);
        sb.append("c:");
        sb.append(this.f588d);
        sb.append(",p:");
        sb.append(this.f587c);
        sb.append("]");
        return sb.toString();
    }
}
