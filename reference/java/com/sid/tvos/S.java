package com.sid.tvos;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class S implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f206a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f207b;

    public /* synthetic */ S(Object obj, int i2) {
        this.f206a = i2;
        this.f207b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj = this.f207b;
        switch (this.f206a) {
            case 0:
                ((MainActivity.SettingsPanel) obj).fadeIn();
                break;
            case 1:
                ((MainActivity.SettingsPanel) obj).refreshGlass();
                break;
            case 2:
                ((MainActivity.SettingsPanel) obj).lambda$build$4();
                break;
            default:
                int i2 = MainActivity.AnonymousClass1.f188a;
                ((MainActivity) obj).updateWifiLabel();
                break;
        }
    }
}
