package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Parcelable;
import android.util.Log;
import androidx.versionedparcelable.CustomVersionedParcelable;
import g.a;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final PorterDuff.Mode f6k = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f8b;
    public String j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f7a = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f9c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Parcelable f10d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ColorStateList f13g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public PorterDuff.Mode f14h = f6k;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f15i = null;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:47:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:50:0x0108  */
    public final String toString() {
        String str;
        int height;
        int iIntValue;
        int i2;
        if (this.f7a == -1) {
            return String.valueOf(this.f8b);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        switch (this.f7a) {
            case 1:
                str = "BITMAP";
                break;
            case 2:
                str = "RESOURCE";
                break;
            case 3:
                str = "DATA";
                break;
            case 4:
                str = "URI";
                break;
            case 5:
                str = "BITMAP_MASKABLE";
                break;
            case 6:
                str = "URI_MASKABLE";
                break;
            default:
                str = "UNKNOWN";
                break;
        }
        sb.append(str);
        switch (this.f7a) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.f8b).getWidth());
                sb.append("x");
                height = ((Bitmap) this.f8b).getHeight();
                sb.append(height);
                if (this.f13g != null) {
                    sb.append(" tint=");
                    sb.append(this.f13g);
                }
                if (this.f14h != f6k) {
                    sb.append(" mode=");
                    sb.append(this.f14h);
                }
                sb.append(")");
                return sb.toString();
            case 2:
                sb.append(" pkg=");
                sb.append(this.j);
                sb.append(" id=");
                int i3 = this.f7a;
                if (i3 == -1 && (i2 = Build.VERSION.SDK_INT) >= 23) {
                    Icon iconA = a.a(this.f8b);
                    if (i2 >= 28) {
                        iIntValue = iconA.getResId();
                    } else {
                        try {
                            iIntValue = ((Integer) iconA.getClass().getMethod("getResId", null).invoke(iconA, null)).intValue();
                        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e2) {
                            Log.e("IconCompat", "Unable to get icon resource", e2);
                            iIntValue = 0;
                        }
                    }
                    break;
                } else {
                    if (i3 != 2) {
                        throw new IllegalStateException("called getResId() on " + this);
                    }
                    iIntValue = this.f11e;
                }
                sb.append(String.format("0x%08x", Integer.valueOf(iIntValue)));
                if (this.f13g != null) {
                    sb.append(" tint=");
                    sb.append(this.f13g);
                }
                if (this.f14h != f6k) {
                    sb.append(" mode=");
                    sb.append(this.f14h);
                }
                sb.append(")");
                return sb.toString();
            case 3:
                sb.append(" len=");
                sb.append(this.f11e);
                if (this.f12f != 0) {
                    sb.append(" off=");
                    height = this.f12f;
                    sb.append(height);
                }
                if (this.f13g != null) {
                    sb.append(" tint=");
                    sb.append(this.f13g);
                }
                if (this.f14h != f6k) {
                    sb.append(" mode=");
                    sb.append(this.f14h);
                }
                sb.append(")");
                return sb.toString();
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.f8b);
                if (this.f13g != null) {
                    sb.append(" tint=");
                    sb.append(this.f13g);
                }
                if (this.f14h != f6k) {
                    sb.append(" mode=");
                    sb.append(this.f14h);
                }
                sb.append(")");
                return sb.toString();
            default:
                if (this.f13g != null) {
                    sb.append(" tint=");
                    sb.append(this.f13g);
                }
                if (this.f14h != f6k) {
                    sb.append(" mode=");
                    sb.append(this.f14h);
                }
                sb.append(")");
                return sb.toString();
        }
    }
}
