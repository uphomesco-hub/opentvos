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
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;

/** A manual clock display, independent of the existing system Dream/screensaver. */
public class StandByActivity extends Activity {
    private ClockView clock;
    @Override protected void onCreate(Bundle saved) {
        super.onCreate(saved);
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
    private static final class ClockView extends View implements HomeData.Listener {
        private final Handler handler = new Handler(Looper.getMainLooper());
        private final Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final HomeData data;
        private boolean running;
        private final String layout;
        private final Runnable tick = new Runnable() { public void run() { if (!running) return; data.refreshIfStale(); invalidate(); handler.postDelayed(this, 1000); } };
        ClockView(Context c) {
            super(c); data = HomeData.get(c); layout = c.getSharedPreferences("hybrid_ui", 0).getString("standby_layout", "analog");
            setFocusable(true); setContentDescription("StandBy. Press Back or Select to return."); setOnClickListener(v -> ((Activity)c).finish());
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
            c.drawColor(0xff080b13);
            float scale = Math.min(getWidth() / 1920f, getHeight() / 1080f);
            c.save(); c.translate((getWidth() - 1920 * scale) / 2, (getHeight() - 1080 * scale) / 2); c.scale(scale, scale);
            // Slow minute-by-minute movement keeps stationary pixels from sitting on one point indefinitely.
            long minute = System.currentTimeMillis() / 60000;
            c.translate((minute % 5 - 2) * 3, ((minute / 5) % 5 - 2) * 2);
            if ("analog".equals(layout)) analog(c);
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
            text(c, "Back to return", 960, 1000, 22, 0xff626d84, false); c.restore();
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
            float cx = 960, cy = 510, r = 350;
            p.setColor(0xff192235); p.setStyle(Paint.Style.FILL); c.drawCircle(cx,cy,r,p);
            for (int i=0;i<60;i++) {
                double a = Math.toRadians(i*6-90); float inner = r-(i%5==0?37:19);
                p.setColor(i%5==0?0xffe4edff:0xff6e809e); p.setStrokeWidth(i%5==0?6:3);
                c.drawLine(cx+(float)Math.cos(a)*inner,cy+(float)Math.sin(a)*inner,cx+(float)Math.cos(a)*(r-10),cy+(float)Math.sin(a)*(r-10),p);
            }
            Calendar t = Calendar.getInstance(TimeZone.getTimeZone("Asia/Kolkata"));
            hand(c,cx,cy,(t.get(Calendar.HOUR)%12+t.get(Calendar.MINUTE)/60f)*30,195,14,0xfff1f5ff);
            hand(c,cx,cy,(t.get(Calendar.MINUTE)+t.get(Calendar.SECOND)/60f)*6,285,9,0xfff1f5ff);
            hand(c,cx,cy,t.get(Calendar.SECOND)*6,300,3,0xff83b8ff);
            p.setColor(0xff83b8ff); c.drawCircle(cx,cy,14,p);
            text(c,format("h:mm:ss a"),960,923,48,0xffe4edff,true);
            text(c,format("EEE, d MMMM")+" · IST",960,969,26,0xff9fb5d8,false);
        }
        private void hand(Canvas c,float x,float y,float degrees,float length,float width,int color) {
            double a=Math.toRadians(degrees-90); p.setStrokeWidth(width);p.setStrokeCap(Paint.Cap.ROUND);p.setColor(color);
            c.drawLine(x,y,x+(float)Math.cos(a)*length,y+(float)Math.sin(a)*length,p);p.setStrokeCap(Paint.Cap.BUTT);
        }
        private void calendar(Canvas c) {
            text(c,format("MMMM yyyy"),960,175,65,0xffdbe9ff,true);
            String[] days={"SUN","MON","TUE","WED","THU","FRI","SAT"};
            for(int i=0;i<7;i++)text(c,days[i],480+i*160,285,27,0xff8ea5c7,true);
            Calendar now=Calendar.getInstance(TimeZone.getTimeZone("Asia/Kolkata"));
            int today=now.get(Calendar.DAY_OF_MONTH), count=now.getActualMaximum(Calendar.DAY_OF_MONTH);
            now.set(Calendar.DAY_OF_MONTH,1);int first=now.get(Calendar.DAY_OF_WEEK)-1;
            for(int day=1;day<=count;day++) {
                int cell=first+day-1;float x=480+(cell%7)*160,y=390+(cell/7)*105;
                if(day==today){p.setColor(0xff6fa8f6);p.setStyle(Paint.Style.FILL);c.drawCircle(x,y-17,40,p);}
                text(c,Integer.toString(day),x,y,40,day==today?0xff0b1730:0xffdce8fb,day==today);
            }
            text(c,format("h:mm a")+" · IST",960,965,32,0xff9db2d1,false);
        }
    }
}
