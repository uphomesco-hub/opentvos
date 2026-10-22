package r;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public final class K implements k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f553a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ androidx.recyclerview.widget.j f554b;

    public /* synthetic */ K(androidx.recyclerview.widget.j jVar, int i2) {
        this.f553a = i2;
        this.f554b = jVar;
    }

    @Override // r.k0
    public final int a() {
        switch (this.f553a) {
            case 0:
                androidx.recyclerview.widget.j jVar = this.f554b;
                return jVar.getWidth() - jVar.getPaddingRight();
            default:
                androidx.recyclerview.widget.j jVar2 = this.f554b;
                return jVar2.getHeight() - jVar2.getPaddingBottom();
        }
    }

    @Override // r.k0
    public final int b(View view) {
        switch (this.f553a) {
            case 0:
                return this.f554b.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((N) view.getLayoutParams())).leftMargin;
            default:
                return this.f554b.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((N) view.getLayoutParams())).topMargin;
        }
    }

    @Override // r.k0
    public final int c() {
        switch (this.f553a) {
            case 0:
                return this.f554b.getPaddingLeft();
            default:
                return this.f554b.getPaddingTop();
        }
    }

    @Override // r.k0
    public final int d(View view) {
        switch (this.f553a) {
            case 0:
                return this.f554b.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((N) view.getLayoutParams())).rightMargin;
            default:
                return this.f554b.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((N) view.getLayoutParams())).bottomMargin;
        }
    }

    @Override // r.k0
    public final View e(int i2) {
        switch (this.f553a) {
            case 0:
                break;
        }
        return this.f554b.getChildAt(i2);
    }
}
