package com.sid.tvos;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.util.LruCache;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
abstract class Stage {
    private static int H = 720;
    private static int W = 1280;
    private static final LruCache<String, Bitmap> CACHE = new LruCache<>(5);
    private static final ExecutorService BG = Executors.newSingleThreadExecutor();
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static final Map<String, Integer> ASSETS = new HashMap();

    public interface Callback {
    }

    public static int asset(Context context, String str, String str2) {
        int iIntValue;
        if (str2 == null) {
            return 0;
        }
        String str3 = "a_" + str + "_" + str2.toLowerCase(Locale.ROOT).replaceAll("[^a-z0-9]", "_");
        Map<String, Integer> map = ASSETS;
        synchronized (map) {
            try {
                Integer numValueOf = map.get(str3);
                if (numValueOf == null) {
                    numValueOf = Integer.valueOf(context.getResources().getIdentifier(str3, "drawable", context.getPackageName()));
                    map.put(str3, numValueOf);
                }
                iIntValue = numValueOf.intValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return iIntValue;
    }

    private static int blend(int i2, int i3, float f2) {
        return Color.rgb(Math.round(((Color.red(i3) - Color.red(i2)) * f2) + Color.red(i2)), Math.round(((Color.green(i3) - Color.green(i2)) * f2) + Color.green(i2)), Math.round(((Color.blue(i3) - Color.blue(i2)) * f2) + Color.blue(i2)));
    }

    public static Bitmap brandArt(Context context, String str, int i2, int i3) {
        int iLogoFor = 0;
        int iAsset = (!Appearance.dark(context) || logoFor(context, str) == 0) ? asset(context, "rc", str) : 0;
        if (iAsset == 0 && Build.VERSION.SDK_INT >= 24) {
            iLogoFor = logoFor(context, str);
        }
        if (iLogoFor != 0) {
            try {
                return logoCard(context, iLogoFor, i2, i3);
            } catch (RuntimeException unused) {
            }
        }
        if (iAsset == 0) {
            iAsset = asset(context, asset(context, "bg", str) == 0 ? "cw" : "bg", str);
        }
        if (iAsset == 0) {
            return null;
        }
        return cover(context, iAsset, i2, i3);
    }

    public static int brandBackground(Context context, String str) {
        int iAsset = asset(context, "rc", str);
        if (iAsset != 0) {
            return iAsset;
        }
        int iLogoFor = Build.VERSION.SDK_INT >= 24 ? logoFor(context, str) : 0;
        if (iLogoFor != 0) {
            return iLogoFor;
        }
        int iAsset2 = asset(context, "bg", str);
        return iAsset2 != 0 ? iAsset2 : asset(context, "cw", str);
    }

    public static int cap(int i2) {
        return Math.max(1, Math.min(i2, 1920));
    }

    public static void clear() {
        CACHE.evictAll();
    }

    public static Bitmap.Config config(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        return (activityManager == null || !activityManager.isLowRamDevice()) ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
    }

    private static Bitmap cover(Context context, int i2, int i3, int i4) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = config(context);
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(context.getResources(), i2, options);
        options.inSampleSize = 1;
        while (true) {
            int i5 = options.outWidth;
            int i6 = options.inSampleSize;
            if (i5 / (i6 * 2) < i3 || options.outHeight / (i6 * 2) < i4) {
                break;
            }
            options.inSampleSize = i6 * 2;
        }
        options.inJustDecodeBounds = false;
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(context.getResources(), i2, options);
        if (bitmapDecodeResource == null) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i3, i4, config(context));
        float f2 = i3;
        float f3 = i4;
        float fMax = Math.max(f2 / bitmapDecodeResource.getWidth(), f3 / bitmapDecodeResource.getHeight());
        float width = bitmapDecodeResource.getWidth() * fMax;
        float height = bitmapDecodeResource.getHeight() * fMax;
        new Canvas(bitmapCreateBitmap).drawBitmap(bitmapDecodeResource, (Rect) null, new RectF((f2 - width) / 2.0f, (f3 - height) / 2.0f, (f2 + width) / 2.0f, (f3 + height) / 2.0f), new Paint(6));
        bitmapDecodeResource.recycle();
        return bitmapCreateBitmap;
    }

