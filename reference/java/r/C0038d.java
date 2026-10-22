package r;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* JADX INFO: renamed from: r.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0038d extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f598a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ androidx.recyclerview.widget.o f599b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f600c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f601d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0043i f602e;

    public C0038d(C0043i c0043i, androidx.recyclerview.widget.o oVar, View view, ViewPropertyAnimator viewPropertyAnimator) {
        this.f602e = c0043i;
        this.f599b = oVar;
        this.f600c = view;
        this.f601d = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.f598a) {
            case 1:
                this.f600c.setAlpha(1.0f);
                break;
            default:
                super.onAnimationCancel(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f598a) {
            case 0:
                this.f601d.setListener(null);
                this.f600c.setAlpha(1.0f);
                C0043i c0043i = this.f602e;
                androidx.recyclerview.widget.o oVar = this.f599b;
                c0043i.c(oVar);
                c0043i.f658q.remove(oVar);
                c0043i.i();
                break;
            default:
                this.f601d.setListener(null);
                C0043i c0043i2 = this.f602e;
                androidx.recyclerview.widget.o oVar2 = this.f599b;
                c0043i2.c(oVar2);
                c0043i2.f656o.remove(oVar2);
                c0043i2.i();
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f598a) {
            case 0:
                this.f602e.getClass();
                break;
            default:
                this.f602e.getClass();
                break;
        }
    }

    public C0038d(C0043i c0043i, androidx.recyclerview.widget.o oVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f602e = c0043i;
        this.f599b = oVar;
        this.f601d = viewPropertyAnimator;
        this.f600c = view;
    }
}
