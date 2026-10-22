package t;

import android.view.View;
import com.sid.tvos.MainActivity;

/* JADX INFO: renamed from: t.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0068i implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f876a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f877b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f878c;

    public /* synthetic */ RunnableC0068i(MainActivity mainActivity, View view, int i2) {
        this.f876a = i2;
        this.f877b = mainActivity;
        this.f878c = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f876a) {
            case 0:
                this.f877b.lambda$closeAllButton$217(this.f878c);
                break;
            case 1:
                this.f877b.lambda$centreRecent$220(this.f878c);
                break;
            case 2:
                this.f877b.lambda$buildAppearancePage$112(this.f878c);
                break;
            case 3:
                this.f877b.lambda$closeRecentApp$221(this.f878c);
                break;
            case 4:
                this.f877b.lambda$makeCwCard$49(this.f878c);
                break;
            case 5:
                this.f877b.lambda$buildDefaultLauncherPage$100(this.f878c);
                break;
            default:
                this.f877b.lambda$buildCwArtRows$149(this.f878c);
                break;
        }
    }
}
