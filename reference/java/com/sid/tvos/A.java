package com.sid.tvos;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class A implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f136a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity.SettingsPanel f137b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f138c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f139d;

    public /* synthetic */ A(MainActivity.SettingsPanel settingsPanel, String str, boolean z2) {
        this.f137b = settingsPanel;
        this.f139d = str;
        this.f138c = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f136a) {
            case 0:
                ((MainActivity) this.f139d).lambda$buildProfilePage$136(this.f138c, this.f137b);
                break;
            default:
                this.f137b.lambda$toggle$12((String) this.f139d, this.f138c);
                break;
        }
    }

    public /* synthetic */ A(MainActivity mainActivity, boolean z2, MainActivity.SettingsPanel settingsPanel) {
        this.f139d = mainActivity;
        this.f138c = z2;
        this.f137b = settingsPanel;
    }
}
