package androidx.recyclerview.widget;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import r.C;
import r.C0036b;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C f43a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public View f47e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f46d = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0036b f44b = new C0036b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f45c = new ArrayList();

    public b(C c2) {
        this.f43a = c2;
    }

    public final void a(int i2, View view, boolean z2) {
        C c2 = this.f43a;
        int childCount = i2 < 0 ? c2.f548a.getChildCount() : f(i2);
        this.f44b.e(childCount, z2);
        if (z2) {
            i(view);
        }
        RecyclerView recyclerView = c2.f548a;
        recyclerView.addView(view, childCount);
        recyclerView.dispatchChildAttached(view);
    }

    public final void b(View view, int i2, ViewGroup.LayoutParams layoutParams, boolean z2) {
        C c2 = this.f43a;
        int childCount = i2 < 0 ? c2.f548a.getChildCount() : f(i2);
        this.f44b.e(childCount, z2);
        if (z2) {
            i(view);
        }
        c2.getClass();
        o childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        RecyclerView recyclerView = c2.f548a;
        if (childViewHolderInt != null) {
            if (!childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                StringBuilder sb = new StringBuilder("Called attach on a child which is not detached: ");
                sb.append(childViewHolderInt);
                throw new IllegalArgumentException(n.a.a(recyclerView, sb));
            }
            if (RecyclerView.sVerboseLoggingEnabled) {
                Log.d("RecyclerView", "reAttach " + childViewHolderInt);
            }
            childViewHolderInt.clearTmpDetachFlag();
        } else if (RecyclerView.sDebugAssertionsEnabled) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            sb2.append(", index: ");
            sb2.append(childCount);
            throw new IllegalArgumentException(n.a.a(recyclerView, sb2));
        }
        recyclerView.attachViewToParent(view, childCount, layoutParams);
    }

    public final void c(int i2) {
        int iF = f(i2);
        this.f44b.f(iF);
        RecyclerView recyclerView = this.f43a.f548a;
        View childAt = recyclerView.getChildAt(iF);
        if (childAt != null) {
            o childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
            if (childViewHolderInt != null) {
                if (childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                    StringBuilder sb = new StringBuilder("called detach on an already detached child ");
                    sb.append(childViewHolderInt);
                    throw new IllegalArgumentException(n.a.a(recyclerView, sb));
                }
                if (RecyclerView.sVerboseLoggingEnabled) {
                    Log.d("RecyclerView", "tmpDetach " + childViewHolderInt);
                }
                childViewHolderInt.addFlags(256);
            }
        } else if (RecyclerView.sDebugAssertionsEnabled) {
            StringBuilder sb2 = new StringBuilder("No view at offset ");
            sb2.append(iF);
            throw new IllegalArgumentException(n.a.a(recyclerView, sb2));
        }
        recyclerView.detachViewFromParent(iF);
    }

    public final View d(int i2) {
        return this.f43a.f548a.getChildAt(f(i2));
    }

    public final int e() {
        return this.f43a.f548a.getChildCount() - this.f45c.size();
    }

    public final int f(int i2) {
        if (i2 < 0) {
            return -1;
        }
        int childCount = this.f43a.f548a.getChildCount();
        int i3 = i2;
        while (i3 < childCount) {
            C0036b c0036b = this.f44b;
            int iB = i2 - (i3 - c0036b.b(i3));
            if (iB == 0) {
                while (c0036b.d(i3)) {
                    i3++;
                }
                return i3;
            }
            i3 += iB;
        }
        return -1;
    }

    public final View g(int i2) {
        return this.f43a.f548a.getChildAt(i2);
    }

    public final int h() {
        return this.f43a.f548a.getChildCount();
    }

    public final void i(View view) {
        this.f45c.add(view);
        C c2 = this.f43a;
        c2.getClass();
        o childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            childViewHolderInt.onEnteredHiddenState(c2.f548a);
        }
    }

    public final boolean j(View view) {
        return this.f45c.contains(view);
    }

    public final void k(View view) {
        if (this.f45c.remove(view)) {
            C c2 = this.f43a;
            c2.getClass();
            o childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                childViewHolderInt.onLeftHiddenState(c2.f548a);
            }
        }
    }

    public final String toString() {
        return this.f44b.toString() + ", hidden list:" + this.f45c.size();
    }
}
