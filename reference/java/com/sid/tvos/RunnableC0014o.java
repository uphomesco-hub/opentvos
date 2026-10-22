package com.sid.tvos;

/* JADX INFO: renamed from: com.sid.tvos.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0014o implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f322a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f323b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AppAdapter.Entry f324c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f325d;

    public /* synthetic */ RunnableC0014o(MainActivity mainActivity, AppAdapter.Entry entry, String str, int i2) {
        this.f322a = i2;
        this.f323b = mainActivity;
        this.f324c = entry;
        this.f325d = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f322a) {
            case 0:
                this.f323b.lambda$onTileLongPress$24(this.f324c, this.f325d);
                break;
            default:
                this.f323b.lambda$new$66(this.f324c, this.f325d);
                break;
        }
    }
}
