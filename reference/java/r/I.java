package r;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class I {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f551a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f552b;

    public final void a(androidx.recyclerview.widget.o oVar) {
        View view = oVar.itemView;
        this.f551a = view.getLeft();
        this.f552b = view.getTop();
        view.getRight();
        view.getBottom();
    }
}
