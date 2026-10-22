package r;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class f0 implements Parcelable {
    public static final Parcelable.Creator<f0> CREATOR = new C0056w(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f622a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f623b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f624c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f625d;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "FullSpanItem{mPosition=" + this.f622a + ", mGapDir=" + this.f623b + ", mHasUnwantedGapAfter=" + this.f625d + ", mGapPerSpan=" + Arrays.toString(this.f624c) + '}';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f622a);
        parcel.writeInt(this.f623b);
        parcel.writeInt(this.f625d ? 1 : 0);
        int[] iArr = this.f624c;
        if (iArr == null || iArr.length <= 0) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(iArr.length);
            parcel.writeIntArray(this.f624c);
        }
    }
}
