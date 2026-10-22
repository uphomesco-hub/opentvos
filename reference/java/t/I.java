package t;

import com.sid.tvos.MainActivity;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class I implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f801a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f803c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Serializable f804d;

    public /* synthetic */ I(MainActivity mainActivity, int i2, Serializable serializable, int i3) {
        this.f801a = i3;
        this.f802b = mainActivity;
        this.f803c = i2;
        this.f804d = serializable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f801a) {
            case 0:
                this.f802b.lambda$showRemapMenu$166(this.f803c, (String) this.f804d);
                break;
            case 1:
                this.f802b.lambda$chooseRemapAction$170(this.f803c, (String) this.f804d);
                break;
            case 2:
                this.f802b.lambda$chooseRemapAction$174(this.f803c, (String) this.f804d);
                break;
            case 3:
                this.f802b.lambda$chooseLauncherAction$175(this.f803c, (String) this.f804d);
                break;
            default:
                this.f802b.lambda$cwColourRows$121(this.f803c, (float[]) this.f804d);
                break;
        }
    }
}
