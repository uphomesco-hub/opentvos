package t;

import android.view.View;
import com.sid.tvos.MainActivity;

/* JADX INFO: renamed from: t.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0067h implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f874a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f875b;

    public /* synthetic */ ViewOnClickListenerC0067h(Object obj, int i2) {
        this.f874a = i2;
        this.f875b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f874a) {
            case 0:
                ((MainActivity) this.f875b).lambda$showControlCenter$189(view);
                break;
            case 1:
                ((MainActivity) this.f875b).showWifiMenu(view);
                break;
            case 2:
                ((MainActivity) this.f875b).showBluetoothMenu(view);
                break;
            case 3:
                ((MainActivity) this.f875b).lambda$setUpTopBar$71(view);
                break;
            case 4:
                ((MainActivity) this.f875b).showSettingsMenu(view);
                break;
            case 5:
                ((MainActivity) this.f875b).lambda$setUpStatusPill$79(view);
                break;
            case 6:
                ((MainActivity) this.f875b).lambda$closeAllButton$219(view);
                break;
            default:
                ((Runnable) this.f875b).run();
                break;
        }
    }
}