    private static Bitmap customBackground(Context context, AppAdapter.Entry entry, int i2, int i3) {
        if (entry.isFolder() || entry.isPlaceholder()) {
            return null;
        }
        int iAsset = (!Appearance.cwOn(context) || (Appearance.dark(context) && logoFor(context, entry.pkg) != 0)) ? 0 : asset(context, "cw", entry.pkg);
        if (iAsset != 0) {
            return cover(context, iAsset, i2, i3);
        }
        int iLogoFor = Build.VERSION.SDK_INT >= 24 ? logoFor(context, entry.pkg) : 0;
        if (iLogoFor != 0) {
            try {
                return brandBackground(context, entry, iLogoFor, i2, i3);
            } catch (RuntimeException unused) {
            }
        }
        int iCustomFor = customFor(context, entry.pkg);
        if (iCustomFor == 0) {
            return null;
        }
        return cover(context, iCustomFor, i2, i3);
    }

    private static int customFor(Context context, String str) {
        boolean zCwOn = Appearance.cwOn(context);
        int iAsset = asset(context, zCwOn ? "cw" : "bg", str);
        return iAsset != 0 ? iAsset : asset(context, zCwOn ? "bg" : "cw", str);
    }

    private static int darken(int i2, float f2) {
        return Color.rgb((int) (Color.red(i2) * f2), (int) (Color.green(i2) * f2), (int) (Color.blue(i2) * f2));
    }

