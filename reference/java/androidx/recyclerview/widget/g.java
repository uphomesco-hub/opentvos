package androidx.recyclerview.widget;

import android.os.Trace;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.Field;
import java.util.List;
import k.AbstractC0033h;
import k.r;
import r.D;
import r.E;
import r.N;

/* JADX INFO: loaded from: classes.dex */
public abstract class g {
    private final h mObservable = new h();
    private boolean mHasStableIds = false;
    private D mStateRestorationPolicy = D.f549a;

    public final void bindViewHolder(o oVar, int i2) {
        boolean z2 = oVar.mBindingAdapter == null;
        if (z2) {
            oVar.mPosition = i2;
            if (hasStableIds()) {
                oVar.mItemId = getItemId(i2);
            }
            oVar.setFlags(1, 519);
            int i3 = h.a.f423a;
            Trace.beginSection("RV OnBindView");
        }
        oVar.mBindingAdapter = this;
        if (RecyclerView.sDebugAssertionsEnabled) {
            if (oVar.itemView.getParent() == null) {
                View view = oVar.itemView;
                Field field = r.f469a;
                if (AbstractC0033h.b(view) != oVar.isTmpDetached()) {
                    throw new IllegalStateException("Temp-detached state out of sync with reality. holder.isTmpDetached(): " + oVar.isTmpDetached() + ", attached to window: " + AbstractC0033h.b(oVar.itemView) + ", holder: " + oVar);
                }
            }
            if (oVar.itemView.getParent() == null) {
                View view2 = oVar.itemView;
                Field field2 = r.f469a;
                if (AbstractC0033h.b(view2)) {
                    throw new IllegalStateException("Attempting to bind attached holder with no parent (AKA temp detached): " + oVar);
                }
            }
        }
        onBindViewHolder(oVar, i2, oVar.getUnmodifiedPayloads());
        if (z2) {
            oVar.clearPayload();
            ViewGroup.LayoutParams layoutParams = oVar.itemView.getLayoutParams();
            if (layoutParams instanceof N) {
                ((N) layoutParams).f561c = true;
            }
            int i4 = h.a.f423a;
            Trace.endSection();
        }
    }

    public boolean canRestoreState() {
        int iOrdinal = this.mStateRestorationPolicy.ordinal();
        if (iOrdinal != 1) {
            return iOrdinal != 2;
        }
        return getItemCount() > 0;
    }

    public final o createViewHolder(ViewGroup viewGroup, int i2) {
        try {
            int i3 = h.a.f423a;
            Trace.beginSection("RV CreateView");
            o oVarOnCreateViewHolder = onCreateViewHolder(viewGroup, i2);
            if (oVarOnCreateViewHolder.itemView.getParent() != null) {
                throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
            }
            oVarOnCreateViewHolder.mItemViewType = i2;
            Trace.endSection();
            return oVarOnCreateViewHolder;
        } catch (Throwable th) {
            int i4 = h.a.f423a;
            Trace.endSection();
            throw th;
        }
    }

    public int findRelativeAdapterPositionIn(g gVar, o oVar, int i2) {
        if (gVar == this) {
            return i2;
        }
        return -1;
    }

    public abstract int getItemCount();

    public abstract long getItemId(int i2);

    public int getItemViewType(int i2) {
        return 0;
    }

    public final boolean hasObservers() {
        return this.mObservable.a();
    }

    public final boolean hasStableIds() {
        return this.mHasStableIds;
    }

    public final void notifyDataSetChanged() {
        this.mObservable.b();
    }

    public final void notifyItemRangeChanged(int i2, int i3) {
        this.mObservable.c(i2, i3);
    }

    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
    }

    public abstract void onBindViewHolder(o oVar, int i2);

    public void onBindViewHolder(o oVar, int i2, List<Object> list) {
        onBindViewHolder(oVar, i2);
    }

    public abstract o onCreateViewHolder(ViewGroup viewGroup, int i2);

    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
    }

    public boolean onFailedToRecycleView(o oVar) {
        return false;
    }

    public void onViewAttachedToWindow(o oVar) {
    }

    public void onViewDetachedFromWindow(o oVar) {
    }

    public void onViewRecycled(o oVar) {
    }

    public void registerAdapterDataObserver(E e2) {
        this.mObservable.registerObserver(e2);
    }

    public void setHasStableIds(boolean z2) {
        if (hasObservers()) {
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }
        this.mHasStableIds = z2;
    }

    public void unregisterAdapterDataObserver(E e2) {
        this.mObservable.unregisterObserver(e2);
    }
}
