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
        // Generic Settings goes through Amazon Home and would trigger the redirect again.
        return new Intent(DEVICE ? Settings.ACTION_DEVICE_INFO_SETTINGS : Settings.ACTION_SETTINGS);
    }
}
