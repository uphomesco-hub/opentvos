package k;

import android.os.Build;
import android.view.View;
import java.lang.reflect.Field;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public abstract class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Field f469a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f470b;

    static {
        new AtomicInteger(1);
        f470b = false;
        new WeakHashMap();
    }

    public static View.AccessibilityDelegate a(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return o.a(view);
        }
        if (f470b) {
            return null;
        }
        if (f469a == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                f469a = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                f470b = true;
                return null;
            }
        }
        Object obj = f469a.get(view);
        if (obj instanceof View.AccessibilityDelegate) {
            return (View.AccessibilityDelegate) obj;
        }
        return null;
    }

    public static void b(View view, C0027b c0027b) {
        if (c0027b == null && (a(view) instanceof C0026a)) {
            c0027b = new C0027b();
        }
        view.setAccessibilityDelegate(c0027b == null ? null : c0027b.f460b);
    }
}
