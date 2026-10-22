package r;

import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f603a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f604b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f605c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f606d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f607e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[] f608f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ StaggeredGridLayoutManager f609g;

    public d0(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.f609g = staggeredGridLayoutManager;
        a();
    }

    public final void a() {
        this.f603a = -1;
        this.f604b = Integer.MIN_VALUE;
        this.f605c = false;
        this.f606d = false;
        this.f607e = false;
        int[] iArr = this.f608f;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
    }
}
