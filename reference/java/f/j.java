package f;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import android.os.ParcelFileDescriptor;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class j extends y.a {
    @Override // y.a
    public final Typeface k(Context context, e.e eVar, Resources resources) {
        try {
            FontFamily.Builder builder = null;
            for (e.f fVar : eVar.f374a) {
                try {
                    Font fontBuild = new Font.Builder(resources, fVar.f380f).setWeight(fVar.f376b).setSlant(fVar.f377c ? 1 : 0).setTtcIndex(fVar.f379e).setFontVariationSettings(fVar.f378d).build();
                    if (builder == null) {
                        builder = new FontFamily.Builder(fontBuild);
                    } else {
                        builder.addFont(fontBuild);
                    }
                } catch (IOException unused) {
                }
            }
            if (builder == null) {
                return null;
            }
            return new Typeface.CustomFallbackBuilder(builder.build()).setStyle(new FontStyle(400, 0)).build();
        } catch (Exception unused2) {
            return null;
        }
    }

    @Override // y.a
    public final Typeface l(Context context, i.g[] gVarArr) {
        ContentResolver contentResolver = context.getContentResolver();
        try {
            FontFamily.Builder builder = null;
            for (i.g gVar : gVarArr) {
                try {
                    ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = contentResolver.openFileDescriptor(gVar.f437a, "r", null);
                    if (parcelFileDescriptorOpenFileDescriptor == null) {
                        if (parcelFileDescriptorOpenFileDescriptor != null) {
                        }
                    } else {
                        try {
                            Font fontBuild = new Font.Builder(parcelFileDescriptorOpenFileDescriptor).setWeight(gVar.f439c).setSlant(gVar.f440d ? 1 : 0).setTtcIndex(gVar.f438b).build();
                            if (builder == null) {
                                builder = new FontFamily.Builder(fontBuild);
                            } else {
                                builder.addFont(fontBuild);
                            }
                        } catch (Throwable th) {
                            try {
                                parcelFileDescriptorOpenFileDescriptor.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    }
                    parcelFileDescriptorOpenFileDescriptor.close();
                } catch (IOException unused) {
                }
            }
            if (builder == null) {
                return null;
            }
            return new Typeface.CustomFallbackBuilder(builder.build()).setStyle(new FontStyle(400, 0)).build();
        } catch (Exception unused2) {
            return null;
        }
    }

    @Override // y.a
    public final Typeface m(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // y.a
    public final Typeface n(Context context, Resources resources, int i2, String str) {
        try {
            Font fontBuild = new Font.Builder(resources, i2).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(fontBuild).build()).setStyle(fontBuild.getStyle()).build();
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // y.a
    public final i.g o(i.g[] gVarArr) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }
}
