package t;

import android.widget.PopupWindow;
import com.sid.tvos.MainActivity;

/* JADX INFO: renamed from: t.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0071l implements PopupWindow.OnDismissListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f890a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f891b;

    public /* synthetic */ C0071l(MainActivity mainActivity, int i2) {
        this.f890a = i2;
        this.f891b = mainActivity;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        switch (this.f890a) {
            case 0:
                this.f891b.lambda$showInputs$198();
                break;
            case 1:
                this.f891b.lambda$onTileLongPress$16();
                break;
            case 2:
                this.f891b.lambda$showStatusMenu$81();
                break;
            case 3:
                this.f891b.lambda$showCenteredPanel$163();
                break;
            case 4:
                this.f891b.lambda$captureRemapKey$168();
                break;
            default:
                this.f891b.lambda$showControlCenter$177();
                break;
        }
    }
}
