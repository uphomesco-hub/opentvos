package s;

import android.os.Parcel;
import android.util.SparseIntArray;

/* JADX INFO: loaded from: classes.dex */
public final class b extends a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final SparseIntArray f763d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Parcel f764e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f765f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f766g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f767h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f768i;
    public int j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f769k;

    public b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new b.b(), new b.b(), new b.b());
    }

    @Override // s.a
    public final b a() {
        Parcel parcel = this.f764e;
        int iDataPosition = parcel.dataPosition();
        int i2 = this.j;
        if (i2 == this.f765f) {
            i2 = this.f766g;
        }
        return new b(parcel, iDataPosition, i2, this.f767h + "  ", this.f760a, this.f761b, this.f762c);
    }

    @Override // s.a
    public final boolean e(int i2) {
        while (this.j < this.f766g) {
            int i3 = this.f769k;
            if (i3 == i2) {
                return true;
            }
            if (String.valueOf(i3).compareTo(String.valueOf(i2)) > 0) {
                return false;
            }
            int i4 = this.j;
            Parcel parcel = this.f764e;
            parcel.setDataPosition(i4);
            int i5 = parcel.readInt();
            this.f769k = parcel.readInt();
            this.j += i5;
        }
        return this.f769k == i2;
    }

    @Override // s.a
    public final void h(int i2) {
        int i3 = this.f768i;
        SparseIntArray sparseIntArray = this.f763d;
        Parcel parcel = this.f764e;
        if (i3 >= 0) {
            int i4 = sparseIntArray.get(i3);
            int iDataPosition = parcel.dataPosition();
            parcel.setDataPosition(i4);
            parcel.writeInt(iDataPosition - i4);
            parcel.setDataPosition(iDataPosition);
        }
        this.f768i = i2;
        sparseIntArray.put(i2, parcel.dataPosition());
        parcel.writeInt(0);
        parcel.writeInt(i2);
    }

    public b(Parcel parcel, int i2, int i3, String str, b.b bVar, b.b bVar2, b.b bVar3) {
        super(bVar, bVar2, bVar3);
        this.f763d = new SparseIntArray();
        this.f768i = -1;
        this.f769k = -1;
        this.f764e = parcel;
        this.f765f = i2;
        this.f766g = i3;
        this.j = i2;
        this.f767h = str;
    }
}
