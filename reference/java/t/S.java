package t;

import android.app.ActivityManager;
import android.graphics.Bitmap;
import android.os.Parcelable;
import android.view.KeyEvent;
import android.view.View;
import com.sid.tvos.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class S implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f824a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f825b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ KeyEvent.Callback f826c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Parcelable f827d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f828e;

    public /* synthetic */ S(View view, long j, ActivityManager.MemoryInfo memoryInfo, View view2) {
        this.f826c = view;
        this.f825b = j;
        this.f827d = memoryInfo;
        this.f828e = view2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f824a) {
            case 0:
                ((MainActivity) this.f826c).lambda$playFrostSteps$39((Bitmap) this.f827d, (Bitmap) this.f828e, this.f825b);
                break;
            default:
                MainActivity.lambda$updateRam$224((View) this.f826c, this.f825b, (ActivityManager.MemoryInfo) this.f827d, (View) this.f828e);
                break;
        }
    }

    public /* synthetic */ S(MainActivity mainActivity, Bitmap bitmap, Bitmap bitmap2, long j) {
        this.f826c = mainActivity;
        this.f827d = bitmap;
        this.f828e = bitmap2;
        this.f825b = j;
    }
}
