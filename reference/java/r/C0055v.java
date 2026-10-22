package r;

import android.view.View;
import java.util.List;

/* JADX INFO: renamed from: r.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0055v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f737a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f738b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f739c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f740d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f741e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f742f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f743g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f744h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f745i;
    public int j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public List f746k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f747l;

    public final void a(View view) {
        int layoutPosition;
        int size = this.f746k.size();
        View view2 = null;
        int i2 = Integer.MAX_VALUE;
        for (int i3 = 0; i3 < size; i3++) {
            View view3 = ((androidx.recyclerview.widget.o) this.f746k.get(i3)).itemView;
            N n2 = (N) view3.getLayoutParams();
            if (view3 != view && !n2.f559a.isRemoved() && (layoutPosition = (n2.f559a.getLayoutPosition() - this.f740d) * this.f741e) >= 0 && layoutPosition < i2) {
                view2 = view3;
                if (layoutPosition == 0) {
                    break;
                } else {
                    i2 = layoutPosition;
                }
            }
        }
        this.f740d = view2 == null ? -1 : ((N) view2.getLayoutParams()).f559a.getLayoutPosition();
    }

    public final View b(androidx.recyclerview.widget.k kVar) {
        List list = this.f746k;
        if (list == null) {
            View view = kVar.l(this.f740d, Long.MAX_VALUE).itemView;
            this.f740d += this.f741e;
            return view;
        }
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view2 = ((androidx.recyclerview.widget.o) this.f746k.get(i2)).itemView;
            N n2 = (N) view2.getLayoutParams();
            if (!n2.f559a.isRemoved() && this.f740d == n2.f559a.getLayoutPosition()) {
                a(view2);
                return view2;
            }
        }
        return null;
    }
}
