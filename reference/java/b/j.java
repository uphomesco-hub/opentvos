package b;

import java.util.ConcurrentModificationException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Object[] f126d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f127e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static Object[] f128f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f129g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f130a = c.f103a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object[] f131b = c.f104b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f132c = 0;

    public static int b(int[] iArr, int i2, int i3) {
        int i4 = i2 - 1;
        int i5 = 0;
        while (i5 <= i4) {
            int i6 = (i5 + i4) >>> 1;
            try {
                int i7 = iArr[i6];
                if (i7 < i3) {
                    i5 = i6 + 1;
                } else {
                    if (i7 <= i3) {
                        return i6;
                    }
                    i4 = i6 - 1;
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new ConcurrentModificationException();
            }
        }
        return ~i5;
    }

    public static void c(int[] iArr, Object[] objArr, int i2) {
        if (iArr.length == 8) {
            synchronized (b.class) {
                try {
                    if (f129g < 10) {
                        objArr[0] = f128f;
                        objArr[1] = iArr;
                        for (int i3 = (i2 << 1) - 1; i3 >= 2; i3--) {
                            objArr[i3] = null;
                        }
                        f128f = objArr;
                        f129g++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (b.class) {
                try {
                    if (f127e < 10) {
                        objArr[0] = f126d;
                        objArr[1] = iArr;
                        for (int i4 = (i2 << 1) - 1; i4 >= 2; i4--) {
                            objArr[i4] = null;
                        }
                        f126d = objArr;
                        f127e++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public final void a(int i2) {
        if (i2 == 8) {
            synchronized (b.class) {
                try {
                    Object[] objArr = f128f;
                    if (objArr != null) {
                        this.f131b = objArr;
                        f128f = (Object[]) objArr[0];
                        this.f130a = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f129g--;
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else if (i2 == 4) {
            synchronized (b.class) {
                try {
                    Object[] objArr2 = f126d;
                    if (objArr2 != null) {
                        this.f131b = objArr2;
                        f126d = (Object[]) objArr2[0];
                        this.f130a = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f127e--;
                        return;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        this.f130a = new int[i2];
        this.f131b = new Object[i2 << 1];
    }

    public final void clear() {
        int i2 = this.f132c;
        if (i2 > 0) {
            int[] iArr = this.f130a;
            Object[] objArr = this.f131b;
            this.f130a = c.f103a;
            this.f131b = c.f104b;
            this.f132c = 0;
            c(iArr, objArr, i2);
        }
        if (this.f132c > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public final boolean containsKey(Object obj) {
        return e(obj) >= 0;
    }

    public final boolean containsValue(Object obj) {
        return g(obj) >= 0;
    }

    public final int d(Object obj, int i2) {
        int i3 = this.f132c;
        if (i3 == 0) {
            return -1;
        }
        int iB = b(this.f130a, i3, i2);
        if (iB < 0 || obj.equals(this.f131b[iB << 1])) {
            return iB;
        }
        int i4 = iB + 1;
        while (i4 < i3 && this.f130a[i4] == i2) {
            if (obj.equals(this.f131b[i4 << 1])) {
                return i4;
            }
            i4++;
        }
        for (int i5 = iB - 1; i5 >= 0 && this.f130a[i5] == i2; i5--) {
            if (obj.equals(this.f131b[i5 << 1])) {
                return i5;
            }
        }
        return ~i4;
    }

    public final int e(Object obj) {
        return obj == null ? f() : d(obj, obj.hashCode());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof j) {
            j jVar = (j) obj;
            if (this.f132c != jVar.f132c) {
                return false;
            }
            for (int i2 = 0; i2 < this.f132c; i2++) {
                try {
                    Object[] objArr = this.f131b;
                    int i3 = i2 << 1;
                    Object obj2 = objArr[i3];
                    Object obj3 = objArr[i3 + 1];
                    Object obj4 = jVar.get(obj2);
                    if (obj3 == null) {
                        if (obj4 != null || !jVar.containsKey(obj2)) {
                            return false;
                        }
                    } else if (!obj3.equals(obj4)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (this.f132c != map.size()) {
                return false;
            }
            for (int i4 = 0; i4 < this.f132c; i4++) {
                try {
                    Object[] objArr2 = this.f131b;
                    int i5 = i4 << 1;
                    Object obj5 = objArr2[i5];
                    Object obj6 = objArr2[i5 + 1];
                    Object obj7 = map.get(obj5);
                    if (obj6 == null) {
                        if (obj7 != null || !map.containsKey(obj5)) {
                            return false;
                        }
                    } else if (!obj6.equals(obj7)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    public final int f() {
        int i2 = this.f132c;
        if (i2 == 0) {
            return -1;
        }
        int iB = b(this.f130a, i2, 0);
        if (iB < 0 || this.f131b[iB << 1] == null) {
            return iB;
        }
        int i3 = iB + 1;
        while (i3 < i2 && this.f130a[i3] == 0) {
            if (this.f131b[i3 << 1] == null) {
                return i3;
            }
            i3++;
        }
        for (int i4 = iB - 1; i4 >= 0 && this.f130a[i4] == 0; i4--) {
            if (this.f131b[i4 << 1] == null) {
                return i4;
            }
        }
        return ~i3;
    }

    public final int g(Object obj) {
        int i2 = this.f132c * 2;
        Object[] objArr = this.f131b;
        if (obj == null) {
            for (int i3 = 1; i3 < i2; i3 += 2) {
                if (objArr[i3] == null) {
                    return i3 >> 1;
                }
            }
            return -1;
        }
        for (int i4 = 1; i4 < i2; i4 += 2) {
            if (obj.equals(objArr[i4])) {
                return i4 >> 1;
            }
        }
        return -1;
    }

    public final Object get(Object obj) {
        int iE = e(obj);
        if (iE >= 0) {
            return this.f131b[(iE << 1) + 1];
        }
        return null;
    }

    public final Object h(int i2) {
        Object[] objArr = this.f131b;
        int i3 = i2 << 1;
        Object obj = objArr[i3 + 1];
        int i4 = this.f132c;
        int i5 = 0;
        if (i4 <= 1) {
            c(this.f130a, objArr, i4);
            this.f130a = c.f103a;
            this.f131b = c.f104b;
        } else {
            int i6 = i4 - 1;
            int[] iArr = this.f130a;
            if (iArr.length <= 8 || i4 >= iArr.length / 3) {
                if (i2 < i6) {
                    int i7 = i2 + 1;
                    int i8 = i6 - i2;
                    System.arraycopy(iArr, i7, iArr, i2, i8);
                    Object[] objArr2 = this.f131b;
                    System.arraycopy(objArr2, i7 << 1, objArr2, i3, i8 << 1);
                }
                Object[] objArr3 = this.f131b;
                int i9 = i6 << 1;
                objArr3[i9] = null;
                objArr3[i9 + 1] = null;
            } else {
                a(i4 > 8 ? i4 + (i4 >> 1) : 8);
                if (i4 != this.f132c) {
                    throw new ConcurrentModificationException();
                }
                if (i2 > 0) {
                    System.arraycopy(iArr, 0, this.f130a, 0, i2);
                    System.arraycopy(objArr, 0, this.f131b, 0, i3);
                }
                if (i2 < i6) {
                    int i10 = i2 + 1;
                    int i11 = i6 - i2;
                    System.arraycopy(iArr, i10, this.f130a, i2, i11);
                    System.arraycopy(objArr, i10 << 1, this.f131b, i3, i11 << 1);
                }
            }
            i5 = i6;
        }
        if (i4 != this.f132c) {
            throw new ConcurrentModificationException();
        }
        this.f132c = i5;
        return obj;
    }

    public final int hashCode() {
        int[] iArr = this.f130a;
        Object[] objArr = this.f131b;
        int i2 = this.f132c;
        int i3 = 1;
        int i4 = 0;
        int iHashCode = 0;
        while (i4 < i2) {
            Object obj = objArr[i3];
            iHashCode += (obj == null ? 0 : obj.hashCode()) ^ iArr[i4];
            i4++;
            i3 += 2;
        }
        return iHashCode;
    }

    public final boolean isEmpty() {
        return this.f132c <= 0;
    }

    public final Object put(Object obj, Object obj2) {
        int i2;
        int iD;
        int i3 = this.f132c;
        if (obj == null) {
            iD = f();
            i2 = 0;
        } else {
            int iHashCode = obj.hashCode();
            i2 = iHashCode;
            iD = d(obj, iHashCode);
        }
        if (iD >= 0) {
            int i4 = (iD << 1) + 1;
            Object[] objArr = this.f131b;
            Object obj3 = objArr[i4];
            objArr[i4] = obj2;
            return obj3;
        }
        int i5 = ~iD;
        int[] iArr = this.f130a;
        if (i3 >= iArr.length) {
            int i6 = 8;
            if (i3 >= 8) {
                i6 = (i3 >> 1) + i3;
            } else if (i3 < 4) {
                i6 = 4;
            }
            Object[] objArr2 = this.f131b;
            a(i6);
            if (i3 != this.f132c) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.f130a;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr2, 0, this.f131b, 0, objArr2.length);
            }
            c(iArr, objArr2, i3);
        }
        if (i5 < i3) {
            int[] iArr3 = this.f130a;
            int i7 = i5 + 1;
            System.arraycopy(iArr3, i5, iArr3, i7, i3 - i5);
            Object[] objArr3 = this.f131b;
            System.arraycopy(objArr3, i5 << 1, objArr3, i7 << 1, (this.f132c - i5) << 1);
        }
        int i8 = this.f132c;
        if (i3 == i8) {
            int[] iArr4 = this.f130a;
            if (i5 < iArr4.length) {
                iArr4[i5] = i2;
                Object[] objArr4 = this.f131b;
                int i9 = i5 << 1;
                objArr4[i9] = obj;
                objArr4[i9 + 1] = obj2;
                this.f132c = i8 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public final Object remove(Object obj) {
        int iE = e(obj);
        if (iE >= 0) {
            return h(iE);
        }
        return null;
    }

    public final int size() {
        return this.f132c;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f132c * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.f132c; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            int i3 = i2 << 1;
            Object obj = this.f131b[i3];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            Object obj2 = this.f131b[i3 + 1];
            if (obj2 != this) {
                sb.append(obj2);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
