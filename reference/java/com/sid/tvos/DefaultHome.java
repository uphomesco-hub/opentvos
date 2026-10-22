package com.sid.tvos;

import android.app.Activity;
import android.app.role.RoleManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
abstract class DefaultHome {
    public static String adbCommand() {
        return Build.VERSION.SDK_INT >= 29 ? "cmd role add-role-holder --user 0 android.app.role.HOME com.sid.tvos" : "cmd package set-home-activity --user 0 com.sid.tvos/.MainActivity";
    }

    public static String ip() {
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (networkInterface.isUp() && !networkInterface.isLoopback()) {
                    for (InetAddress inetAddress : Collections.list(networkInterface.getInetAddresses())) {
                        if ((inetAddress instanceof Inet4Address) && inetAddress.isSiteLocalAddress()) {
                            return inetAddress.getHostAddress();
                        }
                    }
                }
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean isHome(Context context) {
        RoleManager roleManagerA;
        return (Build.VERSION.SDK_INT < 29 || (roleManagerA = f.b.a(context.getSystemService(f.b.j()))) == null || !roleManagerA.isRoleAvailable("android.app.role.HOME")) ? RemapService.systemHomeIsUs(context) : roleManagerA.isRoleHeld("android.app.role.HOME");
    }

    private static boolean isStub(PackageManager packageManager, Intent intent) {
        ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 0);
        return resolveInfoResolveActivity != null && resolveInfoResolveActivity.activityInfo.packageName.contains("frameworkpackagestubs");
    }

    public static boolean request(Activity activity, int i2) {
        RoleManager roleManagerA;
        PackageManager packageManager = activity.getPackageManager();
        if (Build.VERSION.SDK_INT >= 29 && (roleManagerA = f.b.a(activity.getSystemService(f.b.j()))) != null && roleManagerA.isRoleAvailable("android.app.role.HOME")) {
            Intent intentCreateRequestRoleIntent = roleManagerA.createRequestRoleIntent("android.app.role.HOME");
            if (intentCreateRequestRoleIntent.resolveActivity(packageManager) != null) {
                try {
                    activity.startActivityForResult(intentCreateRequestRoleIntent, i2);
                    return true;
                } catch (Exception unused) {
                }
            }
        }
        Intent[] intentArr = {new Intent("android.settings.HOME_SETTINGS"), new Intent("android.settings.MANAGE_DEFAULT_APPS_SETTINGS")};
        for (int i3 = 0; i3 < 2; i3++) {
            Intent intent = intentArr[i3];
            if (intent.resolveActivity(packageManager) != null && !isStub(packageManager, intent)) {
                try {
                    activity.startActivityForResult(intent, i2);
                    return true;
                } catch (Exception unused2) {
                    continue;
                }
            }
        }
        Intent intentAddCategory = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME");
        ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intentAddCategory, 65536);
        if (resolveInfoResolveActivity != null && "android".equals(resolveInfoResolveActivity.activityInfo.packageName)) {
            try {
                activity.startActivityForResult(intentAddCategory, i2);
                return true;
            } catch (Exception unused3) {
            }
        }
        return false;
    }
}
