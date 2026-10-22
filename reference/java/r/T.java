package r;

import android.util.SparseArray;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class T {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SparseArray f567a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f568b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Set f569c;

    public final S a(int i2) {
        SparseArray sparseArray = this.f567a;
        S s2 = (S) sparseArray.get(i2);
        if (s2 != null) {
            return s2;
        }
        S s3 = new S();
        sparseArray.put(i2, s3);
        return s3;
    }
}
