package r;

import android.animation.ValueAnimator;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;

/* JADX INFO: renamed from: r.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0044j implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f666a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f667b;

    public /* synthetic */ RunnableC0044j(Object obj, int i2) {
        this.f666a = i2;
        this.f667b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj = this.f667b;
        switch (this.f666a) {
            case 0:
                C0048n c0048n = (C0048n) obj;
                int i2 = c0048n.A;
                ValueAnimator valueAnimator = c0048n.f707z;
                if (i2 == 1) {
                    valueAnimator.cancel();
                } else if (i2 != 2) {
                }
                c0048n.A = 3;
                valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
                valueAnimator.setDuration(500);
                valueAnimator.start();
                break;
            default:
                ((StaggeredGridLayoutManager) obj).d();
                break;
        }
    }
}
