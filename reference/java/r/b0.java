package r;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.RecyclerView;
import java.util.WeakHashMap;
import k.C0027b;

/* JADX INFO: loaded from: classes.dex */
public final class b0 extends C0027b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final c0 f591d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final WeakHashMap f592e = new WeakHashMap();

    public b0(c0 c0Var) {
        this.f591d = c0Var;
    }

    @Override // k.C0027b
    public final boolean a(View view, AccessibilityEvent accessibilityEvent) {
        C0027b c0027b = (C0027b) this.f592e.get(view);
        return c0027b != null ? c0027b.a(view, accessibilityEvent) : this.f459a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // k.C0027b
    public final l.e b(View view) {
        C0027b c0027b = (C0027b) this.f592e.get(view);
        return c0027b != null ? c0027b.b(view) : super.b(view);
    }

    @Override // k.C0027b
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        C0027b c0027b = (C0027b) this.f592e.get(view);
        if (c0027b != null) {
            c0027b.c(view, accessibilityEvent);
        } else {
            super.c(view, accessibilityEvent);
        }
    }

    @Override // k.C0027b
    public final void d(View view, l.d dVar) {
        c0 c0Var = this.f591d;
        boolean zHasPendingAdapterUpdates = c0Var.f596d.hasPendingAdapterUpdates();
        View.AccessibilityDelegate accessibilityDelegate = this.f459a;
        AccessibilityNodeInfo accessibilityNodeInfo = dVar.f498a;
        if (!zHasPendingAdapterUpdates) {
            RecyclerView recyclerView = c0Var.f596d;
            if (recyclerView.getLayoutManager() != null) {
                recyclerView.getLayoutManager().onInitializeAccessibilityNodeInfoForItem(view, dVar);
                C0027b c0027b = (C0027b) this.f592e.get(view);
                if (c0027b != null) {
                    c0027b.d(view, dVar);
                    return;
                }
            }
        }
        accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
    }

    @Override // k.C0027b
    public final void e(View view, AccessibilityEvent accessibilityEvent) {
        C0027b c0027b = (C0027b) this.f592e.get(view);
        if (c0027b != null) {
            c0027b.e(view, accessibilityEvent);
        } else {
            super.e(view, accessibilityEvent);
        }
    }

    @Override // k.C0027b
    public final boolean f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        C0027b c0027b = (C0027b) this.f592e.get(viewGroup);
        return c0027b != null ? c0027b.f(viewGroup, view, accessibilityEvent) : this.f459a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    @Override // k.C0027b
    public final boolean g(View view, int i2, Bundle bundle) {
        c0 c0Var = this.f591d;
        if (!c0Var.f596d.hasPendingAdapterUpdates()) {
            RecyclerView recyclerView = c0Var.f596d;
            if (recyclerView.getLayoutManager() != null) {
                C0027b c0027b = (C0027b) this.f592e.get(view);
                if (c0027b != null) {
                    if (c0027b.g(view, i2, bundle)) {
                        return true;
                    }
                } else if (super.g(view, i2, bundle)) {
                    return true;
                }
                return recyclerView.getLayoutManager().performAccessibilityActionForItem(view, i2, bundle);
            }
        }
        return super.g(view, i2, bundle);
    }

    @Override // k.C0027b
    public final void h(View view, int i2) {
        C0027b c0027b = (C0027b) this.f592e.get(view);
        if (c0027b != null) {
            c0027b.h(view, i2);
        } else {
            super.h(view, i2);
        }
    }

    @Override // k.C0027b
    public final void i(View view, AccessibilityEvent accessibilityEvent) {
        C0027b c0027b = (C0027b) this.f592e.get(view);
        if (c0027b != null) {
            c0027b.i(view, accessibilityEvent);
        } else {
            super.i(view, accessibilityEvent);
        }
    }
}
