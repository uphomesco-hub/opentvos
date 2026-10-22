package androidx.recyclerview.widget;

import android.view.View;
import java.util.ArrayList;
import r.C;
import r.H;
import r.I;

/* JADX INFO: loaded from: classes.dex */
public abstract class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public H f61a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList f62b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f63c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f64d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f65e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f66f;

    public static void b(o oVar) {
        int i2 = oVar.mFlags;
        if (!oVar.isInvalid() && (i2 & 4) == 0) {
            oVar.getOldPosition();
            oVar.getAbsoluteAdapterPosition();
        }
    }

    public abstract boolean a(o oVar, o oVar2, I i2, I i3);

    public final void c(o oVar) {
        H h2 = this.f61a;
        if (h2 != null) {
            C c2 = (C) h2;
            c2.getClass();
            oVar.setIsRecyclable(true);
            if (oVar.mShadowedHolder != null && oVar.mShadowingHolder == null) {
                oVar.mShadowedHolder = null;
            }
            oVar.mShadowingHolder = null;
            if (oVar.shouldBeKeptAsChild()) {
                return;
            }
            View view = oVar.itemView;
            RecyclerView recyclerView = c2.f548a;
            if (recyclerView.removeAnimatingView(view) || !oVar.isTmpDetached()) {
                return;
            }
            recyclerView.removeDetachedView(oVar.itemView, false);
        }
    }

    public abstract void d(o oVar);

    public abstract void e();

    public abstract boolean f();
}
