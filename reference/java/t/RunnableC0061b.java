package t;

import android.graphics.Bitmap;
import com.sid.tvos.MainActivity;

/* JADX INFO: renamed from: t.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0061b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f853a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f854b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Bitmap f855c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Bitmap[] f856d;

    public /* synthetic */ RunnableC0061b(MainActivity mainActivity, Bitmap bitmap, Bitmap[] bitmapArr, int i2) {
        this.f853a = i2;
        this.f854b = mainActivity;
        this.f855c = bitmap;
        this.f856d = bitmapArr;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f853a) {
            case 0:
                this.f854b.lambda$frostShelf$41(this.f855c, this.f856d);
                break;
            default:
                this.f854b.lambda$prefrost$37(this.f855c, this.f856d);
                break;
        }
    }
}
