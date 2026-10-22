package b;

import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class b extends j implements Map {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public a f102h;

    @Override // java.util.Map
    public final Set entrySet() {
        if (this.f102h == null) {
            this.f102h = new a(this);
        }
        a aVar = this.f102h;
        if (aVar.f98a == null) {
            aVar.f98a = new g(aVar, 0);
        }
        return aVar.f98a;
    }

    @Override // java.util.Map
    public final Set keySet() {
        if (this.f102h == null) {
            this.f102h = new a(this);
        }
        a aVar = this.f102h;
        if (aVar.f99b == null) {
            aVar.f99b = new g(aVar, 1);
        }
        return aVar.f99b;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        int size = map.size() + this.f132c;
        int i2 = this.f132c;
        int[] iArr = this.f130a;
        if (iArr.length < size) {
            Object[] objArr = this.f131b;
            a(size);
            if (this.f132c > 0) {
                System.arraycopy(iArr, 0, this.f130a, 0, i2);
                System.arraycopy(objArr, 0, this.f131b, 0, i2 << 1);
            }
            j.c(iArr, objArr, i2);
        }
        if (this.f132c != i2) {
            throw new ConcurrentModificationException();
        }
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public final Collection values() {
        if (this.f102h == null) {
            this.f102h = new a(this);
        }
        a aVar = this.f102h;
        if (aVar.f100c == null) {
            aVar.f100c = new i(aVar);
        }
        return aVar.f100c;
    }
}
