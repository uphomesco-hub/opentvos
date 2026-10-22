package com.sid.tvos;

import android.content.DialogInterface;
import android.widget.EditText;

/* JADX INFO: renamed from: com.sid.tvos.z, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class DialogInterfaceOnClickListenerC0025z implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f360a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ EditText f361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f362c;

    public /* synthetic */ DialogInterfaceOnClickListenerC0025z(EditText editText, Object obj, int i2) {
        this.f360a = i2;
        this.f361b = editText;
        this.f362c = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        switch (this.f360a) {
            case 0:
                MainActivity.lambda$askName$29(this.f361b, (MainActivity.NameCallback) this.f362c, dialogInterface, i2);
                break;
            default:
                MainActivity.lambda$askText$162(this.f361b, (MainActivity.TextCallback) this.f362c, dialogInterface, i2);
                break;
        }
    }
}
