package io.freemytv;

import java.net.URI;
import java.util.regex.*;

/** Prefer the actual landscape hero over og:image, which Prime often supplies as a tiny poster. */
final class PrimeArtwork {
    static String hero(String html) {
        Matcher section = Pattern.compile("(?is)data-automation-id=[\"']hero-background[\"']").matcher(html);
        if (!section.find()) return null;
        String region = html.substring(section.end(), Math.min(html.length(), section.end() + 24000));
        int end = region.toLowerCase(java.util.Locale.ROOT).indexOf("</picture>");
        if (end >= 0) region = region.substring(0, end);
        Matcher urls = Pattern.compile("https://(?:m\\.media-amazon\\.com|images-na\\.ssl-images-amazon\\.com)/[^\\s\"'<> ,]+").matcher(region);
        String best = null;int score = 0;
        while (urls.find()) {
            String url = urls.group().replace("&amp;", "&");
            if (!trusted(url)) continue;
            Matcher size = Pattern.compile("_SX(\\d+)_").matcher(url);
            if (!size.find()) continue;
            int width = Integer.parseInt(size.group(1));
            if (width < 960 || width > 1920) continue;
            // 1080/1440 are sufficient for our bounded 1280-pixel decode; PNG is universal on TVs.
            int value = (width >= 1280 ? 3000 - width : width) + (url.contains("FMpng") ? 10000 : 0);
            if (value > score) { score = value;best = url; }
        }
        return best;
    }
    static boolean trusted(String url) {
        try {
            URI u = new URI(url);
            return "https".equals(u.getScheme()) && u.getUserInfo() == null && u.getPort() == -1
                    && ("m.media-amazon.com".equals(u.getHost()) || "images-na.ssl-images-amazon.com".equals(u.getHost()));
        } catch (Exception e) { return false; }
    }
    private PrimeArtwork() {}
}
