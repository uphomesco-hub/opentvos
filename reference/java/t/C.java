package t;

import android.widget.PopupWindow;
import com.sid.tvos.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f777a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f778b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PopupWindow f779c;

    public /* synthetic */ C(MainActivity mainActivity, PopupWindow popupWindow, int i2) {
        this.f777a = i2;
        this.f778b = mainActivity;
        this.f779c = popupWindow;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f777a) {
            case 0:
                this.f778b.lambda$showControlCenter$183(this.f779c);
                break;
            case 1:
                this.f778b.lambda$showControlCenter$185(this.f779c);
                break;
            case 2:
                this.f778b.lambda$showControlCenter$186(this.f779c);
                break;
            case 3:
                this.f778b.lambda$showControlCenter$188(this.f779c);
                break;
            default:
                this.f778b.lambda$track$227(this.f779c);
                break;
        }
    }
}
