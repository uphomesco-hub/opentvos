package com.sid.tvos;

import java.util.Map;

/* JADX INFO: renamed from: com.sid.tvos.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0015p implements MainActivity.PageBuilder, MainActivity.IntChoice, PhoneUpload.Callback, Weather.Callback, WatchNext.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f326a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f327b;

    public /* synthetic */ C0015p(MainActivity mainActivity, int i2) {
        this.f326a = i2;
        this.f327b = mainActivity;
    }

    public void a(Map map) {
        this.f327b.lambda$updateContinueWatching$43(map);
    }

    public void b(boolean z2) {
        this.f327b.lambda$buildCwArtRows$150(z2);
    }

    @Override // com.sid.tvos.MainActivity.PageBuilder
    public void build(MainActivity.SettingsPanel settingsPanel) {
        switch (this.f326a) {
            case 0:
                this.f327b.buildProfilePage(settingsPanel);
                break;
            case 12:
                this.f327b.buildDefaultLauncherPage(settingsPanel);
                break;
            case 16:
                this.f327b.buildAppearancePage(settingsPanel);
                break;
            default:
                this.f327b.buildSettingsPage(settingsPanel);
                break;
        }
    }

    @Override // com.sid.tvos.Weather.Callback
    public void onWeather(int i2, int i3, boolean z2, String str) {
        switch (this.f326a) {
            case 15:
                this.f327b.showWeather(i2, i3, z2, str);
                break;
            default:
                this.f327b.showWeather(i2, i3, z2, str);
                break;
        }
    }

    @Override // com.sid.tvos.MainActivity.IntChoice
    public void pick(int i2) {
        switch (this.f326a) {
            case 1:
                this.f327b.lambda$buildAppearancePage$102(i2);
                break;
            case 2:
                this.f327b.lambda$buildAppearancePage$110(i2);
                break;
            case 3:
                this.f327b.lambda$buildAppearancePage$111(i2);
                break;
            case 4:
                this.f327b.lambda$buildAppearancePage$114(i2);
                break;
            case 5:
                this.f327b.lambda$buildAppearancePage$116(i2);
                break;
            case 6:
                this.f327b.lambda$buildAppearancePage$105(i2);
                break;
            case 7:
                this.f327b.lambda$buildAppearancePage$106(i2);
                break;
            case 8:
                this.f327b.lambda$buildAppearancePage$107(i2);
                break;
            case 9:
                this.f327b.previewBlur(i2);
                break;
            case 10:
                this.f327b.lambda$buildAppearancePage$108(i2);
                break;
            case 11:
                this.f327b.lambda$buildAppearancePage$109(i2);
                break;
            default:
                this.f327b.lambda$buildCwArtRows$147(i2);
                break;
        }
    }
}
