package b;

import android.graphics.Typeface;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f110a = new LinkedHashMap(0, 0.75f, true);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f111b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f112c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f113d;

    public final Object a(Object obj) {
        if (obj == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            try {
                Object obj2 = this.f110a.get(obj);
                if (obj2 != null) {
                    this.f112c++;
                    return obj2;
                }
                this.f113d++;
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(Object obj, Typeface typeface) {
        if (obj == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            try {
                this.f111b++;
                if (this.f110a.put(obj, typeface) != null) {
                    this.f111b--;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        c(16);
    }

    public final void c(int i2) {
        while (true) {
            synchronized (this) {
                try {
                    if (this.f111b < 0 || (this.f110a.isEmpty() && this.f111b != 0)) {
                        break;
                    }
                    if (this.f111b > i2 && !this.f110a.isEmpty()) {
                        Map.Entry entry = (Map.Entry) this.f110a.entrySet().iterator().next();
                        Object key = entry.getKey();
                        entry.getValue();
                        this.f110a.remove(key);
                        this.f111b--;
                    }
                    return;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        throw new IllegalStateException(e.class.getName() + ".sizeOf() is reporting inconsistent results!");
    }

    public final synchronized String toString() {
        int i2;
        int i3;
        int i4;
        try {
            i2 = this.f112c;
            i3 = this.f113d;
            int i5 = i2 + i3;
            i4 = i5 != 0 ? (i2 * 100) / i5 : 0;
            Locale locale = Locale.US;
        } catch (Throwable th) {
            throw th;
        }
        return "LruCache[maxSize=16,hits=" + i2 + ",misses=" + i3 + ",hitRate=" + i4 + "%]";
    }
}
