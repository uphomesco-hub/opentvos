package com.sid.tvos;

/* JADX INFO: renamed from: com.sid.tvos.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0011l implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f311a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f312b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AppAdapter.Entry f313c;

    public /* synthetic */ RunnableC0011l(MainActivity mainActivity, AppAdapter.Entry entry, int i2) {
        this.f311a = i2;
        this.f312b = mainActivity;
        this.f313c = entry;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f311a) {
            case 0:
                this.f312b.lambda$onLaunch$64(this.f313c);
                break;
            case 1:
                this.f312b.lambda$onTileLongPress$18(this.f313c);
                break;
            case 2:
                this.f312b.lambda$onTileLongPress$19(this.f313c);
                break;
            case 3:
                this.f312b.lambda$onTileLongPress$20(this.f313c);
                break;
            case 4:
                this.f312b.lambda$onTileLongPress$21(this.f313c);
                break;
            case 5:
                this.f312b.lambda$onTileLongPress$22(this.f313c);
                break;
            case 6:
                this.f312b.lambda$onTileLongPress$23(this.f313c);
                break;
            case 7:
                this.f312b.lambda$onTileLongPress$26(this.f313c);
                break;
            case 8:
                this.f312b.lambda$onTileLongPress$27(this.f313c);
                break;
            default:
                this.f312b.lambda$onResume$7(this.f313c);
                break;
        }
    }
}
