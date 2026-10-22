package r;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class W extends o.c {
    public static final Parcelable.Creator<W> CREATOR = new o.b(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Parcelable f571c;

    public W(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f571c = parcel.readParcelable(classLoader == null ? androidx.recyclerview.widget.j.class.getClassLoader() : classLoader);
    }

    @Override // o.c, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeParcelable(this.f571c, 0);
    }
}
