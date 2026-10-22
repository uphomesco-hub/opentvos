package i;

import android.graphics.Typeface;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f433a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f434b;

    public e(int i2, int i3) {
        switch (i3) {
            case 2:
                if (i2 <= 0) {
                    throw new IllegalArgumentException("The max pool size must be > 0");
                }
                this.f434b = new Object[i2];
                return;
            default:
                this.f434b = null;
                this.f433a = i2;
                return;
        }
    }

    public Object a() {
        int i2 = this.f433a;
        if (i2 <= 0) {
            return null;
        }
        int i3 = i2 - 1;
        Object[] objArr = (Object[]) this.f434b;
        Object obj = objArr[i3];
        objArr[i3] = null;
        this.f433a = i2 - 1;
        return obj;
    }

    public void b(Object obj) {
        int i2 = 0;
        while (true) {
            int i3 = this.f433a;
            Object[] objArr = (Object[]) this.f434b;
            if (i2 >= i3) {
                if (i3 < objArr.length) {
                    objArr[i3] = obj;
                    this.f433a = i3 + 1;
                    return;
                }
                return;
            }
            if (objArr[i2] == obj) {
                throw new IllegalStateException("Already in the pool!");
            }
            i2++;
        }
    }

    public e(int i2, g[] gVarArr) {
        this.f433a = i2;
        this.f434b = gVarArr;
    }

    public e(Typeface typeface) {
        this.f434b = typeface;
        this.f433a = 0;
    }
}
