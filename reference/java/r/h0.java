package r;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class h0 implements Parcelable {
    public static final Parcelable.Creator<h0> CREATOR = new C0056w(2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f639a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f640b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f641c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[] f642d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f643e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[] f644f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public List f645g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f646h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f647i;
    public boolean j;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f639a);
        parcel.writeInt(this.f640b);
        parcel.writeInt(this.f641c);
        if (this.f641c > 0) {
            parcel.writeIntArray(this.f642d);
        }
        parcel.writeInt(this.f643e);
        if (this.f643e > 0) {
            parcel.writeIntArray(this.f644f);
        }
        parcel.writeInt(this.f646h ? 1 : 0);
        parcel.writeInt(this.f647i ? 1 : 0);
        parcel.writeInt(this.j ? 1 : 0);
        parcel.writeList(this.f645g);
    }
}
