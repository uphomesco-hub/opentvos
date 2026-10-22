package com.sid.tvos;

/* JADX INFO: renamed from: com.sid.tvos.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0023x implements MainActivity.IntChoice, MainActivity.TextCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f354a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f355b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainActivity.SettingsPanel f356c;

    public /* synthetic */ C0023x(int i2, MainActivity.SettingsPanel settingsPanel, MainActivity mainActivity) {
        this.f354a = i2;
        this.f355b = mainActivity;
        this.f356c = settingsPanel;
    }

    @Override // com.sid.tvos.MainActivity.TextCallback
    public void onText(String str) {
        switch (this.f354a) {
            case 1:
                this.f355b.lambda$buildProfilePage$141(this.f356c, str);
                break;
            default:
                this.f355b.lambda$buildWeatherRows$144(this.f356c, str);
                break;
        }
    }

    @Override // com.sid.tvos.MainActivity.IntChoice
    public void pick(int i2) {
        this.f355b.lambda$buildCwArtRows$158(this.f356c, i2);
    }
}
