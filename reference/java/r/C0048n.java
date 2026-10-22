package r;

import android.R;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.reflect.Field;
import k.AbstractC0032g;

/* JADX INFO: renamed from: r.n, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0048n extends J implements P {
    public static final int[] C = {R.attr.state_pressed};
    public static final int[] D = new int[0];
    public int A;
    public final RunnableC0044j B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f683a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f684b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StateListDrawable f685c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Drawable f686d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f687e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f688f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final StateListDrawable f689g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Drawable f690h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f691i;
    public final int j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f692k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f693l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f694m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f695n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f696o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f697p;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final RecyclerView f700s;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final ValueAnimator f707z;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f698q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f699r = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f701t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f702u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f703v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f704w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int[] f705x = new int[2];

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int[] f706y = new int[2];

    public C0048n(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i2, int i3, int i4) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f707z = valueAnimatorOfFloat;
        this.A = 0;
        RunnableC0044j runnableC0044j = new RunnableC0044j(this, 0);
        this.B = runnableC0044j;
        C0045k c0045k = new C0045k(this);
        this.f685c = stateListDrawable;
        this.f686d = drawable;
        this.f689g = stateListDrawable2;
        this.f690h = drawable2;
        this.f687e = Math.max(i2, stateListDrawable.getIntrinsicWidth());
        this.f688f = Math.max(i2, drawable.getIntrinsicWidth());
        this.f691i = Math.max(i2, stateListDrawable2.getIntrinsicWidth());
        this.j = Math.max(i2, drawable2.getIntrinsicWidth());
        this.f683a = i3;
        this.f684b = i4;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        valueAnimatorOfFloat.addListener(new C0046l(this));
        valueAnimatorOfFloat.addUpdateListener(new C0047m(this));
        RecyclerView recyclerView2 = this.f700s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            recyclerView2.removeItemDecoration(this);
            this.f700s.removeOnItemTouchListener(this);
            this.f700s.removeOnScrollListener(c0045k);
            this.f700s.removeCallbacks(runnableC0044j);
        }
        this.f700s = recyclerView;
        if (recyclerView != null) {
            recyclerView.addItemDecoration(this);
            this.f700s.addOnItemTouchListener(this);
            this.f700s.addOnScrollListener(c0045k);
        }
    }

    public static int c(float f2, float f3, int[] iArr, int i2, int i3, int i4) {
        int i5 = iArr[1] - iArr[0];
        if (i5 == 0) {
            return 0;
        }
        int i6 = i2 - i4;
        int i7 = (int) (((f3 - f2) / i5) * i6);
        int i8 = i3 + i7;
        if (i8 >= i6 || i8 < 0) {
            return 0;
        }
        return i7;
    }

    public final boolean a(float f2, float f3) {
        if (f3 >= this.f699r - this.f691i) {
            int i2 = this.f696o;
            int i3 = this.f695n;
            if (f2 >= i2 - (i3 / 2) && f2 <= (i3 / 2) + i2) {
                return true;
            }
        }
        return false;
    }

    public final boolean b(float f2, float f3) {
        RecyclerView recyclerView = this.f700s;
        Field field = k.r.f469a;
        boolean z2 = AbstractC0032g.d(recyclerView) == 1;
        int i2 = this.f687e;
        if (z2) {
            if (f2 > i2) {
                return false;
            }
        } else if (f2 < this.f698q - i2) {
            return false;
        }
        int i3 = this.f693l;
        int i4 = this.f692k / 2;
        return f3 >= ((float) (i3 - i4)) && f3 <= ((float) (i4 + i3));
    }

    public final void d(int i2) {
        RecyclerView recyclerView;
        int i3;
        RunnableC0044j runnableC0044j = this.B;
        StateListDrawable stateListDrawable = this.f685c;
        if (i2 == 2 && this.f703v != 2) {
            stateListDrawable.setState(C);
            this.f700s.removeCallbacks(runnableC0044j);
        }
        if (i2 == 0) {
            this.f700s.invalidate();
        } else {
            e();
        }
        if (this.f703v != 2 || i2 == 2) {
            if (i2 == 1) {
                this.f700s.removeCallbacks(runnableC0044j);
                recyclerView = this.f700s;
                i3 = 1500;
            }
            this.f703v = i2;
        }
        stateListDrawable.setState(D);
        this.f700s.removeCallbacks(runnableC0044j);
        recyclerView = this.f700s;
        i3 = 1200;
        recyclerView.postDelayed(runnableC0044j, i3);
        this.f703v = i2;
    }

    public final void e() {
        int i2 = this.A;
        ValueAnimator valueAnimator = this.f707z;
        if (i2 != 0) {
            if (i2 != 3) {
                return;
            } else {
                valueAnimator.cancel();
            }
        }
        this.A = 1;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        valueAnimator.setDuration(500L);
        valueAnimator.setStartDelay(0L);
        valueAnimator.start();
    }

    @Override // r.J
    public final void onDrawOver(Canvas canvas, RecyclerView recyclerView, Y y2) {
        int i2;
        int i3 = this.f698q;
        RecyclerView recyclerView2 = this.f700s;
        if (i3 != recyclerView2.getWidth() || this.f699r != recyclerView2.getHeight()) {
            this.f698q = recyclerView2.getWidth();
            this.f699r = recyclerView2.getHeight();
            d(0);
            return;
        }
        if (this.A != 0) {
            if (this.f701t) {
                int i4 = this.f698q;
                int i5 = this.f687e;
                int i6 = i4 - i5;
                int i7 = this.f693l;
                int i8 = this.f692k;
                int i9 = i7 - (i8 / 2);
                StateListDrawable stateListDrawable = this.f685c;
                stateListDrawable.setBounds(0, 0, i5, i8);
                int i10 = this.f699r;
                int i11 = this.f688f;
                Drawable drawable = this.f686d;
                drawable.setBounds(0, 0, i11, i10);
                Field field = k.r.f469a;
                if (AbstractC0032g.d(recyclerView2) == 1) {
                    drawable.draw(canvas);
                    canvas.translate(i5, i9);
                    canvas.scale(-1.0f, 1.0f);
                    stateListDrawable.draw(canvas);
                    canvas.scale(-1.0f, 1.0f);
                    i2 = -i5;
                } else {
                    canvas.translate(i6, 0.0f);
                    drawable.draw(canvas);
                    canvas.translate(0.0f, i9);
                    stateListDrawable.draw(canvas);
                    i2 = -i6;
                }
                canvas.translate(i2, -i9);
            }
            if (this.f702u) {
                int i12 = this.f699r;
                int i13 = this.f691i;
                int i14 = i12 - i13;
                int i15 = this.f696o;
                int i16 = this.f695n;
                int i17 = i15 - (i16 / 2);
                StateListDrawable stateListDrawable2 = this.f689g;
                stateListDrawable2.setBounds(0, 0, i16, i13);
                int i18 = this.f698q;
                int i19 = this.j;
                Drawable drawable2 = this.f690h;
                drawable2.setBounds(0, 0, i18, i19);
                canvas.translate(0.0f, i14);
                drawable2.draw(canvas);
                canvas.translate(i17, 0.0f);
                stateListDrawable2.draw(canvas);
                canvas.translate(-i17, -i14);
            }
        }
    }
}
