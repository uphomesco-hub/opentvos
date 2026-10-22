package p;

import android.view.Choreographer;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f505a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f506b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f507c;

    public b(Method method, Method method2, Method method3) {
        this.f505a = method;
        this.f506b = method2;
        this.f507c = method3;
    }

    public b(l.e eVar) {
        this.f505a = eVar;
        this.f506b = Choreographer.getInstance();
        this.f507c = new a(this);
    }
}
