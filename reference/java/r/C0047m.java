package r;

import android.animation.ValueAnimator;

/* JADX INFO: renamed from: r.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0047m implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0048n f678a;

    public C0047m(C0048n c0048n) {
        this.f678a = c0048n;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int iFloatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
        C0048n c0048n = this.f678a;
        c0048n.f685c.setAlpha(iFloatValue);
        c0048n.f686d.setAlpha(iFloatValue);
        c0048n.f700s.invalidate();
    }
}
