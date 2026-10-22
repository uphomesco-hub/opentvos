package t;

import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import com.sid.tvos.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class T implements View.OnFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f829a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ KeyEvent.Callback f830b;

    public /* synthetic */ T(KeyEvent.Callback callback, int i2) {
        this.f829a = i2;
        this.f830b = callback;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z2) {
        switch (this.f829a) {
            case 0:
                MainActivity.lambda$setUpTopBar$74((ImageView) this.f830b, view, z2);
                break;
            default:
                ((MainActivity) this.f830b).lambda$recentCard$212(view, z2);
                break;
        }
    }
}
