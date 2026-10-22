package b;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class g implements Set {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f119a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a f120b;

    public /* synthetic */ g(a aVar, int i2) {
        this.f119a = i2;
        this.f120b = aVar;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean add(Object obj) {
        switch (this.f119a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean addAll(Collection collection) {
        switch (this.f119a) {
            case 0:
                a aVar = this.f120b;
                int i2 = aVar.f101d.f132c;
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    aVar.f101d.put(entry.getKey(), entry.getValue());
                }
                return i2 != aVar.f101d.f132c;
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final void clear() {
        switch (this.f119a) {
            case 0:
                this.f120b.f101d.clear();
                break;
            default:
                this.f120b.f101d.clear();
                break;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean contains(Object obj) {
        switch (this.f119a) {
            case 0:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                a aVar = this.f120b;
                int iE = aVar.f101d.e(key);
                if (iE < 0) {
                    return false;
                }
                Object objA = aVar.a(iE, 1);
                Object value = entry.getValue();
                return objA == value || (objA != null && objA.equals(value));
            default:
                return this.f120b.f101d.e(obj) >= 0;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean containsAll(Collection collection) {
        switch (this.f119a) {
            case 0:
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    if (!contains(it.next())) {
                        return false;
                    }
                }
                return true;
            default:
                b bVar = this.f120b.f101d;
                Iterator it2 = collection.iterator();
                while (it2.hasNext()) {
                    if (!bVar.containsKey(it2.next())) {
                        return false;
                    }
                }
                return true;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean equals(Object obj) {
        switch (this.f119a) {
            case 0:
                break;
        }
        return a.c(this, obj);
    }

    @Override // java.util.Set, java.util.Collection
    public final int hashCode() {
        switch (this.f119a) {
            case 0:
                a aVar = this.f120b;
                int iHashCode = 0;
                for (int i2 = aVar.f101d.f132c - 1; i2 >= 0; i2--) {
                    Object objA = aVar.a(i2, 0);
                    Object objA2 = aVar.a(i2, 1);
                    iHashCode += (objA == null ? 0 : objA.hashCode()) ^ (objA2 == null ? 0 : objA2.hashCode());
                }
                return iHashCode;
            default:
                a aVar2 = this.f120b;
                int iHashCode2 = 0;
                for (int i3 = aVar2.f101d.f132c - 1; i3 >= 0; i3--) {
                    Object objA3 = aVar2.a(i3, 0);
                    iHashCode2 += objA3 == null ? 0 : objA3.hashCode();
                }
                return iHashCode2;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean isEmpty() {
        switch (this.f119a) {
            case 0:
                return this.f120b.f101d.f132c == 0;
            default:
                return this.f120b.f101d.f132c == 0;
        }
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        switch (this.f119a) {
            case 0:
                return new h(this.f120b);
            default:
                return new f(this.f120b, 0);
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean remove(Object obj) {
        switch (this.f119a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                a aVar = this.f120b;
                int iE = aVar.f101d.e(obj);
                if (iE < 0) {
                    return false;
                }
                aVar.b(iE);
                return true;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean removeAll(Collection collection) {
        switch (this.f119a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                b bVar = this.f120b.f101d;
                int size = bVar.size();
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    bVar.remove(it.next());
                }
                return size != bVar.size();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean retainAll(Collection collection) {
        switch (this.f119a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                b bVar = this.f120b.f101d;
                int size = bVar.size();
                Iterator it = bVar.keySet().iterator();
                while (it.hasNext()) {
                    if (!collection.contains(it.next())) {
                        it.remove();
                    }
                }
                return size != bVar.size();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final int size() {
        switch (this.f119a) {
            case 0:
                break;
        }
        return this.f120b.f101d.f132c;
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray() {
        switch (this.f119a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                a aVar = this.f120b;
                int i2 = aVar.f101d.f132c;
                Object[] objArr = new Object[i2];
                for (int i3 = 0; i3 < i2; i3++) {
                    objArr[i3] = aVar.a(i3, 0);
                }
                return objArr;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        switch (this.f119a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                return this.f120b.d(objArr, 0);
        }
    }
}
