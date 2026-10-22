package t;

import com.sid.tvos.MainActivity;

/* JADX INFO: renamed from: t.z, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0084z implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f927a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f928b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f929c;

    public /* synthetic */ RunnableC0084z(MainActivity mainActivity, boolean z2, int i2) {
        this.f927a = i2;
        this.f928b = mainActivity;
        this.f929c = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f927a) {
            case 0:
                this.f928b.lambda$buildAppearancePage$115(this.f929c);
                break;
            case 1:
                this.f928b.lambda$buildAppearancePage$117(this.f929c);
                break;
            case 2:
                this.f928b.lambda$buildAppearancePage$104(this.f929c);
                break;
            case 3:
                this.f928b.lambda$buildDefaultLauncherPage$101(this.f929c);
                break;
            case 4:
                this.f928b.lambda$buildCwArtRows$157(this.f929c);
                break;
            case 5:
                this.f928b.lambda$buildCwArtRows$152(this.f929c);
                break;
            case 6:
                this.f928b.lambda$onActivityResult$132(this.f929c);
                break;
            default:
                this.f928b.lambda$applyDark$160(this.f929c);
                break;
        }
    }
}
