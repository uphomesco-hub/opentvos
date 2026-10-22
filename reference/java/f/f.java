package f;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class f extends y.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Class f408a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Constructor f409b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Method f410c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Method f411d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static boolean f412e = false;

    public static boolean y(Object obj, String str, int i2, boolean z2) throws NoSuchMethodException {
        z();
        try {
            return ((Boolean) f410c.invoke(obj, str, Integer.valueOf(i2), Boolean.valueOf(z2))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static void z() throws NoSuchMethodException {
        Method method;
        Class<?> cls;
        Method method2;
        if (f412e) {
            return;
        }
        f412e = true;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(null);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            Log.e("TypefaceCompatApi21Impl", e2.getClass().getName(), e2);
            method = null;
            cls = null;
            method2 = null;
        }
        f409b = constructor;
        f408a = cls;
        f410c = method2;
        f411d = method;
    }

    @Override // y.a
    public Typeface k(Context context, e.e eVar, Resources resources) throws NoSuchMethodException {
        z();
        try {
            Object objNewInstance = f409b.newInstance(null);
            for (e.f fVar : eVar.f374a) {
                File fileQ = y.a.q(context);
                if (fileQ == null) {
                    return null;
                }
                try {
                    if (!y.a.i(fileQ, resources, fVar.f380f)) {
                        fileQ.delete();
                        return null;
                    }
                    boolean zY = y(objNewInstance, fileQ.getPath(), fVar.f376b, fVar.f377c);
                    fileQ.delete();
                    if (!zY) {
                        return null;
                    }
                } catch (RuntimeException unused) {
                    fileQ.delete();
                    return null;
                } catch (Throwable th) {
                    fileQ.delete();
                    throw th;
                }
            }
            z();
            try {
                Object objNewInstance2 = Array.newInstance((Class<?>) f408a, 1);
                Array.set(objNewInstance2, 0, objNewInstance);
                return (Typeface) f411d.invoke(null, objNewInstance2);
            } catch (IllegalAccessException | InvocationTargetException e2) {
                throw new RuntimeException(e2);
            }
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    @Override // y.a
    public Typeface l(Context context, i.g[] gVarArr) {
        File file;
        if (gVarArr.length < 1) {
            return null;
        }
        try {
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(o(gVarArr).f437a, "r", null);
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    parcelFileDescriptorOpenFileDescriptor.close();
                }
                return null;
            }
            try {
                try {
                    String str = Os.readlink("/proc/self/fd/" + parcelFileDescriptorOpenFileDescriptor.getFd());
                    file = OsConstants.S_ISREG(Os.stat(str).st_mode) ? new File(str) : null;
                } catch (ErrnoException unused) {
                }
                if (file != null && file.canRead()) {
                    Typeface typefaceCreateFromFile = Typeface.createFromFile(file);
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return typefaceCreateFromFile;
                }
                FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                try {
                    Typeface typefaceM = m(context, fileInputStream);
                    fileInputStream.close();
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return typefaceM;
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                try {
                    parcelFileDescriptorOpenFileDescriptor.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        } catch (IOException unused2) {
            return null;
        }
    }
}