    /* JADX WARN: Code duplicated, block: B:15:0x007f  */
    private static void drawLogo(Canvas canvas, Drawable drawable, int i2, int i3, int i4, int i5, boolean z2) {
        boolean z3;
        if (!z2) {
            drawable.setBounds(i2, i3, i2 + i4, i3 + i5);
            drawable.draw(canvas);
            return;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(Math.max(1, i4), Math.max(1, i5), Bitmap.Config.ARGB_8888);
        drawable.setBounds(0, 0, i4, i5);
        drawable.draw(new Canvas(bitmapCreateBitmap));
        int i6 = i4 * i5;
        int[] iArr = new int[i6];
        bitmapCreateBitmap.getPixels(iArr, 0, i4, 0, 0, i4, i5);
        int i7 = (i4 * 9) / 10;
        int i8 = i5 / 10;
        int i9 = (i5 * 9) / 10;
        int i10 = (i5 / 2) * i4;
        if ((iArr[(i4 / 10) + i10] >>> 24) > 200 && (iArr[i10 + i7] >>> 24) > 200) {
            int i11 = i4 / 2;
            z3 = (iArr[(i8 * i4) + i11] >>> 24) > 200 && (iArr[(i9 * i4) + i11] >>> 24) > 200;
        }
        for (int i12 = 0; i12 < i6 && !z3; i12++) {
            int i13 = iArr[i12];
            int i14 = (i13 >> 16) & 255;
            int i15 = (i13 >> 8) & 255;
            int i16 = i13 & 255;
            if ((i13 >>> 24) != 0 && Math.max(i14, Math.max(i15, i16)) <= 90) {
                iArr[i12] = (i13 & (-16777216)) | 15461360;
            }
        }
        bitmapCreateBitmap.setPixels(iArr, 0, i4, 0, 0, i4, i5);
        canvas.drawBitmap(bitmapCreateBitmap, i2, i3, new Paint(2));
        bitmapCreateBitmap.recycle();
    }

    private static int edgeColor(Drawable drawable) {
        int i2;
        Drawable drawableMutate = drawable.getConstantState() != null ? drawable.getConstantState().newDrawable().mutate() : drawable;
        Rect rect = new Rect(drawableMutate.getBounds());
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(32, 18, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.drawColor(-16777216);
        int i3 = 0;
        drawableMutate.setBounds(0, 0, 32, 18);
        drawableMutate.draw(canvas);
        drawableMutate.setBounds(rect);
        long jRed = 0;
        long jGreen = 0;
        long jBlue = 0;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (i4 >= 32) {
                break;
            }
            int[] iArr = {0, 1, 16, 17};
            int i6 = 0;
            for (int i7 = 4; i6 < i7; i7 = 4) {
                int pixel = bitmapCreateBitmap.getPixel(i4, iArr[i6]);
                jRed += (long) Color.red(pixel);
                jGreen += (long) Color.green(pixel);
                jBlue += (long) Color.blue(pixel);
                i5++;
                i6++;
            }
            i4++;
        }
        int i8 = 2;
        for (i2 = 16; i8 < i2; i2 = 16) {
            int[] iArr2 = {i3, 1, 30, 31};
            int i9 = 0;
            for (int i10 = 4; i9 < i10; i10 = 4) {
                int pixel2 = bitmapCreateBitmap.getPixel(iArr2[i9], i8);
                jRed += (long) Color.red(pixel2);
                jGreen += (long) Color.green(pixel2);
                jBlue += (long) Color.blue(pixel2);
                i5++;
                i9++;
            }
            i8++;
            i3 = 0;
        }
        bitmapCreateBitmap.recycle();
        long j = i5;
        return Color.rgb((int) (jRed / j), (int) (jGreen / j), (int) (jBlue / j));
    }

    public static Bitmap iconArt(Context context, AppAdapter.Entry entry, int i2, int i3) {
        Drawable drawableMutate;
        Drawable drawableSharpestBanner = entry.isFolder() ? null : sharpestBanner(context, entry);
        if (drawableSharpestBanner != null) {
            drawableMutate = drawableSharpestBanner;
        } else {
            drawableMutate = entry.banner;
            if (drawableMutate == null) {
                drawableMutate = entry.icon;
            }
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(Math.max(1, i2), Math.max(1, i3), config(context));
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.drawColor(drawableMutate != null ? edgeColor(drawableMutate) : -13882322);
        if (drawableMutate == null) {
            return bitmapCreateBitmap;
        }
        if (drawableMutate.getConstantState() != null) {
            drawableMutate = drawableMutate.getConstantState().newDrawable().mutate();
        }
        if (drawableSharpestBanner == null && entry.banner == null) {
            int i4 = i3 / 3;
            drawableMutate.setBounds((i2 - i4) / 2, (i3 - i4) / 2, (i2 + i4) / 2, (i3 + i4) / 2);
        } else {
            float intrinsicWidth = drawableMutate.getIntrinsicWidth() > 0 ? drawableMutate.getIntrinsicWidth() : 16.0f;
            float intrinsicHeight = drawableMutate.getIntrinsicHeight() > 0 ? drawableMutate.getIntrinsicHeight() : 9.0f;
            float fMax = Math.max(i2 / intrinsicWidth, i3 / intrinsicHeight);
            int i5 = (int) (intrinsicWidth * fMax);
            int i6 = (int) (intrinsicHeight * fMax);
            drawableMutate.setBounds((i2 - i5) / 2, (i3 - i6) / 2, (i2 + i5) / 2, (i3 + i6) / 2);
        }
        drawableMutate.draw(canvas);
        return bitmapCreateBitmap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$renderAsync$0(Callback callback, Bitmap bitmap) {
        ((G) callback).a(bitmap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$renderAsync$1(Context context, AppAdapter.Entry entry, int i2, Callback callback) {
        Bitmap bitmapRender = render(context, entry, i2);
        if (callback != null) {
            MAIN.post(new a0(callback, bitmapRender, 2));
        }
    }

    private static int lighten(int i2, float f2) {
        return Color.rgb(Color.red(i2) + ((int) ((255 - Color.red(i2)) * f2)), Color.green(i2) + ((int) ((255 - Color.green(i2)) * f2)), Color.blue(i2) + ((int) ((255 - Color.blue(i2)) * f2)));
    }

    public static Bitmap logoCard(Context context, int i2, int i3, int i4) {
        boolean zDark = Appearance.dark(context);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(Math.max(1, i3), Math.max(1, i4), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        if (zDark) {
            Paint paint = new Paint(4);
            float f2 = i4;
            paint.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, f2, -12961219, -15658733, Shader.TileMode.CLAMP));
            canvas.drawRect(0.0f, 0.0f, i3, f2, paint);
        } else {
            canvas.drawColor(-1);
        }
        Drawable drawableB = d.a.b(context, i2);
        if (drawableB != null && drawableB.getIntrinsicWidth() > 0 && drawableB.getIntrinsicHeight() > 0) {
            float fMin = Math.min((i3 * 0.62f) / drawableB.getIntrinsicWidth(), (i4 * 0.34f) / drawableB.getIntrinsicHeight());
            int iRound = Math.round(drawableB.getIntrinsicWidth() * fMin);
            int iRound2 = Math.round(drawableB.getIntrinsicHeight() * fMin);
            drawLogo(canvas, drawableB, (i3 - iRound) / 2, (i4 - iRound2) / 2, iRound, iRound2, zDark);
        }
        return Gpu.upload(bitmapCreateBitmap);
    }

    public static int logoFor(Context context, String str) {
        int iIntValue;
        if (str == null) {
            return 0;
        }
        String str2 = "logo_" + str.toLowerCase(Locale.ROOT).replaceAll("[^a-z0-9]", "_");
        Map<String, Integer> map = ASSETS;
        synchronized (map) {
            try {
                Integer numValueOf = map.get(str2);
                if (numValueOf == null) {
                    numValueOf = Integer.valueOf(context.getResources().getIdentifier(str2, "drawable", context.getPackageName()));
                    map.put(str2, numValueOf);
                }
                iIntValue = numValueOf.intValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return iIntValue;
    }

    public static Bitmap peek(AppAdapter.Entry entry) {
        return CACHE.get(entry.key());
    }

    public static synchronized Bitmap render(Context context, AppAdapter.Entry entry, int i2) {
        Drawable drawableMutate;
        Paint paint;
        boolean z2;
        Bitmap.Config config;
        String strKey = entry.key();
        LruCache<String, Bitmap> lruCache = CACHE;
        Bitmap bitmap = lruCache.get(strKey);
        if (bitmap != null) {
            return bitmap;
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int iMax = Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels);
        int iMin = Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels);
        int iCap = cap(iMax);
        W = iCap;
        int iRound = Math.round((iCap / iMax) * iMin);
        H = iRound;
        Bitmap bitmapCustomBackground = customBackground(context, entry, W, iRound);
        if (bitmapCustomBackground != null) {
            Bitmap bitmapUpload = Gpu.upload(bitmapCustomBackground);
            lruCache.put(strKey, bitmapUpload);
            return bitmapUpload;
        }
        Drawable drawableSharpestBanner = entry.isFolder() ? null : sharpestBanner(context, entry);
        if (drawableSharpestBanner != null) {
            drawableMutate = drawableSharpestBanner;
        } else {
            drawableMutate = entry.banner;
            if (drawableMutate == null) {
                drawableMutate = entry.icon;
            }
        }
        int iEdgeColor = drawableMutate != null ? edgeColor(drawableMutate) : i2;
        int i3 = W;
        int i4 = H;
        Bitmap.Config config2 = Bitmap.Config.ARGB_8888;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i3, i4, config2);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint2 = new Paint(7);
        if (Appearance.dark(context)) {
            paint2.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, H, -11908531, -16777216, Shader.TileMode.CLAMP));
            canvas.drawRect(0.0f, 0.0f, W, H, paint2);
            paint = paint2;
        } else {
            float f2 = H;
            int iLighten = lighten(iEdgeColor, 0.12f);
            int iDarken = darken(iEdgeColor, 0.18f);
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            paint2.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, f2, iLighten, iDarken, tileMode));
            canvas.drawRect(0.0f, 0.0f, W, H, paint2);
            int i5 = W;
            RadialGradient radialGradient = new RadialGradient(i5 * 0.5f, H * 0.3f, i5 * 0.6f, withAlpha(lighten(iEdgeColor, 0.35f), 102), withAlpha(iEdgeColor, 0), tileMode);
            paint = paint2;
            paint.setShader(radialGradient);
            canvas.drawRect(0.0f, 0.0f, W, H, paint);
        }
        if (drawableMutate != null) {
            int iMax2 = (int) (W * 0.5f);
            if (drawableMutate instanceof BitmapDrawable) {
                iMax2 = Math.max((int) (W * 0.34f), Math.min(iMax2, (int) (((BitmapDrawable) drawableMutate).getBitmap().getWidth() * 1.5f)));
            }
            float f3 = iMax2;
            int i6 = (int) ((9.0f * f3) / 16.0f);
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(iMax2, i6, config2);
            Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
            if (drawableMutate.getConstantState() != null) {
                drawableMutate = drawableMutate.getConstantState().newDrawable().mutate();
            }
            if (drawableSharpestBanner == null && entry.banner == null) {
                int i7 = (int) (i6 * 0.6f);
                drawableMutate.setBounds((iMax2 - i7) / 2, (i6 - i7) / 2, (iMax2 + i7) / 2, (i7 + i6) / 2);
            } else {
                drawableMutate.setBounds(0, 0, iMax2, i6);
            }
            drawableMutate.draw(canvas2);
            Paint paint3 = new Paint(1);
            paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
            int[] iArr = {0, -16777216, -16777216, 0};
            Shader.TileMode tileMode2 = Shader.TileMode.CLAMP;
            paint3.setShader(new LinearGradient(0.0f, 0.0f, f3, 0.0f, iArr, new float[]{0.0f, 0.2f, 0.8f, 1.0f}, tileMode2));
            float f4 = i6;
            canvas2.drawRect(0.0f, 0.0f, f3, f4, paint3);
            paint3.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, f4, iArr, new float[]{0.0f, 0.24f, 0.76f, 1.0f}, tileMode2));
            canvas2.drawRect(0.0f, 0.0f, f3, f4, paint3);
            float f5 = (W - iMax2) / 2.0f;
            float f6 = (H * 0.34f) - (f4 / 2.0f);
            canvas.drawBitmap(bitmapCreateBitmap2, (Rect) null, new RectF(f5, f6, f3 + f5, f4 + f6), new Paint(2));
            bitmapCreateBitmap2.recycle();
        } else {
            strKey = strKey;
        }
        float f7 = H * 0.2f;
        Shader.TileMode tileMode3 = Shader.TileMode.CLAMP;
        paint.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, f7, 1493172224, 0, tileMode3));
        canvas.drawRect(0.0f, 0.0f, W, H * 0.2f, paint);
        int i8 = H;
        paint.setShader(new LinearGradient(0.0f, i8 * 0.55f, 0.0f, i8, 0, -1728053248, tileMode3));
        canvas.drawRect(0.0f, 0.0f, W, H, paint);
        if (Gpu.enabled()) {
            config = Bitmap.Config.HARDWARE;
            z2 = false;
        } else {
            z2 = false;
            config = config(context);
        }
        Bitmap bitmapCopy = bitmapCreateBitmap.copy(config, z2);
        bitmapCreateBitmap.recycle();
        lruCache.put(strKey, bitmapCopy);
        return bitmapCopy;
    }

    public static void renderAsync(Context context, AppAdapter.Entry entry, int i2, Callback callback) {
        BG.execute(new Y(context.getApplicationContext(), entry, i2, callback));
    }

    private static Drawable sharpestBanner(Context context, AppAdapter.Entry entry) {
        try {
            PackageManager packageManager = context.getPackageManager();
            ActivityInfo activityInfo = packageManager.getActivityInfo(entry.component, 0);
            int i2 = activityInfo.banner;
            if (i2 == 0) {
                i2 = activityInfo.applicationInfo.banner;
            }
            if (i2 == 0) {
                return null;
            }
            return packageManager.getResourcesForApplication(activityInfo.applicationInfo).getDrawableForDensity(i2, 640, null);
        } catch (Exception unused) {
            return null;
        }
    }

    public static void trimTo(int i2) {
        if (i2 <= 0) {
            CACHE.evictAll();
        } else {
            CACHE.trimToSize(i2);
        }
    }

    private static int withAlpha(int i2, int i3) {
        return (i2 & 16777215) | (i3 << 24);
    }

    public static Bitmap brandBackground(Context context, AppAdapter.Entry entry, int i2, int i3, int i4) {
        int iHSVToColor;
        Drawable drawable;
        int identifier = context.getResources().getIdentifier("brand_" + entry.pkg.toLowerCase(Locale.ROOT).replaceAll("[^a-z0-9]", "_"), "color", context.getPackageName());
        int iDominantColor = 0;
        if (identifier == 0 && (drawable = entry.icon) != null) {
            iDominantColor = IconPack.dominantColor(drawable);
        }
        float[] fArr = new float[3];
        if (identifier != 0) {
            iHSVToColor = Build.VERSION.SDK_INT >= 23 ? d.b.a(context, identifier) : context.getResources().getColor(identifier);
        } else {
            iHSVToColor = -11908532;
        }
        if (iDominantColor != 0) {
            Color.colorToHSV(iDominantColor, fArr);
            float f2 = fArr[1];
            if (f2 >= 0.15f) {
                fArr[1] = Math.min(1.0f, f2 * 0.8f);
                fArr[2] = Math.min(1.0f, Math.max(0.55f, fArr[2] * 0.82f));
                iHSVToColor = Color.HSVToColor(fArr);
            }
        }
        boolean zDark = Appearance.dark(context);
        int iBlend = blend(iHSVToColor, -723723, 0.55f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i3, i4, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(4);
        paint.setShader(zDark ? new LinearGradient(0.0f, 0.0f, 0.0f, i4, new int[]{-11908531, -14277078, -16777216}, new float[]{0.0f, 0.45f, 1.0f}, Shader.TileMode.CLAMP) : new LinearGradient(0.0f, 0.0f, 0.0f, i4, new int[]{iHSVToColor, iHSVToColor, iBlend, -723723, -723723}, new float[]{0.0f, 0.06f, 0.5f, 0.86f, 1.0f}, Shader.TileMode.CLAMP));
        float f3 = i3;
        float f4 = i4;
        canvas.drawRect(0.0f, 0.0f, f3, f4, paint);
        Drawable drawableB = d.a.b(context, i2);
        if (drawableB != null && drawableB.getIntrinsicWidth() > 0 && drawableB.getIntrinsicHeight() > 0) {
            float fMin = Math.min((f3 * 0.66f) / drawableB.getIntrinsicWidth(), (f4 * 0.26f) / drawableB.getIntrinsicHeight());
            int iRound = Math.round(drawableB.getIntrinsicWidth() * fMin);
            int iRound2 = Math.round(drawableB.getIntrinsicHeight() * fMin);
            drawLogo(canvas, drawableB, (i3 - iRound) / 2, (i4 - iRound2) / 2, iRound, iRound2, zDark);
        }
        return bitmapCreateBitmap;
    }
}
