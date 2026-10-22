package com.sid.tvos;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.LruCache;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
abstract class Images {
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static final ExecutorService POOL = Executors.newFixedThreadPool(2);
    private static final LruCache<String, Bitmap> MEMORY = new LruCache<String, Bitmap>(16777216) { // from class: com.sid.tvos.Images.1
        @Override // android.util.LruCache
        public int sizeOf(String str, Bitmap bitmap) {
            return bitmap.getByteCount();
        }
    };

    public interface Callback {
        void onImage(Bitmap bitmap);
    }

    public static void clear() {
        MEMORY.evictAll();
    }

    private static boolean darkColumn(Bitmap bitmap, int i2, int i3) {
        int iMax = Math.max(1, i3 / 24);
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i4 < i3) {
            if (isDark(bitmap.getPixel(i2, i4))) {
                i5++;
            }
            i4 += iMax;
            i6++;
        }
        return ((float) i5) >= ((float) i6) * 0.95f;
    }

    private static boolean darkRow(Bitmap bitmap, int i2, int i3, int i4) {
        int iMax = Math.max(1, (i4 - i3) / 32);
        int i5 = 0;
        int i6 = 0;
        while (i3 <= i4) {
            if (isDark(bitmap.getPixel(i3, i2))) {
                i5++;
            }
            i3 += iMax;
            i6++;
        }
        return ((float) i5) >= ((float) i6) * 0.95f;
    }

    private static Bitmap decode(File file, int i2, boolean z2) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(file.getPath(), options);
        if (options.outWidth <= 0) {
            return null;
        }
        int i3 = 1;
        while (true) {
            int i4 = i3 * 2;
            if (options.outWidth / i4 < i2) {
                break;
            }
            i3 = i4;
        }
        BitmapFactory.Options options2 = new BitmapFactory.Options();
        options2.inSampleSize = i3;
        options2.inPreferredConfig = Bitmap.Config.ARGB_8888;
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(file.getPath(), options2);
        if (bitmapDecodeFile != null && bitmapDecodeFile.getWidth() > i2) {
            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeFile, i2, Math.round((i2 / bitmapDecodeFile.getWidth()) * bitmapDecodeFile.getHeight()), true);
            if (bitmapCreateScaledBitmap != bitmapDecodeFile) {
                bitmapDecodeFile.recycle();
            }
            bitmapDecodeFile = bitmapCreateScaledBitmap;
        }
        return (z2 || bitmapDecodeFile == null) ? bitmapDecodeFile : trimBars(bitmapDecodeFile);
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0072 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private static void download(String str, File file) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setConnectTimeout(10000);
        httpURLConnection.setReadTimeout(20000);
        httpURLConnection.setRequestProperty("User-Agent", "tvos-launcher/2.0");
        File file2 = new File(file.getPath() + ".part");
        try {
            InputStream inputStream = httpURLConnection.getInputStream();
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    byte[] bArr = new byte[16384];
                    while (true) {
                        int i2 = inputStream.read(bArr);
                        if (i2 <= 0) {
                            break;
                        } else {
                            fileOutputStream.write(bArr, 0, i2);
                        }
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th) {
                                th.addSuppressed(th);
                            }
                        }
                        throw th;
                    }
                    fileOutputStream.close();
                    inputStream.close();
                    httpURLConnection.disconnect();
                    if (file2.renameTo(file)) {
                        return;
                    }
                    file2.delete();
                } catch (Throwable th2) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                if (inputStream != null) {
                    inputStream.close();
                }
                throw th4;
            }
        } catch (Throwable th5) {
            httpURLConnection.disconnect();
            throw th5;
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0070 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private static void fetch(Context context, String str, File file) throws IOException {
        if (str.startsWith("http")) {
            download(str, file);
            return;
        }
        File file2 = new File(file.getPath() + ".part");
        InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(Uri.parse(str));
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            if (inputStreamOpenInputStream == null) {
                fileOutputStream.close();
                if (inputStreamOpenInputStream != null) {
                    inputStreamOpenInputStream.close();
                    return;
                }
                return;
            }
            try {
                byte[] bArr = new byte[16384];
                while (true) {
                    int i2 = inputStreamOpenInputStream.read(bArr);
                    if (i2 <= 0) {
                        break;
                    } else {
                        fileOutputStream.write(bArr, 0, i2);
                    }
                    if (inputStreamOpenInputStream != null) {
                        try {
                            inputStreamOpenInputStream.close();
                        } catch (Throwable th) {
                            th.addSuppressed(th);
                        }
                    }
                    throw th;
                }
                fileOutputStream.close();
                inputStreamOpenInputStream.close();
                if (file2.renameTo(file)) {
                    return;
                }
                file2.delete();
            } catch (Throwable th2) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (Throwable th4) {
            if (inputStreamOpenInputStream != null) {
                inputStreamOpenInputStream.close();
            }
            throw th4;
        }
    }

    private static boolean isDark(int i2) {
        return ((i2 >> 16) & 255) < 22 && ((i2 >> 8) & 255) < 22 && (i2 & 255) < 22;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$load$1(File file, String str, Context context, int i2, boolean z2, String str2, Callback callback) {
        try {
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(file, Integer.toHexString(str.hashCode()) + ".img");
            if (!file2.exists() || file2.length() == 0) {
                fetch(context, str, file2);
            }
            Bitmap bitmapDecode = decode(file2, i2, z2);
            if (bitmapDecode == null) {
                return;
            }
            MEMORY.put(str2, bitmapDecode);
            MAIN.post(new RunnableC0009j(callback, bitmapDecode, 1));
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadFirst$3(File file, String[] strArr, Context context, int i2, Callback callback) {
        if (!file.exists()) {
            file.mkdirs();
        }
        for (String str : strArr) {
            try {
                File file2 = new File(file, Integer.toHexString(str.hashCode()) + ".img");
                if (!file2.exists() || file2.length() == 0) {
                    fetch(context, str, file2);
                }
                Bitmap bitmapDecode = decode(file2, i2, false);
                boolean zEquals = str.equals(strArr[strArr.length - 1]);
                if (bitmapDecode != null && (zEquals || bitmapDecode.getWidth() >= 480)) {
                    MAIN.post(new RunnableC0009j(callback, bitmapDecode, 0));
                    return;
                }
                file2.delete();
            } catch (Exception unused) {
            }
        }
    }

    public static void load(Context context, String str, int i2, Callback callback) {
        load(context, str, i2, false, callback);
    }

    public static void loadFirst(final Context context, final String[] strArr, final int i2, final Callback callback) {
        if (strArr.length == 0) {
            return;
        }
        final File file = new File(context.getCacheDir(), "art");
        POOL.execute(new Runnable() { // from class: com.sid.tvos.h
            @Override // java.lang.Runnable
            public final void run() {
                Images.lambda$loadFirst$3(file, strArr, context, i2, callback);
            }
        });
    }

    public static Bitmap trimBars(Bitmap bitmap) {
        int i2;
        int i3;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i4 = width - 1;
        int i5 = height - 1;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i2 = width / 3;
            if (i7 >= i2 || !darkColumn(bitmap, i7, height)) {
                break;
            }
            i7++;
        }
        int i8 = i4;
        while (i8 > (width * 2) / 3 && darkColumn(bitmap, i8, height)) {
            i8--;
        }
        while (true) {
            i3 = height / 3;
            if (i6 >= i3 || !darkRow(bitmap, i6, i7, i8)) {
                break;
            }
            i6++;
        }
        int i9 = i5;
        while (i9 > (height * 2) / 3 && darkRow(bitmap, i9, i7, i8)) {
            i9--;
        }
        int i10 = (i8 - i7) + 1;
        int i11 = (i9 - i6) + 1;
        if ((i7 < 4 && i4 - i8 < 4 && i6 < 4 && i5 - i9 < 4) || i10 < i2 || i11 < i3) {
            return bitmap;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, i7, i6, i10, i11);
        if (bitmapCreateBitmap != bitmap) {
            bitmap.recycle();
        }
        return bitmapCreateBitmap;
    }

    public static void load(final Context context, final String str, final int i2, final boolean z2, final Callback callback) {
        if (str == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("@");
        sb.append(i2);
        sb.append(z2 ? "a" : "");
        final String string = sb.toString();
        Bitmap bitmap = MEMORY.get(string);
        if (bitmap != null) {
            callback.onImage(bitmap);
        } else {
            final File file = new File(context.getCacheDir(), "art");
            POOL.execute(new Runnable() { // from class: com.sid.tvos.i
                @Override // java.lang.Runnable
                public final void run() {
                    Images.lambda$load$1(file, str, context, i2, z2, string, callback);
                }
            });
        }
    }
}
