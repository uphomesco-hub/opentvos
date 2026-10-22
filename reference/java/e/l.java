package e;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final l f390k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f391a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f392b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f393c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f394d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f395e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f396f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final float[] f397g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f398h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f399i;
    public final float j;

    static {
        float[] fArr = b.f371c;
        float f2 = (float) ((((double) b.f()) * 63.66197723675813d) / 100.0d);
        float[][] fArr2 = b.f369a;
        float f3 = fArr[0];
        float[] fArr3 = fArr2[0];
        float f4 = fArr3[0] * f3;
        float f5 = fArr[1];
        float f6 = (fArr3[1] * f5) + f4;
        float f7 = fArr[2];
        float f8 = (fArr3[2] * f7) + f6;
        float[] fArr4 = fArr2[1];
        float f9 = (fArr4[2] * f7) + (fArr4[1] * f5) + (fArr4[0] * f3);
        float[] fArr5 = fArr2[2];
        float f10 = (f7 * fArr5[2]) + (f5 * fArr5[1]) + (f3 * fArr5[0]);
        float f11 = ((double) 1.0f) >= 0.9d ? 0.69f : 0.655f;
        float fExp = (1.0f - (((float) Math.exp(((-f2) - 42.0f) / 92.0f)) * 0.2777778f)) * 1.0f;
        double d2 = fExp;
        if (d2 > 1.0d) {
            fExp = 1.0f;
        } else if (d2 < 0.0d) {
            fExp = 0.0f;
        }
        float[] fArr6 = {(((100.0f / f8) * fExp) + 1.0f) - fExp, (((100.0f / f9) * fExp) + 1.0f) - fExp, (((100.0f / f10) * fExp) + 1.0f) - fExp};
        float f12 = 1.0f / ((5.0f * f2) + 1.0f);
        float f13 = f12 * f12 * f12 * f12;
        float f14 = 1.0f - f13;
        float fCbrt = (0.1f * f14 * f14 * ((float) Math.cbrt(((double) f2) * 5.0d))) + (f13 * f2);
        float f15 = b.f() / fArr[1];
        double d3 = f15;
        float fSqrt = ((float) Math.sqrt(d3)) + 1.48f;
        float fPow = 0.725f / ((float) Math.pow(d3, 0.2d));
        float[] fArr7 = {(float) Math.pow(((double) ((fArr6[0] * fCbrt) * f8)) / 100.0d, 0.42d), (float) Math.pow(((double) ((fArr6[1] * fCbrt) * f9)) / 100.0d, 0.42d), (float) Math.pow(((double) ((fArr6[2] * fCbrt) * f10)) / 100.0d, 0.42d)};
        float f16 = fArr7[0];
        float f17 = (f16 * 400.0f) / (f16 + 27.13f);
        float f18 = fArr7[1];
        float f19 = (f18 * 400.0f) / (f18 + 27.13f);
        float f20 = fArr7[2];
        float[] fArr8 = {f17, f19, (400.0f * f20) / (f20 + 27.13f)};
        f390k = new l(f15, ((fArr8[2] * 0.05f) + (fArr8[0] * 2.0f) + fArr8[1]) * fPow, fPow, fPow, f11, 1.0f, fArr6, fCbrt, (float) Math.pow(fCbrt, 0.25d), fSqrt);
    }

    public l(float f2, float f3, float f4, float f5, float f6, float f7, float[] fArr, float f8, float f9, float f10) {
        this.f396f = f2;
        this.f391a = f3;
        this.f392b = f4;
        this.f393c = f5;
        this.f394d = f6;
        this.f395e = f7;
        this.f397g = fArr;
        this.f398h = f8;
        this.f399i = f9;
        this.j = f10;
    }
}
