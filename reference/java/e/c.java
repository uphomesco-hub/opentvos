package e;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import com.sid.tvos.R;
import java.lang.reflect.Array;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f373a = new ThreadLocal();

    /* JADX WARN: Code duplicated, block: B:37:0x0099  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v7 */
    public static ColorStateList a(Resources resources, XmlResourceParser xmlResourceParser, Resources.Theme theme) {
        int next;
        int i2;
        ?? r5;
        int depth;
        int color;
        int i3;
        int iA;
        float f2;
        resources = resources;
        theme = theme;
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlResourceParser);
        do {
            next = xmlResourceParser.next();
            i2 = 2;
            r5 = 1;
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        String name = xmlResourceParser.getName();
        if (!name.equals("selector")) {
            throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": invalid color state list tag " + name);
        }
        int depth2 = xmlResourceParser.getDepth() + 1;
        Object[] objArr = new int[20][];
        int[] iArr = new int[20];
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int next2 = xmlResourceParser.next();
            if (next2 == r5 || ((depth = xmlResourceParser.getDepth()) < depth2 && next2 == 3)) {
                break;
            }
            if (next2 == i2 && depth <= depth2 && xmlResourceParser.getName().equals("item")) {
                int[] iArr2 = c.a.f133a;
                TypedArray typedArrayObtainAttributes = theme == null ? resources.obtainAttributes(attributeSetAsAttributeSet, iArr2) : theme.obtainStyledAttributes(attributeSetAsAttributeSet, iArr2, i4, i4);
                int resourceId = typedArrayObtainAttributes.getResourceId(i4, -1);
                if (resourceId != -1) {
                    ThreadLocal threadLocal = f373a;
                    TypedValue typedValue = (TypedValue) threadLocal.get();
                    if (typedValue == null) {
                        typedValue = new TypedValue();
                        threadLocal.set(typedValue);
                    }
                    resources.getValue(resourceId, typedValue, (boolean) r5);
                    int i6 = typedValue.type;
                    if (i6 < 28 || i6 > 31) {
                        try {
                            color = a(resources, resources.getXml(resourceId), theme).getDefaultColor();
                        } catch (Exception unused) {
                            color = typedArrayObtainAttributes.getColor(i4, -65281);
                        }
                    } else {
                        color = typedArrayObtainAttributes.getColor(i4, -65281);
                    }
                } else {
                    color = typedArrayObtainAttributes.getColor(i4, -65281);
                }
                float f3 = typedArrayObtainAttributes.hasValue(r5) ? typedArrayObtainAttributes.getFloat(r5, 1.0f) : typedArrayObtainAttributes.hasValue(3) ? typedArrayObtainAttributes.getFloat(3, 1.0f) : 1.0f;
                float f4 = (y.a.s() && typedArrayObtainAttributes.hasValue(i2)) ? typedArrayObtainAttributes.getFloat(i2, -1.0f) : typedArrayObtainAttributes.getFloat(4, -1.0f);
                typedArrayObtainAttributes.recycle();
                int attributeCount = attributeSetAsAttributeSet.getAttributeCount();
                int[] iArr3 = new int[attributeCount];
                int i7 = 0;
                for (int i8 = 0; i8 < attributeCount; i8++) {
                    int attributeNameResource = attributeSetAsAttributeSet.getAttributeNameResource(i8);
                    if (attributeNameResource != 16843173 && attributeNameResource != 16843551 && attributeNameResource != R.attr.alpha && attributeNameResource != R.attr.lStar) {
                        int i9 = i7 + 1;
                        if (!attributeSetAsAttributeSet.getAttributeBooleanValue(i8, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr3[i7] = attributeNameResource;
                        i7 = i9;
                    }
                }
                int[] iArrTrimStateSet = StateSet.trimStateSet(iArr3, i7);
                boolean z2 = f4 >= 0.0f && f4 <= 100.0f;
                if (f3 != 1.0f || z2) {
                    int iAlpha = (int) ((Color.alpha(color) * f3) + 0.5f);
                    if (iAlpha < 0) {
                        i3 = 0;
                    } else {
                        i3 = 255;
                        if (iAlpha <= 255) {
                            i3 = iAlpha;
                        }
                    }
                    if (z2) {
                        a aVarA = a.a(color);
                        l lVar = l.f390k;
                        float f5 = aVarA.f364b;
                        if (f5 < 1.0d || Math.round(f4) <= 0.0d || Math.round(f4) >= 100.0d) {
                            iArrTrimStateSet = iArrTrimStateSet;
                            attributeSetAsAttributeSet = attributeSetAsAttributeSet;
                            depth2 = depth2;
                        } else {
                            float f6 = aVarA.f363a;
                            float fMin = f6 < 0.0f ? 0.0f : Math.min(360.0f, f6);
                            float f7 = f5;
                            a aVar = null;
                            boolean z3 = true;
                            float f8 = 0.0f;
                            while (true) {
                                if (Math.abs(f8 - f5) < 0.4f) {
                                    iArrTrimStateSet = iArrTrimStateSet;
                                    attributeSetAsAttributeSet = attributeSetAsAttributeSet;
                                    depth2 = depth2;
                                    if (aVar != null) {
                                        iA = aVar.c(lVar);
                                        break;
                                    }
                                    break;
                                }
                                float f9 = 1000.0f;
                                float f10 = 1000.0f;
                                float f11 = 0.0f;
                                float f12 = 100.0f;
                                a aVar2 = null;
                                while (true) {
                                    if (Math.abs(f11 - f12) <= 0.01f) {
                                        iArrTrimStateSet = iArrTrimStateSet;
                                        attributeSetAsAttributeSet = attributeSetAsAttributeSet;
                                        depth2 = depth2;
                                        fMin = fMin;
                                        break;
                                    }
                                    float f13 = ((f12 - f11) / 2.0f) + f11;
                                    int iC = a.b(f13, f7, fMin).c(l.f390k);
                                    float fB = b.b(Color.red(iC));
                                    float fB2 = b.b(Color.green(iC));
                                    float fB3 = b.b(Color.blue(iC));
                                    float[] fArr = b.f372d[1];
                                    float f14 = ((fB3 * fArr[2]) + ((fB2 * fArr[1]) + (fB * fArr[0]))) / 100.0f;
                                    float fCbrt = f14 <= 0.008856452f ? f14 * 903.2963f : (((float) Math.cbrt(f14)) * 116.0f) - 16.0f;
                                    float fAbs = Math.abs(f4 - fCbrt);
                                    if (fAbs < 0.2f) {
                                        a aVarA2 = a.a(iC);
                                        a aVarB = a.b(aVarA2.f365c, aVarA2.f364b, fMin);
                                        f2 = f13;
                                        float f15 = aVarA2.f366d - aVarB.f366d;
                                        fMin = fMin;
                                        float f16 = aVarA2.f367e - aVarB.f367e;
                                        float f17 = aVarA2.f368f - aVarB.f368f;
                                        double dSqrt = Math.sqrt((f17 * f17) + (f16 * f16) + (f15 * f15));
                                        iArrTrimStateSet = iArrTrimStateSet;
                                        float fPow = (float) (Math.pow(dSqrt, 0.63d) * 1.41d);
                                        if (fPow <= 1.0f) {
                                            f10 = fPow;
                                            aVar2 = aVarA2;
                                            f9 = fAbs;
                                        }
                                    } else {
                                        f2 = f13;
                                        fMin = fMin;
                                        iArrTrimStateSet = iArrTrimStateSet;
                                    }
                                    if (f9 == 0.0f && f10 == 0.0f) {
                                        break;
                                    }
                                    if (fCbrt < f4) {
                                        f11 = f2;
                                    } else {
                                        f12 = f2;
                                    }
                                    iArrTrimStateSet = iArrTrimStateSet;
                                    attributeSetAsAttributeSet = attributeSetAsAttributeSet;
                                    depth2 = depth2;
                                    fMin = fMin;
                                }
                                a aVar3 = aVar2;
                                if (!z3) {
                                    if (aVar3 == null) {
                                        f5 = f7;
                                    } else {
                                        aVar = aVar3;
                                        f8 = f7;
                                    }
                                    f7 = ((f5 - f8) / 2.0f) + f8;
                                } else {
                                    if (aVar3 != null) {
                                        iA = aVar3.c(lVar);
                                        break;
                                    }
                                    f7 = ((f5 - f8) / 2.0f) + f8;
                                    z3 = false;
                                }
                            }
                            color = iA;
                        }
                        iA = b.a(f4);
                        color = iA;
                    } else {
                        iArrTrimStateSet = iArrTrimStateSet;
                        attributeSetAsAttributeSet = attributeSetAsAttributeSet;
                        depth2 = depth2;
                    }
                    color = (16777215 & color) | (i3 << 24);
                } else {
                    iArrTrimStateSet = iArrTrimStateSet;
                    attributeSetAsAttributeSet = attributeSetAsAttributeSet;
                    depth2 = depth2;
                }
                int i10 = i5 + 1;
                if (i10 > iArr.length) {
                    int[] iArr4 = new int[i5 <= 4 ? 8 : i5 * 2];
                    System.arraycopy(iArr, 0, iArr4, 0, i5);
                    iArr = iArr4;
                }
                iArr[i5] = color;
                if (i10 > objArr.length) {
                    Object[] objArr2 = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i5 > 4 ? i5 * 2 : 8);
                    System.arraycopy(objArr, 0, objArr2, 0, i5);
                    objArr = objArr2;
                }
                objArr[i5] = iArrTrimStateSet;
                objArr = (int[][]) objArr;
                i5 = i10;
                attributeSetAsAttributeSet = attributeSetAsAttributeSet;
                depth2 = depth2;
                i2 = 2;
                r5 = 1;
                i4 = 0;
            } else {
                attributeSetAsAttributeSet = attributeSetAsAttributeSet;
                depth2 = depth2;
                i2 = 2;
                r5 = 1;
                i4 = 0;
            }
        }
        int[] iArr5 = new int[i5];
        int[][] iArr6 = new int[i5][];
        System.arraycopy(iArr, 0, iArr5, 0, i5);
        System.arraycopy(objArr, 0, iArr6, 0, i5);
        return new ColorStateList(iArr6, iArr5);
    }
}
