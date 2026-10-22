package r;

import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: renamed from: r.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0045k extends Q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0048n f673a;

    public C0045k(C0048n c0048n) {
        this.f673a = c0048n;
    }

    @Override // r.Q
    public final void onScrolled(RecyclerView recyclerView, int i2, int i3) {
        int iComputeHorizontalScrollOffset = recyclerView.computeHorizontalScrollOffset();
        int iComputeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
        C0048n c0048n = this.f673a;
        int iComputeVerticalScrollRange = c0048n.f700s.computeVerticalScrollRange();
        int i4 = c0048n.f699r;
        int i5 = iComputeVerticalScrollRange - i4;
        int i6 = c0048n.f683a;
        c0048n.f701t = i5 > 0 && i4 >= i6;
        int iComputeHorizontalScrollRange = c0048n.f700s.computeHorizontalScrollRange();
        int i7 = c0048n.f698q;
        boolean z2 = iComputeHorizontalScrollRange - i7 > 0 && i7 >= i6;
        c0048n.f702u = z2;
        boolean z3 = c0048n.f701t;
        if (!z3 && !z2) {
            if (c0048n.f703v != 0) {
                c0048n.d(0);
                return;
            }
            return;
        }
        if (z3) {
            float f2 = i4;
            c0048n.f693l = (int) ((((f2 / 2.0f) + iComputeVerticalScrollOffset) * f2) / iComputeVerticalScrollRange);
            c0048n.f692k = Math.min(i4, (i4 * i4) / iComputeVerticalScrollRange);
        }
        if (c0048n.f702u) {
            float f3 = iComputeHorizontalScrollOffset;
            float f4 = i7;
            c0048n.f696o = (int) ((((f4 / 2.0f) + f3) * f4) / iComputeHorizontalScrollRange);
            c0048n.f695n = Math.min(i7, (i7 * i7) / iComputeHorizontalScrollRange);
        }
        int i8 = c0048n.f703v;
        if (i8 == 0 || i8 == 1) {
            c0048n.d(1);
        }
    }
}
