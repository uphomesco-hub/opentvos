package f;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final y.a f406a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b.e f407b;

    /* JADX WARN: Code duplicated, block: B:19:0x0039  */
    static {
        y.a fVar;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29) {
            fVar = new j();
        } else if (i2 >= 28) {
            fVar = new i();
        } else if (i2 >= 26) {
            fVar = new h();
        } else if (i2 < 24) {
            fVar = new f();
        } else {
            Method method = g.f415c;
            if (method == null) {
                Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
            }
            if (method != null) {
                fVar = new g();
            } else {
                fVar = new f();
            }
        }
        f406a = fVar;
        f407b = new b.e();
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0084 A[EDGE_INSN: B:26:0x0084->B:41:0x00a0 BREAK  A[LOOP:0: B:33:0x0090->B:39:0x009d]] */
    public static Typeface a(Context context, e.d dVar, Resources resources, int i2) {
        Typeface typefaceK;
        i.e eVar;
        y.a aVar = f406a;
        int i3 = 1;
        if (dVar instanceof e.g) {
            e.g gVar = (e.g) dVar;
            String str = gVar.f382b;
            Typeface typeface = null;
            if (str != null && !str.isEmpty()) {
                Typeface typefaceCreate = Typeface.create(str, 0);
                Typeface typefaceCreate2 = Typeface.create(Typeface.DEFAULT, 0);
                if (typefaceCreate != null && !typefaceCreate.equals(typefaceCreate2)) {
                    typeface = typefaceCreate;
                }
            }
            if (typeface != null) {
                return typeface;
            }
            Handler handler = new Handler(Looper.getMainLooper());
            d dVar2 = new d();
            i.d dVar3 = gVar.f381a;
            b.e eVar2 = i.f.f435a;
            String str2 = dVar3.f432e + "-0";
            typefaceK = (Typeface) i.f.f435a.a(str2);
            if (typefaceK != null) {
                handler.post(new i.a(dVar2, typefaceK));
            } else {
                b.e eVar3 = i.f.f435a;
                Typeface typeface2 = (Typeface) eVar3.a(str2);
                if (typeface2 != null) {
                    eVar = new i.e(typeface2);
                } else {
                    try {
                        i.e eVarA = i.c.a(context, dVar3);
                        i.g[] gVarArr = (i.g[]) eVarA.f434b;
                        int i4 = eVarA.f433a;
                        if (i4 != 0) {
                            if (i4 != 1) {
                                i3 = -3;
                                break;
                            }
                            i3 = -2;
                        } else if (gVarArr != null && gVarArr.length != 0) {
                            int length = gVarArr.length;
                            int i5 = 0;
                            while (true) {
                                if (i5 >= length) {
                                    i3 = 0;
                                    break;
                                }
                                int i6 = gVarArr[i5].f441e;
                                if (i6 != 0) {
                                    if (i6 >= 0) {
                                        i3 = i6;
                                        break;
                                    }
                                    i3 = -3;
                                    break;
                                }
                                i5++;
                            }
                        }
                        if (i3 != 0) {
                            eVar = new i.e(i3, 0);
                        } else {
                            Typeface typefaceL = aVar.l(context, gVarArr);
                            if (typefaceL != null) {
                                eVar3.b(str2, typefaceL);
                                eVar = new i.e(typefaceL);
                            } else {
                                eVar = new i.e(-3, 0);
                            }
                        }
                    } catch (PackageManager.NameNotFoundException unused) {
                        eVar = new i.e(-1, 0);
                    }
                }
                Object obj = eVar.f434b;
                int i7 = eVar.f433a;
                if (i7 == 0) {
                    handler.post(new i.a(dVar2, (Typeface) obj));
                } else {
                    handler.post(new i.a(dVar2, i7));
                }
                typefaceK = (Typeface) obj;
            }
        } else {
            typefaceK = aVar.k(context, (e.e) dVar, resources);
        }
        if (typefaceK != null) {
            f407b.b(b(resources, i2), typefaceK);
        }
        return typefaceK;
    }

    public static String b(Resources resources, int i2) {
        return resources.getResourcePackageName(i2) + "-" + i2 + "-0";
    }
}
