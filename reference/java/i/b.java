package i;

import androidx.recyclerview.widget.RecyclerView;
import java.util.Comparator;
import r.C0049o;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f426a;

    /* JADX WARN: Code duplicated, block: B:15:0x001e A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:16:0x0020 A[RETURN, SYNTHETIC] */
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f426a) {
            case 0:
                byte[] bArr = (byte[]) obj;
                byte[] bArr2 = (byte[]) obj2;
                if (bArr.length != bArr2.length) {
                    return bArr.length - bArr2.length;
                }
                for (int i2 = 0; i2 < bArr.length; i2++) {
                    byte b2 = bArr[i2];
                    byte b3 = bArr2[i2];
                    if (b2 != b3) {
                        return b2 - b3;
                    }
                }
                return 0;
            default:
                C0049o c0049o = (C0049o) obj;
                C0049o c0049o2 = (C0049o) obj2;
                RecyclerView recyclerView = c0049o.f711d;
                if ((recyclerView == null) != (c0049o2.f711d == null)) {
                    if (recyclerView == null) {
                        return 1;
                    }
                    return -1;
                }
                boolean z2 = c0049o.f708a;
                if (z2 != c0049o2.f708a) {
                    if (z2) {
                        return -1;
                    }
                    return 1;
                }
                int i3 = c0049o2.f709b - c0049o.f709b;
                if (i3 != 0) {
                    return i3;
                }
                int i4 = c0049o.f710c - c0049o2.f710c;
                if (i4 != 0) {
                    return i4;
                }
                return 0;
        }
    }
}
