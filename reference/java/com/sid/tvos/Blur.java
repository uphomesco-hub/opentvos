package com.sid.tvos;

import android.graphics.Bitmap;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
abstract class Blur {
    public static void boxBlur(int[] iArr, int i2, int i3, int i4) {
        int i5 = i4;
        int[] iArr2 = new int[iArr.length];
        int i6 = (i5 * 2) + 1;
        int i7 = 0;
        int i8 = 0;
        while (i8 < 2) {
            boolean z2 = i8 == 0;
            int i9 = z2 ? i3 : i2;
            int i10 = z2 ? i2 : i3;
            int i11 = z2 ? 1 : i2;
            int i12 = 0;
            while (i12 < i9) {
                int i13 = z2 ? i12 * i2 : i12;
                int i14 = -i5;
                int i15 = 0;
                int i16 = 0;
                int i17 = 0;
                while (i14 <= i5) {
                    int i18 = iArr[(Math.max(i7, Math.min(i10 - 1, i14)) * i11) + i13];
                    i15 += (i18 >> 16) & 255;
                    i16 += (i18 >> 8) & 255;
                    i17 += i18 & 255;
                    i14++;
                    i7 = 0;
                }
                int i19 = 0;
                while (i19 < i10) {
                    iArr2[(i19 * i11) + i13] = ((i15 / i6) << 16) | (-16777216) | ((i16 / i6) << 8) | (i17 / i6);
                    int i20 = iArr[(Math.min(i10 - 1, i19 + i5 + 1) * i11) + i13];
                    int i21 = iArr[(Math.max(0, i19 - i5) * i11) + i13];
                    i15 += ((i20 >> 16) & 255) - ((i21 >> 16) & 255);
                    i16 += ((i20 >> 8) & 255) - ((i21 >> 8) & 255);
                    i17 = ((i20 & 255) - (i21 & 255)) + i17;
                    i19++;
                    i5 = i4;
                    i6 = i6;
                }
                i12++;
                i5 = i4;
                i7 = 0;
            }
            System.arraycopy(iArr2, 0, iArr, 0, iArr.length);
            i8++;
            i5 = i4;
            i6 = i6;
            i7 = 0;
        }
    }

    public static Bitmap capture(View view, int i2) {
        return Gpu.capture(view, i2);
    }

    private static int clamp(float f2) {
        if (f2 < 0.0f) {
            return 0;
        }
        if (f2 > 255.0f) {
            return 255;
        }
        return (int) f2;
    }

    public static Bitmap frost(Bitmap bitmap, int i2) {
        int iMax = Math.max(0, Math.min(10, i2));
        int i3 = ((iMax * 2) / 3) + 3;
        int i4 = iMax == 0 ? 0 : (iMax / 2) + 1;
        int iMax2 = Math.max(1, bitmap.getWidth() / i3);
        int iMax3 = Math.max(1, bitmap.getHeight() / i3);
        Bitmap bitmapRegion = Gpu.region(bitmap, null, iMax2, iMax3);
        int[] iArr = new int[iMax2 * iMax3];
        bitmapRegion.getPixels(iArr, 0, iMax2, 0, 0, iMax2, iMax3);
        if (i4 > 0) {
            for (int i5 = 0; i5 < 3; i5++) {
                boxBlur(iArr, iMax2, iMax3, i4);
            }
        }
        vibrancy(iArr, 1.75f, 0.84f - (iMax * 0.008f));
        bitmapRegion.setPixels(iArr, 0, iMax2, 0, 0, iMax2, iMax3);
        return refine(bitmapRegion, bitmap.getWidth(), bitmap.getHeight());
    }

    public static Bitmap refine(Bitmap bitmap, int i2, int i3) {
        int iMin = Math.min(640, Math.max(bitmap.getWidth(), i2 / 3));
        int iMax = Math.max(1, Math.round((i3 * iMin) / i2));
        if (iMin <= bitmap.getWidth()) {
            return bitmap;
        }
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, iMin, iMax, true);
        if (!bitmapCreateScaledBitmap.isMutable()) {
            bitmapCreateScaledBitmap = bitmapCreateScaledBitmap.copy(Bitmap.Config.ARGB_8888, true);
        }
        bitmap.recycle();
        int i4 = iMin * iMax;
        int[] iArr = new int[i4];
        bitmapCreateScaledBitmap.getPixels(iArr, 0, iMin, 0, 0, iMin, iMax);
        for (int i5 = 0; i5 < 2; i5++) {
            boxBlur(iArr, iMin, iMax, 2);
        }
        int i6 = 625341585;
        for (int i7 = 0; i7 < i4; i7++) {
            int i8 = i6 ^ (i6 << 13);
            int i9 = i8 ^ (i8 >>> 17);
            i6 = i9 ^ (i9 << 5);
            int i10 = (i6 & 1) - ((i6 >>> 9) & 1);
            int i11 = iArr[i7];
            iArr[i7] = clamp((i11 & 255) + i10) | (clamp(((i11 >> 16) & 255) + i10) << 16) | (-16777216) | (clamp(((i11 >> 8) & 255) + i10) << 8);
        }
        bitmapCreateScaledBitmap.setPixels(iArr, 0, iMin, 0, 0, iMin, iMax);
        return bitmapCreateScaledBitmap;
    }

    public static Bitmap snapshot(View view, int i2, int i3, float f2) {
        return soften(capture(view, i2), i3, f2);
    }

    public static Bitmap soften(Bitmap bitmap, int i2) {
        int iMax = Math.max(1, Math.min(10, i2));
        int i3 = ((iMax * 7) / 10) + 5;
        int i4 = (iMax / 3) + 1;
        int iMax2 = Math.max(1, bitmap.getWidth() / i3);
        int iMax3 = Math.max(1, bitmap.getHeight() / i3);
        Bitmap bitmapRegion = Gpu.region(bitmap, null, iMax2, iMax3);
        int[] iArr = new int[iMax2 * iMax3];
        bitmapRegion.getPixels(iArr, 0, iMax2, 0, 0, iMax2, iMax3);
        for (int i5 = 0; i5 < 3; i5++) {
            boxBlur(iArr, iMax2, iMax3, i4);
        }
        bitmapRegion.setPixels(iArr, 0, iMax2, 0, 0, iMax2, iMax3);
        return refine(bitmapRegion, bitmap.getWidth(), bitmap.getHeight());
    }

    public static void vibrancy(int[] iArr, float f2, float f3) {
        for (int i2 = 0; i2 < iArr.length; i2++) {
            int i3 = iArr[i2];
            float f4 = (i3 >> 16) & 255;
            float f5 = (i3 >> 8) & 255;
            float f6 = i3 & 255;
            float f7 = (0.0722f * f6) + (0.7152f * f5) + (0.2126f * f4);
            iArr[i2] = clamp((((f6 - f7) * f2) + f7) * f3) | (clamp((((f4 - f7) * f2) + f7) * f3) << 16) | (-16777216) | (clamp((((f5 - f7) * f2) + f7) * f3) << 8);
        }
    }

    private static int clamp(int i2) {
        if (i2 < 0) {
            return 0;
        }
        if (i2 > 255) {
            return 255;
        }
        return i2;
    }

    public static Bitmap soften(Bitmap bitmap, int i2, float f2) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[width * height];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        for (int i3 = 0; i3 < 3; i3++) {
            boxBlur(iArr, width, height, i2);
        }
        vibrancy(iArr, 1.7f, f2);
        bitmap.setPixels(iArr, 0, width, 0, 0, width, height);
        return bitmap;
    }
}
