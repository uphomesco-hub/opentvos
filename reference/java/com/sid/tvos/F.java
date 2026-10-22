package com.sid.tvos;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class F implements Weather.PlaceCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MainActivity f148a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f149b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainActivity.SettingsPanel f150c;

    public /* synthetic */ F(MainActivity.SettingsPanel settingsPanel, MainActivity mainActivity, String str) {
        this.f148a = mainActivity;
        this.f149b = str;
        this.f150c = settingsPanel;
    }

    public final void a(String str) {
        this.f148a.lambda$buildWeatherRows$143(this.f149b, this.f150c, str);
    }
}
