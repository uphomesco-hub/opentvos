package t;

import com.sid.tvos.MainActivity;

/* JADX INFO: renamed from: t.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0062c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f860a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f861b;

    public /* synthetic */ RunnableC0062c(MainActivity mainActivity, int i2) {
        this.f860a = i2;
        this.f861b = mainActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f860a) {
            case 0:
                this.f861b.lambda$showControlCenter$180();
                break;
            case 1:
                this.f861b.lambda$closeAllButton$218();
                break;
            case 2:
                this.f861b.updateRam();
                break;
            case 3:
                this.f861b.lambda$playCloseAnimation$69();
                break;
            case 4:
                this.f861b.refreshBackdrop();
                break;
            case 5:
                this.f861b.lambda$showControlCenter$191();
                break;
            case 6:
                this.f861b.lambda$openFolder$14();
                break;
            case 7:
                this.f861b.lambda$showWifiMenu$85();
                break;
            case 8:
                this.f861b.openBluetooth();
                break;
            case 9:
                this.f861b.lambda$startMove$28();
                break;
            case 10:
                this.f861b.lambda$buildAppearancePage$113();
                break;
            case 11:
                this.f861b.endBlurPreview();
                break;
            case 12:
                this.f861b.lambda$buildSettingsPage$89();
                break;
            case 13:
                this.f861b.lambda$buildSettingsPage$96();
                break;
            case 14:
                this.f861b.lambda$buildSettingsPage$91();
                break;
            case 15:
                this.f861b.showRemapMenu();
                break;
            case 16:
                this.f861b.lambda$buildSettingsPage$94();
                break;
            case 17:
                this.f861b.openAssistant();
                break;
            case 18:
                this.f861b.lambda$buildSettingsPage$98();
                break;
            case 19:
                this.f861b.lambda$showRemapMenu$165();
                break;
            case 20:
                this.f861b.captureRemapKey();
                break;
            case 21:
                this.f861b.openAirPlay();
                break;
            case 22:
                this.f861b.lambda$onActivityResult$131();
                break;
            case 23:
                this.f861b.lambda$saveRemap$176();
                break;
            case 24:
                this.f861b.lambda$new$40();
                break;
            case 25:
                this.f861b.lambda$new$46();
                break;
            case 26:
                this.f861b.lambda$new$57();
                break;
            case 27:
                this.f861b.lambda$new$67();
                break;
            case 28:
                this.f861b.applyCwBackground();
                break;
            default:
                this.f861b.lambda$showRecents$205();
                break;
        }
    }
}
