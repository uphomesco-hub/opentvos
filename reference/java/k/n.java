package k;

import android.view.View;
import com.sid.tvos.R;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class n {
    public static void a(View view, q qVar) {
        b.j jVar = (b.j) view.getTag(R.id.tag_unhandled_key_listeners);
        if (jVar == null) {
            jVar = new b.j();
            view.setTag(R.id.tag_unhandled_key_listeners, jVar);
        }
        Objects.requireNonNull(qVar);
        View.OnUnhandledKeyEventListener mVar = new m();
        jVar.put(qVar, mVar);
        view.addOnUnhandledKeyEventListener(mVar);
    }

    public static CharSequence b(View view) {
        return view.getAccessibilityPaneTitle();
    }

    public static boolean c(View view) {
        return view.isAccessibilityHeading();
    }

    public static boolean d(View view) {
        return view.isScreenReaderFocusable();
    }

    public static void e(View view, q qVar) {
        View.OnUnhandledKeyEventListener onUnhandledKeyEventListener;
        b.j jVar = (b.j) view.getTag(R.id.tag_unhandled_key_listeners);
        if (jVar == null || (onUnhandledKeyEventListener = (View.OnUnhandledKeyEventListener) jVar.get(qVar)) == null) {
            return;
        }
        view.removeOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
    }

    public static <T> T f(View view, int i2) {
        return (T) view.requireViewById(i2);
    }

    public static void g(View view, boolean z2) {
        view.setAccessibilityHeading(z2);
    }

    public static void h(View view, CharSequence charSequence) {
        view.setAccessibilityPaneTitle(charSequence);
    }

    public static void i(View view, boolean z2) {
        view.setScreenReaderFocusable(z2);
    }
}
