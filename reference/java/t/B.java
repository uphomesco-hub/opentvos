package t;

import android.view.View;
import android.widget.PopupWindow;
import com.sid.tvos.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class B implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f773a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f774b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PopupWindow f775c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Runnable f776d;

    public /* synthetic */ B(MainActivity mainActivity, PopupWindow popupWindow, Runnable runnable, int i2) {
        this.f773a = i2;
        this.f774b = mainActivity;
        this.f775c = popupWindow;
        this.f776d = runnable;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f773a) {
            case 0:
                this.f774b.lambda$addMenuRow$83(this.f775c, this.f776d, view);
                break;
            case 1:
                this.f774b.lambda$addInputRow$202(this.f775c, this.f776d, view);
                break;
            default:
                this.f774b.lambda$ccRound$194(this.f775c, this.f776d, view);
                break;
        }
    }
}
