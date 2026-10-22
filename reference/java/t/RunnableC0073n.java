package t;

import com.sid.tvos.MainActivity;

/* JADX INFO: renamed from: t.n, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0073n implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f894a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f895b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f896c;

    public /* synthetic */ RunnableC0073n(int i2, MainActivity mainActivity, String str) {
        this.f894a = i2;
        this.f895b = mainActivity;
        this.f896c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f894a) {
            case 0:
                this.f895b.lambda$showInputs$200(this.f896c);
                break;
            case 1:
                this.f895b.lambda$reloadKeepingFocus$30(this.f896c);
                break;
            case 2:
                this.f895b.lambda$onResume$3(this.f896c);
                break;
            case 3:
                this.f895b.lambda$onNewIntent$228(this.f896c);
                break;
            default:
                this.f895b.lambda$new$56(this.f896c);
                break;
        }
    }
}
