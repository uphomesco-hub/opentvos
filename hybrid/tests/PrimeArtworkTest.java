package io.freemytv;

public final class PrimeArtworkTest {
    private static int checks;
    private static void check(boolean value, String why) { checks++;if (!value) throw new AssertionError(why); }
    public static void main(String[] args) throws Exception {
        String base = "https://m.media-amazon.com/images/S/pv-target-images/hero";
        String png = base + "._SX1440_FMpng_.png";
        String html = "<meta property=\"og:image\" content=\"https://m.media-amazon.com/tiny.png\">"
                + "<div data-automation-id=\"hero-background\"><picture><source srcSet=\""
                + base + "._SX360_FMwebp_.png 360w, " + base + "._SX1920_FMwebp_.png 1920w\">"
                + "<source srcSet=\"" + png + " 1440w, " + base + "._SX1920_FMpng_.png 1920w\"></picture></div>";
        check(png.equals(PrimeArtwork.hero(html)), "Landscape HD hero preferred over tiny social poster");
        check(PrimeArtwork.hero("<meta property=\"og:image\" content=\"tiny.png\">") == null, "No invented HD URL when hero absent");
        check(PrimeArtwork.hero(html.replace("m.media-amazon.com", "evil.example")) == null, "Untrusted hero rejected");
        check(!PrimeArtwork.trusted("https://m.media-amazon.com.evil.example/a.png"), "Host suffix attack rejected");
        check(!PrimeArtwork.trusted("http://m.media-amazon.com/a.png"), "Cleartext rejected");
        check(!PrimeArtwork.trusted("https://evil@m.media-amazon.com/a.png"), "Userinfo rejected");
        check(PrimeArtwork.hero(html.replace("1440", "480").replace("1920", "720")) == null, "Small sources not labelled HD");
        if (args.length == 1) {
            String live = new String(java.nio.file.Files.readAllBytes(java.nio.file.Paths.get(args[0])), java.nio.charset.StandardCharsets.UTF_8);
            check(PrimeArtwork.hero(live) != null, "Real Prime title page supplies HD hero");
        }
        System.out.println(checks + " Prime artwork checks passed");
    }
}
