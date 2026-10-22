package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Parcel;
import android.os.Parcelable;
import java.nio.charset.Charset;
import s.a;
import s.b;

/* JADX INFO: loaded from: classes.dex */
public class IconCompatParcelizer {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static IconCompat read(a aVar) {
        Parcelable parcelable;
        IconCompat iconCompat = new IconCompat();
        int i2 = iconCompat.f7a;
        if (aVar.e(1)) {
            i2 = ((b) aVar).f764e.readInt();
        }
        iconCompat.f7a = i2;
        byte[] bArr = iconCompat.f9c;
        if (aVar.e(2)) {
            Parcel parcel = ((b) aVar).f764e;
            int i3 = parcel.readInt();
            if (i3 < 0) {
                bArr = null;
            } else {
                byte[] bArr2 = new byte[i3];
                parcel.readByteArray(bArr2);
                bArr = bArr2;
            }
        }
        iconCompat.f9c = bArr;
        iconCompat.f10d = aVar.f(iconCompat.f10d, 3);
        int i4 = iconCompat.f11e;
        if (aVar.e(4)) {
            i4 = ((b) aVar).f764e.readInt();
        }
        iconCompat.f11e = i4;
        int i5 = iconCompat.f12f;
        if (aVar.e(5)) {
            i5 = ((b) aVar).f764e.readInt();
        }
        iconCompat.f12f = i5;
        iconCompat.f13g = (ColorStateList) aVar.f(iconCompat.f13g, 6);
        String string = iconCompat.f15i;
        if (aVar.e(7)) {
            string = ((b) aVar).f764e.readString();
        }
        iconCompat.f15i = string;
        String string2 = iconCompat.j;
        if (aVar.e(8)) {
            string2 = ((b) aVar).f764e.readString();
        }
        iconCompat.j = string2;
        iconCompat.f14h = PorterDuff.Mode.valueOf(iconCompat.f15i);
        switch (iconCompat.f7a) {
            case -1:
                parcelable = iconCompat.f10d;
                if (parcelable == null) {
                    throw new IllegalArgumentException("Invalid icon");
                }
                break;
            case 0:
            default:
                return iconCompat;
            case 1:
            case 5:
                parcelable = iconCompat.f10d;
                if (parcelable == null) {
                    byte[] bArr3 = iconCompat.f9c;
                    iconCompat.f8b = bArr3;
                    iconCompat.f7a = 3;
                    iconCompat.f11e = 0;
                    iconCompat.f12f = bArr3.length;
                }
                return iconCompat;
            case 2:
            case 4:
            case 6:
                String str = new String(iconCompat.f9c, Charset.forName("UTF-16"));
                iconCompat.f8b = str;
                if (iconCompat.f7a == 2 && iconCompat.j == null) {
                    iconCompat.j = str.split(":", -1)[0];
                }
                return iconCompat;
            case 3:
                iconCompat.f8b = iconCompat.f9c;
                return iconCompat;
        }
        iconCompat.f8b = parcelable;
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, a aVar) {
        aVar.getClass();
        iconCompat.f15i = iconCompat.f14h.name();
        switch (iconCompat.f7a) {
            case -1:
            case 1:
            case 5:
                iconCompat.f10d = (Parcelable) iconCompat.f8b;
                break;
            case 2:
                iconCompat.f9c = ((String) iconCompat.f8b).getBytes(Charset.forName("UTF-16"));
                break;
            case 3:
                iconCompat.f9c = (byte[]) iconCompat.f8b;
                break;
            case 4:
            case 6:
                iconCompat.f9c = iconCompat.f8b.toString().getBytes(Charset.forName("UTF-16"));
                break;
        }
        int i2 = iconCompat.f7a;
        if (-1 != i2) {
            aVar.h(1);
            ((b) aVar).f764e.writeInt(i2);
        }
        byte[] bArr = iconCompat.f9c;
        if (bArr != null) {
            aVar.h(2);
            int length = bArr.length;
            Parcel parcel = ((b) aVar).f764e;
            parcel.writeInt(length);
            parcel.writeByteArray(bArr);
        }
        Parcelable parcelable = iconCompat.f10d;
        if (parcelable != null) {
            aVar.h(3);
            ((b) aVar).f764e.writeParcelable(parcelable, 0);
        }
        int i3 = iconCompat.f11e;
        if (i3 != 0) {
            aVar.h(4);
            ((b) aVar).f764e.writeInt(i3);
        }
        int i4 = iconCompat.f12f;
        if (i4 != 0) {
            aVar.h(5);
            ((b) aVar).f764e.writeInt(i4);
        }
        ColorStateList colorStateList = iconCompat.f13g;
        if (colorStateList != null) {
            aVar.h(6);
            ((b) aVar).f764e.writeParcelable(colorStateList, 0);
        }
        String str = iconCompat.f15i;
        if (str != null) {
            aVar.h(7);
            ((b) aVar).f764e.writeString(str);
        }
        String str2 = iconCompat.j;
        if (str2 != null) {
            aVar.h(8);
            ((b) aVar).f764e.writeString(str2);
        }
    }
}
