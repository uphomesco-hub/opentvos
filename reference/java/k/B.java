package k;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class B extends H {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f445f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static Method f446g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static Class f447h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static Field f448i;
    public static Field j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WindowInsets f449c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public f.c f450d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public f.c f451e;

    public B(I i2, WindowInsets windowInsets) {
        super(i2);
        this.f450d = null;
        this.f449c = windowInsets;
    }

    private f.c m(View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
        }
        if (!f445f) {
            n();
        }
        Method method = f446g;
        if (method != null && f447h != null && f448i != null) {
            try {
                Object objInvoke = method.invoke(view, null);
                if (objInvoke == null) {
                    Log.w("WindowInsetsCompat", "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new NullPointerException());
                    return null;
                }
                Rect rect = (Rect) f448i.get(j.get(objInvoke));
                if (rect != null) {
                    return f.c.a(rect.left, rect.top, rect.right, rect.bottom);
                }
                return null;
            } catch (ReflectiveOperationException e2) {
                Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e2.getMessage(), e2);
            }
        }
        return null;
    }

    @SuppressLint({"PrivateApi"})
    private static void n() {
        try {
            f446g = View.class.getDeclaredMethod("getViewRootImpl", null);
            Class<?> cls = Class.forName("android.view.View$AttachInfo");
            f447h = cls;
            f448i = cls.getDeclaredField("mVisibleInsets");
            j = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
            f448i.setAccessible(true);
            j.setAccessible(true);
        } catch (ReflectiveOperationException e2) {
            Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e2.getMessage(), e2);
        }
        f445f = true;
    }

    @Override // k.H
    public void d(View view) {
        f.c cVarM = m(view);
        if (cVarM == null) {
            cVarM = f.c.f401e;
        }
        o(cVarM);
    }

    @Override // k.H
    public boolean equals(Object obj) {
        if (super.equals(obj)) {
            return Objects.equals(this.f451e, ((B) obj).f451e);
        }
        return false;
    }

    @Override // k.H
    public final f.c g() {
        if (this.f450d == null) {
            WindowInsets windowInsets = this.f449c;
            this.f450d = f.c.a(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        }
        return this.f450d;
    }

    @Override // k.H
    public boolean i() {
        return this.f449c.isRound();
    }

    public void o(f.c cVar) {
        this.f451e = cVar;
    }

    @Override // k.H
    public void j(f.c[] cVarArr) {
    }

    @Override // k.H
    public void k(I i2) {
    }
}
