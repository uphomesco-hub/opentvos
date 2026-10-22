package r;

/* JADX INFO: loaded from: classes.dex */
public final class j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f668a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f669b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f670c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f671d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f672e;

    public final boolean a() {
        int i2;
        int i3;
        int i4;
        int i5 = this.f668a;
        int i6 = 2;
        if ((i5 & 7) != 0) {
            int i7 = this.f671d;
            int i8 = this.f669b;
            if (i7 > i8) {
                i4 = 1;
            } else {
                i4 = i7 == i8 ? 2 : 4;
            }
            if ((i4 & i5) == 0) {
                return false;
            }
        }
        if ((i5 & 112) != 0) {
            int i9 = this.f671d;
            int i10 = this.f670c;
            if (i9 > i10) {
                i3 = 1;
            } else {
                i3 = i9 == i10 ? 2 : 4;
            }
            if (((i3 << 4) & i5) == 0) {
                return false;
            }
        }
        if ((i5 & 1792) != 0) {
            int i11 = this.f672e;
            int i12 = this.f669b;
            if (i11 > i12) {
                i2 = 1;
            } else {
                i2 = i11 == i12 ? 2 : 4;
            }
            if (((i2 << 8) & i5) == 0) {
                return false;
            }
        }
        if ((i5 & 28672) != 0) {
            int i13 = this.f672e;
            int i14 = this.f670c;
            if (i13 > i14) {
                i6 = 1;
            } else if (i13 != i14) {
                i6 = 4;
            }
            if ((i5 & (i6 << 12)) == 0) {
                return false;
            }
        }
        return true;
    }
}
