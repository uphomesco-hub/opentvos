package r;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: renamed from: r.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0046l extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f674a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0048n f675b;

    public C0046l(C0048n c0048n) {
        this.f675b = c0048n;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f674a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (this.f674a) {
            this.f674a = false;
            return;
        }
        C0048n c0048n = this.f675b;
        if (((Float) c0048n.f707z.getAnimatedValue()).floatValue() == 0.0f) {
            c0048n.A = 0;
            c0048n.d(0);
        } else {
            c0048n.A = 2;
            c0048n.f700s.invalidate();
        }
    }
}
