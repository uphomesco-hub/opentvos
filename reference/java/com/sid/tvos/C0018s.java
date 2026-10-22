package com.sid.tvos;

/* JADX INFO: renamed from: com.sid.tvos.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0018s implements MainActivity.NameCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f335a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f336b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AppAdapter.Entry f337c;

    public /* synthetic */ C0018s(MainActivity mainActivity, AppAdapter.Entry entry, int i2) {
        this.f335a = i2;
        this.f336b = mainActivity;
        this.f337c = entry;
    }

    @Override // com.sid.tvos.MainActivity.NameCallback
    public final void onName(String str) {
        switch (this.f335a) {
            case 0:
                this.f336b.lambda$onTileLongPress$25(this.f337c, str);
                break;
            default:
                this.f336b.lambda$onTileLongPress$17(this.f337c, str);
                break;
        }
    }
}
