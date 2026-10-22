package y;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.StrictMode;
import android.util.Log;
import android.view.View;
import android.widget.EdgeEffect;
import androidx.recyclerview.widget.j;
import com.sid.tvos.R;
import e.e;
import i.g;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.ConcurrentHashMap;
import k.v;
import r.A;
import r.Y;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public a() {
        new ConcurrentHashMap();
    }

    public static final void a(View view) {
        d(view, "<this>");
        v vVar = new v(view, null);
        z.a aVar = new z.a();
        aVar.f942d = vVar.c(aVar, aVar);
        while (aVar.hasNext()) {
            View view2 = (View) aVar.next();
            n.b bVar = (n.b) view2.getTag(R.id.pooling_container_listener_holder_tag);
            if (bVar == null) {
                bVar = new n.b();
                view2.setTag(R.id.pooling_container_listener_holder_tag, bVar);
            }
            ArrayList arrayList = bVar.f500a;
            d(arrayList, "<this>");
            int size = arrayList.size() - 1;
            if (-1 < size) {
                n.a.b(arrayList.get(size));
                throw null;
            }
        }
    }

    public static void b(Object obj) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException();
        v(nullPointerException, a.class.getName());
        throw nullPointerException;
    }

    public static void c(Object obj, String str) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(str.concat(" must not be null"));
        v(nullPointerException, a.class.getName());
        throw nullPointerException;
    }

    public static void d(Object obj, String str) {
        if (obj != null) {
            return;
        }
        StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[4];
        NullPointerException nullPointerException = new NullPointerException("Parameter specified as non-null is null: method " + stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + ", parameter " + str);
        v(nullPointerException, a.class.getName());
        throw nullPointerException;
    }

    public static void e(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static int f(Y y2, A a2, View view, View view2, j jVar, boolean z2) {
        if (jVar.getChildCount() == 0 || y2.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z2) {
            return Math.abs(jVar.getPosition(view) - jVar.getPosition(view2)) + 1;
        }
        return Math.min(a2.l(), a2.b(view2) - a2.e(view));
    }

    public static int g(Y y2, A a2, View view, View view2, j jVar, boolean z2, boolean z3) {
        if (jVar.getChildCount() == 0 || y2.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int iMax = z3 ? Math.max(0, (y2.b() - Math.max(jVar.getPosition(view), jVar.getPosition(view2))) - 1) : Math.max(0, Math.min(jVar.getPosition(view), jVar.getPosition(view2)));
        if (z2) {
            return Math.round((iMax * (Math.abs(a2.b(view2) - a2.e(view)) / (Math.abs(jVar.getPosition(view) - jVar.getPosition(view2)) + 1))) + (a2.k() - a2.e(view)));
        }
        return iMax;
    }

    public static int h(Y y2, A a2, View view, View view2, j jVar, boolean z2) {
        if (jVar.getChildCount() == 0 || y2.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z2) {
            return y2.b();
        }
        return (int) (((a2.b(view2) - a2.e(view)) / (Math.abs(jVar.getPosition(view) - jVar.getPosition(view2)) + 1)) * y2.b());
    }

    public static boolean i(File file, Resources resources, int i2) throws Throwable {
        InputStream inputStreamOpenRawResource;
        try {
            inputStreamOpenRawResource = resources.openRawResource(i2);
            try {
                boolean zJ = j(file, inputStreamOpenRawResource);
                e(inputStreamOpenRawResource);
                return zJ;
            } catch (Throwable th) {
                th = th;
                e(inputStreamOpenRawResource);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStreamOpenRawResource = null;
        }
    }

    public static boolean j(File file, InputStream inputStream) throws Throwable {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file, false);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i2 = inputStream.read(bArr);
                        if (i2 == -1) {
                            e(fileOutputStream2);
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                            return true;
                        }
                        fileOutputStream2.write(bArr, 0, i2);
                    }
                } catch (IOException e2) {
                    e = e2;
                    fileOutputStream = fileOutputStream2;
                    Log.e("TypefaceCompatUtil", "Error copying resource contents to temp file: " + e.getMessage());
                    e(fileOutputStream);
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                    return false;
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    e(fileOutputStream);
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                    throw th;
                }
            } catch (IOException e3) {
                e = e3;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static float p(EdgeEffect edgeEffect) {
        if (s()) {
            return m.a.b(edgeEffect);
        }
        return 0.0f;
    }

    public static File q(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        String str = ".font" + Process.myPid() + "-" + Process.myTid() + "-";
        for (int i2 = 0; i2 < 100; i2++) {
            File file = new File(cacheDir, str + i2);
            try {
                if (file.createNewFile()) {
                    return file;
                }
            } catch (IOException unused) {
            }
        }
        return null;
    }

    public static boolean s() {
        if (Build.VERSION.SDK_INT < 31) {
            String str = Build.VERSION.CODENAME;
            if ("REL".equals(str) || str.compareTo("S") < 0) {
                return false;
            }
        }
        return true;
    }

    public static MappedByteBuffer t(Context context, Uri uri) {
        try {
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "r", null);
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    parcelFileDescriptorOpenFileDescriptor.close();
                }
                return null;
            }
            try {
                FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                try {
                    FileChannel channel = fileInputStream.getChannel();
                    MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                    fileInputStream.close();
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return map;
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
        } catch (IOException unused) {
            return null;
        }
    }

    public static float u(EdgeEffect edgeEffect, float f2, float f3) {
        if (s()) {
            return m.a.c(edgeEffect, f2, f3);
        }
        edgeEffect.onPull(f2, f3);
        return f2;
    }

    public static void v(RuntimeException runtimeException, String str) {
        StackTraceElement[] stackTrace = runtimeException.getStackTrace();
        int length = stackTrace.length;
        int i2 = -1;
        for (int i3 = 0; i3 < length; i3++) {
            if (str.equals(stackTrace[i3].getClassName())) {
                i2 = i3;
            }
        }
        runtimeException.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i2 + 1, length));
    }

    public static final void x(Object obj) throws Throwable {
        if (obj instanceof u.a) {
            throw ((u.a) obj).f930a;
        }
    }

    public abstract Typeface k(Context context, e eVar, Resources resources);

    public abstract Typeface l(Context context, g[] gVarArr);

    public Typeface m(Context context, InputStream inputStream) {
        File fileQ = q(context);
        if (fileQ == null) {
            return null;
        }
        try {
            if (j(fileQ, inputStream)) {
                return Typeface.createFromFile(fileQ.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileQ.delete();
        }
    }

    public Typeface n(Context context, Resources resources, int i2, String str) {
        File fileQ = q(context);
        if (fileQ == null) {
            return null;
        }
        try {
            if (i(fileQ, resources, i2)) {
                return Typeface.createFromFile(fileQ.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileQ.delete();
        }
    }

    public g o(g[] gVarArr) {
        g gVar = null;
        int i2 = Integer.MAX_VALUE;
        for (g gVar2 : gVarArr) {
            int iAbs = (gVar2.f440d ? 1 : 0) + (Math.abs(gVar2.f439c - 400) * 2);
            if (gVar == null || i2 > iAbs) {
                gVar = gVar2;
                i2 = iAbs;
            }
        }
        return gVar;
    }

    public abstract float r(Object obj);

    public abstract void w(Object obj, float f2);
}
