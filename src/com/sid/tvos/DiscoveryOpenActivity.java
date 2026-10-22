package com.sid.tvos;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.SearchManager;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.widget.Toast;

/** Source-labelled discovery details; public catalogue items never pretend to resume playback. */
public final class DiscoveryOpenActivity extends Activity {
    @Override public void onCreate(Bundle saved) {
        super.onCreate(saved);
        Intent data = getIntent();
        String service = data.getStringExtra("discovery_service"), app = data.getStringExtra("discovery_app");
        String title = data.getStringExtra("discovery_title"), official = data.getStringExtra("discovery_official");
        String source = data.getStringExtra("discovery_source");
        boolean target = DiscoveryPolicy.NETFLIX.equals(service) && "com.netflix.ninja".equals(app)
                || DiscoveryPolicy.PRIME.equals(service) && ("com.amazon.firebat".equals(app)
                || "com.amazon.amazonvideo.livingroom".equals(app));
        if (!target || title == null || title.trim().isEmpty() || title.length() > 250) { finish(); return; }
        String name = DiscoveryPolicy.NETFLIX.equals(service) ? "Netflix" : "Prime Video";
        AlertDialog dialog = new AlertDialog.Builder(this).setTitle(title)
                .setMessage("Discover · TVmaze\nRecent TV releases on " + name
                        + ". Availability may vary by country and subscription. This is public discovery, not your viewing history."
                        + "\n\nTVmaze metadata · CC BY-SA. Source: "
                        + (DiscoveryPolicy.source(source) ? source : "https://www.tvmaze.com"))
                .setPositiveButton("Open " + name, (d, which) -> { open(service, app, title, official); finish(); })
                .setNeutralButton("TVmaze source", (d, which) -> {
                    try {
                        startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse(DiscoveryPolicy.source(source)
                                ? source : "https://www.tvmaze.com")));
                    } catch (Exception ignored) { Toast.makeText(this, "No browser is available on this TV.", Toast.LENGTH_LONG).show(); }
                    finish();
                })
                .setNegativeButton("Cancel", (d, which) -> finish())
                .setOnCancelListener(d -> finish()).create();
        dialog.show();
        dialog.getButton(AlertDialog.BUTTON_POSITIVE).requestFocus();
    }

    private void open(String service, String app, String title, String official) {
        if (DiscoveryPolicy.officialSite(service, official)) {
            Intent view = new Intent(Intent.ACTION_VIEW, Uri.parse(official)).setPackage(app);
            if (launchIfResolved(view)) return;
        }
        Intent search = new Intent(Intent.ACTION_SEARCH).setPackage(app).putExtra(SearchManager.QUERY, title);
        if (launchIfResolved(search)) return;
        Intent launch = getPackageManager().getLeanbackLaunchIntentForPackage(app);
        if (launch == null) launch = getPackageManager().getLaunchIntentForPackage(app);
        if (launch != null && launchIfResolved(launch)) {
            Toast.makeText(this, "Search for “" + title + "” in the app. Availability may vary.", Toast.LENGTH_LONG).show();
            return;
        }
        Toast.makeText(this, "This streaming app could not be opened.", Toast.LENGTH_LONG).show();
    }

    private boolean launchIfResolved(Intent intent) {
        try {
            if (intent.resolveActivity(getPackageManager()) == null) return false;
            startActivity(intent); return true;
        } catch (Exception ignored) { return false; }
    }
}
