package t;

import com.sid.tvos.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class P implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f815a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f816b;

    public /* synthetic */ P(MainActivity mainActivity, int i2) {
        this.f815a = i2;
        this.f816b = mainActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f815a) {
            case 0:
                this.f816b.lambda$applyStatusItems$75();
                break;
            case 1:
                this.f816b.lambda$onResume$4();
                break;
            case 2:
                this.f816b.showRecents();
                break;
            case 3:
                this.f816b.showAppearanceMenu();
                break;
            case 4:
                this.f816b.lambda$onResume$5();
                break;
            case 5:
                this.f816b.lambda$onResume$6();
                break;
            case 6:
                this.f816b.lambda$closeRecents$225();
                break;
            case 7:
                this.f816b.showInputs();
                break;
            case 8:
                this.f816b.lambda$showControlCenter$182();
                break;
            case 9:
                this.f816b.layoutCw();
                break;
            case 10:
                this.f816b.lambda$showControlCenter$184();
                break;
            case 11:
                this.f816b.lambda$closeFolder$15();
                break;
            case 12:
                this.f816b.showProfileMenu();
                break;
            case 13:
                this.f816b.lambda$showControlCenter$187();
                break;
            case 14:
                this.f816b.lambda$playCloseAnimation$70();
                break;
            default:
                this.f816b.openCast();
                break;
        }
    }
}
