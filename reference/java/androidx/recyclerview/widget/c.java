package androidx.recyclerview.widget;

import java.util.Arrays;
import r.L;

/* JADX INFO: loaded from: classes.dex */
public final class c implements L {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f48a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f49b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f50c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f51d;

    public final void a(int i2, int i3) {
        if (i2 < 0) {
            throw new IllegalArgumentException("Layout positions must be non-negative");
        }
        if (i3 < 0) {
            throw new IllegalArgumentException("Pixel distance must be non-negative");
        }
        int i4 = this.f51d;
        int i5 = i4 * 2;
        int[] iArr = this.f50c;
        if (iArr == null) {
            int[] iArr2 = new int[4];
            this.f50c = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i5 >= iArr.length) {
            int[] iArr3 = new int[i4 * 4];
            this.f50c = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        }
        int[] iArr4 = this.f50c;
        iArr4[i5] = i2;
        iArr4[i5 + 1] = i3;
        this.f51d++;
    }

    public final void b(RecyclerView recyclerView, boolean z2) {
        this.f51d = 0;
        int[] iArr = this.f50c;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        j jVar = recyclerView.mLayout;
        if (recyclerView.mAdapter == null || jVar == null || !jVar.isItemPrefetchEnabled()) {
            return;
        }
        if (z2) {
            if (!recyclerView.mAdapterHelper.g()) {
                jVar.collectInitialPrefetchPositions(recyclerView.mAdapter.getItemCount(), this);
            }
        } else if (!recyclerView.hasPendingAdapterUpdates()) {
            jVar.collectAdjacentPrefetchPositions(this.f48a, this.f49b, recyclerView.mState, this);
        }
        int i2 = this.f51d;
        if (i2 > jVar.mPrefetchMaxCountObserved) {
            jVar.mPrefetchMaxCountObserved = i2;
            jVar.mPrefetchMaxObservedInInitialPrefetch = z2;
            recyclerView.mRecycler.n();
        }
    }
}
