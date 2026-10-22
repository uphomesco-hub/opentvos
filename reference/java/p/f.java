package p;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final d f517l = new d(1);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final d f518m = new d(2);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final d f519n = new d(3);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final d f520o = new d(4);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final d f521p = new d(5);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final d f522q = new d(6);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final d f523r = new d(7);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final d f524s = new d(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f527c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final y.a f528d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final float f531g;
    public g j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f534k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f525a = 0.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f526b = Float.MAX_VALUE;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f529e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f530f = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f532h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f533i = new ArrayList();

    public f(Object obj, y.a aVar) {
        float f2;
        this.f527c = obj;
        this.f528d = aVar;
        if (aVar != f521p && aVar != f522q && aVar != f523r) {
            if (aVar == f524s || aVar == f519n || aVar == f520o) {
                this.f531g = 0.00390625f;
            } else {
                f2 = 1.0f;
            }
            this.j = null;
            this.f534k = Float.MAX_VALUE;
        }
        f2 = 0.1f;
        this.f531g = f2;
        this.j = null;
        this.f534k = Float.MAX_VALUE;
    }

    public final void a() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException("Animations may only be canceled on the main thread");
        }
        if (this.f529e) {
            b();
        }
    }

    public final void b() {
        int i2 = 0;
        this.f529e = false;
        ThreadLocal threadLocal = c.f508f;
        if (threadLocal.get() == null) {
            threadLocal.set(new c());
        }
        c cVar = (c) threadLocal.get();
        cVar.f509a.remove(this);
        ArrayList arrayList = cVar.f510b;
        int iIndexOf = arrayList.indexOf(this);
        if (iIndexOf >= 0) {
            arrayList.set(iIndexOf, null);
            cVar.f513e = true;
        }
        this.f530f = 0L;
        while (true) {
            ArrayList arrayList2 = this.f532h;
            if (i2 >= arrayList2.size()) {
                for (int size = arrayList2.size() - 1; size >= 0; size--) {
                    if (arrayList2.get(size) == null) {
                        arrayList2.remove(size);
                    }
                }
                return;
            }
            if (arrayList2.get(i2) != null) {
                n.a.b(arrayList2.get(i2));
                throw null;
            }
            i2++;
        }
    }

    public final void c(float f2) {
        this.f528d.w(this.f527c, f2);
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f533i;
            if (i2 >= arrayList.size()) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (arrayList.get(size) == null) {
                        arrayList.remove(size);
                    }
                }
                return;
            }
            if (arrayList.get(i2) != null) {
                n.a.b(arrayList.get(i2));
                throw null;
            }
            i2++;
        }
    }
}
