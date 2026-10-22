package f;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class g extends y.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Class f413a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Constructor f414b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Method f415c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Method f416d;

    static {
        Method method;
        Class<?> cls;
        Method method2;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(null);
            Class<?> cls2 = Integer.TYPE;
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, cls2, List.class, cls2, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            Log.e("TypefaceCompatApi24Impl", e2.getClass().getName(), e2);
            method = null;
            cls = null;
            method2 = null;
        }
        f414b = constructor;
        f413a = cls;
        f415c = method2;
        f416d = method;
    }

    public static boolean y(Object obj, ByteBuffer byteBuffer, int i2, int i3, boolean z2) {
        try {
            return ((Boolean) f415c.invoke(obj, byteBuffer, Integer.valueOf(i2), null, Integer.valueOf(i3), Boolean.valueOf(z2))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public static Typeface z(Object obj) {
        try {
            Object objNewInstance = Array.newInstance((Class<?>) f413a, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) f416d.invoke(null, objNewInstance);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    @Override // y.a
    public final Typeface k(Context context, e.e eVar, Resources resources) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        Object objNewInstance;
        MappedByteBuffer map;
        try {
            objNewInstance = f414b.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            objNewInstance = null;
        }
        if (objNewInstance == null) {
            return null;
        }
        for (e.f fVar : eVar.f374a) {
            int i2 = fVar.f380f;
            File fileQ = y.a.q(context);
            if (fileQ != null) {
                try {
                    if (y.a.i(fileQ, resources, i2)) {
                        try {
                            FileInputStream fileInputStream = new FileInputStream(fileQ);
                            try {
                                FileChannel channel = fileInputStream.getChannel();
                                map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                                fileInputStream.close();
                                fileQ.delete();
                            } catch (Throwable th) {
                                try {
                                    fileInputStream.close();
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                                throw th;
                            }
                        } catch (IOException unused2) {
                            map = null;
                        }
                    } else {
                        fileQ.delete();
                    }
                    if (map != null || !y(objNewInstance, map, fVar.f379e, fVar.f376b, fVar.f377c)) {
                        return null;
                    }
                } catch (Throwable th3) {
                    fileQ.delete();
                    throw th3;
                }
            }
            map = null;
            if (map != null) {
                return null;
            }
        }
        return z(objNewInstance);
    }

    @Override // y.a
    public final Typeface l(Context context, i.g[] gVarArr) {
        Object objNewInstance;
        try {
            objNewInstance = f414b.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            objNewInstance = null;
        }
        if (objNewInstance == null) {
            return null;
        }
        b.j jVar = new b.j();
        for (i.g gVar : gVarArr) {
            Uri uri = gVar.f437a;
            ByteBuffer byteBufferT = (ByteBuffer) jVar.get(uri);
            if (byteBufferT == null) {
                byteBufferT = y.a.t(context, uri);
                jVar.put(uri, byteBufferT);
            }
            if (byteBufferT == null) {
                return null;
            }
            if (!y(objNewInstance, byteBufferT, gVar.f438b, gVar.f439c, gVar.f440d)) {
                return null;
            }
        }
        Typeface typefaceZ = z(objNewInstance);
        if (typefaceZ == null) {
            return null;
        }
        return Typeface.create(typefaceZ, 0);
    }
}
