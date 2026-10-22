package r;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import k.C0027b;

/* JADX INFO: loaded from: classes.dex */
public final class c0 extends C0027b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RecyclerView f596d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final b0 f597e;

    public c0(RecyclerView recyclerView) {
        this.f596d = recyclerView;
        b0 b0Var = this.f597e;
        this.f597e = b0Var == null ? new b0(this) : b0Var;
    }

    @Override // k.C0027b
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        super.c(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || this.f596d.hasPendingAdapterUpdates()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().onInitializeAccessibilityEvent(accessibilityEvent);
        }
    }

    @Override // k.C0027b
    public final void d(View view, l.d dVar) {
        this.f459a.onInitializeAccessibilityNodeInfo(view, dVar.f498a);
        RecyclerView recyclerView = this.f596d;
        if (recyclerView.hasPendingAdapterUpdates() || recyclerView.getLayoutManager() == null) {
            return;
        }
        recyclerView.getLayoutManager().onInitializeAccessibilityNodeInfo(dVar);
    }

    @Override // k.C0027b
    public final boolean g(View view, int i2, Bundle bundle) {
        if (super.g(view, i2, bundle)) {
            return true;
        }
        RecyclerView recyclerView = this.f596d;
        if (recyclerView.hasPendingAdapterUpdates() || recyclerView.getLayoutManager() == null) {
            return false;
        }
        return recyclerView.getLayoutManager().performAccessibilityAction(i2, bundle);
    }
}
