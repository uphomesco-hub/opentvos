package k;

import android.util.Log;
import android.view.View;
import android.view.ViewParent;

/* JADX INFO: renamed from: k.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0029d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ViewParent f462a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ViewParent f463b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f464c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f465d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f466e;

    public C0029d(View view) {
        this.f464c = view;
    }

    public final boolean a(int i2, int i3, int[] iArr, int[] iArr2, int i4) {
        ViewParent viewParentC;
        int i5;
        int i6;
        if (!this.f465d || (viewParentC = c(i4)) == null) {
            return false;
        }
        if (i2 == 0 && i3 == 0) {
            if (iArr2 == null) {
                return false;
            }
            iArr2[0] = 0;
            iArr2[1] = 0;
            return false;
        }
        View view = this.f464c;
        if (iArr2 != null) {
            view.getLocationInWindow(iArr2);
            i5 = iArr2[0];
            i6 = iArr2[1];
        } else {
            i5 = 0;
            i6 = 0;
        }
        if (iArr == null) {
            if (this.f466e == null) {
                this.f466e = new int[2];
            }
            iArr = this.f466e;
        }
        iArr[0] = 0;
        iArr[1] = 0;
        if (i4 == 0) {
            try {
                viewParentC.onNestedPreScroll(view, i2, i3, iArr);
            } catch (AbstractMethodError e2) {
                Log.e("ViewParentCompat", "ViewParent " + viewParentC + " does not implement interface method onNestedPreScroll", e2);
            }
        }
        if (iArr2 != null) {
            view.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i5;
            iArr2[1] = iArr2[1] - i6;
        }
        return (iArr[0] == 0 && iArr[1] == 0) ? false : true;
    }

    public final boolean b(int i2, int i3, int i4, int i5, int[] iArr, int i6, int[] iArr2) {
        ViewParent viewParentC;
        int i7;
        int i8;
        int[] iArr3;
        if (!this.f465d || (viewParentC = c(i6)) == null) {
            return false;
        }
        if (i2 == 0 && i3 == 0 && i4 == 0 && i5 == 0) {
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
            return false;
        }
        View view = this.f464c;
        if (iArr != null) {
            view.getLocationInWindow(iArr);
            i7 = iArr[0];
            i8 = iArr[1];
        } else {
            i7 = 0;
            i8 = 0;
        }
        if (iArr2 == null) {
            if (this.f466e == null) {
                this.f466e = new int[2];
            }
            iArr3 = this.f466e;
            iArr3[0] = 0;
            iArr3[1] = 0;
        } else {
            iArr3 = iArr2;
        }
        View view2 = this.f464c;
        iArr3[0] = iArr3[0] + i4;
        iArr3[1] = iArr3[1] + i5;
        if (i6 == 0) {
            try {
                viewParentC.onNestedScroll(view2, i2, i3, i4, i5);
            } catch (AbstractMethodError e2) {
                Log.e("ViewParentCompat", "ViewParent " + viewParentC + " does not implement interface method onNestedScroll", e2);
            }
        }
        if (iArr != null) {
            view.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i7;
            iArr[1] = iArr[1] - i8;
        }
        return true;
    }

    public final ViewParent c(int i2) {
        if (i2 == 0) {
            return this.f462a;
        }
        if (i2 != 1) {
            return null;
        }
        return this.f463b;
    }

    public final boolean d(int i2, int i3) {
        boolean zOnStartNestedScroll;
        if (c(i3) != null) {
            return true;
        }
        if (this.f465d) {
            View view = this.f464c;
            View view2 = view;
            for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
                if (i3 == 0) {
                    try {
                        zOnStartNestedScroll = parent.onStartNestedScroll(view2, view, i2);
                    } catch (AbstractMethodError e2) {
                        Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onStartNestedScroll", e2);
                        zOnStartNestedScroll = false;
                    }
                } else {
                    zOnStartNestedScroll = false;
                }
                if (zOnStartNestedScroll) {
                    if (i3 == 0) {
                        this.f462a = parent;
                    } else if (i3 == 1) {
                        this.f463b = parent;
                    }
                    if (i3 == 0) {
                        try {
                            parent.onNestedScrollAccepted(view2, view, i2);
                        } catch (AbstractMethodError e3) {
                            Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onNestedScrollAccepted", e3);
                        }
                    }
                    return true;
                }
                if (parent instanceof View) {
                    view2 = (View) parent;
                }
            }
        }
        return false;
    }

    public final void e(int i2) {
        ViewParent viewParentC = c(i2);
        if (viewParentC != null) {
            View view = this.f464c;
            if (i2 == 0) {
                try {
                    viewParentC.onStopNestedScroll(view);
                } catch (AbstractMethodError e2) {
                    Log.e("ViewParentCompat", "ViewParent " + viewParentC + " does not implement interface method onStopNestedScroll", e2);
                }
            }
            if (i2 == 0) {
                this.f462a = null;
            } else {
                if (i2 != 1) {
                    return;
                }
                this.f463b = null;
            }
        }
    }
}
