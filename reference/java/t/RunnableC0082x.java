package t;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.sid.tvos.MainActivity;
import java.util.List;

/* JADX INFO: renamed from: t.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0082x implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f921a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f922b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f923c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f924d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f925e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f926f;

    public /* synthetic */ RunnableC0082x(MainActivity mainActivity, int i2, List list, boolean z2, List list2) {
        this.f921a = 1;
        this.f922b = mainActivity;
        this.f923c = i2;
        this.f925e = list;
        this.f924d = z2;
        this.f926f = list2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f921a) {
            case 0:
                this.f922b.lambda$refreshBackdrop$13((Bitmap) this.f925e, this.f924d, this.f923c, (Drawable) this.f926f);
                break;
            case 1:
                this.f922b.lambda$applyDark$161(this.f923c, (List) this.f925e, this.f924d, (List) this.f926f);
                break;
            default:
                this.f922b.lambda$onResume$8((String) this.f925e, this.f924d, this.f923c, (String) this.f926f);
                break;
        }
    }

    public /* synthetic */ RunnableC0082x(MainActivity mainActivity, Object obj, boolean z2, int i2, Object obj2, int i3) {
        this.f921a = i3;
        this.f922b = mainActivity;
        this.f925e = obj;
        this.f924d = z2;
        this.f923c = i2;
        this.f926f = obj2;
    }
}
