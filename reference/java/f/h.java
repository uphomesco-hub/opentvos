package f;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class h extends f {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Class f417f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Constructor f418g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Method f419h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Method f420i;
    public final Method j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Method f421k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Method f422l;

    public h() throws NoSuchMethodException {
        Method methodH;
        Constructor<?> constructor;
        Method methodG;
        Method method;
        Method method2;
        Method method3;
        Class<?> cls = null;
        try {
            Class<?> cls2 = Class.forName("android.graphics.FontFamily");
            constructor = cls2.getConstructor(null);
            methodG = G(cls2);
            Class<?> cls3 = Integer.TYPE;
            method = cls2.getMethod("addFontFromBuffer", ByteBuffer.class, cls3, FontVariationAxis[].class, cls3, cls3);
            method2 = cls2.getMethod("freeze", null);
            method3 = cls2.getMethod("abortCreation", null);
            methodH = H(cls2);
            cls = cls2;
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class ".concat(e2.getClass().getName()), e2);
            methodH = null;
            constructor = null;
            methodG = null;
            method = null;
            method2 = null;
            method3 = null;
        }
        this.f417f = cls;
        this.f418g = constructor;
        this.f419h = methodG;
        this.f420i = method;
        this.j = method2;
        this.f421k = method3;
        this.f422l = methodH;
    }

    public static Method G(Class cls) {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls2, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class);
    }

    public final void A(Object obj) {
        try {
            this.f421k.invoke(obj, null);
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }

    public final boolean B(Context context, Object obj, String str, int i2, int i3, int i4, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f419h.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public Typeface C(Object obj) {
        try {
            Object objNewInstance = Array.newInstance((Class<?>) this.f417f, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) this.f422l.invoke(null, objNewInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public final boolean D(Object obj) {
        try {
            return ((Boolean) this.j.invoke(obj, null)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public final boolean E() {
        Method method = this.f419h;
        if (method == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return method != null;
    }

    public final Object F() {
        try {
            return this.f418g.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    public Method H(Class cls) throws NoSuchMethodException {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance((Class<?>) cls, 1).getClass(), cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    @Override // f.f, y.a
    public final Typeface k(Context context, e.e eVar, Resources resources) {
        if (!E()) {
            return super.k(context, eVar, resources);
        }
        Object objF = F();
        if (objF == null) {
            return null;
        }
        for (e.f fVar : eVar.f374a) {
            if (!B(context, objF, fVar.f375a, fVar.f379e, fVar.f376b, fVar.f377c ? 1 : 0, FontVariationAxis.fromFontVariationSettings(fVar.f378d))) {
                A(objF);
                return null;
            }
        }
        if (D(objF)) {
            return C(objF);
        }
        return null;
    }

    @Override // f.f, y.a
    public final Typeface l(Context context, i.g[] gVarArr) {
        Typeface typefaceC;
        boolean zBooleanValue;
        if (gVarArr.length < 1) {
            return null;
        }
        if (!E()) {
            i.g gVarO = o(gVarArr);
            try {
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(gVarO.f437a, "r", null);
                if (parcelFileDescriptorOpenFileDescriptor == null) {
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    }
                    return null;
                }
                try {
                    Typeface typefaceBuild = new Typeface.Builder(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor()).setWeight(gVarO.f439c).setItalic(gVarO.f440d).build();
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return typefaceBuild;
                } catch (Throwable th) {
                    try {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException unused) {
                return null;
            }
        }
        HashMap map = new HashMap();
        for (i.g gVar : gVarArr) {
            if (gVar.f441e == 0) {
                Uri uri = gVar.f437a;
                if (!map.containsKey(uri)) {
                    map.put(uri, y.a.t(context, uri));
                }
            }
        }
        Map mapUnmodifiableMap = Collections.unmodifiableMap(map);
        Object objF = F();
        if (objF == null) {
            return null;
        }
        boolean z2 = false;
        for (i.g gVar2 : gVarArr) {
            ByteBuffer byteBuffer = (ByteBuffer) mapUnmodifiableMap.get(gVar2.f437a);
            if (byteBuffer != null) {
                try {
                    zBooleanValue = ((Boolean) this.f420i.invoke(objF, byteBuffer, Integer.valueOf(gVar2.f438b), null, Integer.valueOf(gVar2.f439c), Integer.valueOf(gVar2.f440d ? 1 : 0))).booleanValue();
                } catch (IllegalAccessException | InvocationTargetException unused2) {
                    zBooleanValue = false;
                }
                if (!zBooleanValue) {
                    A(objF);
                    return null;
                }
                z2 = true;
            }
        }
        if (!z2) {
            A(objF);
            return null;
        }
        if (D(objF) && (typefaceC = C(objF)) != null) {
            return Typeface.create(typefaceC, 0);
        }
        return null;
    }

    @Override // y.a
    public final Typeface n(Context context, Resources resources, int i2, String str) {
        if (!E()) {
            return super.n(context, resources, i2, str);
        }
        Object objF = F();
        if (objF == null) {
            return null;
        }
        if (!B(context, objF, str, 0, -1, -1, null)) {
            A(objF);
            return null;
        }
        if (D(objF)) {
            return C(objF);
        }
        return null;
    }
}
