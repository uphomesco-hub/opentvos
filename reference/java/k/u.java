package k;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public final class u extends x.c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f472b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ViewGroup f473c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public View f474d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f475e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f476f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f477g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f478h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(ViewGroup viewGroup, v.a aVar) {
        super(aVar);
        this.f478h = viewGroup;
    }

    @Override // x.c
    public final v.a c(Object obj, v.a aVar) {
        y.a.d(aVar, "completion");
        u uVar = new u(this.f478h, aVar);
        uVar.f472b = obj;
        return uVar;
    }

    @Override // x.c
    public final Object d(Object obj) throws Throwable {
        z.a aVar;
        ViewGroup viewGroup;
        int childCount;
        int i2;
        int i3;
        Object obj2;
        int i4;
        ViewGroup viewGroup2;
        z.a aVar2;
        w.a aVar3 = w.a.f933a;
        int i5 = this.f477g;
        u.b bVar = u.b.f931a;
        if (i5 != 0) {
            if (i5 == 1) {
                childCount = this.f476f;
                i3 = this.f475e;
                View view = this.f474d;
                viewGroup = this.f473c;
                aVar = (z.a) this.f472b;
                y.a.x(obj);
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup3 = (ViewGroup) view;
                    y.a.d(viewGroup3, "$this$descendants");
                    u uVar = new u(viewGroup3, null);
                    this.f472b = aVar;
                    this.f473c = viewGroup;
                    this.f474d = null;
                    this.f475e = i3;
                    this.f476f = childCount;
                    this.f477g = 2;
                    aVar.getClass();
                    z.a aVar4 = new z.a();
                    aVar4.f942d = uVar.c(aVar4, aVar4);
                    if (aVar4.hasNext()) {
                        aVar.f941c = aVar4;
                        aVar.f939a = 2;
                        aVar.f942d = this;
                        obj2 = aVar3;
                    } else {
                        obj2 = bVar;
                    }
                    if (obj2 != aVar3) {
                        obj2 = bVar;
                    }
                    if (obj2 == aVar3) {
                        return aVar3;
                    }
                    i4 = i3;
                    viewGroup2 = viewGroup;
                    aVar2 = aVar;
                }
                i2 = i3 + 1;
            } else {
                if (i5 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                childCount = this.f476f;
                i4 = this.f475e;
                viewGroup2 = this.f473c;
                aVar2 = (z.a) this.f472b;
                y.a.x(obj);
            }
            viewGroup = viewGroup2;
            aVar = aVar2;
            i3 = i4;
            i2 = i3 + 1;
        } else {
            y.a.x(obj);
            aVar = (z.a) this.f472b;
            viewGroup = this.f478h;
            childCount = viewGroup.getChildCount();
            i2 = 0;
        }
        if (i2 >= childCount) {
            return bVar;
        }
        View childAt = viewGroup.getChildAt(i2);
        y.a.c(childAt, "getChildAt(index)");
        this.f472b = aVar;
        this.f473c = viewGroup;
        this.f474d = childAt;
        this.f475e = i2;
        this.f476f = childCount;
        this.f477g = 1;
        aVar.f940b = childAt;
        aVar.f939a = 3;
        aVar.f942d = this;
        return aVar3;
    }
}
