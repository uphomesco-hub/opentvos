package com.sid.tvos;

/* JADX INFO: renamed from: com.sid.tvos.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0019t implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f338a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f339b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainActivity.SettingsPanel f340c;

    public /* synthetic */ RunnableC0019t(int i2, MainActivity.SettingsPanel settingsPanel, MainActivity mainActivity) {
        this.f338a = i2;
        this.f339b = mainActivity;
        this.f340c = settingsPanel;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f338a) {
            case 0:
                this.f339b.lambda$buildSettingsPage$88(this.f340c);
                break;
            case 1:
                this.f339b.lambda$buildSettingsPage$90(this.f340c);
                break;
            case 2:
                this.f339b.lambda$buildSettingsPage$92(this.f340c);
                break;
            case 3:
                this.f339b.lambda$buildSettingsPage$93(this.f340c);
                break;
            case 4:
                this.f339b.lambda$buildSettingsPage$95(this.f340c);
                break;
            case 5:
                this.f339b.lambda$buildSettingsPage$97(this.f340c);
                break;
            case 6:
                this.f339b.lambda$buildSettingsPage$99(this.f340c);
                break;
            case 7:
                this.f339b.lambda$buildProfilePage$142(this.f340c);
                break;
            case 8:
                this.f339b.lambda$buildWeatherRows$146(this.f340c);
                break;
            default:
                this.f339b.lambda$buildCwArtRows$151(this.f340c);
                break;
        }
    }
}
