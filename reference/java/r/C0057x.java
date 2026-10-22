package r;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: renamed from: r.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0057x implements Parcelable {
    public static final Parcelable.Creator<C0057x> CREATOR = new C0056w(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f749a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f750b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f751c;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f749a);
        parcel.writeInt(this.f750b);
        parcel.writeInt(this.f751c ? 1 : 0);
    }
}
