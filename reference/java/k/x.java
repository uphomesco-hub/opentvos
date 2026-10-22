package k;

import android.graphics.Rect;
import android.util.Log;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public final class x extends A {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Field f486c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static boolean f487d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Constructor f488e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f489f = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowInsets f490a = e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public f.c f491b;

    private static WindowInsets e() {
        if (!f487d) {
            try {
                f486c = WindowInsets.class.getDeclaredField("CONSUMED");
            } catch (ReflectiveOperationException e2) {
                Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets.CONSUMED field", e2);
            }
            f487d = true;
        }
        Field field = f486c;
        if (field != null) {
            try {
                WindowInsets windowInsets = (WindowInsets) field.get(null);
                if (windowInsets != null) {
                    return new WindowInsets(windowInsets);
                }
            } catch (ReflectiveOperationException e3) {
                Log.i("WindowInsetsCompat", "Could not get value from WindowInsets.CONSUMED field", e3);
            }
        }
        if (!f489f) {
            try {
                f488e = WindowInsets.class.getConstructor(Rect.class);
            } catch (ReflectiveOperationException e4) {
                Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets(Rect) constructor", e4);
            }
            f489f = true;
        }
        Constructor constructor = f488e;
        if (constructor != null) {
            try {
                return (WindowInsets) constructor.newInstance(new Rect());
            } catch (ReflectiveOperationException e5) {
                Log.i("WindowInsetsCompat", "Could not invoke WindowInsets(Rect) constructor", e5);
            }
        }
        return null;
    }

    @Override // k.A
    public I b() {
        a();
        I iA = I.a(this.f490a, null);
        H h2 = iA.f456a;
        h2.j(null);
        h2.l(this.f491b);
        return iA;
    }

    @Override // k.A
    public void c(f.c cVar) {
        this.f491b = cVar;
    }

    @Override // k.A
    public void d(f.c cVar) {
        WindowInsets windowInsets = this.f490a;
        if (windowInsets != null) {
            this.f490a = windowInsets.replaceSystemWindowInsets(cVar.f402a, cVar.f403b, cVar.f404c, cVar.f405d);
        }
    }
}
