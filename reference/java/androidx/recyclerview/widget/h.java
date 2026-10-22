package androidx.recyclerview.widget;

import android.database.Observable;
import java.lang.reflect.Field;
import java.util.ArrayList;
import k.AbstractC0031f;
import k.r;
import r.E;
import r.V;

/* JADX INFO: loaded from: classes.dex */
public final class h extends Observable {
    public final boolean a() {
        return !((Observable) this).mObservers.isEmpty();
    }

    public final void b() {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            RecyclerView recyclerView = ((V) ((E) ((Observable) this).mObservers.get(size))).f570a;
            recyclerView.assertNotInLayoutOrScroll(null);
            recyclerView.mState.f577f = true;
            recyclerView.processDataSetCompletelyChanged(true);
            if (!recyclerView.mAdapterHelper.g()) {
                recyclerView.requestLayout();
            }
        }
    }

    public final void c(int i2, int i3) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            RecyclerView recyclerView = ((V) ((E) ((Observable) this).mObservers.get(size))).f570a;
            recyclerView.assertNotInLayoutOrScroll(null);
            a aVar = recyclerView.mAdapterHelper;
            if (i3 < 1) {
                aVar.getClass();
            } else {
                ArrayList arrayList = aVar.f38b;
                arrayList.add(aVar.h(4, i2, i3, null));
                aVar.f42f |= 4;
                if (arrayList.size() == 1) {
                    if (RecyclerView.POST_UPDATES_ON_ANIMATION && recyclerView.mHasFixedSize && recyclerView.mIsAttached) {
                        Runnable runnable = recyclerView.mUpdateChildViewsRunnable;
                        Field field = r.f469a;
                        AbstractC0031f.m(recyclerView, runnable);
                    } else {
                        recyclerView.mAdapterUpdateDuringMeasure = true;
                        recyclerView.requestLayout();
                    }
                }
            }
        }
    }
}
