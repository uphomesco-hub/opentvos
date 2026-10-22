package k;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class p {
    public static CharSequence a(View view) {
        return view.getStateDescription();
    }

    public static void b(View view, CharSequence charSequence) {
        view.setStateDescription(charSequence);
    }
}
