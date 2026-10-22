package t;

import android.graphics.Bitmap;
import android.widget.ImageView;

/* JADX INFO: renamed from: t.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0063d implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f862a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ImageView f863b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Bitmap f864c;

    public /* synthetic */ RunnableC0063d(ImageView imageView, Bitmap bitmap, int i2) {
        this.f862a = i2;
        this.f863b = imageView;
        this.f864c = bitmap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f862a) {
            case 0:
                this.f863b.setImageBitmap(this.f864c);
                break;
            case 1:
                this.f863b.setImageBitmap(this.f864c);
                break;
            default:
                this.f863b.setImageBitmap(this.f864c);
                break;
        }
    }
}
