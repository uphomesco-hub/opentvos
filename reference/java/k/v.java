package k;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public final class v extends x.c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f479b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f480c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ View f481d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(View view, v.a aVar) {
        super(aVar);
        this.f481d = view;
    }

    @Override // x.c
    public final v.a c(Object obj, v.a aVar) {
        y.a.d(aVar, "completion");
        v vVar = new v(this.f481d, aVar);
        vVar.f479b = obj;
        return vVar;
    }

    @Override // x.c
    public final Object d(Object obj) throws Throwable {
        Object obj2;
        w.a aVar = w.a.f933a;
        int i2 = this.f480c;
        View view = this.f481d;
        if (i2 == 0) {
            y.a.x(obj);
            z.a aVar2 = (z.a) this.f479b;
            this.f479b = aVar2;
            this.f480c = 1;
            aVar2.f940b = view;
            aVar2.f939a = 3;
            aVar2.f942d = this;
            return aVar;
        }
        u.b bVar = u.b.f931a;
        if (i2 == 1) {
            z.a aVar3 = (z.a) this.f479b;
            y.a.x(obj);
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                y.a.d(viewGroup, "$this$descendants");
                u uVar = new u(viewGroup, null);
                this.f479b = null;
                this.f480c = 2;
                aVar3.getClass();
                z.a aVar4 = new z.a();
                aVar4.f942d = uVar.c(aVar4, aVar4);
                if (aVar4.hasNext()) {
                    aVar3.f941c = aVar4;
                    aVar3.f939a = 2;
                    aVar3.f942d = this;
                    obj2 = aVar;
                } else {
                    obj2 = bVar;
                }
                if (obj2 != aVar) {
                    obj2 = bVar;
                }
                if (obj2 == aVar) {
                    return aVar;
                }
            }
        } else {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            y.a.x(obj);
        }
        return bVar;
    }
}
