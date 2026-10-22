package t;

import android.net.Uri;
import android.widget.ImageView;
import com.sid.tvos.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class E implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f786a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f787b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Uri f788c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f789d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ImageView[] f790e;

    public /* synthetic */ E(MainActivity mainActivity, Uri uri, int i2, ImageView[] imageViewArr, int i3) {
        this.f786a = i3;
        this.f787b = mainActivity;
        this.f788c = uri;
        this.f789d = i2;
        this.f790e = imageViewArr;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f786a) {
            case 0:
                this.f787b.lambda$buildProfilePage$140(this.f788c, this.f789d, this.f790e);
                break;
            default:
                this.f787b.lambda$buildCwArtRows$156(this.f788c, this.f789d, this.f790e);
                break;
        }
    }
}
