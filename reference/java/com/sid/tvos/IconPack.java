package com.sid.tvos;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.LruCache;
import android.util.Xml;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
abstract class IconPack {
    private static Map<String, String> filter;
    private static String filterPack;
    private static final String[] PACK_ACTIONS = {"org.adw.launcher.THEMES", "com.novalauncher.THEME", "com.teslacoilsw.launcher.THEME", "com.gau.go.launcherex.theme", "com.fede.launcher.THEME_ICONPACK", "com.anddoes.launcher.THEME"};
    private static int W = 400;
    private static int H = 240;
    private static final LruCache<String, Bitmap> CACHE = new LruCache<String, Bitmap>(12582912) { // from class: com.sid.tvos.IconPack.1
        @Override // android.util.LruCache
        public int sizeOf(String str, Bitmap bitmap) {
            return bitmap.getByteCount();
        }
    };

    private static Drawable appIcon(Context context, AppAdapter.Entry entry) {
        Drawable drawableForDensity;
        try {
            PackageManager packageManager = context.getPackageManager();
            ActivityInfo activityInfo = packageManager.getActivityInfo(entry.component, 0);
            int iconResource = activityInfo.getIconResource();
            if (iconResource != 0 && (drawableForDensity = packageManager.getResourcesForApplication(activityInfo.applicationInfo).getDrawableForDensity(iconResource, 640, null)) != null) {
                return drawableForDensity;
            }
        } catch (Exception unused) {
        }
        return entry.icon;
    }

    private static int brandOverride(String str) {
        if ("com.android.vending".equals(str)) {
            return -1;
        }
        return ((str == null || !str.startsWith("com.google.android.youtube")) && !"com.internet.tvbrowser".equals(str)) ? 0 : -1;
    }

    public static void clearCache() {
        CACHE.evictAll();
    }

    public static String current(Context context) {
        return context.getSharedPreferences("iconpack", 0).getString("pack", "original");
    }

