package p;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class d extends y.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f514a;

    @Override // y.a
    public final float r(Object obj) {
        View view = (View) obj;
        switch (this.f514a) {
            case 0:
                return view.getAlpha();
            case 1:
                return view.getTranslationX();
            case 2:
                return view.getTranslationY();
            case 3:
                return view.getScaleX();
            case 4:
                return view.getScaleY();
            case 5:
                return view.getRotation();
            case 6:
                return view.getRotationX();
            default:
                return view.getRotationY();
        }
    }

    @Override // y.a
    public final void w(Object obj, float f2) {
        View view = (View) obj;
        switch (this.f514a) {
            case 0:
                view.setAlpha(f2);
                break;
            case 1:
                view.setTranslationX(f2);
                break;
            case 2:
                view.setTranslationY(f2);
                break;
            case 3:
                view.setScaleX(f2);
                break;
            case 4:
                view.setScaleY(f2);
                break;
            case 5:
                view.setRotation(f2);
                break;
            case 6:
                view.setRotationX(f2);
                break;
            default:
                view.setRotationY(f2);
                break;
        }
    }
}
