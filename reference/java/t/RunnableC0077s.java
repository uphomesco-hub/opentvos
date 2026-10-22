package t;

import android.view.View;
import com.sid.tvos.MainActivity;
import com.sid.tvos.RemapService;

/* JADX INFO: renamed from: t.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0077s implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f910a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f911b;

    public /* synthetic */ RunnableC0077s(Object obj, int i2) {
        this.f910a = i2;
        this.f911b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f910a) {
            case 0:
                ((View) this.f911b).setLayerType(0, null);
                break;
            case 1:
                MainActivity.lambda$showCwViews$63((View) this.f911b);
                break;
            case 2:
                ((View) this.f911b).requestFocus();
                break;
            default:
                ((RemapService) this.f911b).lambda$new$1();
                break;
        }
    }
}
