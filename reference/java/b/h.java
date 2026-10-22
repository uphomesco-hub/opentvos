package b;

import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class h implements Iterator, Map.Entry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f121a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ a f124d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f123c = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f122b = -1;

    public h(a aVar) {
        this.f124d = aVar;
        this.f121a = aVar.f101d.f132c - 1;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (!this.f123c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        int i2 = this.f122b;
        a aVar = this.f124d;
        Object objA = aVar.a(i2, 0);
        if (key != objA && (key == null || !key.equals(objA))) {
            return false;
        }
        Object value = entry.getValue();
        Object objA2 = aVar.a(this.f122b, 1);
        return value == objA2 || (value != null && value.equals(objA2));
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        if (!this.f123c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        return this.f124d.a(this.f122b, 0);
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (!this.f123c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        return this.f124d.a(this.f122b, 1);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f122b < this.f121a;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        if (!this.f123c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        int i2 = this.f122b;
        a aVar = this.f124d;
        Object objA = aVar.a(i2, 0);
        Object objA2 = aVar.a(this.f122b, 1);
        return (objA == null ? 0 : objA.hashCode()) ^ (objA2 != null ? objA2.hashCode() : 0);
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f122b++;
        this.f123c = true;
        return this;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f123c) {
            throw new IllegalStateException();
        }
        this.f124d.b(this.f122b);
        this.f122b--;
        this.f121a--;
        this.f123c = false;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (!this.f123c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        int i2 = (this.f122b << 1) + 1;
        Object[] objArr = this.f124d.f101d.f131b;
        Object obj2 = objArr[i2];
        objArr[i2] = obj;
        return obj2;
    }

    public final String toString() {
        return getKey() + "=" + getValue();
    }
}
