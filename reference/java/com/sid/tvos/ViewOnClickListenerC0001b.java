package com.sid.tvos;

import android.view.View;

/* JADX INFO: renamed from: com.sid.tvos.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0001b implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f253a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f254b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f255c;

    public /* synthetic */ ViewOnClickListenerC0001b(Object obj, Object obj2, int i2) {
        this.f253a = i2;
        this.f254b = obj;
        this.f255c = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f253a) {
            case 0:
                ((AppAdapter) this.f254b).lambda$onBindViewHolder$1((AppAdapter.Entry) this.f255c, view);
                break;
            case 1:
                ((AppAdapter) this.f254b).lambda$onBindViewHolder$2((AppAdapter.Entry) this.f255c, view);
                break;
            default:
                ((MainActivity) this.f254b).lambda$makeCwCard$51((WatchNext.Item) this.f255c, view);
                break;
        }
    }
}
