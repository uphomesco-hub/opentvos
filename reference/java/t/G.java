package t;

import android.net.Uri;
import com.sid.tvos.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class G implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f795a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f796b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Uri f797c;

    public /* synthetic */ G(MainActivity mainActivity, Uri uri, int i2) {
        this.f795a = i2;
        this.f796b = mainActivity;
        this.f797c = uri;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f795a) {
            case 0:
                this.f796b.lambda$buildCwArtRows$154(this.f797c);
                break;
            case 1:
                this.f796b.lambda$buildCwArtRows$153(this.f797c);
                break;
            default:
                this.f796b.lambda$onActivityResult$133(this.f797c);
                break;
        }
    }
}
