package r;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f632a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List f633b;

    public final void a() {
        int[] iArr = this.f632a;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        this.f633b = null;
    }

    public final void b(int i2) {
        int[] iArr = this.f632a;
        if (iArr == null) {
            int[] iArr2 = new int[Math.max(i2, 10) + 1];
            this.f632a = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i2 >= iArr.length) {
            int length = iArr.length;
            while (length <= i2) {
                length *= 2;
            }
            int[] iArr3 = new int[length];
            this.f632a = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            int[] iArr4 = this.f632a;
            Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x000e  */
    public final int c(int i2) {
        int i3;
        int[] iArr = this.f632a;
        if (iArr == null || i2 >= iArr.length) {
            return -1;
        }
        List list = this.f633b;
        if (list == null) {
            i3 = -1;
        } else {
            f0 f0Var = null;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    f0 f0Var2 = (f0) this.f633b.get(size);
                    if (f0Var2.f622a == i2) {
                        f0Var = f0Var2;
                        break;
                    }
                }
            }
            if (f0Var != null) {
                this.f633b.remove(f0Var);
            }
            int size2 = this.f633b.size();
            int i4 = 0;
            while (true) {
                if (i4 >= size2) {
                    i4 = -1;
                    break;
                }
                if (((f0) this.f633b.get(i4)).f622a >= i2) {
                    break;
                }
                i4++;
            }
            if (i4 != -1) {
                f0 f0Var3 = (f0) this.f633b.get(i4);
                this.f633b.remove(i4);
                i3 = f0Var3.f622a;
            } else {
                i3 = -1;
            }
        }
        if (i3 == -1) {
            int[] iArr2 = this.f632a;
            Arrays.fill(iArr2, i2, iArr2.length, -1);
            return this.f632a.length;
        }
        int iMin = Math.min(i3 + 1, this.f632a.length);
        Arrays.fill(this.f632a, i2, iMin, -1);
        return iMin;
    }

    public final void d(int i2, int i3) {
        int[] iArr = this.f632a;
        if (iArr == null || i2 >= iArr.length) {
            return;
        }
        int i4 = i2 + i3;
        b(i4);
        int[] iArr2 = this.f632a;
        System.arraycopy(iArr2, i2, iArr2, i4, (iArr2.length - i2) - i3);
        Arrays.fill(this.f632a, i2, i4, -1);
        List list = this.f633b;
        if (list == null) {
            return;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            f0 f0Var = (f0) this.f633b.get(size);
            int i5 = f0Var.f622a;
            if (i5 >= i2) {
                f0Var.f622a = i5 + i3;
            }
        }
    }

    public final void e(int i2, int i3) {
        int[] iArr = this.f632a;
        if (iArr == null || i2 >= iArr.length) {
            return;
        }
        int i4 = i2 + i3;
        b(i4);
        int[] iArr2 = this.f632a;
        System.arraycopy(iArr2, i4, iArr2, i2, (iArr2.length - i2) - i3);
        int[] iArr3 = this.f632a;
        Arrays.fill(iArr3, iArr3.length - i3, iArr3.length, -1);
        List list = this.f633b;
        if (list == null) {
            return;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            f0 f0Var = (f0) this.f633b.get(size);
            int i5 = f0Var.f622a;
            if (i5 >= i2) {
                if (i5 < i4) {
                    this.f633b.remove(size);
                } else {
                    f0Var.f622a = i5 - i3;
                }
            }
        }
    }
}
