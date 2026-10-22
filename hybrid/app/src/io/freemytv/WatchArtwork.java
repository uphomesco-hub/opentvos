package io.freemytv;

import android.content.Context;
import android.graphics.*;
import android.graphics.drawable.*;
import android.net.Uri;
import java.io.*;

/** Preserve provider pixels, with bounded decoding. Neither icons nor thumbnails are enlarged. */
final class WatchArtwork {
    static final int MAX_W = 1280, MAX_H = 720;
    static Bitmap content(Context c, String uri, int[] original) {
        if (uri == null || !uri.startsWith("content://com.netflix.mediaclient.preapp/background/")) return null;
        return publishedContent(c, uri, original);
    }
    static Bitmap publishedContent(Context c, String uri, int[] original) {
        if (uri == null || !uri.startsWith("content://")) return null;
        try {
            BitmapFactory.Options bounds = new BitmapFactory.Options();bounds.inJustDecodeBounds = true;
            try (InputStream in = c.getContentResolver().openInputStream(Uri.parse(uri))) { BitmapFactory.decodeStream(in, null, bounds); }
            if (bounds.outWidth <= 0 || bounds.outHeight <= 0) return null;
            original[0] = bounds.outWidth;original[1] = bounds.outHeight;
            BitmapFactory.Options opts = options(bounds.outWidth, bounds.outHeight);
            try (InputStream in = c.getContentResolver().openInputStream(Uri.parse(uri))) { return bound(BitmapFactory.decodeStream(in, null, opts)); }
        } catch (Exception | OutOfMemoryError ignored) { return null; }
    }
    static Bitmap bytes(byte[] bytes, int[] original) {
        try {
            BitmapFactory.Options bounds = new BitmapFactory.Options();bounds.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bytes, 0, bytes.length, bounds);
            if (bounds.outWidth <= 0 || bounds.outHeight <= 0) return null;
            original[0] = bounds.outWidth;original[1] = bounds.outHeight;
            return bound(BitmapFactory.decodeByteArray(bytes, 0, bytes.length, options(bounds.outWidth, bounds.outHeight)));
        } catch (RuntimeException | OutOfMemoryError ignored) { return null; }
    }
    static Bitmap file(File file) {
        try {
            BitmapFactory.Options bounds = new BitmapFactory.Options();bounds.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(file.getPath(), bounds);
            if (bounds.outWidth <= 0 || bounds.outHeight <= 0) return null;
            return bound(BitmapFactory.decodeFile(file.getPath(), options(bounds.outWidth, bounds.outHeight)));
        } catch (RuntimeException | OutOfMemoryError ignored) { return null; }
    }
    static Bitmap drawable(Drawable d, int[] original) {
        if (d == null) return null;
        try {
            if (d instanceof BitmapDrawable) return copy(((BitmapDrawable)d).getBitmap(), original);
            int width = d.getIntrinsicWidth(), height = d.getIntrinsicHeight();
            if (width <= 0 || height <= 0) return null;
            original[0] = width;original[1] = height;
            float factor = Math.min(1f, Math.min((float)MAX_W / width, (float)MAX_H / height));
            Bitmap b = Bitmap.createBitmap(Math.max(1, Math.round(width * factor)), Math.max(1, Math.round(height * factor)), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(b);d.setBounds(0, 0, b.getWidth(), b.getHeight());d.draw(canvas);return b;
        } catch (RuntimeException | OutOfMemoryError ignored) { return null; }
    }
    /** Media metadata bitmaps belong to the framework: always take our own copy before bounding. */
    static Bitmap copy(Bitmap src, int[] original) {
        if (src == null || src.isRecycled()) return null;
        original[0] = src.getWidth();original[1] = src.getHeight();
        try { return bound(src.copy(Bitmap.Config.ARGB_8888, false)); }
        catch (RuntimeException | OutOfMemoryError ignored) { return null; }
    }
    private static BitmapFactory.Options options(int width, int height) {
        BitmapFactory.Options o = new BitmapFactory.Options();o.inSampleSize = WatchHistoryPolicy.sampleSize(width, height, MAX_W, MAX_H);
        o.inPreferredConfig = Bitmap.Config.ARGB_8888;return o;
    }
    private static Bitmap bound(Bitmap b) {
        if (b == null) return null;
        float scale = Math.min(1f, Math.min((float) MAX_W / b.getWidth(), (float) MAX_H / b.getHeight()));
        if (scale >= 1) return b;
        Bitmap out = Bitmap.createScaledBitmap(b, Math.max(1, Math.round(b.getWidth() * scale)), Math.max(1, Math.round(b.getHeight() * scale)), true);
        if (out != b) b.recycle();return out;
    }
    private WatchArtwork() {}
}
