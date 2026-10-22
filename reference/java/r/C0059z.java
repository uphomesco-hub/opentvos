package r;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: renamed from: r.z, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0059z extends A {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f759d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0059z(androidx.recyclerview.widget.j jVar, int i2) {
        super(jVar);
        this.f759d = i2;
    }

    @Override // r.A
    public final int b(View view) {
        switch (this.f759d) {
            case 0:
                return this.f545a.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((N) view.getLayoutParams())).rightMargin;
            default:
                return this.f545a.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((N) view.getLayoutParams())).bottomMargin;
        }
    }

    @Override // r.A
    public final int c(View view) {
        switch (this.f759d) {
            case 0:
                N n2 = (N) view.getLayoutParams();
                return this.f545a.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) n2).leftMargin + ((ViewGroup.MarginLayoutParams) n2).rightMargin;
            default:
                N n3 = (N) view.getLayoutParams();
                return this.f545a.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) n3).topMargin + ((ViewGroup.MarginLayoutParams) n3).bottomMargin;
        }
    }

    @Override // r.A
    public final int d(View view) {
        switch (this.f759d) {
            case 0:
                N n2 = (N) view.getLayoutParams();
                return this.f545a.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) n2).topMargin + ((ViewGroup.MarginLayoutParams) n2).bottomMargin;
            default:
                N n3 = (N) view.getLayoutParams();
                return this.f545a.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) n3).leftMargin + ((ViewGroup.MarginLayoutParams) n3).rightMargin;
        }
    }

    @Override // r.A
    public final int e(View view) {
        switch (this.f759d) {
            case 0:
                return this.f545a.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((N) view.getLayoutParams())).leftMargin;
            default:
                return this.f545a.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((N) view.getLayoutParams())).topMargin;
        }
    }

    @Override // r.A
    public final int f() {
        switch (this.f759d) {
            case 0:
                return this.f545a.getWidth();
            default:
                return this.f545a.getHeight();
        }
    }

    @Override // r.A
    public final int g() {
        switch (this.f759d) {
            case 0:
                androidx.recyclerview.widget.j jVar = this.f545a;
                return jVar.getWidth() - jVar.getPaddingRight();
            default:
                androidx.recyclerview.widget.j jVar2 = this.f545a;
                return jVar2.getHeight() - jVar2.getPaddingBottom();
        }
    }

    @Override // r.A
    public final int h() {
        switch (this.f759d) {
            case 0:
                return this.f545a.getPaddingRight();
            default:
                return this.f545a.getPaddingBottom();
        }
    }

    @Override // r.A
    public final int i() {
        switch (this.f759d) {
            case 0:
                return this.f545a.getWidthMode();
            default:
                return this.f545a.getHeightMode();
        }
    }

    @Override // r.A
    public final int j() {
        switch (this.f759d) {
            case 0:
                return this.f545a.getHeightMode();
            default:
                return this.f545a.getWidthMode();
        }
    }

    @Override // r.A
    public final int k() {
        switch (this.f759d) {
            case 0:
                return this.f545a.getPaddingLeft();
            default:
                return this.f545a.getPaddingTop();
        }
    }

    @Override // r.A
    public final int l() {
        switch (this.f759d) {
            case 0:
                androidx.recyclerview.widget.j jVar = this.f545a;
                return (jVar.getWidth() - jVar.getPaddingLeft()) - jVar.getPaddingRight();
            default:
                androidx.recyclerview.widget.j jVar2 = this.f545a;
                return (jVar2.getHeight() - jVar2.getPaddingTop()) - jVar2.getPaddingBottom();
        }
    }

    @Override // r.A
    public final int n(View view) {
        switch (this.f759d) {
            case 0:
                androidx.recyclerview.widget.j jVar = this.f545a;
                Rect rect = this.f547c;
                jVar.getTransformedBoundingBox(view, true, rect);
                return rect.right;
            default:
                androidx.recyclerview.widget.j jVar2 = this.f545a;
                Rect rect2 = this.f547c;
                jVar2.getTransformedBoundingBox(view, true, rect2);
                return rect2.bottom;
        }
    }

    @Override // r.A
    public final int o(View view) {
        switch (this.f759d) {
            case 0:
                androidx.recyclerview.widget.j jVar = this.f545a;
                Rect rect = this.f547c;
                jVar.getTransformedBoundingBox(view, true, rect);
                return rect.left;
            default:
                androidx.recyclerview.widget.j jVar2 = this.f545a;
                Rect rect2 = this.f547c;
                jVar2.getTransformedBoundingBox(view, true, rect2);
                return rect2.top;
        }
    }

    @Override // r.A
    public final void p(int i2) {
        switch (this.f759d) {
            case 0:
                this.f545a.offsetChildrenHorizontal(i2);
                break;
            default:
                this.f545a.offsetChildrenVertical(i2);
                break;
        }
    }
}
