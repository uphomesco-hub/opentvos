package com.sid.tvos;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.format.DateFormat;
import android.view.View;
import java.text.DateFormatSymbols;
import java.util.Calendar;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class StandByView extends View {
    private final Typeface bold;
    private final Rect bounds;
    private int colour;
    private int layout;
    private int left;
    private final Calendar now;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Paint f208p;
    private final Path path;
    private int right;
    private final Typeface semi;
    private float shiftX;
    private float shiftY;
    private final Runnable tick;
    private final SharedPreferences weather;

    public StandByView(Context context) {
        super(context);
        this.f208p = new Paint(1);
        this.now = Calendar.getInstance();
        this.bounds = new Rect();
        this.path = new Path();
        this.layout = 0;
        this.left = 0;
        this.right = 4;
        this.tick = new Runnable() { // from class: com.sid.tvos.StandByView.1
            @Override // java.lang.Runnable
            public void run() {
                StandByView.this.invalidate();
                long jCurrentTimeMillis = System.currentTimeMillis();
                StandByView standByView = StandByView.this;
                long j = standByView.seconds() ? 1000L : 60000L;
                standByView.postDelayed(this, (j - (jCurrentTimeMillis % j)) + 5);
            }
        };
        Typeface typefaceB = e.k.b(context, R.font.inter_semibold);
        typefaceB = typefaceB == null ? Typeface.DEFAULT_BOLD : typefaceB;
        this.semi = typefaceB;
        this.bold = Typeface.create(typefaceB, 1);
        this.weather = context.getSharedPreferences("weather", 0);
        setBackgroundColor(-16777216);
        reload();
    }

    private void arrow(Canvas canvas, float f2, float f3, float f4) {
        this.path.reset();
        this.path.moveTo(f2 + f4, f3);
        this.path.lineTo(f2, (0.42f * f4) + f3);
        this.path.lineTo((0.48f * f4) + f2, (0.52f * f4) + f3);
        this.path.lineTo((0.58f * f4) + f2, f3 + f4);
        this.path.close();
        canvas.drawPath(this.path, this.f208p);
    }

    private void drawAnalogue(Canvas canvas, float f2, float f3, float f4) {
        this.f208p.setStyle(Paint.Style.STROKE);
        this.f208p.setStrokeCap(Paint.Cap.BUTT);
        for (int i2 = 0; i2 < 60; i2++) {
            boolean z2 = i2 % 5 == 0;
            this.f208p.setColor(z2 ? -1 : -12040118);
            this.f208p.setStrokeWidth((z2 ? 0.022f : 0.014f) * f4);
            double radians = Math.toRadians(i2 * 6);
            float f5 = (z2 ? 0.9f : 0.93f) * f4;
            canvas.drawLine((((float) Math.sin(radians)) * f5) + f2, f3 - (((float) Math.cos(radians)) * f5), (((float) Math.sin(radians)) * f4) + f2, f3 - (((float) Math.cos(radians)) * f4), this.f208p);
        }
        numerals(canvas, f2, f3, f4 * 0.71f, f4 * 0.2f, 1);
        hands(canvas, f2, f3, f4);
    }

    private void drawBigAnalogue(Canvas canvas, float f2, float f3) {
        float f4 = f2 / 2.0f;
        float f5 = f3 / 2.0f;
        float f6 = f4 * 0.96f;
        float f7 = f5 * 0.94f;
        this.f208p.setStyle(Paint.Style.STROKE);
        this.f208p.setStrokeCap(Paint.Cap.BUTT);
        for (int i2 = 0; i2 < 60; i2++) {
            if (i2 % 15 != 0) {
                boolean z2 = i2 % 5 == 0;
                double radians = Math.toRadians(i2 * 6);
                float fSin = (float) Math.sin(radians);
                float f8 = -((float) Math.cos(radians));
                float fMin = Math.min(f6 / Math.max(1.0E-4f, Math.abs(fSin)), f7 / Math.max(1.0E-4f, Math.abs(f8)));
                float f9 = (z2 ? 0.2f : 0.035f) * f3;
                this.f208p.setColor(z2 ? -3026474 : -12040118);
                this.f208p.setStrokeWidth(f3 * (z2 ? 0.006f : 0.004f));
                float f10 = fMin - f9;
                canvas.drawLine((fSin * f10) + f4, (f10 * f8) + f5, (fSin * fMin) + f4, (f8 * fMin) + f5, this.f208p);
            }
        }
        this.f208p.setColor(-3026474);
        this.f208p.setStrokeWidth(0.006f * f3);
        float f11 = f4 - f6;
        float f12 = f2 * 0.07f;
        canvas.drawLine(f11, f5, f11 + f12, f5, this.f208p);
        float f13 = f4 + f6;
        canvas.drawLine(f13, f5, f13 - f12, f5, this.f208p);
        float f14 = f5 - f7;
        float f15 = f3 * 0.05f;
        canvas.drawLine(f4, f14, f4, f14 + f15, this.f208p);
        float f16 = f5 + f7;
        canvas.drawLine(f4, f16, f4, f16 - f15, this.f208p);
        this.f208p.setStyle(Paint.Style.FILL);
        this.f208p.setTypeface(this.semi);
        this.f208p.setTextAlign(Paint.Align.CENTER);
        this.f208p.setTextSize(0.13f * f3);
        this.f208p.setColor(-1);
        float f17 = (-(this.f208p.descent() + this.f208p.ascent())) / 2.0f;
        float f18 = f7 * 0.62f;
        canvas.drawText("12", f4, (f5 - f18) + f17, this.f208p);
        canvas.drawText("6", f4, f18 + f5 + f17, this.f208p);
        float f19 = 0.7f * f6;
        float f20 = f17 + f5;
        canvas.drawText("9", f4 - f19, f20, this.f208p);
        canvas.drawText("3", f19 + f4, f20, this.f208p);
        this.f208p.setTextSize(0.04f * f3);
        this.f208p.setTextAlign(Paint.Align.RIGHT);
        float f21 = (f6 * 0.6f) + f4;
        float f22 = (-(this.f208p.descent() + this.f208p.ascent())) / 2.0f;
        String strValueOf = String.valueOf(this.now.get(5));
        float f23 = f22 + f5;
        canvas.drawText(strValueOf, f21, f23, this.f208p);
        this.f208p.setColor(-47814);
        canvas.drawText(DateFormat.format("EEE", this.now).toString().toUpperCase(Locale.getDefault()) + " ", f21 - this.f208p.measureText(strValueOf), f23, this.f208p);
        hands(canvas, f4, f5, 0.42f * f3);
    }

    private void drawCalendar(Canvas canvas, float f2, float f3, float f4) {
        Paint paint;
        Typeface typeface;
        Calendar calendar = (Calendar) this.now.clone();
        int i2 = 1;
        calendar.set(5, 1);
        int firstDayOfWeek = calendar.getFirstDayOfWeek();
        int i3 = 7;
        int i4 = ((calendar.get(7) - firstDayOfWeek) + 7) % 7;
        int actualMaximum = calendar.getActualMaximum(5);
        int i5 = this.now.get(5);
        float f5 = f3 / 7.0f;
        float f6 = (((i4 + actualMaximum) + 6) / 7) + 1;
        float fMin = Math.min(0.86f * f5, (0.68f * f4) / f6);
        float f7 = 0.1f * f4;
        float f8 = ((f4 - (f6 * fMin)) - f7) / 2.0f;
        this.f208p.setStyle(Paint.Style.FILL);
        this.f208p.setTextAlign(Paint.Align.LEFT);
        this.f208p.setTypeface(this.semi);
        this.f208p.setTextSize(0.52f * fMin);
        this.f208p.setColor(-47814);
        canvas.drawText(DateFormat.format("MMMM", this.now).toString().toUpperCase(Locale.getDefault()), (0.18f * f5) + f2, (0.06f * f4) + f8, this.f208p);
        this.f208p.setTextAlign(Paint.Align.CENTER);
        String[] shortWeekdays = new DateFormatSymbols(Locale.getDefault()).getShortWeekdays();
        float f9 = (0.6f * fMin) + f8 + f7;
        float f10 = 0.42f * fMin;
        this.f208p.setTextSize(f10);
        this.f208p.setColor(-7434605);
        int i6 = 0;
        int i7 = 0;
        while (i7 < i3) {
            String str = shortWeekdays[(((firstDayOfWeek - 1) + i7) % 7) + 1];
            canvas.drawText(str.isEmpty() ? "" : str.substring(i6, 1).toUpperCase(Locale.getDefault()), ((i7 + 0.5f) * f5) + f2, f9, this.f208p);
            i7++;
            i3 = 7;
            i6 = 0;
        }
        this.f208p.setTextSize(0.46f * fMin);
        float f11 = (-(this.f208p.descent() + this.f208p.ascent())) / 2.0f;
        int i8 = 1;
        while (i8 <= actualMaximum) {
            int i9 = (i4 + i8) - i2;
            int i10 = i9 % 7;
            float f12 = ((i10 + 0.5f) * f5) + f2;
            float f13 = ((((i9 / 7) + i2) * fMin) + f9) - (0.15f * fMin);
            int i11 = actualMaximum;
            int i12 = (((firstDayOfWeek - 1) + i10) % 7) + 1;
            boolean z2 = i12 == 7 || i12 == i2;
            if (i8 == i5) {
                this.f208p.setColor(-47814);
                canvas.drawCircle(f12, f13, f10, this.f208p);
                this.f208p.setColor(-1);
                paint = this.f208p;
                typeface = this.bold;
            } else {
                this.f208p.setColor(z2 ? -7434605 : -1);
                paint = this.f208p;
                typeface = this.semi;
            }
            paint.setTypeface(typeface);
            canvas.drawText(String.valueOf(i8), f12, f13 + f11, this.f208p);
            i8++;
            actualMaximum = i11;
            i2 = 1;
        }
    }

    private void drawDate(Canvas canvas, float f2, float f3, float f4) {
        this.f208p.setStyle(Paint.Style.FILL);
        this.f208p.setTypeface(this.semi);
        this.f208p.setTextAlign(Paint.Align.LEFT);
        this.f208p.setTextSize(0.11f * f4);
        String string = DateFormat.format("EEE", this.now).toString();
        String string2 = DateFormat.format("MMM", this.now).toString();
        String strValueOf = String.valueOf(this.now.get(5));
        float fMeasureText = this.f208p.measureText(string + " " + string2);
        Paint paint = new Paint(this.f208p);
        paint.setTypeface(this.bold);
        paint.setTextSize(0.52f * f4);
        float fMax = Math.max(fMeasureText, paint.measureText(strValueOf));
        float f5 = ((f3 - fMax) / 2.0f) + f2;
        float f6 = 0.3f * f4;
        this.f208p.setColor(-47814);
        canvas.drawText(string, f5, f6, this.f208p);
        this.f208p.setColor(-7434605);
        canvas.drawText(" " + string2, this.f208p.measureText(string) + f5, f6, this.f208p);
        paint.setColor(-1);
        paint.getTextBounds(strValueOf, 0, strValueOf.length(), this.bounds);
        canvas.drawText(strValueOf, ((fMax - paint.measureText(strValueOf)) / 2.0f) + f5, (f4 * 0.06f) + f6 + this.bounds.height(), paint);
    }

    private void drawDigital(Canvas canvas, float f2, float f3, float f4) {
        String[] strArrTimeDigits = timeDigits();
        String str = strArrTimeDigits[0] + ":" + strArrTimeDigits[1];
        this.f208p.setStyle(Paint.Style.FILL);
        this.f208p.setTypeface(this.bold);
        this.f208p.setTextAlign(Paint.Align.CENTER);
        this.f208p.setTextSize(0.42f * f4);
        float fMeasureText = this.f208p.measureText(str);
        if (fMeasureText > f3) {
            Paint paint = this.f208p;
            paint.setTextSize((paint.getTextSize() * f3) / fMeasureText);
        }
        float f5 = (f3 / 2.0f) + f2;
        this.f208p.getTextBounds(str, 0, str.length(), this.bounds);
        float fHeight = (0.04f * f4) + (this.bounds.height() / 2.0f) + (f4 / 2.0f);
        this.f208p.setColor(-1);
        canvas.drawText(str, f5, fHeight, this.f208p);
        this.f208p.setTypeface(this.semi);
        float f6 = f4 * 0.045f;
        this.f208p.setTextSize(f6);
        this.f208p.setColor(-47814);
        canvas.drawText(DateFormat.format("EEEE d MMMM", this.now).toString().toUpperCase(Locale.getDefault()), f5, (fHeight - this.bounds.height()) - f6, this.f208p);
    }

    private void drawFloat(Canvas canvas, float f2, float f3) {
        String[] strArrTimeDigits = timeDigits();
        String str = strArrTimeDigits[0] + strArrTimeDigits[1];
        this.f208p.setTypeface(this.bold);
        this.f208p.setTextAlign(Paint.Align.LEFT);
        this.f208p.setTextSize(f3 * 0.62f);
        this.f208p.setStrokeJoin(Paint.Join.ROUND);
        this.f208p.setStrokeWidth(0.035f * f3);
        int length = str.length();
        float[] fArr = new float[length];
        int i2 = 0;
        float f4 = 0.0f;
        while (true) {
            float f5 = 0.84000003f;
            if (i2 >= str.length()) {
                break;
            }
            int i3 = i2 + 1;
            float fMeasureText = this.f208p.measureText(str, i2, i3);
            fArr[i2] = fMeasureText;
            if (i2 == str.length() - 1) {
                f5 = 1.0f;
            }
            f4 += fMeasureText * f5;
            i2 = i3;
        }
        float fMin = Math.min(1.0f, (0.86f * f2) / f4);
        Paint paint = this.f208p;
        paint.setTextSize(paint.getTextSize() * fMin);
        Paint paint2 = this.f208p;
        paint2.setStrokeWidth(paint2.getStrokeWidth() * fMin);
        for (int i4 = 0; i4 < length; i4++) {
            fArr[i4] = fArr[i4] * fMin;
        }
        this.f208p.getTextBounds("0", 0, 1, this.bounds);
        float fHeight = (this.bounds.height() / 2.0f) + (f3 / 2.0f);
        int iRgb = Color.rgb((int) (Color.red(this.colour) * 0.62f), (int) (Color.green(this.colour) * 0.62f), (int) (Color.blue(this.colour) * 0.62f));
        float[] fArr2 = new float[str.length()];
        float f6 = (f2 - (f4 * fMin)) / 2.0f;
        float f7 = 0.0f;
        for (int i5 = 0; i5 < str.length(); i5++) {
            fArr2[i5] = f6;
            f6 += fArr[i5] * 0.84000003f;
            if (i5 == strArrTimeDigits[0].length() - 1) {
                f7 = f6 - ((fArr[i5] * 0.16f) * 0.1f);
            }
        }
        this.f208p.setStyle(Paint.Style.FILL_AND_STROKE);
        int i6 = 0;
        while (i6 < 2) {
            this.f208p.setColor(i6 == 0 ? iRgb : this.colour);
            for (int i7 = i6; i7 < str.length(); i7 += 2) {
                canvas.drawText(str, i7, i7 + 1, fArr2[i7], fHeight, this.f208p);
            }
            i6++;
        }
        this.f208p.setStyle(Paint.Style.FILL);
        this.f208p.setColor(-639244822);
        float f8 = 0.05f * f3;
        canvas.drawCircle(f7, fHeight - (this.bounds.height() * 0.68f), f8, this.f208p);
        canvas.drawCircle(f7, fHeight - (this.bounds.height() * 0.28f), f8, this.f208p);
    }

    private void drawModern(Canvas canvas, float f2, float f3, float f4) {
        this.f208p.setStyle(Paint.Style.STROKE);
        this.f208p.setStrokeCap(Paint.Cap.BUTT);
        int i2 = 0;
        while (true) {
            if (i2 >= 60) {
                this.f208p.setColor(-1);
                this.f208p.setStrokeWidth(f4 * 0.02f);
                float f5 = f4 * 0.86f;
                canvas.drawLine(f2, f3 - f4, f2, f3 - f5, this.f208p);
                canvas.drawLine(f2, f3 + f4, f2, f3 + f5, this.f208p);
                canvas.drawLine(f2 - f4, f3, f2 - f5, f3, this.f208p);
                canvas.drawLine(f2 + f4, f3, f2 + f5, f3, this.f208p);
                numerals(canvas, f2, f3, f4 * 0.62f, f4 * 0.26f, 3);
                hands(canvas, f2, f3, f4);
                return;
            }
            boolean z2 = i2 % 5 == 0;
            if (i2 % 15 != 0) {
                double radians = Math.toRadians(i2 * 6);
                float fSin = (float) Math.sin(radians);
                float f6 = -((float) Math.cos(radians));
                float fMax = f4 / Math.max(Math.abs(fSin), Math.abs(f6));
                float f7 = (z2 ? 0.24f : 0.08f) * f4;
                this.f208p.setColor(z2 ? -1 : -12040118);
                this.f208p.setStrokeWidth(f4 * (z2 ? 0.02f : 0.012f));
                float f8 = fMax - f7;
                canvas.drawLine((fSin * f8) + f2, (f8 * f6) + f3, (fSin * fMax) + f2, (f6 * fMax) + f3, this.f208p);
            }
            i2++;
        }
    }

    private void drawWeather(Canvas canvas, float f2, float f3, float f4) {
        float f5 = (f3 * 0.16f) + f2;
        float f6 = 0.075f * f4;
        this.f208p.setStyle(Paint.Style.FILL);
        this.f208p.setTypeface(this.semi);
        this.f208p.setTextAlign(Paint.Align.LEFT);
        this.f208p.setColor(-1);
        if (!this.weather.contains("temp")) {
            this.f208p.setTextSize(f6);
            this.f208p.setColor(-7434605);
            canvas.drawText(getContext().getString(R.string.standby_no_weather), f5, f4 / 2.0f, this.f208p);
            return;
        }
        int i2 = this.weather.getInt("temp", 0);
        int i3 = this.weather.getInt("code", 0);
        boolean z2 = this.weather.getBoolean("day", true);
        String string = this.weather.getString("city", "");
        float f7 = 0.2f * f4;
        this.f208p.setTextSize(f6);
        if (!string.isEmpty()) {
            canvas.drawText(string, f5, f7, this.f208p);
            float fMeasureText = (f6 * 0.3f) + this.f208p.measureText(string) + f5;
            float f8 = 0.62f * f6;
            arrow(canvas, fMeasureText, f7 - f8, f8);
        }
        this.f208p.setTypeface(this.bold);
        this.f208p.setTextSize(0.3f * f4);
        this.f208p.getTextBounds("0", 0, 1, this.bounds);
        float fHeight = (0.04f * f4) + this.bounds.height() + f7;
        canvas.drawText(i2 + "°", f5 - (0.01f * f4), fHeight, this.f208p);
        Drawable drawableB = d.a.b(getContext(), Weather.icon(i3, z2));
        float f9 = 1.1f * f6;
        float f10 = (f4 * 0.07f) + fHeight;
        if (drawableB != null) {
            drawableB.setBounds((int) f5, (int) f10, (int) (f5 + f9), (int) (f10 + f9));
            drawableB.setTint(-1);
            drawableB.draw(canvas);
        }
        this.f208p.setTypeface(this.semi);
        this.f208p.setTextSize(f6);
        float f11 = (1.15f * f6) + f9 + f10;
        canvas.drawText(Weather.describe(i3, z2), f5, f11, this.f208p);
        if (this.weather.contains("high")) {
            canvas.drawText("H:" + this.weather.getInt("high", 0) + "° L:" + this.weather.getInt("low", 0) + "°", f5, (f6 * 1.2f) + f11, this.f208p);
        }
    }

    private void drawWidget(Canvas canvas, int i2, float f2, float f3, float f4) {
        float fMin = Math.min(0.78f * f3, 0.74f * f4) / 2.0f;
        if (i2 == 1) {
            drawModern(canvas, (f3 / 2.0f) + f2, f4 / 2.0f, fMin);
            return;
        }
        if (i2 == 2) {
            drawDigital(canvas, (0.06f * f3) + f2, f3 * 0.88f, f4);
            return;
        }
        if (i2 == 3) {
            drawDate(canvas, f2, f3, f4);
            return;
        }
        if (i2 == 4) {
            drawCalendar(canvas, (0.08f * f3) + f2, f3 * 0.84f, f4);
        } else if (i2 != 5) {
            drawAnalogue(canvas, (f3 / 2.0f) + f2, f4 / 2.0f, fMin);
        } else {
            drawWeather(canvas, f2, f3, f4);
        }
    }

    private void hand(Canvas canvas, float f2, float f3, float f4, float f5, float f6) {
        double radians = Math.toRadians(f4);
        float fSin = (float) Math.sin(radians);
        float f7 = -((float) Math.cos(radians));
        this.f208p.setColor(-1);
        this.f208p.setStrokeWidth(0.35f * f6);
        float f8 = fSin * f5;
        float f9 = (f8 * 0.2f) + f2;
        float f10 = f7 * f5;
        float f11 = (0.2f * f10) + f3;
        canvas.drawLine(f2, f3, f9, f11, this.f208p);
        this.f208p.setStrokeWidth(f6);
        canvas.drawLine(f9, f11, f2 + f8, f3 + f10, this.f208p);
    }

    private void hands(Canvas canvas, float f2, float f3, float f4) {
        float f5 = this.now.get(13);
        float f6 = (f5 / 60.0f) + this.now.get(12);
        float f7 = (f6 / 60.0f) + this.now.get(10);
        this.f208p.setStrokeCap(Paint.Cap.ROUND);
        this.f208p.setStyle(Paint.Style.STROKE);
        hand(canvas, f2, f3, f7 * 30.0f, f4 * 0.5f, f4 * 0.065f);
        hand(canvas, f2, f3, f6 * 6.0f, f4 * 0.82f, f4 * 0.055f);
        this.f208p.setColor(-24822);
        float f8 = 0.014f * f4;
        this.f208p.setStrokeWidth(f8);
        double radians = Math.toRadians(f5 * 6.0f);
        canvas.drawLine(f2 - ((((float) Math.sin(radians)) * f4) * 0.16f), (((float) Math.cos(radians)) * f4 * 0.16f) + f3, (((float) Math.sin(radians)) * f4 * 0.92f) + f2, f3 - ((((float) Math.cos(radians)) * f4) * 0.92f), this.f208p);
        this.f208p.setStyle(Paint.Style.FILL);
        canvas.drawCircle(f2, f3, f4 * 0.035f, this.f208p);
        this.f208p.setColor(-16777216);
        canvas.drawCircle(f2, f3, f8, this.f208p);
    }

    private void numerals(Canvas canvas, float f2, float f3, float f4, float f5, int i2) {
        this.f208p.setStyle(Paint.Style.FILL);
        this.f208p.setColor(-1);
        this.f208p.setTypeface(this.semi);
        this.f208p.setTextSize(f5);
        this.f208p.setTextAlign(Paint.Align.CENTER);
        float f6 = (-(this.f208p.descent() + this.f208p.ascent())) / 2.0f;
        int i3 = i2;
        while (i3 <= 12) {
            double radians = Math.toRadians(i3 * 30);
            canvas.drawText(String.valueOf(i3), (((float) Math.sin(radians)) * f4) + f2, (f3 - (((float) Math.cos(radians)) * f4)) + f6, this.f208p);
            i3 += i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean seconds() {
        int i2 = this.layout;
        if (i2 == 1) {
            return true;
        }
        if (i2 != 0) {
            return false;
        }
        return this.left <= 1 || this.right <= 1;
    }

    private String[] timeDigits() {
        boolean zIs24HourFormat = DateFormat.is24HourFormat(getContext());
        int i2 = this.now.get(zIs24HourFormat ? 11 : 10);
        if (!zIs24HourFormat && i2 == 0) {
            i2 = 12;
        }
        return new String[]{zIs24HourFormat ? String.format(Locale.US, "%02d", Integer.valueOf(i2)) : String.valueOf(i2), String.format(Locale.US, "%02d", Integer.valueOf(this.now.get(12)))};
    }

    public void nudge() {
        float height = getHeight() * 0.012f;
        this.shiftX = ((float) ((Math.random() * 2.0d) - 1.0d)) * height;
        this.shiftY = ((float) ((Math.random() * 2.0d) - 1.0d)) * height;
        invalidate();
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        post(this.tick);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.tick);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        this.now.setTimeInMillis(System.currentTimeMillis());
        float width = getWidth();
        float height = getHeight();
        if (width == 0.0f || height == 0.0f) {
            return;
        }
        canvas.save();
        canvas.translate(this.shiftX, this.shiftY);
        int i2 = this.layout;
        if (i2 == 1) {
            drawBigAnalogue(canvas, width, height);
        } else if (i2 == 2) {
            drawFloat(canvas, width, height);
        } else if (i2 != 3) {
            float f2 = width / 2.0f;
            drawWidget(canvas, this.left, 0.0f, f2, height);
            drawWidget(canvas, this.right, f2, f2, height);
        } else {
            drawDigital(canvas, 0.1f * width, width * 0.8f, height);
        }
        canvas.restore();
    }

    public void reload() {
        Context context = getContext();
        this.layout = Appearance.standByLayout(context);
        this.left = Appearance.standByLeft(context);
        this.right = Appearance.standByRight(context);
        int[] iArr = Appearance.SB_COLOURS;
        this.colour = iArr[Math.max(0, Math.min(iArr.length - 1, Appearance.standByColour(context)))];
        invalidate();
    }
}
