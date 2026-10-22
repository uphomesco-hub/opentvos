package k;

import android.util.Log;
import android.view.View;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public abstract class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Field f482a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Field f483b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Field f484c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final boolean f485d;

    static {
        try {
            Field declaredField = View.class.getDeclaredField("mAttachInfo");
            f482a = declaredField;
            declaredField.setAccessible(true);
            Class<?> cls = Class.forName("android.view.View$AttachInfo");
            Field declaredField2 = cls.getDeclaredField("mStableInsets");
            f483b = declaredField2;
            declaredField2.setAccessible(true);
            Field declaredField3 = cls.getDeclaredField("mContentInsets");
            f484c = declaredField3;
            declaredField3.setAccessible(true);
            f485d = true;
        } catch (ReflectiveOperationException e2) {
            Log.w("WindowInsetsCompat", "Failed to get visible insets from AttachInfo " + e2.getMessage(), e2);
        }
    }
}
