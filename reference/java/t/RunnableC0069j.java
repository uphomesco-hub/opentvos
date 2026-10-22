package t;

import android.graphics.Bitmap;
import android.view.View;
import com.sid.tvos.MainActivity;

/* JADX INFO: renamed from: t.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0069j implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f879a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f880b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f881c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f882d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f883e;

    public /* synthetic */ RunnableC0069j(MainActivity mainActivity, Object obj, boolean z2, int i2, int i3) {
        this.f879a = i3;
        this.f880b = mainActivity;
        this.f883e = obj;
        this.f881c = z2;
        this.f882d = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f879a) {
            case 0:
                this.f880b.lambda$closeRecentApp$222((View) this.f883e, this.f881c, this.f882d);
                break;
            default:
                this.f880b.lambda$blurBackdrop$11((Bitmap) this.f883e, this.f881c, this.f882d);
                break;
        }
    }
}
