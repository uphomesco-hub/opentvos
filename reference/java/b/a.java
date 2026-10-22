package b;

import java.lang.reflect.Array;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public g f98a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public g f99b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public i f100c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ b f101d;

    public a(b bVar) {
        this.f101d = bVar;
    }

    public static boolean c(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                return set.size() == set2.size() && set.containsAll(set2);
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public final Object a(int i2, int i3) {
        return this.f101d.f131b[(i2 << 1) + i3];
    }

    public final void b(int i2) {
        this.f101d.h(i2);
    }

    public final Object[] d(Object[] objArr, int i2) {
        int i3 = this.f101d.f132c;
        if (objArr.length < i3) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i3);
        }
        for (int i4 = 0; i4 < i3; i4++) {
            objArr[i4] = a(i4, i2);
        }
        if (objArr.length > i3) {
            objArr[i3] = null;
        }
        return objArr;
    }
}
