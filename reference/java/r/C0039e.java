package r;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* JADX INFO: renamed from: r.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0039e extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ androidx.recyclerview.widget.o f610a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f611b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f612c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f613d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f614e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ C0043i f615f;

    public C0039e(C0043i c0043i, androidx.recyclerview.widget.o oVar, int i2, View view, int i3, ViewPropertyAnimator viewPropertyAnimator) {
        this.f615f = c0043i;
        this.f610a = oVar;
        this.f611b = i2;
        this.f612c = view;
        this.f613d = i3;
        this.f614e = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        int i2 = this.f611b;
        View view = this.f612c;
        if (i2 != 0) {
            view.setTranslationX(0.0f);
        }
        if (this.f613d != 0) {
            view.setTranslationY(0.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f614e.setListener(null);
        C0043i c0043i = this.f615f;
        androidx.recyclerview.widget.o oVar = this.f610a;
        c0043i.c(oVar);
        c0043i.f657p.remove(oVar);
        c0043i.i();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f615f.getClass();
    }
}
