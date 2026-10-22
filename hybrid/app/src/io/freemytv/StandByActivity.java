package io.freemytv;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;

import java.text.SimpleDateFormat;
import java.text.DateFormatSymbols;
import android.text.format.DateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;

/** A manual clock display, independent of the existing system Dream/screensaver. */
public class StandByActivity extends Activity {
    private ClockView clock;
    @Override protected void onCreate(Bundle saved) {
        super.onCreate(saved); Ui.init(this);
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN | WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_FULLSCREEN | View.SYSTEM_UI_FLAG_HIDE_NAVIGATION | View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY);
        clock = new ClockView(this); setContentView(clock);
    }
    @Override protected void onResume() { super.onResume(); clock.start(); }
    @Override protected void onPause() { clock.stop(); super.onPause(); }
    @Override public boolean dispatchKeyEvent(KeyEvent event) {
        int code = event.getKeyCode();
        if (code == KeyEvent.KEYCODE_BACK || code == KeyEvent.KEYCODE_DPAD_CENTER || code == KeyEvent.KEYCODE_ENTER || code == KeyEvent.KEYCODE_MENU) {
            if (event.getAction() == KeyEvent.ACTION_UP) finish(); return true;
        }
        return super.dispatchKeyEvent(event);
    }
    static final class ClockView extends View implements HomeData.Listener {
        private final Handler handler = new Handler(Looper.getMainLooper());
        private final Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final HomeData data;
        private boolean running;
        private final Calendar now = Calendar.getInstance(TimeZone.getTimeZone("Asia/Kolkata"));
        private final Typeface semi = Ui.semibold, bold = Typeface.create(Ui.semibold, Typeface.BOLD);
        private final String layout;
        private final Runnable tick = new Runnable() { public void run() { if (!running) return; data.refreshIfStale(); invalidate(); handler.postDelayed(this, 1000); } };
        ClockView(Context c) {
            super(c); data = HomeData.get(c); layout = c.getSharedPreferences("hybrid_ui", 0).getString("standby_layout", "clock_calendar");
            setFocusable(true); setContentDescription("StandBy. Press Back or Select to return.");
            if(c instanceof Activity)setOnClickListener(v -> ((Activity)c).finish());
        }
        void start() { if (running) return; running = true; data.addListener(this); handler.post(tick); }
        void stop() { running = false; handler.removeCallbacks(tick); data.removeListener(this); }
        @Override public void onData() { postInvalidate(); }
        private void text(Canvas c, String value, float x, float y, float size, int color, boolean bold) {
            p.setColor(color); p.setTextSize(size); p.setStyle(Paint.Style.FILL); p.setTextAlign(Paint.Align.CENTER);
            p.setTypeface(Typeface.create("sans-serif", bold ? Typeface.BOLD : Typeface.NORMAL)); c.drawText(value, x, y, p);
        }
        private String format(String pattern) {
            SimpleDateFormat f = new SimpleDateFormat(pattern, Locale.ENGLISH); f.setTimeZone(TimeZone.getTimeZone("Asia/Kolkata")); return f.format(new java.util.Date());
        }
        @Override protected void onDraw(Canvas c) {
            c.drawColor(0xff000000);
            now.setTimeInMillis(System.currentTimeMillis());
            float scale = Math.min(getWidth() / 1920f, getHeight() / 1080f);
            c.save(); c.translate((getWidth() - 1920 * scale) / 2, (getHeight() - 1080 * scale) / 2); c.scale(scale, scale);
            // Slow minute-by-minute movement keeps stationary pixels from sitting on one point indefinitely.
            long minute = System.currentTimeMillis() / 60000;
            c.translate((minute % 5 - 2) * 3, ((minute / 5) % 5 - 2) * 2);
            if ("clock_calendar".equals(layout)) {
                // The original tvOS two-widget geometry and renderer, with a digital readout added below the clock.
                drawAnalogue(c, 480, 540, Math.min(960*.78f,1080*.74f)/2);
                drawCalendar(c, 960+960*.08f, 960*.84f, 1080);
                text(c, format("h:mm:ss a"), 480, 1000, 48, 0xfff4f4f8, true);
                text(c, "IST", 480, 1040, 22, 0xff8e8e93, false);
            } else if ("analog".equals(layout)) analog(c);
            else if ("calendar".equals(layout)) calendar(c);
            else if ("digital".equals(layout)) {
                text(c, format("h:mm"), 960, 610, 320, 0xfff3f5ff, true);
                text(c, format("EEEE, d MMMM") + " · IST", 960, 730, 40, 0xffa1b5d9, false);
            } else {
                card(c, 130, 225, 940, 840); card(c, 980, 225, 1790, 840);
                text(c, format("h:mm"), 535, 555, 185, 0xfff4f6ff, true);
                text(c, format("EEEE, d MMMM") + " · IST", 535, 650, 32, 0xff9bacc9, false);
                weather(c, 1385, 430);
            }
            if (!"clock_calendar".equals(layout)) text(c, "Back to return", 960, 1040, 22, 0xff626d84, false); c.restore();
        }
        private void card(Canvas c, float l, float t, float r, float b) { p.setStyle(Paint.Style.FILL); p.setColor(0xff161d2d); c.drawRoundRect(new RectF(l,t,r,b), 60,60,p); }
        private void weather(Canvas c, float x, float y) {
            HomeData.Weather wx = data.weather;
            boolean fahrenheit = "F".equals(Prefs.temperature());
            double temp = fahrenheit ? wx.temp * 1.8 + 32 : wx.temp;
            text(c, Prefs.city(), x, y, 42, 0xffa7c9fa, true);
            text(c, Double.isNaN(temp) ? "—" : Math.round(temp) + (fahrenheit ? "°F" : "°C"), x, y+165, 135, 0xfff3f6ff, true);
            HomeData.AirQuality aq = data.airQuality;
            text(c, aq == null ? "Air quality unavailable" : "AQI (IN est.) " + Math.round(aq.value), x, y+255, 31, 0xffb8c7e4, false);
        }
        private void analog(Canvas c) {
            drawAnalogue(c, 960, 470, 330);
            text(c, format("h:mm:ss a"), 960, 900, 54, 0xfff4f4f8, true);
            text(c, format("EEE, d MMMM") + " · IST", 960, 955, 28, 0xff8e8e93, false);
        }
        private void calendar(Canvas c) {
            drawCalendar(c, 230, 1460, 1000);
            text(c, format("h:mm a") + " · IST", 960, 1010, 30, 0xff8e8e93, false);
        }
        // Clock numerals, tick marks, hands, and calendar spacing recovered from the reference tvOS renderer.
    private void drawAnalogue(Canvas canvas, float f2, float f3, float f4) {
        this.p.setStyle(Paint.Style.STROKE);
        this.p.setStrokeCap(Paint.Cap.BUTT);
        for (int i2 = 0; i2 < 60; i2++) {
            boolean z2 = i2 % 5 == 0;
            this.p.setColor(z2 ? -1 : -12040118);
            this.p.setStrokeWidth((z2 ? 0.022f : 0.014f) * f4);
            double radians = Math.toRadians(i2 * 6);
            float f5 = (z2 ? 0.9f : 0.93f) * f4;
            canvas.drawLine((((float) Math.sin(radians)) * f5) + f2, f3 - (((float) Math.cos(radians)) * f5), (((float) Math.sin(radians)) * f4) + f2, f3 - (((float) Math.cos(radians)) * f4), this.p);
        }
        numerals(canvas, f2, f3, f4 * 0.71f, f4 * 0.2f, 1);
        hands(canvas, f2, f3, f4);
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
        this.p.setStyle(Paint.Style.FILL);
        this.p.setTextAlign(Paint.Align.LEFT);
        this.p.setTypeface(this.semi);
        this.p.setTextSize(0.52f * fMin);
        this.p.setColor(-47814);
        canvas.drawText(DateFormat.format("MMMM", this.now).toString().toUpperCase(Locale.getDefault()), (0.18f * f5) + f2, (0.06f * f4) + f8, this.p);
        this.p.setTextAlign(Paint.Align.CENTER);
        String[] shortWeekdays = new DateFormatSymbols(Locale.getDefault()).getShortWeekdays();
        float f9 = (0.6f * fMin) + f8 + f7;
        float f10 = 0.42f * fMin;
        this.p.setTextSize(f10);
        this.p.setColor(-7434605);
        int i6 = 0;
        int i7 = 0;
        while (i7 < i3) {
            String str = shortWeekdays[(((firstDayOfWeek - 1) + i7) % 7) + 1];
            canvas.drawText(str.isEmpty() ? "" : str.substring(i6, 1).toUpperCase(Locale.getDefault()), ((i7 + 0.5f) * f5) + f2, f9, this.p);
            i7++;
            i3 = 7;
            i6 = 0;
        }
        this.p.setTextSize(0.46f * fMin);
        float f11 = (-(this.p.descent() + this.p.ascent())) / 2.0f;
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
                this.p.setColor(-47814);
                canvas.drawCircle(f12, f13, f10, this.p);
                this.p.setColor(-1);
                paint = this.p;
                typeface = this.bold;
            } else {
                this.p.setColor(z2 ? -7434605 : -1);
                paint = this.p;
                typeface = this.semi;
            }
            paint.setTypeface(typeface);
            canvas.drawText(String.valueOf(i8), f12, f13 + f11, this.p);
            i8++;
            actualMaximum = i11;
            i2 = 1;
        }
    }

    private void hand(Canvas canvas, float f2, float f3, float f4, float f5, float f6) {
        double radians = Math.toRadians(f4);
        float fSin = (float) Math.sin(radians);
        float f7 = -((float) Math.cos(radians));
        this.p.setColor(-1);
        this.p.setStrokeWidth(0.35f * f6);
        float f8 = fSin * f5;
        float f9 = (f8 * 0.2f) + f2;
        float f10 = f7 * f5;
        float f11 = (0.2f * f10) + f3;
        canvas.drawLine(f2, f3, f9, f11, this.p);
        this.p.setStrokeWidth(f6);
        canvas.drawLine(f9, f11, f2 + f8, f3 + f10, this.p);
    }

    private void hands(Canvas canvas, float f2, float f3, float f4) {
        float f5 = this.now.get(13);
        float f6 = (f5 / 60.0f) + this.now.get(12);
        float f7 = (f6 / 60.0f) + this.now.get(10);
        this.p.setStrokeCap(Paint.Cap.ROUND);
        this.p.setStyle(Paint.Style.STROKE);
        hand(canvas, f2, f3, f7 * 30.0f, f4 * 0.5f, f4 * 0.065f);
        hand(canvas, f2, f3, f6 * 6.0f, f4 * 0.82f, f4 * 0.055f);
        this.p.setColor(-24822);
        float f8 = 0.014f * f4;
        this.p.setStrokeWidth(f8);
        double radians = Math.toRadians(f5 * 6.0f);
        canvas.drawLine(f2 - ((((float) Math.sin(radians)) * f4) * 0.16f), (((float) Math.cos(radians)) * f4 * 0.16f) + f3, (((float) Math.sin(radians)) * f4 * 0.92f) + f2, f3 - ((((float) Math.cos(radians)) * f4) * 0.92f), this.p);
        this.p.setStyle(Paint.Style.FILL);
        canvas.drawCircle(f2, f3, f4 * 0.035f, this.p);
        this.p.setColor(-16777216);
        canvas.drawCircle(f2, f3, f8, this.p);
    }

    private void numerals(Canvas canvas, float f2, float f3, float f4, float f5, int i2) {
        this.p.setStyle(Paint.Style.FILL);
        this.p.setColor(-1);
        this.p.setTypeface(this.semi);
        this.p.setTextSize(f5);
        this.p.setTextAlign(Paint.Align.CENTER);
        float f6 = (-(this.p.descent() + this.p.ascent())) / 2.0f;
        int i3 = i2;
        while (i3 <= 12) {
            double radians = Math.toRadians(i3 * 30);
            canvas.drawText(String.valueOf(i3), (((float) Math.sin(radians)) * f4) + f2, (f3 - (((float) Math.cos(radians)) * f4)) + f6, this.p);
            i3 += i2;
        }
    }
    }
}
