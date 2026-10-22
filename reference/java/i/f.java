package i;

import b.j;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b.e f435a = new b.e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object f436b = null;

    static {
        i iVar = new i();
        iVar.f443a = "fonts-androidx";
        iVar.f444b = 10;
        new ThreadPoolExecutor(0, 1, 10000, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), iVar).allowCoreThreadTimeOut(true);
        new j();
    }
}
