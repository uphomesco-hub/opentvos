package e;

import android.graphics.Color;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f363a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f364b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f365c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f366d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f367e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f368f;

    public a(float f2, float f3, float f4, float f5, float f6, float f7) {
        this.f363a = f2;
        this.f364b = f3;
        this.f365c = f4;
        this.f366d = f5;
        this.f367e = f6;
        this.f368f = f7;
    }

    public static a a(int i2) {
        l lVar = l.f390k;
        float fB = b.b(Color.red(i2));
        float fB2 = b.b(Color.green(i2));
        float fB3 = b.b(Color.blue(i2));
        float[][] fArr = b.f372d;
        float[] fArr2 = fArr[0];
        float f2 = (fArr2[2] * fB3) + (fArr2[1] * fB2) + (fArr2[0] * fB);
        float[] fArr3 = fArr[1];
        float f3 = (fArr3[2] * fB3) + (fArr3[1] * fB2) + (fArr3[0] * fB);
        float[] fArr4 = fArr[2];
        float[] fArr5 = {f2, f3, (fB3 * fArr4[2]) + (fB2 * fArr4[1]) + (fB * fArr4[0])};
        float[][] fArr6 = b.f369a;
        float f4 = fArr5[0];
        float[] fArr7 = fArr6[0];
        float f5 = fArr7[0] * f4;
        float f6 = fArr5[1];
        float f7 = (fArr7[1] * f6) + f5;
        float f8 = fArr5[2];
        float f9 = (fArr7[2] * f8) + f7;
        float[] fArr8 = fArr6[1];
        float f10 = (fArr8[2] * f8) + (fArr8[1] * f6) + (fArr8[0] * f4);
        float[] fArr9 = fArr6[2];
        float f11 = (f8 * fArr9[2]) + (f6 * fArr9[1]) + (f4 * fArr9[0]);
        float[] fArr10 = lVar.f397g;
        float f12 = fArr10[0] * f9;
        float f13 = fArr10[1] * f10;
        float f14 = fArr10[2] * f11;
        float fAbs = Math.abs(f12);
        float f15 = lVar.f398h;
        float fPow = (float) Math.pow(((double) (fAbs * f15)) / 100.0d, 0.42d);
        float fPow2 = (float) Math.pow(((double) (Math.abs(f13) * f15)) / 100.0d, 0.42d);
        float fPow3 = (float) Math.pow(((double) (Math.abs(f14) * f15)) / 100.0d, 0.42d);
        float fSignum = ((Math.signum(f12) * 400.0f) * fPow) / (fPow + 27.13f);
        float fSignum2 = ((Math.signum(f13) * 400.0f) * fPow2) / (fPow2 + 27.13f);
        float fSignum3 = ((Math.signum(f14) * 400.0f) * fPow3) / (fPow3 + 27.13f);
        double d2 = fSignum3;
        float f16 = ((float) (((((double) fSignum2) * (-12.0d)) + (((double) fSignum) * 11.0d)) + d2)) / 11.0f;
        float f17 = ((float) (((double) (fSignum + fSignum2)) - (d2 * 2.0d))) / 9.0f;
        float f18 = fSignum2 * 20.0f;
        float f19 = ((21.0f * fSignum3) + ((fSignum * 20.0f) + f18)) / 20.0f;
        float f20 = (((fSignum * 40.0f) + f18) + fSignum3) / 20.0f;
        float fAtan2 = (((float) Math.atan2(f17, f16)) * 180.0f) / 3.1415927f;
        if (fAtan2 < 0.0f) {
            fAtan2 += 360.0f;
        } else if (fAtan2 >= 360.0f) {
            fAtan2 -= 360.0f;
        }
        float f21 = fAtan2;
        float f22 = (3.1415927f * f21) / 180.0f;
        float f23 = f20 * lVar.f392b;
        float f24 = lVar.f391a;
        float f25 = lVar.f394d;
        float fPow4 = ((float) Math.pow(f23 / f24, lVar.j * f25)) * 100.0f;
        Math.sqrt(fPow4 / 100.0f);
        float f26 = f24 + 4.0f;
        float fPow5 = ((float) Math.pow(1.64d - Math.pow(0.29d, lVar.f396f), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos(((((double) (((double) f21) < 20.14d ? 360.0f + f21 : f21)) * 3.141592653589793d) / 180.0d) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * lVar.f395e) * lVar.f393c) * ((float) Math.sqrt((f17 * f17) + (f16 * f16)))) / (f19 + 0.305f), 0.9d));
        float fSqrt = fPow5 * ((float) Math.sqrt(((double) fPow4) / 100.0d));
        float f27 = lVar.f399i * fSqrt;
        Math.sqrt((fPow5 * f25) / f26);
        float f28 = (1.7f * fPow4) / ((0.007f * fPow4) + 1.0f);
        float fLog = ((float) Math.log((f27 * 0.0228f) + 1.0f)) * 43.85965f;
        double d3 = f22;
        return new a(f21, fSqrt, fPow4, f28, fLog * ((float) Math.cos(d3)), fLog * ((float) Math.sin(d3)));
    }

    public static a b(float f2, float f3, float f4) {
        l lVar = l.f390k;
        float f5 = lVar.f394d;
        double d2 = ((double) f2) / 100.0d;
        Math.sqrt(d2);
        float f6 = lVar.f391a + 4.0f;
        float f7 = lVar.f399i * f3;
        Math.sqrt(((f3 / ((float) Math.sqrt(d2))) * lVar.f394d) / f6);
        float f8 = (1.7f * f2) / ((0.007f * f2) + 1.0f);
        float fLog = ((float) Math.log((((double) f7) * 0.0228d) + 1.0d)) * 43.85965f;
        double d3 = (3.1415927f * f4) / 180.0f;
        return new a(f4, f3, f2, f8, fLog * ((float) Math.cos(d3)), fLog * ((float) Math.sin(d3)));
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001f  */
    public final int c(l lVar) {
        float fSqrt;
        float f2 = this.f364b;
        double d2 = f2;
        float f3 = this.f365c;
        if (d2 != 0.0d) {
            double d3 = f3;
            if (d3 == 0.0d) {
                fSqrt = 0.0f;
            } else {
                fSqrt = f2 / ((float) Math.sqrt(d3 / 100.0d));
            }
        } else {
            fSqrt = 0.0f;
        }
        float fPow = (float) Math.pow(((double) fSqrt) / Math.pow(1.64d - Math.pow(0.29d, lVar.f396f), 0.73d), 1.1111111111111112d);
        double d4 = (this.f363a * 3.1415927f) / 180.0f;
        float fCos = ((float) (Math.cos(2.0d + d4) + 3.8d)) * 0.25f;
        float fPow2 = lVar.f391a * ((float) Math.pow(((double) f3) / 100.0d, (1.0d / ((double) lVar.f394d)) / ((double) lVar.j)));
        float f4 = fCos * 3846.1538f * lVar.f395e * lVar.f393c;
        float f5 = fPow2 / lVar.f392b;
        float fSin = (float) Math.sin(d4);
        float fCos2 = (float) Math.cos(d4);
        float f6 = (((0.305f + f5) * 23.0f) * fPow) / (((fPow * 108.0f) * fSin) + (((11.0f * fPow) * fCos2) + (f4 * 23.0f)));
        float f7 = fCos2 * f6;
        float f8 = f6 * fSin;
        float f9 = f5 * 460.0f;
        float f10 = ((288.0f * f8) + ((451.0f * f7) + f9)) / 1403.0f;
        float f11 = ((f9 - (891.0f * f7)) - (261.0f * f8)) / 1403.0f;
        float f12 = ((f9 - (f7 * 220.0f)) - (f8 * 6300.0f)) / 1403.0f;
        float fMax = (float) Math.max(0.0d, (((double) Math.abs(f10)) * 27.13d) / (400.0d - ((double) Math.abs(f10))));
        float fSignum = Math.signum(f10);
        float f13 = 100.0f / lVar.f398h;
        float fPow3 = fSignum * f13 * ((float) Math.pow(fMax, 2.380952380952381d));
        float fSignum2 = Math.signum(f11) * f13 * ((float) Math.pow((float) Math.max(0.0d, (((double) Math.abs(f11)) * 27.13d) / (400.0d - ((double) Math.abs(f11)))), 2.380952380952381d));
        float fSignum3 = Math.signum(f12) * f13 * ((float) Math.pow((float) Math.max(0.0d, (((double) Math.abs(f12)) * 27.13d) / (400.0d - ((double) Math.abs(f12)))), 2.380952380952381d));
        float[] fArr = lVar.f397g;
        float f14 = fPow3 / fArr[0];
        float f15 = fSignum2 / fArr[1];
        float f16 = fSignum3 / fArr[2];
        float[][] fArr2 = b.f370b;
        float[] fArr3 = fArr2[0];
        float f17 = (fArr3[2] * f16) + (fArr3[1] * f15) + (fArr3[0] * f14);
        float[] fArr4 = fArr2[1];
        float f18 = (fArr4[2] * f16) + (fArr4[1] * f15) + (fArr4[0] * f14);
        float[] fArr5 = fArr2[2];
        return f.a.b(f17, f18, (f16 * fArr5[2]) + (f15 * fArr5[1]) + (f14 * fArr5[0]));
    }
}
