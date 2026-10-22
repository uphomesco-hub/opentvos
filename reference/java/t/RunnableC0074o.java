package t;

import android.content.Intent;
import android.widget.PopupWindow;
import com.sid.tvos.MainActivity;

/* JADX INFO: renamed from: t.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0074o implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f897a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f898b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f899c;

    public /* synthetic */ RunnableC0074o(Object obj, Object obj2, int i2) {
        this.f897a = i2;
        this.f898b = obj;
        this.f899c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f897a) {
            case 0:
                ((MainActivity) this.f898b).lambda$showControlCenter$190((Intent) this.f899c);
                break;
            case 1:
                ((MainActivity) this.f898b).lambda$showInputs$201((Intent) this.f899c);
                break;
            default:
                MainActivity.lambda$fadeOutThen$203((PopupWindow) this.f898b, (Runnable) this.f899c);
                break;
        }
    }
}
