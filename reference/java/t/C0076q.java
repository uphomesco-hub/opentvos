package t;

import android.animation.ValueAnimator;
import android.view.View;
import android.widget.ImageView;
import com.sid.tvos.MainActivity;

/* JADX INFO: renamed from: t.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0076q implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f904a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f905b;

    public /* synthetic */ C0076q(View view, int i2) {
        this.f904a = i2;
        this.f905b = view;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f904a) {
            case 0:
                MainActivity.lambda$updateRam$223(this.f905b, valueAnimator);
                break;
            default:
                MainActivity.lambda$setUpTopBar$73((ImageView) this.f905b, valueAnimator);
                break;
        }
    }
}