    public static int dominantColor(Drawable drawable) {
        Drawable drawableMutate = drawable.getConstantState() != null ? drawable.getConstantState().newDrawable().mutate() : drawable;
        int i2 = 48;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(48, 48, Bitmap.Config.ARGB_8888);
        drawableMutate.setBounds(0, 0, 48, 48);
        drawableMutate.draw(new Canvas(bitmapCreateBitmap));
        float[] fArr = new float[12];
        float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, 12, 3);
        float[] fArr3 = new float[3];
        int i3 = 0;
        while (i3 < i2) {
            int i4 = 0;
            while (i4 < i2) {
                int pixel = bitmapCreateBitmap.getPixel(i4, i3);
                if (Color.alpha(pixel) >= 160) {
                    Color.colorToHSV(pixel, fArr3);
                    float f2 = fArr3[1];
                    if (f2 >= 0.35f) {
                        float f3 = fArr3[2];
                        if (f3 >= 0.3f) {
                            int i5 = ((int) (fArr3[0] / 30.0f)) % 12;
                            float f4 = f2 * f3;
                            fArr[i5] = fArr[i5] + f4;
                            float[] fArr4 = fArr2[i5];
                            fArr4[0] = (Color.red(pixel) * f4) + fArr4[0];
                            float[] fArr5 = fArr2[i5];
                            fArr5[1] = (Color.green(pixel) * f4) + fArr5[1];
                            float[] fArr6 = fArr2[i5];
                            fArr6[2] = (Color.blue(pixel) * f4) + fArr6[2];
                        }
                    }
                }
                i4++;
                i2 = 48;
            }
            i3++;
            i2 = 48;
        }
        bitmapCreateBitmap.recycle();
        int i6 = -1;
        for (int i7 = 0; i7 < 12; i7++) {
            float f5 = fArr[i7];
            if (f5 > 0.0f && (i6 < 0 || f5 > fArr[i6])) {
                i6 = i7;
            }
        }
        if (i6 >= 0) {
            float f6 = fArr[i6];
            if (f6 >= 8.0f) {
                float[] fArr7 = fArr2[i6];
                return Color.rgb((int) (fArr7[0] / f6), (int) (fArr7[1] / f6), (int) (fArr7[2] / f6));
            }
        }
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:142:0x011c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:47:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:55:0x0110 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:56:0x0112  */
    /* JADX WARN: Code duplicated, block: B:58:0x0115  */
    /* JADX WARN: Code duplicated, block: B:60:0x0118  */
    /* JADX WARN: Code duplicated, block: B:62:0x011b  */
    private static void drawFitted(Canvas canvas, Drawable drawable, int i2, boolean z2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = i2;
        int iMax = Math.max(384, Math.min(1024, H * 2));
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMax, iMax, Bitmap.Config.ARGB_8888);
        Drawable drawableMutate = drawable.getConstantState() != null ? drawable.getConstantState().newDrawable().mutate() : drawable;
        int intrinsicWidth = drawableMutate.getIntrinsicWidth();
        int intrinsicHeight = drawableMutate.getIntrinsicHeight();
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0 || intrinsicWidth == intrinsicHeight) {
            drawableMutate.setBounds(0, 0, iMax, iMax);
        } else {
            int iRound = intrinsicWidth > intrinsicHeight ? iMax : Math.round((iMax * intrinsicWidth) / intrinsicHeight);
            int iRound2 = intrinsicHeight > intrinsicWidth ? iMax : Math.round((intrinsicHeight * iMax) / intrinsicWidth);
            drawableMutate.setBounds((iMax - iRound) / 2, (iMax - iRound2) / 2, (iRound + iMax) / 2, (iRound2 + iMax) / 2);
        }
        drawableMutate.draw(new Canvas(bitmapCreateBitmap));
        int i9 = iMax * iMax;
        int[] iArr = new int[i9];
        bitmapCreateBitmap.getPixels(iArr, 0, iMax, 0, 0, iMax, iMax);
        if (i8 == 0 && isColourful(iArr)) {
            for (int i10 = 0; i10 < i9; i10++) {
                int i11 = iArr[i10];
                int i12 = i11 >>> 24;
                if (i12 != 0 && i12 < 200 && neutral(i11) && lum(i11) < 110) {
                    iArr[i10] = 0;
                }
            }
            bitmapCreateBitmap.setPixels(iArr, 0, iMax, 0, 0, iMax, iMax);
        }
        int i13 = iMax;
        int i14 = i13;
        int i15 = 0;
        int i16 = -1;
        int i17 = -1;
        while (true) {
            int i18 = 40;
            if (i15 >= iMax) {
                break;
            }
            int i19 = 0;
            while (i19 < iMax) {
                int i20 = iArr[(i15 * iMax) + i19];
                if ((i20 >>> 24) >= i18) {
                    if (i8 != 0) {
                        if (Math.abs((i20 & 255) - (i8 & 255)) + Math.abs(((i20 >> 8) & 255) - ((i8 >> 8) & 255)) + Math.abs(((i20 >> 16) & 255) - ((i8 >> 16) & 255)) >= 48) {
                            if (i8 != 0 || lum(i2) <= 200 || !neutral(i20) || lum(i20) <= 120) {
                                if (i19 < i14) {
                                    i14 = i19;
                                }
                                if (i19 > i17) {
                                    i17 = i19;
                                }
                                if (i15 < i13) {
                                    i13 = i15;
                                }
                                if (i15 > i16) {
                                    i16 = i15;
                                }
                            }
                        }
                    } else if (i8 != 0) {
                        if (i19 < i14) {
                            i14 = i19;
                        }
                        if (i19 > i17) {
                            i17 = i19;
                        }
                        if (i15 < i13) {
                            i13 = i15;
                        }
                        if (i15 > i16) {
                            i16 = i15;
                        }
                    } else {
                        if (i19 < i14) {
                            i14 = i19;
                        }
                        if (i19 > i17) {
                            i17 = i19;
                        }
                        if (i15 < i13) {
                            i13 = i15;
                        }
                        if (i15 > i16) {
                            i16 = i15;
                        }
                    }
                }
                i19++;
                i18 = 40;
            }
            i15++;
        }
        if (i8 != 0) {
            boolean z3 = lum(i2) > 200;
            boolean[] zArr = new boolean[i9];
            int[] iArr2 = new int[i9];
            int i21 = 0;
            int i22 = 0;
            while (i21 < iMax) {
                int i23 = i21 * iMax;
                int i24 = i22;
                int[] iArr3 = {i21, ((iMax - 1) * iMax) + i21, i23, (i23 + iMax) - 1};
                for (int i25 = 0; i25 < 4; i25++) {
                    int i26 = iArr3[i25];
                    if (!zArr[i26]) {
                        zArr[i26] = true;
                        iArr2[i24] = i26;
                        i24++;
                    }
                }
                i21++;
                i22 = i24;
            }
            int i27 = 0;
            while (i27 < i22) {
                int i28 = i27 + 1;
                int i29 = iArr2[i27];
                int i30 = iArr[i29];
                int i31 = i13;
                int i32 = i14;
                int iAbs = Math.abs((i30 & 255) - (i8 & 255)) + Math.abs(((i30 >> 8) & 255) - ((i8 >> 8) & 255)) + Math.abs(((i30 >> 16) & 255) - ((i8 >> 16) & 255));
                if (z3 && (i30 >>> 24) >= 40 && neutral(i30)) {
                    if (lum(i30) > 120) {
                        iAbs = 0;
                    }
                }
                int i33 = i30 >>> 24;
                if (i33 < 40 || iAbs < 72) {
                    iArr[i29] = (((int) (i33 * (i33 < 40 ? 0.0f : Math.max(0.0f, (iAbs - 18) / 54.0f)))) << 24) | (16777215 & i30);
                    if (iAbs < 40 || i33 < 40) {
                        int i34 = i29 % iMax;
                        int i35 = i29 / iMax;
                        if (i34 > 0) {
                            int i36 = i29 - 1;
                            if (!zArr[i36]) {
                                zArr[i36] = true;
                                iArr2[i22] = i36;
                                i22++;
                            }
                        }
                        int i37 = iMax - 1;
                        if (i34 < i37) {
                            int i38 = i29 + 1;
                            if (!zArr[i38]) {
                                zArr[i38] = true;
                                iArr2[i22] = i38;
                                i22++;
                            }
                        }
                        if (i35 > 0) {
                            int i39 = i29 - iMax;
                            if (!zArr[i39]) {
                                zArr[i39] = true;
                                iArr2[i22] = i39;
                                i22++;
                            }
                        }
                        if (i35 < i37) {
                            int i40 = i29 + iMax;
                            if (!zArr[i40]) {
                                zArr[i40] = true;
                                iArr2[i22] = i40;
                                i22++;
                            }
                        }
                    }
                }
                i8 = i2;
                i27 = i28;
                i13 = i31;
                i14 = i32;
            }
            i3 = i13;
            i4 = i14;
            bitmapCreateBitmap.setPixels(iArr, 0, iMax, 0, 0, iMax, iMax);
        } else {
            i3 = i13;
            i4 = i14;
        }
        if (i17 < i4 || i16 < i3) {
            i5 = 1;
            i17 = iMax - 1;
            i6 = i17;
            i7 = 0;
            i4 = 0;
        } else {
            i7 = i3;
            i6 = i16;
            i5 = 1;
        }
        float f2 = (i17 - i4) + i5;
        float f3 = (i6 - i7) + i5;
        float fMin = Math.min((W * 0.6f) / f2, (H * 0.58f) / f3);
        float f4 = f2 * fMin;
        float f5 = f3 * fMin;
        int i41 = W;
        int i42 = H;
        canvas.drawBitmap(bitmapCreateBitmap, new Rect(i4, i7, i17 + 1, i6 + 1), new RectF((i41 - f4) / 2.0f, (i42 - f5) / 2.0f, (i41 + f4) / 2.0f, (i42 + f5) / 2.0f), new Paint(3));
        bitmapCreateBitmap.recycle();
    }

    private static void fillBrand(Canvas canvas, Paint paint, int i2) {
        float[] fArr = new float[3];
        Color.colorToHSV(i2, fArr);
        fArr[2] = Math.min(1.0f, Math.max(0.35f, fArr[2]));
        verticalFill(canvas, paint, Color.HSVToColor(fArr));
    }

    private static Drawable fromPack(Context context, String str, ComponentName componentName) {
        int identifier;
        try {
            Resources resourcesForApplication = context.getPackageManager().getResourcesForApplication(str);
            if (filter == null || !str.equals(filterPack)) {
                filter = parseFilter(resourcesForApplication, str);
                filterPack = str;
            }
            String str2 = filter.get(componentName.getPackageName() + "/" + componentName.getClassName());
            if (str2 == null) {
                str2 = filter.get(componentName.getPackageName());
            }
            if (str2 != null && (identifier = resourcesForApplication.getIdentifier(str2, "drawable", str)) != 0) {
                return resourcesForApplication.getDrawableForDensity(identifier, 640, null);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private static void glass(Canvas canvas, Paint paint) {
        float f2 = H * 0.55f;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, f2, 956301311, 16777215, tileMode));
        canvas.drawRect(0.0f, 0.0f, W, H * 0.55f, paint);
        int i2 = H;
        paint.setShader(new LinearGradient(0.0f, i2 * 0.55f, 0.0f, i2, 0, 335544320, tileMode));
        int i3 = H;
        canvas.drawRect(0.0f, i3 * 0.55f, W, i3, paint);
        paint.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, H * 0.035f, 1090519039, 16777215, tileMode));
        canvas.drawRect(0.0f, 0.0f, W, H * 0.035f, paint);
        paint.setShader(null);
    }

    private static boolean hasVerticalGradient(Drawable drawable) {
        if (drawable.getConstantState() != null) {
            drawable = drawable.getConstantState().newDrawable().mutate();
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(48, 48, Bitmap.Config.ARGB_8888);
        drawable.setBounds(0, 0, 48, 48);
        drawable.draw(new Canvas(bitmapCreateBitmap));
        int pixel = bitmapCreateBitmap.getPixel(2, 1);
        int pixel2 = bitmapCreateBitmap.getPixel(2, 46);
        bitmapCreateBitmap.recycle();
        return Math.abs(Color.blue(pixel) - Color.blue(pixel2)) + (Math.abs(Color.green(pixel) - Color.green(pixel2)) + Math.abs(Color.red(pixel) - Color.red(pixel2))) > 24;
    }

    private static int innerSquare(Drawable drawable) {
        Drawable drawableMutate = drawable.getConstantState() != null ? drawable.getConstantState().newDrawable().mutate() : drawable;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(64, 64, Bitmap.Config.ARGB_8888);
        drawableMutate.setBounds(0, 0, 64, 64);
        drawableMutate.draw(new Canvas(bitmapCreateBitmap));
        int iRound = Math.round(64 * 0.16f);
        int i2 = 63 - iRound;
        int i3 = iRound + 1;
        int[][] iArr = {new int[]{iRound, iRound}, new int[]{i2, iRound}, new int[]{iRound, i2}, new int[]{i2, i2}, new int[]{32, i3}, new int[]{i3, 32}, new int[]{62 - iRound, 32}};
        if (Color.alpha(bitmapCreateBitmap.getPixel(1, 1)) > 40) {
            bitmapCreateBitmap.recycle();
            return 0;
        }
        int[] iArr2 = iArr[0];
        int pixel = bitmapCreateBitmap.getPixel(iArr2[0], iArr2[1]);
        long jRed = 0;
        long jGreen = 0;
        long jBlue = 0;
        for (int i4 = 0; i4 < 7; i4++) {
            int[] iArr3 = iArr[i4];
            int pixel2 = bitmapCreateBitmap.getPixel(iArr3[0], iArr3[1]);
            if (Color.alpha(pixel2) < 240 || Math.abs(Color.red(pixel2) - Color.red(pixel)) > 18 || Math.abs(Color.green(pixel2) - Color.green(pixel)) > 18 || Math.abs(Color.blue(pixel2) - Color.blue(pixel)) > 18) {
                bitmapCreateBitmap.recycle();
                return 0;
            }
            jRed += (long) Color.red(pixel2);
            jGreen += (long) Color.green(pixel2);
            jBlue += (long) Color.blue(pixel2);
        }
        bitmapCreateBitmap.recycle();
        long j = 7;
        return Color.rgb((int) (jRed / j), (int) (jGreen / j), (int) (jBlue / j));
    }

    public static List<String[]> installed(Context context) {
        PackageManager packageManager = context.getPackageManager();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        for (String str : PACK_ACTIONS) {
            for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(new Intent(str), 128)) {
                String str2 = resolveInfo.activityInfo.packageName;
                if (linkedHashSet.add(str2)) {
                    arrayList.add(new String[]{str2, String.valueOf(resolveInfo.loadLabel(packageManager))});
                }
            }
        }
        return arrayList;
    }

    private static boolean isAdaptive(Drawable drawable) {
        return Build.VERSION.SDK_INT >= 26 && k.s.k(drawable);
    }

    private static boolean isColourful(int[] iArr) {
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < iArr.length; i4 += 3) {
            int i5 = iArr[i4];
            if ((i5 >>> 24) >= 220) {
                i2++;
                if (!neutral(i5)) {
                    i3++;
                }
            }
        }
        return i2 > 0 && ((float) i3) > ((float) i2) * 0.6f;
    }

    private static boolean isPicture(Drawable drawable) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        return intrinsicWidth > 0 && intrinsicHeight > 0 && ((float) intrinsicWidth) > ((float) intrinsicHeight) * 1.3f;
    }

    private static boolean isSettings(String str) {
        return "com.android.tv.settings".equals(str) || "com.android.settings".equals(str) || "com.google.android.tv.settings".equals(str);
    }

    private static int lum(int i2) {
        return (int) (((i2 & 255) * 0.0722f) + (((i2 >> 8) & 255) * 0.7152f) + (((i2 >> 16) & 255) * 0.2126f));
    }

    private static boolean neutral(int i2) {
        int i3 = (i2 >> 16) & 255;
        int i4 = (i2 >> 8) & 255;
        int i5 = i2 & 255;
        return Math.max(i3, Math.max(i4, i5)) - Math.min(i3, Math.min(i4, i5)) < 24;
    }

    private static int opaqueEdge(Drawable drawable) {
        if (drawable.getConstantState() != null) {
            drawable = drawable.getConstantState().newDrawable().mutate();
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(48, 48, Bitmap.Config.ARGB_8888);
        drawable.setBounds(0, 0, 48, 48);
        drawable.draw(new Canvas(bitmapCreateBitmap));
        int[][] iArr = {new int[]{1, 1}, new int[]{46, 1}, new int[]{1, 46}, new int[]{46, 46}, new int[]{24, 1}, new int[]{1, 24}};
        long jRed = 0;
        long jGreen = 0;
        long jBlue = 0;
        for (int i2 = 0; i2 < 6; i2++) {
            int[] iArr2 = iArr[i2];
            int pixel = bitmapCreateBitmap.getPixel(iArr2[0], iArr2[1]);
            if (Color.alpha(pixel) < 230) {
                bitmapCreateBitmap.recycle();
                return 0;
            }
            jRed += (long) Color.red(pixel);
            jGreen += (long) Color.green(pixel);
            jBlue += (long) Color.blue(pixel);
        }
        bitmapCreateBitmap.recycle();
        long j = 6;
        return Color.rgb((int) (jRed / j), (int) (jGreen / j), (int) (jBlue / j));
    }

    private static Map<String, String> parseFilter(Resources resources, String str) throws XmlPullParserException, IOException {
        InputStream inputStream;
        XmlPullParser xml;
        String strSubstring;
        int iIndexOf;
        HashMap map = new HashMap();
        int identifier = resources.getIdentifier("appfilter", "xml", str);
        if (identifier != 0) {
            xml = resources.getXml(identifier);
            inputStream = null;
        } else {
            InputStream inputStreamOpen = resources.getAssets().open("appfilter.xml");
            XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
            xmlPullParserNewPullParser.setInput(inputStreamOpen, "UTF-8");
            inputStream = inputStreamOpen;
            xml = xmlPullParserNewPullParser;
        }
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 2 && "item".equals(xml.getName())) {
                    String attributeValue = xml.getAttributeValue(null, "component");
                    String attributeValue2 = xml.getAttributeValue(null, "drawable");
                    if (attributeValue != null && attributeValue2 != null && attributeValue.startsWith("ComponentInfo{") && (iIndexOf = (strSubstring = attributeValue.substring(14, attributeValue.length() - 1)).indexOf(47)) >= 0) {
                        String strSubstring2 = strSubstring.substring(0, iIndexOf);
                        String strSubstring3 = strSubstring.substring(iIndexOf + 1);
                        if (strSubstring3.startsWith(".")) {
                            strSubstring3 = strSubstring2 + strSubstring3;
                        }
                        map.put(strSubstring2 + "/" + strSubstring3, attributeValue2);
                        if (!map.containsKey(strSubstring2)) {
                            map.put(strSubstring2, attributeValue2);
                        }
                    }
                }
            }
            return map;
        } finally {
            if (inputStream != null) {
                inputStream.close();
            }
        }
    }

    private static void recolour(Bitmap bitmap, int i2) {
        int iHSVToColor;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i3 = width * height;
        int[] iArr = new int[i3];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < i3; i8 += 2) {
            int i9 = iArr[i8];
            if ((i9 >>> 24) >= 160) {
                i4++;
                if (!neutral(i9)) {
                    i5++;
                } else if (lum(i9) < 80) {
                    i6++;
                } else if (lum(i9) > 170) {
                    i7++;
                }
            }
        }
        if (i4 != 0) {
            float f2 = i5;
            float f3 = i4;
            if (f2 > 0.4f * f3) {
                return;
            }
            if (i6 <= 0.15f * f3 || i7 <= f3 * 0.08f) {
                float[] fArr = new float[3];
                Color.colorToHSV(i2, fArr);
                boolean z2 = fArr[1] >= 0.25f && fArr[2] >= 0.2f;
                if (i6 > i4 / 2) {
                    iHSVToColor = 15461360;
                } else {
                    if (!z2) {
                        return;
                    }
                    fArr[2] = Math.max(fArr[2], 0.92f);
                    iHSVToColor = Color.HSVToColor(fArr) & 16777215;
                }
                for (int i10 = 0; i10 < i3; i10++) {
                    int i11 = iArr[i10];
                    if ((i11 >>> 24) != 0 && neutral(i11)) {
                        iArr[i10] = (i11 & (-16777216)) | iHSVToColor;
                    }
                }
                bitmap.setPixels(iArr, 0, width, 0, 0, width, height);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0165 A[PHI: r0
      0x0165: PHI (r0v13 android.graphics.drawable.Drawable) = (r0v0 android.graphics.drawable.Drawable), (r0v15 android.graphics.drawable.Drawable) binds: [B:34:0x0163, B:9:0x008e] A[DONT_GENERATE, DONT_INLINE]] */
    private static Bitmap render(Drawable drawable, int i2, boolean z2) {
        Drawable drawableMutate = drawable;
        int i3 = W;
        int i4 = H;
        Bitmap.Config config = Bitmap.Config.ARGB_8888;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i3, i4, config);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(5);
        if (z2) {
            AdaptiveIconDrawable adaptiveIconDrawableC = k.s.c(drawable);
            Drawable background = adaptiveIconDrawableC.getBackground();
            if (background != null) {
                int iMax = (Math.max(W, H) * 3) / 2;
                int i5 = W;
                int i6 = H;
                background.setBounds((i5 - iMax) / 2, (i6 - iMax) / 2, (i5 + iMax) / 2, (i6 + iMax) / 2);
                background.draw(canvas);
                paint.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, H, new int[]{788529151, 0, 1711276032}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
                canvas.drawRect(0.0f, 0.0f, W, H, paint);
                paint.setShader(null);
            } else {
                fillBrand(canvas, paint, i2);
            }
            glass(canvas, paint);
            drawableMutate = adaptiveIconDrawableC.getForeground();
            if (drawableMutate != null) {
                drawFitted(canvas, drawableMutate, 0, true);
            }
        } else {
            int iOpaqueEdge = drawableMutate != null ? opaqueEdge(drawable) : 0;
            int iInnerSquare = (iOpaqueEdge != 0 || drawableMutate == null) ? 0 : innerSquare(drawable);
            if (iInnerSquare != 0) {
                canvas.drawColor(iInnerSquare);
                int i7 = (int) (H * 1.12f);
                if (drawable.getConstantState() != null) {
                    drawableMutate = drawable.getConstantState().newDrawable().mutate();
                }
                int i8 = W;
                int i9 = H;
                drawableMutate.setBounds((i8 - i7) / 2, (i9 - i7) / 2, (i8 + i7) / 2, (i9 + i7) / 2);
                drawableMutate.draw(canvas);
            } else if (iOpaqueEdge != 0 && hasVerticalGradient(drawable)) {
                int i10 = H;
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(i10, i10, config);
                if (drawable.getConstantState() != null) {
                    drawableMutate = drawable.getConstantState().newDrawable().mutate();
                }
                drawableMutate.setBounds(0, 0, i10, i10);
                drawableMutate.draw(new Canvas(bitmapCreateBitmap2));
                int iMax2 = Math.max(2, i10 / 24);
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(Bitmap.createBitmap(bitmapCreateBitmap2, 0, 0, iMax2, i10), 1, i10, true);
                Bitmap bitmapCreateScaledBitmap2 = Bitmap.createScaledBitmap(Bitmap.createBitmap(bitmapCreateBitmap2, i10 - iMax2, 0, iMax2, i10), 1, i10, true);
                Paint paint2 = new Paint(2);
                float f2 = (W - i10) / 2.0f;
                canvas.drawBitmap(bitmapCreateScaledBitmap, (Rect) null, new RectF(0.0f, 0.0f, f2 + 1.0f, H), paint2);
                canvas.drawBitmap(bitmapCreateScaledBitmap2, (Rect) null, new RectF((i10 + f2) - 1.0f, 0.0f, W, H), paint2);
                canvas.drawBitmap(bitmapCreateBitmap2, f2, 0.0f, paint2);
                bitmapCreateBitmap2.recycle();
            } else if (iOpaqueEdge != 0) {
                verticalFill(canvas, paint, iOpaqueEdge);
                glass(canvas, paint);
                drawFitted(canvas, drawableMutate, iOpaqueEdge, false);
            } else {
                fillBrand(canvas, paint, i2);
                glass(canvas, paint);
                if (drawableMutate != null) {
                    drawFitted(canvas, drawableMutate, 0, true);
                }
            }
            glass(canvas, paint);
        }
        return bitmapCreateBitmap;
    }

    private static Bitmap renderCover(Drawable drawable) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(W, H, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        float fMax = Math.max(W / drawable.getIntrinsicWidth(), H / drawable.getIntrinsicHeight());
        int iRound = Math.round(drawable.getIntrinsicWidth() * fMax);
        int iRound2 = Math.round(drawable.getIntrinsicHeight() * fMax);
        if (drawable.getConstantState() != null) {
            drawable = drawable.getConstantState().newDrawable().mutate();
        }
        int i2 = W;
        int i3 = H;
        drawable.setBounds((i2 - iRound) / 2, (i3 - iRound2) / 2, (i2 + iRound) / 2, (i3 + iRound2) / 2);
        drawable.setFilterBitmap(true);
        drawable.draw(canvas);
        glass(canvas, new Paint(5));
        return bitmapCreateBitmap;
    }

    private static Bitmap renderDark(Drawable drawable, int i2, boolean z2, boolean z3) {
        int iDominantColor;
        int i3 = W;
        int i4 = H;
        Bitmap.Config config = Bitmap.Config.ARGB_8888;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i3, i4, config);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(5);
        paint.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, H, -13355977, -16119285, Shader.TileMode.CLAMP));
        canvas.drawRect(0.0f, 0.0f, W, H, paint);
        paint.setShader(null);
        glass(canvas, paint);
        if (drawable == null) {
            return bitmapCreateBitmap;
        }
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(W, H, config);
        Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
        if (z2) {
            AdaptiveIconDrawable adaptiveIconDrawableC = k.s.c(drawable);
            if (adaptiveIconDrawableC.getBackground() == null || (iDominantColor = dominantColor(adaptiveIconDrawableC.getBackground())) == 0) {
                iDominantColor = i2;
            }
            if (adaptiveIconDrawableC.getForeground() != null) {
                drawFitted(canvas2, adaptiveIconDrawableC.getForeground(), 0, true);
            }
        } else if (z3) {
            drawFitted(canvas2, drawable, 0, true);
            iDominantColor = i2;
        } else {
            int iOpaqueEdge = opaqueEdge(drawable);
            int iInnerSquare = iOpaqueEdge == 0 ? innerSquare(drawable) : 0;
            if (iInnerSquare != 0) {
                iOpaqueEdge = iInnerSquare;
            }
            int i5 = iOpaqueEdge != 0 ? iOpaqueEdge : i2;
            drawFitted(canvas2, drawable, iOpaqueEdge, iOpaqueEdge == 0);
            iDominantColor = i5;
        }
        recolour(bitmapCreateBitmap2, iDominantColor);
        canvas.drawBitmap(bitmapCreateBitmap2, 0.0f, 0.0f, new Paint(2));
        bitmapCreateBitmap2.recycle();
        return bitmapCreateBitmap;
    }

    private static Bitmap renderLogo(Drawable drawable, int i2) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(W, H, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(5);
        fillBrand(canvas, paint, i2);
        glass(canvas, paint);
        if (drawable != null) {
            drawFitted(canvas, drawable, 0, true);
        }
        return bitmapCreateBitmap;
    }

    public static void set(Context context, String str) {
        context.getSharedPreferences("iconpack", 0).edit().putString("pack", str).apply();
        CACHE.evictAll();
        filter = null;
    }

    private static Bitmap settingsTile(Context context, boolean z2) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(W, H, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(5);
        int i2 = H;
        paint.setShader(z2 ? new LinearGradient(0.0f, 0.0f, 0.0f, i2, -13355977, -16119285, Shader.TileMode.CLAMP) : new LinearGradient(0.0f, 0.0f, 0.0f, i2, -2893859, -7828336, Shader.TileMode.CLAMP));
        canvas.drawRect(0.0f, 0.0f, W, H, paint);
        paint.setShader(null);
        glass(canvas, paint);
        Drawable drawableB = d.a.b(context, R.drawable.ic_settings_gear);
        if (drawableB != null) {
            int iRound = Math.round((H * 0.72f) / 0.78f);
            int i3 = W;
            int i4 = H;
            drawableB.setBounds((i3 - iRound) / 2, (i4 - iRound) / 2, (i3 + iRound) / 2, (i4 + iRound) / 2);
            drawableB.draw(canvas);
        }
        return bitmapCreateBitmap;
    }

    public static Bitmap tile(Context context, AppAdapter.Entry entry) {
        String strCurrent = current(context);
        if ("original".equals(strCurrent) || entry.isFolder() || entry.isPlaceholder()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(strCurrent);
        sb.append(Appearance.dark(context) ? "|dark|" : "|");
        sb.append(entry.key());
        String string = sb.toString();
        LruCache<String, Bitmap> lruCache = CACHE;
        Bitmap bitmap = lruCache.get(string);
        if (bitmap != null) {
            return bitmap;
        }
        int iMax = Math.max(400, Math.min(720, Math.round(context.getResources().getDisplayMetrics().density * 185.0f)));
        Bitmap bitmapTile = tile(context, entry, iMax, Math.round(iMax * 0.6f));
        lruCache.put(string, bitmapTile);
        return bitmapTile;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0034  */
    private static void verticalFill(Canvas canvas, Paint paint, int i2) {
        int iHSVToColor;
        int iHSVToColor2;
        float[] fArr = new float[3];
        Color.colorToHSV(i2, fArr);
        float f2 = fArr[1];
        if (f2 < 0.12f) {
            float f3 = fArr[2];
            if (f3 > 0.85f) {
                iHSVToColor2 = Color.HSVToColor(new float[]{fArr[0], f2, f3 * 0.8f});
                iHSVToColor = -1;
            } else {
                float[] fArr2 = (float[]) fArr.clone();
                float[] fArr3 = (float[]) fArr.clone();
                fArr2[1] = fArr2[1] * 0.82f;
                fArr2[2] = Math.min(1.0f, (fArr[2] * 1.18f) + 0.1f);
                fArr3[2] = fArr3[2] * 0.5f;
                iHSVToColor = Color.HSVToColor(fArr2);
                iHSVToColor2 = Color.HSVToColor(fArr3);
            }
        } else {
            float[] fArr4 = (float[]) fArr.clone();
            float[] fArr5 = (float[]) fArr.clone();
            fArr4[1] = fArr4[1] * 0.82f;
            fArr4[2] = Math.min(1.0f, (fArr[2] * 1.18f) + 0.1f);
            fArr5[2] = fArr5[2] * 0.5f;
            iHSVToColor = Color.HSVToColor(fArr4);
            iHSVToColor2 = Color.HSVToColor(fArr5);
        }
        paint.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, H, new int[]{iHSVToColor, i2, iHSVToColor2}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        paint.setDither(true);
        canvas.drawRect(0.0f, 0.0f, W, H, paint);
        paint.setShader(null);
    }

    public static Bitmap tile(Context context, AppAdapter.Entry entry, int i2, int i3) {
        String strCurrent = current(context);
        Drawable drawableFromPack = null;
        if ("original".equals(strCurrent) || entry.isFolder() || entry.isPlaceholder()) {
            return null;
        }
        synchronized (IconPack.class) {
            try {
                W = i2;
                H = i3;
                boolean zDark = Appearance.dark(context);
                if ("tvos".equals(strCurrent) && isSettings(entry.pkg)) {
                    return settingsTile(context, zDark);
                }
                int iAsset = "tvos".equals(strCurrent) ? Stage.asset(context, "logo", entry.pkg) : 0;
                if (iAsset != 0) {
                    drawableFromPack = d.a.b(context, iAsset);
                } else if (!"tvos".equals(strCurrent)) {
                    drawableFromPack = fromPack(context, strCurrent, entry.component);
                }
                if (drawableFromPack == null) {
                    drawableFromPack = appIcon(context, entry);
                }
                int iBrandOverride = brandOverride(entry.pkg);
                if (iBrandOverride == 0 && drawableFromPack != null) {
                    iBrandOverride = dominantColor(drawableFromPack);
                }
                if (iBrandOverride == 0) {
                    iBrandOverride = AppAdapter.colorOf(entry);
                }
                boolean z2 = true;
                if (iAsset != 0) {
                    if (drawableFromPack == null || !isPicture(drawableFromPack) || opaqueEdge(drawableFromPack) == 0) {
                        return zDark ? renderDark(drawableFromPack, iBrandOverride, false, true) : renderLogo(drawableFromPack, iBrandOverride);
                    }
                    return renderCover(drawableFromPack);
                }
                if (drawableFromPack == null || isAdaptive(drawableFromPack) || opaqueEdge(drawableFromPack) == 0 || (!hasVerticalGradient(drawableFromPack) && !isPicture(drawableFromPack))) {
                    z2 = false;
                }
                return (!zDark || z2) ? render(drawableFromPack, iBrandOverride, isAdaptive(drawableFromPack)) : renderDark(drawableFromPack, iBrandOverride, isAdaptive(drawableFromPack), false);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
