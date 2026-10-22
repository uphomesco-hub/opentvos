package i;

import android.util.Base64;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f428a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f429b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f430c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f431d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f432e;

    public d(String str, String str2, String str3, List list) {
        this.f428a = str;
        this.f429b = str2;
        this.f430c = str3;
        list.getClass();
        this.f431d = list;
        this.f432e = str + "-" + str2 + "-" + str3;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f428a + ", mProviderPackage: " + this.f429b + ", mQuery: " + this.f430c + ", mCertificates:");
        int i2 = 0;
        while (true) {
            List list = this.f431d;
            if (i2 >= list.size()) {
                sb.append("}mCertificatesArray: 0");
                return sb.toString();
            }
            sb.append(" [");
            List list2 = (List) list.get(i2);
            for (int i3 = 0; i3 < list2.size(); i3++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString((byte[]) list2.get(i3), 0));
                sb.append("\"");
            }
            sb.append(" ]");
            i2++;
        }
    }
}
