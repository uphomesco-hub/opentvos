package k;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;

/* JADX INFO: renamed from: k.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnApplyWindowInsetsListenerC0034i implements View.OnApplyWindowInsetsListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public I f467a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f468b;

    public ViewOnApplyWindowInsetsListenerC0034i(View view, InterfaceC0030e interfaceC0030e) {
        this.f468b = view;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        I iA = I.a(windowInsets, view);
        if (Build.VERSION.SDK_INT < 30) {
            j.a(windowInsets, this.f468b);
            if (iA.equals(this.f467a)) {
                throw null;
            }
        }
        this.f467a = iA;
        throw null;
    }
}
