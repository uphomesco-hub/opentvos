package com.sid.tvos;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.net.Uri;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
abstract class CwBackground {
    static final int[] COLOURS;
    static final int CUSTOM;
    static final int[][] PRESETS = {new int[]{1, -2686955, -16777216}, new int[]{1, -14829228, -16777216}, new int[]{1, -44753, -2284426}, new int[]{0, -14576720, -16048577}, new int[]{3, -16725593, -11850794}, new int[]{2, -12961170, -16053484}, new int[]{1, -18292, -2203038}, new int[]{4, -973039, -15070674}, new int[]{5, -7459358, -15006152}, new int[]{7, -16730917, -16743504}, new int[]{6, -53896, -16087809}, new int[]{8, -8762838, -15595003}, new int[]{9, -11097297, -15783414}, new int[]{1, -3562969, -13950703}};
    private static Bitmap cached;
    private static String cachedKey;

    public interface Opener {
        InputStream open();
    }

    static {
        int[] iArr = {-16777216, -14935010, -12961220, -7434605, -855305, -2686955, -7667712, -38400, -20480, -10742, -5970944, -14829228, -16742566, -16735325, -13446411, -16087809, -16110997, -11850794, -6606631, -2741303, -53896, -28765, -8762838, -3562969};
        COLOURS = iArr;
        CUSTOM = iArr.length;
    }

