package t;

import android.graphics.Bitmap;
import com.sid.tvos.MainActivity;

/* JADX INFO: renamed from: t.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0075p implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f900a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f901b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Bitmap f902c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f903d;

    public /* synthetic */ RunnableC0075p(Bitmap bitmap, MainActivity mainActivity, String str) {
        this.f900a = 2;
        this.f901b = mainActivity;
        this.f903d = str;
        this.f902c = bitmap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f900a) {
            case 0:
                this.f901b.lambda$new$65(this.f902c, this.f903d);
                break;
            case 1:
                this.f901b.lambda$new$54(this.f902c, this.f903d);
                break;
            default:
                this.f901b.lambda$new$53(this.f903d, this.f902c);
                break;
        }
    }

    public /* synthetic */ RunnableC0075p(MainActivity mainActivity, Bitmap bitmap, String str, int i2) {
        this.f900a = i2;
        this.f901b = mainActivity;
        this.f902c = bitmap;
        this.f903d = str;
    }
}
