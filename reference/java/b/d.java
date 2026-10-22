package b;

/* JADX INFO: loaded from: classes.dex */
public final class d implements Cloneable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Object f105e = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f106a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long[] f107b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f108c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f109d;

    public final void a() {
        int i2 = this.f109d;
        long[] jArr = this.f107b;
        Object[] objArr = this.f108c;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Object obj = objArr[i4];
            if (obj != f105e) {
                if (i4 != i3) {
                    jArr[i3] = jArr[i4];
                    objArr[i3] = obj;
                    objArr[i4] = null;
                }
                i3++;
            }
        }
        this.f106a = false;
        this.f109d = i3;
    }

    public final Object clone() {
        try {
            d dVar = (d) super.clone();
            dVar.f107b = (long[]) this.f107b.clone();
            dVar.f108c = (Object[]) this.f108c.clone();
            return dVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public final String toString() {
        if (this.f106a) {
            a();
        }
        int i2 = this.f109d;
        if (i2 <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(i2 * 28);
        sb.append('{');
        for (int i3 = 0; i3 < this.f109d; i3++) {
            if (i3 > 0) {
                sb.append(", ");
            }
            if (this.f106a) {
                a();
            }
            sb.append(this.f107b[i3]);
            sb.append('=');
            if (this.f106a) {
                a();
            }
            Object obj = this.f108c[i3];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
