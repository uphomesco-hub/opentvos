package e;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import java.io.IOException;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f387a = new ThreadLocal();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final WeakHashMap f388b = new WeakHashMap(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f389c = new Object();

    public static void a(j jVar, int i2, ColorStateList colorStateList) {
        synchronized (f389c) {
            try {
                WeakHashMap weakHashMap = f388b;
                SparseArray sparseArray = (SparseArray) weakHashMap.get(jVar);
                if (sparseArray == null) {
                    sparseArray = new SparseArray();
                    weakHashMap.put(jVar, sparseArray);
                }
                sparseArray.append(i2, new i(colorStateList, jVar.f385a.getConfiguration()));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static Typeface b(Context context, int i2) {
        String str;
        Typeface typefaceA = null;
        if (context.isRestricted()) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        Resources resources = context.getResources();
        resources.getValue(i2, typedValue, true);
        CharSequence charSequence = typedValue.string;
        if (charSequence == null) {
            throw new Resources.NotFoundException("Resource \"" + resources.getResourceName(i2) + "\" (" + Integer.toHexString(i2) + ") is not a Font: " + typedValue);
        }
        String string = charSequence.toString();
        if (string.startsWith("res/")) {
            b.e eVar = f.e.f407b;
            Typeface typeface = (Typeface) eVar.a(f.e.b(resources, i2));
            if (typeface != null) {
                typefaceA = typeface;
            } else {
                try {
                    if (string.toLowerCase().endsWith(".xml")) {
                        d dVarC = b.c(resources.getXml(i2), resources);
                        if (dVarC == null) {
                            Log.e("ResourcesCompat", "Failed to find font-family tag");
                        } else {
                            typefaceA = f.e.a(context, dVarC, resources, i2);
                        }
                    } else {
                        Typeface typefaceN = f.e.f406a.n(context, resources, i2, string);
                        if (typefaceN != null) {
                            eVar.b(f.e.b(resources, i2), typefaceN);
                        }
                        typefaceA = typefaceN;
                    }
                } catch (IOException e2) {
                    e = e2;
                    str = "Failed to read xml resource ";
                    Log.e("ResourcesCompat", str.concat(string), e);
                } catch (XmlPullParserException e3) {
                    e = e3;
                    str = "Failed to parse xml resource ";
                    Log.e("ResourcesCompat", str.concat(string), e);
                }
            }
        }
        if (typefaceA != null) {
            return typefaceA;
        }
        throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i2) + " could not be retrieved.");
    }
}
