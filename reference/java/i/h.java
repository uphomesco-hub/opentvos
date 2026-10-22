package i;

import android.os.Process;

/* JADX INFO: loaded from: classes.dex */
public final class h extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f442a;

    public h(Runnable runnable, String str, int i2) {
        super(runnable, str);
        this.f442a = i2;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(this.f442a);
        super.run();
    }
}
