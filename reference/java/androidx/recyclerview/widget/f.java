package androidx.recyclerview.widget;

import android.util.Log;
import r.C0035a;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f60a;

    public f(RecyclerView recyclerView) {
        this.f60a = recyclerView;
    }

    public final void a(C0035a c0035a) {
        int i2 = c0035a.f585a;
        RecyclerView recyclerView = this.f60a;
        if (i2 == 1) {
            recyclerView.mLayout.onItemsAdded(recyclerView, c0035a.f586b, c0035a.f588d);
            return;
        }
        if (i2 == 2) {
            recyclerView.mLayout.onItemsRemoved(recyclerView, c0035a.f586b, c0035a.f588d);
        } else if (i2 == 4) {
            recyclerView.mLayout.onItemsUpdated(recyclerView, c0035a.f586b, c0035a.f588d, c0035a.f587c);
        } else {
            if (i2 != 8) {
                return;
            }
            recyclerView.mLayout.onItemsMoved(recyclerView, c0035a.f586b, c0035a.f588d, 1);
        }
    }

    public final o b(int i2) {
        RecyclerView recyclerView = this.f60a;
        o oVarFindViewHolderForPosition = recyclerView.findViewHolderForPosition(i2, true);
        if (oVarFindViewHolderForPosition == null) {
            return null;
        }
        if (!recyclerView.mChildHelper.j(oVarFindViewHolderForPosition.itemView)) {
            return oVarFindViewHolderForPosition;
        }
        if (RecyclerView.sVerboseLoggingEnabled) {
            Log.d("RecyclerView", "assuming view holder cannot be find because it is hidden");
        }
        return null;
    }
}
