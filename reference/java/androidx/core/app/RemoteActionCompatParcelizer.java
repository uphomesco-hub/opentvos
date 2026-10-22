package androidx.core.app;

import android.app.PendingIntent;
import android.os.Parcel;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
import s.a;
import s.b;
import s.c;

/* JADX INFO: loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(a aVar) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        c cVarG = remoteActionCompat.f0a;
        if (aVar.e(1)) {
            cVarG = aVar.g();
        }
        remoteActionCompat.f0a = (IconCompat) cVarG;
        CharSequence charSequence = remoteActionCompat.f1b;
        if (aVar.e(2)) {
            charSequence = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((b) aVar).f764e);
        }
        remoteActionCompat.f1b = charSequence;
        CharSequence charSequence2 = remoteActionCompat.f2c;
        if (aVar.e(3)) {
            charSequence2 = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((b) aVar).f764e);
        }
        remoteActionCompat.f2c = charSequence2;
        remoteActionCompat.f3d = (PendingIntent) aVar.f(remoteActionCompat.f3d, 4);
        boolean z2 = remoteActionCompat.f4e;
        if (aVar.e(5)) {
            z2 = ((b) aVar).f764e.readInt() != 0;
        }
        remoteActionCompat.f4e = z2;
        boolean z3 = remoteActionCompat.f5f;
        if (aVar.e(6)) {
            z3 = ((b) aVar).f764e.readInt() != 0;
        }
        remoteActionCompat.f5f = z3;
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, a aVar) {
        aVar.getClass();
        IconCompat iconCompat = remoteActionCompat.f0a;
        aVar.h(1);
        aVar.i(iconCompat);
        CharSequence charSequence = remoteActionCompat.f1b;
        aVar.h(2);
        Parcel parcel = ((b) aVar).f764e;
        TextUtils.writeToParcel(charSequence, parcel, 0);
        CharSequence charSequence2 = remoteActionCompat.f2c;
        aVar.h(3);
        TextUtils.writeToParcel(charSequence2, parcel, 0);
        PendingIntent pendingIntent = remoteActionCompat.f3d;
        aVar.h(4);
        parcel.writeParcelable(pendingIntent, 0);
        boolean z2 = remoteActionCompat.f4e;
        aVar.h(5);
        parcel.writeInt(z2 ? 1 : 0);
        boolean z3 = remoteActionCompat.f5f;
        aVar.h(6);
        parcel.writeInt(z3 ? 1 : 0);
    }
}
