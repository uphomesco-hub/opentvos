package com.sid.tvos;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class O implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f192a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Runnable f193b;

    public /* synthetic */ O(Runnable runnable, int i2) {
        this.f192a = i2;
        this.f193b = runnable;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f192a) {
            case 0:
                MainActivity.SettingsPanel.lambda$wire$9(this.f193b, view);
                break;
            default:
                MainActivity.SettingsPanel.lambda$avatarView$23(this.f193b, view);
                break;
        }
    }
}
