package i;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
public final class i implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f443a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f444b;

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new h(runnable, this.f443a, this.f444b);
    }
}
