package r;

/* JADX INFO: loaded from: classes.dex */
public final class Y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f572a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f573b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f574c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f575d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f576e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f577f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f578g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f579h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f580i;
    public boolean j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f581k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f582l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f583m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f584n;

    public final void a(int i2) {
        if ((this.f575d & i2) != 0) {
            return;
        }
        throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i2) + " but it is " + Integer.toBinaryString(this.f575d));
    }

    public final int b() {
        return this.f578g ? this.f573b - this.f574c : this.f576e;
    }

    public final String toString() {
        return "State{mTargetPosition=" + this.f572a + ", mData=null, mItemCount=" + this.f576e + ", mIsMeasuring=" + this.f580i + ", mPreviousLayoutItemCount=" + this.f573b + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f574c + ", mStructureChanged=" + this.f577f + ", mInPreLayout=" + this.f578g + ", mRunSimpleAnimations=" + this.j + ", mRunPredictiveAnimations=" + this.f581k + '}';
    }
}
