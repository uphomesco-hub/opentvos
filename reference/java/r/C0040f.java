package r;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* JADX INFO: renamed from: r.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0040f extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f617a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0041g f618b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f619c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ View f620d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0043i f621e;

    public /* synthetic */ C0040f(C0043i c0043i, C0041g c0041g, ViewPropertyAnimator viewPropertyAnimator, View view, int i2) {
        this.f617a = i2;
        this.f621e = c0043i;
        this.f618b = c0041g;
        this.f619c = viewPropertyAnimator;
        this.f620d = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f617a) {
            case 0:
                this.f619c.setListener(null);
                View view = this.f620d;
                view.setAlpha(1.0f);
                view.setTranslationX(0.0f);
                view.setTranslationY(0.0f);
                C0041g c0041g = this.f618b;
                androidx.recyclerview.widget.o oVar = c0041g.f626a;
                C0043i c0043i = this.f621e;
                c0043i.c(oVar);
                c0043i.f659r.remove(c0041g.f626a);
                c0043i.i();
                break;
            default:
                this.f619c.setListener(null);
                View view2 = this.f620d;
                view2.setAlpha(1.0f);
                view2.setTranslationX(0.0f);
                view2.setTranslationY(0.0f);
                C0041g c0041g2 = this.f618b;
                androidx.recyclerview.widget.o oVar2 = c0041g2.f627b;
                C0043i c0043i2 = this.f621e;
                c0043i2.c(oVar2);
                c0043i2.f659r.remove(c0041g2.f627b);
                c0043i2.i();
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f617a) {
            case 0:
                androidx.recyclerview.widget.o oVar = this.f618b.f626a;
                this.f621e.getClass();
                break;
            default:
                androidx.recyclerview.widget.o oVar2 = this.f618b.f627b;
                this.f621e.getClass();
                break;
        }
    }
}
