package z;

import java.util.Iterator;
import java.util.NoSuchElementException;
import v.b;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Iterator, v.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Iterator f941c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public v.a f942d;

    @Override // v.a
    public final void a(Object obj) throws Throwable {
        y.a.x(obj);
        this.f939a = 4;
    }

    @Override // v.a
    public final b b() {
        return b.f932a;
    }

    public final RuntimeException c() {
        int i2 = this.f939a;
        if (i2 == 4) {
            return new NoSuchElementException();
        }
        if (i2 == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        return new IllegalStateException("Unexpected state of the iterator: " + this.f939a);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        while (true) {
            int i2 = this.f939a;
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 == 2 || i2 == 3) {
                        return true;
                    }
                    if (i2 == 4) {
                        return false;
                    }
                    throw c();
                }
                Iterator it = this.f941c;
                y.a.b(it);
                if (it.hasNext()) {
                    this.f939a = 2;
                    return true;
                }
                this.f941c = null;
            }
            this.f939a = 5;
            v.a aVar = this.f942d;
            y.a.b(aVar);
            this.f942d = null;
            aVar.a(u.b.f931a);
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i2 = this.f939a;
        if (i2 == 0 || i2 == 1) {
            if (hasNext()) {
                return next();
            }
            throw new NoSuchElementException();
        }
        if (i2 == 2) {
            this.f939a = 1;
            Iterator it = this.f941c;
            y.a.b(it);
            return it.next();
        }
        if (i2 != 3) {
            throw c();
        }
        this.f939a = 0;
        Object obj = this.f940b;
        this.f940b = null;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
