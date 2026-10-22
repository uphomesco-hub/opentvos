package o;

import android.os.Parcel;
import android.os.Parcelable;
import r.W;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Parcelable.ClassLoaderCreator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f501a;

    public /* synthetic */ b(int i2) {
        this.f501a = i2;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f501a) {
            case 0:
                if (parcel.readParcelable(null) == null) {
                    return c.f502b;
                }
                throw new IllegalStateException("superState must be null");
            default:
                return new W(parcel, null);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i2) {
        switch (this.f501a) {
            case 0:
                return new c[i2];
            default:
                return new W[i2];
        }
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        switch (this.f501a) {
            case 0:
                if (parcel.readParcelable(classLoader) == null) {
                    return c.f502b;
                }
                throw new IllegalStateException("superState must be null");
            default:
                return new W(parcel, classLoader);
        }
    }
}
