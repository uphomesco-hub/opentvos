package f;

import android.app.role.RoleManager;
import android.graphics.RenderNode;
import android.view.WindowInsets;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class b {
    public static /* bridge */ /* synthetic */ RoleManager a(Object obj) {
        return (RoleManager) obj;
    }

    public static /* synthetic */ RenderNode e() {
        return new RenderNode("glass");
    }

    public static /* bridge */ /* synthetic */ RenderNode f(Object obj) {
        return (RenderNode) obj;
    }

    public static /* synthetic */ WindowInsets.Builder g() {
        return new WindowInsets.Builder();
    }

    public static /* bridge */ /* synthetic */ Class j() {
        return RoleManager.class;
    }

    public static /* synthetic */ RenderNode s() {
        return new RenderNode("lens");
    }
}
