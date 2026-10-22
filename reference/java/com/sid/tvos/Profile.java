package com.sid.tvos;

import android.content.ContentUris;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Shader;
import android.net.Uri;
import android.provider.MediaStore;
import android.provider.Settings;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
abstract class Profile {
    static final String[] EMOJI = {"🦊", "🐼", "🐯", "🦁", "🐸", "🐨", "🐙", "🦄", "🐶", "🐱"};
    private static final int[][] GRADIENTS = {new int[]{-24822, -47814}, new int[]{-10169601, -16087809}, new int[]{-10742, -24822}, new int[]{-39806, -4236558}, new int[]{-13577896, -16087809}, new int[]{-6776675, -12040118}, new int[]{-4236558, -10593050}, new int[]{-24618, -8553729}, new int[]{-10038065, -13586233}, new int[]{-19648, -1876645}};

    public static Bitmap avatar(Context context, int i2) {
        int i3;
        String strChoice = choice(context);
        if ("photo".equals(strChoice)) {
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(photoFile(context).getAbsolutePath());
            if (bitmapDecodeFile != null) {
                return round(bitmapDecodeFile, i2);
            }
            strChoice = "emoji:0";
        }
        try {
            i3 = Integer.parseInt(strChoice.substring(6));
        } catch (Exception unused) {
            i3 = 0;
        }
        return emojiAvatar(i3, i2);
    }

    public static String choice(Context context) {
        return prefs(context).getString("avatar", "emoji:0");
    }

    public static String emoji(Context context) {
        int i2;
        try {
            i2 = Integer.parseInt(choice(context).substring(6));
        } catch (Exception unused) {
            i2 = 0;
        }
        String[] strArr = EMOJI;
        return strArr[Math.max(0, Math.min(strArr.length - 1, i2))];
    }

