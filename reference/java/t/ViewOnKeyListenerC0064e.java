package t;

import android.view.KeyEvent;
import android.view.View;
import com.sid.tvos.MainActivity;

/* JADX INFO: renamed from: t.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnKeyListenerC0064e implements View.OnKeyListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f865a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f866b;

    public /* synthetic */ ViewOnKeyListenerC0064e(MainActivity mainActivity, int i2) {
        this.f865a = i2;
        this.f866b = mainActivity;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i2, KeyEvent keyEvent) {
        switch (this.f865a) {
            case 0:
                return this.f866b.lambda$enterFullScreen$204(view, i2, keyEvent);
            case 1:
                return this.f866b.lambda$paceKeys$226(view, i2, keyEvent);
            case 2:
                return this.f866b.lambda$setUpTopBar$72(view, i2, keyEvent);
            case 3:
                return this.f866b.lambda$recentCard$214(view, i2, keyEvent);
            default:
                return this.f866b.lambda$setUpStatusPill$80(view, i2, keyEvent);
        }
    }
}