    private static void blob(Canvas canvas, Paint paint, float f2, float f3, float f4, int i2, int i3) {
        paint.setShader(new RadialGradient(f2, f3, f4, new int[]{withAlpha(i2, i3), withAlpha(i2, (i3 * 2) / 5), withAlpha(i2, 0)}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        canvas.drawCircle(f2, f3, f4, paint);
        paint.setShader(null);
    }

    public static int choice(Context context, int i2) {
        return prefs(context).getInt(i2 == 1 ? "cw_bg_c1" : "cw_bg_c2", i2 == 1 ? 5 : 0);
    }

    public static int colour(Context context, int i2) {
        int iChoice = choice(context, i2);
        if (iChoice >= 0) {
            int[] iArr = COLOURS;
            if (iChoice < iArr.length) {
                return iArr[iChoice];
            }
        }
        return custom(context, i2);
    }

    public static int custom(Context context, int i2) {
        return prefs(context).getInt(i2 == 1 ? "cw_bg_c1_rgb" : "cw_bg_c2_rgb", i2 == 1 ? -2686955 : -16777216);
    }

    public static Bitmap draw(int i2, int i3, int i4, int i5, int i6) {
        float f2;
        float f3;
        float f4;
        float f5;
        Canvas canvas;
        Paint paint;
        float f6;
        float f7;
        float f8;
        int i7;
        Canvas canvas2;
        Paint paint2;
        int i8;
        Paint paint3;
        float f9;
        float f10;
        float f11;
        Canvas canvas3;
        float f12;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i5, i6, Bitmap.Config.ARGB_8888);
        Canvas canvas4 = new Canvas(bitmapCreateBitmap);
        Paint paint4 = new Paint(5);
        switch (i2) {
            case -1:
                canvas4.drawColor(i3);
                break;
            case 0:
                f2 = 0.0f;
                f3 = i6;
                f4 = 0.0f;
                f5 = 0.0f;
                canvas = canvas4;
                paint = paint4;
                linear(canvas, paint, f4, f5, f2, f3, i5, i6, i3, i4);
                break;
            case 1:
                f2 = i5;
                f4 = 0.0f;
                f5 = 0.0f;
                canvas = canvas4;
                paint = paint4;
                f3 = i6;
                linear(canvas, paint, f4, f5, f2, f3, i5, i6, i3, i4);
                break;
            case 2:
                bitmapCreateBitmap = bitmapCreateBitmap;
                canvas4.drawColor(i4);
                float f13 = i5;
                f6 = f13 * 0.5f;
                f7 = 0.28f * i6;
                f8 = f13 * 0.62f;
                i7 = 255;
                canvas2 = canvas4;
                paint2 = paint4;
                i8 = i3;
                blob(canvas2, paint2, f6, f7, f8, i8, i7);
                break;
            case 3:
                canvas4.drawColor(mix(i4, -16777216, 0.55f));
                float f14 = i5;
                float f15 = i6;
                float f16 = f14 * 0.55f;
                blob(canvas4, paint4, f14 * 0.22f, f15 * 0.25f, f16, i3, 208);
                blob(canvas4, paint4, f14 * 0.82f, f15 * 0.35f, f14 * 0.5f, i4, 208);
                blob(canvas4, paint4, f16, 0.95f * f15, f14 * 0.6f, mix(i3, i4, 0.5f), 208);
                break;
            case 4:
                paint3 = paint4;
                float f17 = i6;
                paint3.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, f17, new int[]{i4, mix(i4, i3, 0.35f), i3, mix(i3, -16777216, 0.6f)}, new float[]{0.0f, 0.5f, 0.72f, 1.0f}, Shader.TileMode.CLAMP));
                f9 = 0.0f;
                f10 = i5;
                f11 = 0.0f;
                canvas3 = canvas4;
                f12 = f17;
                canvas3.drawRect(f11, f9, f10, f12, paint3);
                break;
            case 5:
                float f18 = i5;
                f12 = i6;
                paint3 = paint4;
                paint3.setShader(new RadialGradient(f18 * 0.5f, f12 * 0.5f, ((float) Math.hypot(i5, i6)) * 0.55f, new int[]{i3, mix(i3, i4, 0.5f), i4}, new float[]{0.0f, 0.45f, 1.0f}, Shader.TileMode.CLAMP));
                f11 = 0.0f;
                f9 = 0.0f;
                canvas3 = canvas4;
                f10 = f18;
                canvas3.drawRect(f11, f9, f10, f12, paint3);
                break;
            case 6:
                canvas4.drawColor(mix(mix(i3, i4, 0.5f), -16777216, 0.7f));
                float f19 = i5;
                i7 = 255;
                canvas2 = canvas4;
                paint2 = paint4;
                f8 = f19 * 0.75f;
                blob(canvas2, paint2, 0.0f, 0.0f, f8, i3, 255);
                f7 = i6;
                f6 = f19;
                i8 = i4;
                blob(canvas2, paint2, f6, f7, f8, i8, i7);
                break;
            case 7:
                canvas4.drawColor(mix(i3, i4, 0.5f));
                float f20 = i5;
                float f21 = i6;
                float f22 = f20 * 0.6f;
                blob(canvas4, paint4, f20 * 0.1f, f21 * 0.15f, f22, i3, 255);
                f6 = f20 * 0.9f;
                float f23 = f20 * 0.55f;
                blob(canvas4, paint4, f6, 0.2f * f21, f23, mix(i3, -1, 0.25f), 176);
                blob(canvas4, paint4, f20 * 0.15f, f21 * 0.95f, f23, mix(i4, -16777216, 0.3f), 192);
                f7 = f21 * 0.9f;
                i7 = 255;
                canvas2 = canvas4;
                paint2 = paint4;
                f8 = f22;
                i8 = i4;
                blob(canvas2, paint2, f6, f7, f8, i8, i7);
                break;
            case 8:
                canvas4.drawColor(i3);
                float f24 = i5;
                float f25 = i6;
                paint4.setShader(new RadialGradient(f24 * 0.5f, f25 * 0.45f, ((float) Math.hypot(i5, i6)) * 0.6f, new int[]{withAlpha(i4, 0), withAlpha(i4, 96), i4}, new float[]{0.25f, 0.65f, 1.0f}, Shader.TileMode.CLAMP));
                canvas4.drawRect(0.0f, 0.0f, f24, f25, paint4);
                break;
            default:
                float f26 = i6;
                float f27 = i5;
                linear(canvas4, paint4, 0.0f, f26, f27, 0.0f, i5, i6, i4, mix(i4, -16777216, 0.4f));
                for (int i9 = 0; i9 < 3; i9++) {
                    float f28 = i9 * 0.25f;
                    paint4.setShader(new LinearGradient(0.0f, (f28 + 0.3f) * f26, f27, (f28 + 0.05f) * f26, new int[]{withAlpha(i3, 0), withAlpha(i3, 112 - (i9 * 24)), withAlpha(i3, 0)}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
                    canvas4.drawRect(0.0f, 0.0f, f27, f26, paint4);
                }
                break;
        }
        return bitmapCreateBitmap;
    }

    public static synchronized Bitmap get(Context context, int i2, int i3) {
        Bitmap bitmap;
        try {
            int iMode = mode(context);
            if (iMode >= 2 && i2 > 0 && i3 > 0) {
                StringBuilder sb = new StringBuilder();
                sb.append(iMode);
                sb.append("|");
                sb.append(style(context));
                sb.append("|");
                sb.append(colour(context, 1));
                sb.append("|");
                sb.append(colour(context, 2));
                sb.append("|");
                sb.append(i2);
                sb.append("x");
                sb.append(i3);
                sb.append("|");
                sb.append(iMode == 4 ? pictureFile(context).lastModified() : 0L);
                String string = sb.toString();
                if (string.equals(cachedKey) && (bitmap = cached) != null && !bitmap.isRecycled()) {
                    return cached;
                }
                Bitmap bitmapPicture = iMode == 4 ? picture(context, i2, i3) : null;
                if (bitmapPicture == null) {
                    bitmapPicture = draw(iMode == 2 ? -1 : style(context), colour(context, 1), colour(context, 2), i2, i3);
                }
                Bitmap bitmapUpload = Gpu.upload(bitmapPicture);
                cached = bitmapUpload;
                cachedKey = string;
                return bitmapUpload;
            }
            return null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized void invalidate() {
        cached = null;
        cachedKey = null;
    }

    private static boolean keep(Context context, Opener opener) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            InputStream inputStreamOpen = opener.open();
            try {
                BitmapFactory.decodeStream(inputStreamOpen, null, options);
                if (inputStreamOpen != null) {
                    inputStreamOpen.close();
                }
                if (options.outWidth <= 0) {
                    return false;
                }
                int i2 = 1;
                while (true) {
                    int i3 = i2 * 2;
                    if (options.outWidth / i3 < 1920 || options.outHeight / i3 < 1080) {
                        break;
                    }
                    i2 = i3;
                }
                BitmapFactory.Options options2 = new BitmapFactory.Options();
                options2.inSampleSize = i2;
                InputStream inputStreamOpen2 = opener.open();
                try {
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpen2, null, options2);
                    if (inputStreamOpen2 != null) {
                        inputStreamOpen2.close();
                    }
                    if (bitmapDecodeStream == null) {
                        return false;
                    }
                    FileOutputStream fileOutputStream = new FileOutputStream(pictureFile(context));
                    try {
                        bitmapDecodeStream.compress(Bitmap.CompressFormat.JPEG, 92, fileOutputStream);
                        fileOutputStream.close();
                        bitmapDecodeStream.recycle();
                        set(context, "cw_bg", 4);
                        invalidate();
                        return true;
                    } catch (Throwable th) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    if (inputStreamOpen2 != null) {
                        try {
                            inputStreamOpen2.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                    }
                    throw th3;
                }
            } catch (Throwable th5) {
                if (inputStreamOpen != null) {
                    try {
                        inputStreamOpen.close();
                    } catch (Throwable th6) {
                        th5.addSuppressed(th6);
                    }
                }
                throw th5;
            }
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ InputStream lambda$setPicture$0(Context context, Uri uri) {
        return context.getContentResolver().openInputStream(uri);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ InputStream lambda$setPicture$1(File file) {
        return new FileInputStream(file);
    }

    private static void linear(Canvas canvas, Paint paint, float f2, float f3, float f4, float f5, int i2, int i3, int i4, int i5) {
        paint.setShader(new LinearGradient(f2, f3, f4, f5, new int[]{i4, mix(i4, i5, 0.5f), i5}, new float[]{0.0f, 0.48f, 1.0f}, Shader.TileMode.CLAMP));
        canvas.drawRect(0.0f, 0.0f, i2, i3, paint);
        paint.setShader(null);
    }

    public static int mix(int i2, int i3, float f2) {
        return Color.rgb(Math.round(((Color.red(i3) - Color.red(i2)) * f2) + Color.red(i2)), Math.round(((Color.green(i3) - Color.green(i2)) * f2) + Color.green(i2)), Math.round(((Color.blue(i3) - Color.blue(i2)) * f2) + Color.blue(i2)));
    }

    public static int mode(Context context) {
        SharedPreferences sharedPreferencesPrefs = prefs(context);
        if (sharedPreferencesPrefs.contains("cw_bg")) {
            return sharedPreferencesPrefs.getInt("cw_bg", 0);
        }
        return sharedPreferencesPrefs.getBoolean("cw_art", true) ? 0 : 1;
    }

    private static Bitmap picture(Context context, int i2, int i3) {
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(pictureFile(context).getAbsolutePath());
        if (bitmapDecodeFile == null) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
        float f2 = i2;
        float f3 = i3;
        float fMax = Math.max(f2 / bitmapDecodeFile.getWidth(), f3 / bitmapDecodeFile.getHeight());
        float width = bitmapDecodeFile.getWidth() * fMax;
        float height = bitmapDecodeFile.getHeight() * fMax;
        new Canvas(bitmapCreateBitmap).drawBitmap(bitmapDecodeFile, (Rect) null, new RectF((f2 - width) / 2.0f, (f3 - height) / 2.0f, (f2 + width) / 2.0f, (f3 + height) / 2.0f), new Paint(6));
        bitmapDecodeFile.recycle();
        return bitmapCreateBitmap;
    }

    private static File pictureFile(Context context) {
        return new File(context.getFilesDir(), "cw_background.jpg");
    }

    private static SharedPreferences prefs(Context context) {
        return context.getSharedPreferences("appearance", 0);
    }

    public static int preset(Context context) {
        int iStyle = style(context);
        int iColour = colour(context, 1);
        int iColour2 = colour(context, 2);
        int i2 = 0;
        while (true) {
            int[][] iArr = PRESETS;
            if (i2 >= iArr.length) {
                return -1;
            }
            int[] iArr2 = iArr[i2];
            if (iArr2[0] == iStyle && iArr2[1] == iColour && iArr2[2] == iColour2) {
                return i2;
            }
            i2++;
        }
    }

    public static void set(Context context, String str, int i2) {
        prefs(context).edit().putInt(str, i2).apply();
    }

    public static void setCustom(Context context, int i2, int i3) {
        prefs(context).edit().putInt(i2 == 1 ? "cw_bg_c1" : "cw_bg_c2", CUSTOM).putInt(i2 == 1 ? "cw_bg_c1_rgb" : "cw_bg_c2_rgb", i3 | (-16777216)).apply();
    }

    public static boolean setPicture(Context context, Uri uri) {
        return keep(context, new C0006g(context, uri, 0));
    }

    public static void setPreset(Context context, int i2) {
        int[] iArr = PRESETS[i2];
        set(context, "cw_bg_style", iArr[0]);
        setCustom(context, 1, iArr[1]);
        setCustom(context, 2, iArr[2]);
    }

    public static int style(Context context) {
        return prefs(context).getInt("cw_bg_style", 1);
    }

    private static int withAlpha(int i2, int i3) {
        return (i2 & 16777215) | (Math.max(0, Math.min(255, i3)) << 24);
    }

    public static boolean setPicture(Context context, File file) {
        return keep(context, new C0005f(file, 2));
    }
}
