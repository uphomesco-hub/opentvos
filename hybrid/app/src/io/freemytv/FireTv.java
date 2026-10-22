package io.freemytv;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.provider.Settings;
import android.widget.Toast;

/** Fire OS keeps Amazon as system home; Home on Fire redirects Home without disabling it. */
final class FireTv {
    static final boolean DEVICE = "Amazon".equalsIgnoreCase(Build.MANUFACTURER);
    private static final String HELPER = "io.github.toolicious.homeonfire";

    static boolean active(Context c) {
        String services = Settings.Secure.getString(c.getContentResolver(),
                Settings.Secure.ENABLED_ACCESSIBILITY_SERVICES);
        return services != null && services.contains(HELPER + "/");
    }

    static void configure(Context c) {
        try {
            c.startActivity(new Intent().setClassName(HELPER, HELPER + ".MainActivity")
                    .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK));
        } catch (RuntimeException e) {
            Toast.makeText(c, "Home on Fire is needed to configure the Fire TV Home button.",
                    Toast.LENGTH_LONG).show();
        }
    }

    static Intent settingsIntent() {
        // Use the actual settings grid, not Home or the remembered About subpage.
        return DEVICE ? new Intent().setClassName("com.amazon.tv.launcher", "com.amazon.tv.launcher.ui.MainSettingsActivity")
                : new Intent(Settings.ACTION_SETTINGS);
    }

    static void openSettings(Context c,String action) {
        Intent intent=new Intent(action);
        String guidance=null;
        if(DEVICE) {
            if(Settings.ACTION_BLUETOOTH_SETTINGS.equals(action)) {
                intent=new Intent("com.amazon.device.settings.action.HURLEY").setPackage("com.amazon.tv.settings.v2");
            } else if(Settings.ACTION_DISPLAY_SETTINGS.equals(action)||Settings.ACTION_SOUND_SETTINGS.equals(action)) {
                // Both exported display handlers require Amazon's signature permission. An implicit intent
                // opens a resolver saying no app can handle it instead of throwing to our caller.
                intent=settingsIntent();guidance="Fire TV: choose Display & Audio in Settings.";
            } else if("android.settings.TV_INPUT_SETTINGS".equals(action)) {
                intent=settingsIntent();guidance="Fire TV: use Equipment Control, or your remote’s Inputs button.";
            } else if(Settings.ACTION_DREAM_SETTINGS.equals(action)) {
                intent=settingsIntent();guidance="Fire TV: choose Display & Audio, then Screensaver.";
            } else if(Settings.ACTION_ACCESSIBILITY_SETTINGS.equals(action)) {
                intent=new Intent("com.amazon.device.settings.action.ACCESSIBILITY").setPackage("com.amazon.tv.settings.v2");
            } else if(Settings.ACTION_HOME_SETTINGS.equals(action)) {
                Toast.makeText(c,"Fire TV Home is configured through Home on Fire.",Toast.LENGTH_LONG).show();
                configure(c);return;
            } else if("android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS".equals(action)) {
                Toast.makeText(c,"Fire TV does not expose notification access here. Enable it during the ADB setup described in the project instructions.",Toast.LENGTH_LONG).show();return;
            }
        }
        try {c.startActivity(intent);if(guidance!=null)Toast.makeText(c,guidance,Toast.LENGTH_LONG).show();}
        catch(RuntimeException unavailable) {
            try {c.startActivity(settingsIntent());Toast.makeText(c,"Open this option in your TV settings.",Toast.LENGTH_LONG).show();}
            catch(RuntimeException missing){Toast.makeText(c,"This TV does not provide that settings page.",Toast.LENGTH_LONG).show();}
        }
    }
}
