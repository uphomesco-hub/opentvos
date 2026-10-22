package com.sid.tvos;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public class HomeGrid extends RecyclerView {
    private int fadePx;

    public HomeGrid(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void updateFade() {
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            float fMax = this.fadePx > 0 ? Math.max(0.0f, Math.min(1.0f, ((childAt.getHeight() / 2.0f) + (childAt.getTranslationY() + childAt.getTop())) / this.fadePx)) : 1.0f;
            if (childAt.getAlpha() != fMax) {
                int i3 = (fMax <= 0.0f || fMax >= 1.0f) ? 0 : 2;
                if (childAt.getLayerType() != i3) {
                    childAt.setLayerType(i3, null);
                }
                childAt.setAlpha(fMax);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        updateFade();
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void onScrolled(int i2, int i3) {
        updateFade();
    }

    public void setTopFade(int i2) {
        this.fadePx = i2;
        updateFade();
    }
}
