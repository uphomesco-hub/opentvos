package r;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public class N extends ViewGroup.MarginLayoutParams {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public androidx.recyclerview.widget.o f559a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Rect f560b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f561c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f562d;

    public N(int i2, int i3) {
        super(i2, i3);
        this.f560b = new Rect();
        this.f561c = true;
        this.f562d = false;
    }

    public N(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f560b = new Rect();
        this.f561c = true;
        this.f562d = false;
    }

    public N(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f560b = new Rect();
        this.f561c = true;
        this.f562d = false;
    }

    public N(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f560b = new Rect();
        this.f561c = true;
        this.f562d = false;
    }

    public N(N n2) {
        super((ViewGroup.LayoutParams) n2);
        this.f560b = new Rect();
        this.f561c = true;
        this.f562d = false;
    }
}