    public static Bitmap emojiAvatar(int i2, int i3) {
        String[] strArr = EMOJI;
        int iMax = Math.max(0, Math.min(strArr.length - 1, i2));
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i3, i3, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(1);
        int[][] iArr = GRADIENTS;
        int[] iArr2 = iArr[iMax % iArr.length];
        float f2 = i3;
        paint.setShader(new LinearGradient(0.0f, 0.0f, f2, f2, iArr2[0], iArr2[1], Shader.TileMode.CLAMP));
        float f3 = f2 / 2.0f;
        canvas.drawCircle(f3, f3, f3, paint);
        paint.setShader(null);
        paint.setTextSize(f2 * 0.56f);
        paint.setTextAlign(Paint.Align.CENTER);
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        canvas.drawText(strArr[iMax], f3, f3 - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), paint);
        return bitmapCreateBitmap;
    }

    public static String name(Context context) {
        String string = prefs(context).getString("name", null);
        if (string != null && !string.isEmpty()) {
            return string;
        }
        try {
            String string2 = Settings.Global.getString(context.getContentResolver(), "device_name");
            if (string2 != null && !string2.isEmpty()) {
                return string2;
            }
        } catch (Exception unused) {
        }
        return context.getString(R.string.profile_default_name);
    }

    public static Bitmap photo(Context context, int i2) {
        Bitmap bitmapDecodeFile;
        if ("photo".equals(choice(context)) && (bitmapDecodeFile = BitmapFactory.decodeFile(photoFile(context).getAbsolutePath())) != null) {
            return Bitmap.createScaledBitmap(bitmapDecodeFile, i2, i2, true);
        }
        return null;
    }

    private static File photoFile(Context context) {
        return new File(context.getFilesDir(), "avatar.png");
    }

    public static List<Uri> photos(Context context, int i2) {
        ArrayList arrayList = new ArrayList();
        Uri uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
        try {
            Cursor cursorQuery = context.getContentResolver().query(uri, new String[]{"_id"}, null, null, "date_added DESC");
            if (cursorQuery == null) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return arrayList;
            }
            while (cursorQuery.moveToNext() && arrayList.size() < i2) {
                try {
                    arrayList.add(ContentUris.withAppendedId(uri, cursorQuery.getLong(0)));
                } catch (Throwable th) {
                    try {
                        cursorQuery.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            cursorQuery.close();
            return arrayList;
        } catch (Exception unused) {
        }
    }

    private static SharedPreferences prefs(Context context) {
        return context.getSharedPreferences("profile", 0);
    }

    private static Bitmap round(Bitmap bitmap, int i2) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(3);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        float f2 = i2;
        float fMin = f2 / Math.min(bitmap.getWidth(), bitmap.getHeight());
        matrix.setScale(fMin, fMin);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        float f3 = f2 / 2.0f;
        canvas.drawCircle(f3, f3, f3, paint);
        return bitmapCreateBitmap;
    }

    public static void setEmoji(Context context, int i2) {
        prefs(context).edit().putString("avatar", "emoji:" + i2).apply();
    }

    public static void setName(Context context, String str) {
        prefs(context).edit().putString("name", str).apply();
    }

    public static boolean setPhoto(Context context, Uri uri) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
            try {
                BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options);
                if (inputStreamOpenInputStream != null) {
                    inputStreamOpenInputStream.close();
                }
                int i2 = 1;
                while (true) {
                    int i3 = i2 * 2;
                    if (Math.min(options.outWidth, options.outHeight) / i3 < 320) {
                        break;
                    }
                    i2 = i3;
                }
                BitmapFactory.Options options2 = new BitmapFactory.Options();
                options2.inSampleSize = i2;
                try {
                    InputStream inputStreamOpenInputStream2 = context.getContentResolver().openInputStream(uri);
                    try {
                        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenInputStream2, null, options2);
                        if (bitmapDecodeStream == null) {
                            if (inputStreamOpenInputStream2 != null) {
                                inputStreamOpenInputStream2.close();
                            }
                            return false;
                        }
                        int iMin = Math.min(bitmapDecodeStream.getWidth(), bitmapDecodeStream.getHeight());
                        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(Bitmap.createBitmap(bitmapDecodeStream, (bitmapDecodeStream.getWidth() - iMin) / 2, (bitmapDecodeStream.getHeight() - iMin) / 2, iMin, iMin), 320, 320, true);
                        FileOutputStream fileOutputStream = new FileOutputStream(photoFile(context));
                        try {
                            bitmapCreateScaledBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                            fileOutputStream.close();
                            prefs(context).edit().putString("avatar", "photo").apply();
                            if (inputStreamOpenInputStream2 != null) {
                                inputStreamOpenInputStream2.close();
                            }
                            return true;
                        } catch (Throwable th) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        if (inputStreamOpenInputStream2 != null) {
                            try {
                                inputStreamOpenInputStream2.close();
                            } catch (Throwable th4) {
                                th3.addSuppressed(th4);
                            }
                        }
                        throw th3;
                    }
                } catch (Exception unused) {
                    return false;
                }
                return false;
            } catch (Throwable th5) {
                if (inputStreamOpenInputStream != null) {
                    try {
                        inputStreamOpenInputStream.close();
                    } catch (Throwable th6) {
                        th5.addSuppressed(th6);
                    }
                }
                throw th5;
            }
        } catch (Exception unused2) {
            return false;
        }
    }

    public static Bitmap thumb(Context context, Uri uri, int i2) {
        try {
            InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inSampleSize = 8;
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options);
                Bitmap bitmapRound = bitmapDecodeStream == null ? null : round(bitmapDecodeStream, i2);
                if (inputStreamOpenInputStream != null) {
                    inputStreamOpenInputStream.close();
                }
                return bitmapRound;
            } catch (Throwable th) {
                if (inputStreamOpenInputStream != null) {
                    try {
                        inputStreamOpenInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Exception unused) {
            return null;
        }
    }
}
