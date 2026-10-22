package t;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.sid.tvos.MainActivity;

/* JADX INFO: renamed from: t.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0065f implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f867a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f868b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f869c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Bitmap f870d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f871e;

    public /* synthetic */ RunnableC0065f(MainActivity mainActivity, int i2, Drawable drawable, Bitmap bitmap) {
        this.f868b = mainActivity;
        this.f869c = i2;
        this.f871e = drawable;
        this.f870d = bitmap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f867a) {
            case 0:
                this.f868b.lambda$ownBlur$33(this.f870d, (Bitmap) this.f871e, this.f869c);
                break;
            default:
                this.f868b.lambda$refreshBackdrop$12(this.f869c, (Drawable) this.f871e, this.f870d);
                break;
        }
    }

    public /* synthetic */ RunnableC0065f(MainActivity mainActivity, Bitmap bitmap, Bitmap bitmap2, int i2) {
        this.f868b = mainActivity;
        this.f870d = bitmap;
        this.f871e = bitmap2;
        this.f869c = i2;
    }
}
