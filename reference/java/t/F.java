package t;

import android.graphics.Bitmap;
import com.sid.tvos.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class F implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f791a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f792b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f793c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Bitmap f794d;

    public /* synthetic */ F(MainActivity mainActivity, int i2, Bitmap bitmap, int i3) {
        this.f791a = i3;
        this.f792b = mainActivity;
        this.f793c = i2;
        this.f794d = bitmap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f791a) {
            case 0:
                this.f792b.lambda$blurBackdrop$10(this.f793c, this.f794d);
                break;
            case 1:
                this.f792b.lambda$showShelf$36(this.f793c, this.f794d);
                break;
            case 2:
                this.f792b.lambda$frostShelf$42(this.f794d, this.f793c);
                break;
            case 3:
                this.f792b.lambda$prefrost$38(this.f794d, this.f793c);
                break;
            default:
                this.f792b.lambda$ownBlur$34(this.f794d, 6, this.f793c);
                break;
        }
    }

    public /* synthetic */ F(MainActivity mainActivity, Bitmap bitmap, int i2, int i3) {
        this.f791a = i3;
        this.f792b = mainActivity;
        this.f794d = bitmap;
        this.f793c = i2;
    }
}
