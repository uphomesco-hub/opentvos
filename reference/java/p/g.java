package p;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public double f535a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public double f536b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f537c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public double f538d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public double f539e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public double f540f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public double f541g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public double f542h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public double f543i;
    public final e j;

    public g() {
        this.f535a = Math.sqrt(1500.0d);
        this.f536b = 0.5d;
        this.f537c = false;
        this.f543i = Double.MAX_VALUE;
        this.j = new e();
    }

    public final e a(double d2, double d3, long j) {
        double dCos;
        double dPow;
        if (!this.f537c) {
            if (this.f543i == Double.MAX_VALUE) {
                throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
            }
            double d4 = this.f536b;
            if (d4 > 1.0d) {
                double d5 = this.f535a;
                this.f540f = (Math.sqrt((d4 * d4) - 1.0d) * d5) + ((-d4) * d5);
                double d6 = this.f536b;
                double d7 = this.f535a;
                this.f541g = ((-d6) * d7) - (Math.sqrt((d6 * d6) - 1.0d) * d7);
            } else if (d4 >= 0.0d && d4 < 1.0d) {
                this.f542h = Math.sqrt(1.0d - (d4 * d4)) * this.f535a;
            }
            this.f537c = true;
        }
        double d8 = j / 1000.0d;
        double d9 = d2 - this.f543i;
        double d10 = this.f536b;
        if (d10 > 1.0d) {
            double d11 = this.f541g;
            double d12 = this.f540f;
            double d13 = d9 - (((d11 * d9) - d3) / (d11 - d12));
            double d14 = ((d9 * d11) - d3) / (d11 - d12);
            dPow = (Math.pow(2.718281828459045d, this.f540f * d8) * d14) + (Math.pow(2.718281828459045d, d11 * d8) * d13);
            double d15 = this.f541g;
            double dPow2 = Math.pow(2.718281828459045d, d15 * d8) * d13 * d15;
            double d16 = this.f540f;
            dCos = (Math.pow(2.718281828459045d, d16 * d8) * d14 * d16) + dPow2;
        } else if (d10 == 1.0d) {
            double d17 = this.f535a;
            double d18 = (d17 * d9) + d3;
            double d19 = (d18 * d8) + d9;
            double dPow3 = Math.pow(2.718281828459045d, (-d17) * d8) * d19;
            double dPow4 = Math.pow(2.718281828459045d, (-this.f535a) * d8) * d19;
            double d20 = this.f535a;
            dCos = (Math.pow(2.718281828459045d, (-d20) * d8) * d18) + (dPow4 * (-d20));
            dPow = dPow3;
        } else {
            double d21 = 1.0d / this.f542h;
            double d22 = this.f535a;
            double d23 = ((d10 * d22 * d9) + d3) * d21;
            double dSin = ((Math.sin(this.f542h * d8) * d23) + (Math.cos(this.f542h * d8) * d9)) * Math.pow(2.718281828459045d, (-d10) * d22 * d8);
            double d24 = this.f535a;
            double d25 = this.f536b;
            double d26 = (-d24) * dSin * d25;
            double dPow5 = Math.pow(2.718281828459045d, (-d25) * d24 * d8);
            double d27 = this.f542h;
            double dSin2 = Math.sin(d27 * d8) * (-d27) * d9;
            double d28 = this.f542h;
            dCos = (((Math.cos(d28 * d8) * d23 * d28) + dSin2) * dPow5) + d26;
            dPow = dSin;
        }
        float f2 = (float) (dPow + this.f543i);
        e eVar = this.j;
        eVar.f515a = f2;
        eVar.f516b = (float) dCos;
        return eVar;
    }

    public g(float f2) {
        this.f535a = Math.sqrt(1500.0d);
        this.f536b = 0.5d;
        this.f537c = false;
        this.j = new e();
        this.f543i = f2;
    }
}
