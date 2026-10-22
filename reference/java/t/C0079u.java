package t;

import android.bluetooth.BluetoothDevice;
import com.sid.tvos.MainActivity;
import java.util.Comparator;

/* JADX INFO: renamed from: t.u, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0079u implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return MainActivity.lambda$showBluetoothMenu$87((BluetoothDevice) obj, (BluetoothDevice) obj2);
    }
}
