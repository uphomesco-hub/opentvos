package r;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.versionedparcelable.ParcelImpl;

/* JADX INFO: renamed from: r.w, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0056w implements Parcelable.Creator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f748a;

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f748a) {
            case 0:
                C0057x c0057x = new C0057x();
                c0057x.f749a = parcel.readInt();
                c0057x.f750b = parcel.readInt();
                c0057x.f751c = parcel.readInt() == 1;
                return c0057x;
            case 1:
                f0 f0Var = new f0();
                f0Var.f622a = parcel.readInt();
                f0Var.f623b = parcel.readInt();
                f0Var.f625d = parcel.readInt() == 1;
                int i2 = parcel.readInt();
                if (i2 > 0) {
                    int[] iArr = new int[i2];
                    f0Var.f624c = iArr;
                    parcel.readIntArray(iArr);
                }
                return f0Var;
            case 2:
                h0 h0Var = new h0();
                h0Var.f639a = parcel.readInt();
                h0Var.f640b = parcel.readInt();
                int i3 = parcel.readInt();
                h0Var.f641c = i3;
                if (i3 > 0) {
                    int[] iArr2 = new int[i3];
                    h0Var.f642d = iArr2;
                    parcel.readIntArray(iArr2);
                }
                int i4 = parcel.readInt();
                h0Var.f643e = i4;
                if (i4 > 0) {
                    int[] iArr3 = new int[i4];
                    h0Var.f644f = iArr3;
                    parcel.readIntArray(iArr3);
                }
                h0Var.f646h = parcel.readInt() == 1;
                h0Var.f647i = parcel.readInt() == 1;
                h0Var.j = parcel.readInt() == 1;
                h0Var.f645g = parcel.readArrayList(f0.class.getClassLoader());
                return h0Var;
            default:
                return new ParcelImpl(parcel);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i2) {
        switch (this.f748a) {
            case 0:
                return new C0057x[i2];
            case 1:
                return new f0[i2];
            case 2:
                return new h0[i2];
            default:
                return new ParcelImpl[i2];
        }
    }
}
