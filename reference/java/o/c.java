package o;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public abstract class c implements Parcelable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Parcelable f503a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f502b = new a();
    public static final Parcelable.Creator<c> CREATOR = new b(0);

    public c() {
        this.f503a = null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.f503a, i2);
    }

    public c(Parcel parcel, ClassLoader classLoader) {
        Parcelable parcelable = parcel.readParcelable(classLoader);
        this.f503a = parcelable == null ? f502b : parcelable;
    }

    public c(Parcelable parcelable) {
        if (parcelable == null) {
            throw new IllegalArgumentException("superState must not be null");
        }
        this.f503a = parcelable == f502b ? null : parcelable;
    }
}
