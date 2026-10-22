package b;

import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class i implements Collection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a f125a;

    public i(a aVar) {
        this.f125a = aVar;
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final void clear() {
        this.f125a.f101d.clear();
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        return this.f125a.f101d.g(obj) >= 0;
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return this.f125a.f101d.f132c == 0;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new f(this.f125a, 1);
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        a aVar = this.f125a;
        int iG = aVar.f101d.g(obj);
        if (iG < 0) {
            return false;
        }
        aVar.b(iG);
        return true;
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        a aVar = this.f125a;
        int i2 = aVar.f101d.f132c;
        int i3 = 0;
        boolean z2 = false;
        while (i3 < i2) {
            if (collection.contains(aVar.a(i3, 1))) {
                aVar.b(i3);
                i3--;
                i2--;
                z2 = true;
            }
            i3++;
        }
        return z2;
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        a aVar = this.f125a;
        int i2 = aVar.f101d.f132c;
        int i3 = 0;
        boolean z2 = false;
        while (i3 < i2) {
            if (!collection.contains(aVar.a(i3, 1))) {
                aVar.b(i3);
                i3--;
                i2--;
                z2 = true;
            }
            i3++;
        }
        return z2;
    }

    @Override // java.util.Collection
    public final int size() {
        return this.f125a.f101d.f132c;
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        a aVar = this.f125a;
        int i2 = aVar.f101d.f132c;
        Object[] objArr = new Object[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            objArr[i3] = aVar.a(i3, 1);
        }
        return objArr;
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return this.f125a.d(objArr, 1);
    }
}
