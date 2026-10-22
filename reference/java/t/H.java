package t;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.sid.tvos.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class H implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f798a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ImageView[] f799b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Bitmap f800c;

    public /* synthetic */ H(ImageView[] imageViewArr, Bitmap bitmap, int i2) {
        this.f798a = i2;
        this.f799b = imageViewArr;
        this.f800c = bitmap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f798a) {
            case 0:
                MainActivity.lambda$buildProfilePage$139(this.f799b, this.f800c);
                break;
            default:
                MainActivity.lambda$buildCwArtRows$155(this.f799b, this.f800c);
                break;
        }
    }
}
