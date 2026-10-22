package t;

import android.bluetooth.BluetoothAdapter;
import android.net.wifi.WifiManager;
import com.sid.tvos.MainActivity;

/* JADX INFO: renamed from: t.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0078t implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f912a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f913b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f914c;

    public /* synthetic */ RunnableC0078t(WifiManager wifiManager, boolean z2) {
        this.f914c = wifiManager;
        this.f913b = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f912a) {
            case 0:
                MainActivity.lambda$showWifiMenu$84((WifiManager) this.f914c, this.f913b);
                break;
            default:
                MainActivity.lambda$showBluetoothMenu$86(this.f913b, (BluetoothAdapter) this.f914c);
                break;
        }
    }

    public /* synthetic */ RunnableC0078t(boolean z2, BluetoothAdapter bluetoothAdapter) {
        this.f913b = z2;
        this.f914c = bluetoothAdapter;
    }
}
