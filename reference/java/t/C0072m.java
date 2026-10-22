package t;

import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.media.tv.TvInputInfo;
import com.sid.tvos.MainActivity;
import java.util.Comparator;

/* JADX INFO: renamed from: t.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0072m implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f892a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f893b;

    public /* synthetic */ C0072m(Object obj, int i2) {
        this.f892a = i2;
        this.f893b = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f892a) {
            case 0:
                return ((MainActivity) this.f893b).lambda$showInputs$199((TvInputInfo) obj, (TvInputInfo) obj2);
            default:
                return MainActivity.lambda$chooseRemapAction$173((PackageManager) this.f893b, (ResolveInfo) obj, (ResolveInfo) obj2);
        }
    }
}
