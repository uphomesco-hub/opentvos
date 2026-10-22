package b;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class f implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f114a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f115b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f116c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f117d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ a f118e;

    public f(a aVar, int i2) {
        this.f118e = aVar;
        this.f114a = i2;
        this.f115b = aVar.f101d.f132c;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f116c < this.f115b;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Object objA = this.f118e.a(this.f116c, this.f114a);
        this.f116c++;
        this.f117d = true;
        return objA;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f117d) {
            throw new IllegalStateException();
        }
        int i2 = this.f116c - 1;
        this.f116c = i2;
        this.f115b--;
        this.f117d = false;
        this.f118e.b(i2);
    }
}
