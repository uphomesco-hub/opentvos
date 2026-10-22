package io.freemytv;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.provider.Settings;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.*;
import java.util.Calendar;

/** Compact tvOS control layout: a tall StandBy tile, stacked connectivity pills, and round quick controls. */
public final class ControlCentreActivity extends Activity {
    private FrameLayout root;
    private LinearLayout panel;
    private boolean dark, closing, resumed;
    private int focusId, prefsVersion;
    private int d(float v) { return Math.round(v * getResources().getDisplayMetrics().density); }
    private int ink() { return dark ? 0xfff6f6fa : 0xff24242b; }
    private int muted() { return dark ? 0xffc2c4ce : 0xff606470; }

    @Override public void onCreate(Bundle saved) {
        super.onCreate(saved); Ui.init(this);
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);
        getWindow().setWindowAnimations(0); overridePendingTransition(0,0);
        getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_FULLSCREEN | View.SYSTEM_UI_FLAG_HIDE_NAVIGATION | View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY);
        render();
        // tvOS animates the popup, never the full-screen blur behind it.
        panel.setPivotX(d(262)); panel.setPivotY(0); panel.setScaleX(.86f); panel.setScaleY(.86f); panel.setAlpha(0);
        panel.animate().scaleX(1).scaleY(1).alpha(1).setDuration(300)
            .setInterpolator(new android.view.animation.DecelerateInterpolator(2.2f)).start();
    }
    @Override protected void onResume() {
        super.onResume(); resumed=true;
        if(root != null && (prefsVersion != Prefs.version || dark != night())) render();
        if(panel!=null) {
            final int wanted=focusId==0?101:focusId;
            panel.setVisibility(View.VISIBLE);focusId=wanted;
            root.findViewById(wanted).requestFocus();panel.post(this::restoreControlFocus);
        }
    }
    @Override protected void onPause() {
        resumed=false;
        View focused=panel==null?null:panel.findFocus();
        if(focused!=null && focused.getId()!=View.NO_ID) focusId=focused.getId();
        if(panel!=null) { panel.animate().cancel(); panel.setScaleX(1);panel.setScaleY(1);panel.setAlpha(1);panel.setVisibility(View.INVISIBLE); }
        super.onPause();
    }
    @Override public void onWindowFocusChanged(boolean focused) {
        super.onWindowFocusChanged(focused);
        if(focused && panel!=null) panel.post(this::restoreControlFocus);
    }
    private void restoreControlFocus() {
        if(!resumed || closing || panel==null || panel.getVisibility()!=View.VISIBLE) return;
        View focused=panel.findFocus();
        if(focused!=null && focused.getId()==focusId && focused.isShown() && focused.isFocusable()) return;
        View wanted=root.findViewById(focusId==0?101:focusId);
        if(wanted==null || !wanted.isShown() || !wanted.isFocusable()) wanted=root.findViewById(101);
        wanted.requestFocus();
    }
    @Override protected void onNewIntent(Intent intent) { super.onNewIntent(intent); setIntent(intent);closing=false;render(); }
    private boolean night() { return HomeData.get(this).isNight(System.currentTimeMillis()); }
    private TextView label(String s, int sp, boolean bold) {
        TextView t=new TextView(this); t.setText(s); t.setTextSize(sp); t.setTextColor(ink()); t.setIncludeFontPadding(false);
        t.setTypeface(bold?Ui.semibold:Ui.regular); return t;
    }
    private GradientDrawable glass(boolean focused, boolean selected, boolean round) {
        GradientDrawable g=new GradientDrawable(GradientDrawable.Orientation.TL_BR,
            focused || selected ? new int[]{0xfffafaff,0xffe7e9f1}
            : dark ? new int[]{0xc548484e,0xda24242a} : new int[]{0xe6f8f9ff,0xe0cdd2df});
        if(round)g.setShape(GradientDrawable.OVAL);else g.setCornerRadius(d(26));
        g.setStroke(d(1),focused?0xffffffff:dark?0x55ffffff:0xb3ffffff); return g;
    }
    private void tint(View view, int color) {
        if(view instanceof ImageView) { if(!"profile-image".equals(view.getTag())) ((ImageView)view).setColorFilter(color); }
        else if(view instanceof TextView)((TextView)view).setTextColor(color);
        else if(view instanceof android.view.ViewGroup) {
            android.view.ViewGroup group=(android.view.ViewGroup)view;
            for(int i=0;i<group.getChildCount();i++)tint(group.getChildAt(i),color);
        }
    }
    private void button(View v, int id, boolean selected, boolean round, String description, Runnable action) {
        v.setId(id);v.setFocusable(true);v.setClickable(true);v.setContentDescription(description);
        v.setBackground(glass(false,selected,round)); if(selected)tint(v,0xff202128);
        v.setOnClickListener(w->action.run());
        v.setOnFocusChangeListener((w,focused)->{
            if(focused)focusId=id;
            w.setBackground(glass(focused,selected,round));tint(w,focused||selected?0xff202128:ink());
            w.animate().scaleX(focused?(round?1.12f:1.05f):1).scaleY(focused?(round?1.12f:1.05f):1).setDuration(140).start();w.setElevation(focused?d(8):0);
        });
    }
    private ImageView icon(int resource, int size) {
        ImageView i=new ImageView(this); i.setImageResource(resource);i.setColorFilter(ink());
        i.setLayoutParams(new LinearLayout.LayoutParams(d(size),d(size)));return i;
    }
    private void render() {
        dark=night();prefsVersion=Prefs.version;root=new FrameLayout(this);root.setOnClickListener(v->close());root.setFocusable(false);root.setFocusableInTouchMode(false);root.setClipChildren(false);root.setClipToPadding(false);
        android.graphics.Bitmap ambient=HomeActivity.controlBackground(dark);
        if(ambient!=null && !ambient.isRecycled()) {
            android.graphics.drawable.BitmapDrawable backdrop=new android.graphics.drawable.BitmapDrawable(getResources(),ambient);
            backdrop.setGravity(Gravity.FILL);backdrop.setFilterBitmap(true);root.setBackground(backdrop);
        } else root.setBackgroundColor(dark?0xff161619:0xffececf1);
        panel=new LinearLayout(this);panel.setOrientation(LinearLayout.VERTICAL);panel.setPadding(d(6),d(6),d(6),d(6));
        panel.setClipChildren(false);panel.setClipToPadding(false);panel.setClickable(true);panel.setFocusable(false);panel.setFocusableInTouchMode(false);
        FrameLayout.LayoutParams place=new FrameLayout.LayoutParams(d(262),-2,Gravity.TOP|Gravity.RIGHT);
        place.setMargins(d(24),d(18),d(39),d(18));root.addView(panel,place);
        LinearLayout header=new LinearLayout(this);header.setGravity(Gravity.CENTER_VERTICAL);
        TextClock clock=new TextClock(this);clock.setTextSize(15);clock.setTextColor(ink());clock.setFormat12Hour("h:mm a");clock.setFormat24Hour("H:mm");
        clock.setTimeZone("Asia/Kolkata");clock.setTypeface(Typeface.create("sans-serif",Typeface.BOLD));clock.setPadding(d(6),0,0,0);
        header.addView(clock,new LinearLayout.LayoutParams(0,-2,1));
        ImageView controls=icon(R.drawable.hybrid_ic_controls,18);FrameLayout badge=new FrameLayout(this);badge.setBackground(glass(false,false,true));
        FrameLayout.LayoutParams bp=new FrameLayout.LayoutParams(d(18),d(18),Gravity.CENTER);badge.addView(controls,bp);header.addView(badge,new LinearLayout.LayoutParams(d(30),d(30)));
        String name=Profile.name(this);
        ImageView avatar=new ImageView(this);avatar.setTag("profile-image");avatar.setImageBitmap(Profile.avatar(this,d(30)));avatar.setPadding(d(2),d(2),d(2),d(2));
        button(avatar,108,false,true,"Profile: "+name,()->settings("profile"));LinearLayout.LayoutParams ap=new LinearLayout.LayoutParams(d(34),d(34));ap.leftMargin=d(8);header.addView(avatar,ap);
        panel.addView(header,new LinearLayout.LayoutParams(-1,d(40)));
        LinearLayout top=new LinearLayout(this);top.setClipChildren(false);LinearLayout.LayoutParams tp=new LinearLayout.LayoutParams(-1,d(124));tp.topMargin=d(12);panel.addView(top,tp);
        LinearLayout standby=new LinearLayout(this);standby.setOrientation(LinearLayout.VERTICAL);standby.setGravity(Gravity.CENTER);standby.addView(icon(R.drawable.hybrid_ic_standby,44));
        TextView st=label("StandBy",12,true);LinearLayout.LayoutParams sl=new LinearLayout.LayoutParams(-2,-2);sl.topMargin=d(10);standby.addView(st,sl);
        button(standby,101,false,false,"StandBy",()->startActivity(new Intent(this,StandByActivity.class)));top.addView(standby,new LinearLayout.LayoutParams(0,-1,1));
        LinearLayout connections=new LinearLayout(this);connections.setOrientation(LinearLayout.VERTICAL);connections.setClipChildren(false);LinearLayout.LayoutParams cp=new LinearLayout.LayoutParams(0,-1,1);cp.leftMargin=d(8);top.addView(connections,cp);
        View wifi=pill(102,R.drawable.hybrid_ic_wifi,"Wi-Fi","Network",()->system(Settings.ACTION_WIFI_SETTINGS));connections.addView(wifi,new LinearLayout.LayoutParams(-1,0,1));
        View bluetooth=pill(103,R.drawable.hybrid_ic_bluetooth,"Bluetooth","Accessories",()->system(Settings.ACTION_BLUETOOTH_SETTINGS));LinearLayout.LayoutParams bt=new LinearLayout.LayoutParams(-1,0,1);bt.topMargin=d(8);connections.addView(bluetooth,bt);
        LinearLayout middle=new LinearLayout(this);middle.setClipChildren(false);LinearLayout.LayoutParams mp=new LinearLayout.LayoutParams(-1,d(58));mp.topMargin=d(8);panel.addView(middle,mp);
        middle.addView(pill(104,R.drawable.hybrid_ic_input,"Inputs","",()->system("android.settings.TV_INPUT_SETTINGS")),new LinearLayout.LayoutParams(0,-1,1));
        LinearLayout.LayoutParams sp=new LinearLayout.LayoutParams(0,-1,1);sp.leftMargin=d(8);middle.addView(pill(105,R.drawable.hybrid_ic_settings,"Settings","",()->settings("")),sp);
        LinearLayout quick=new LinearLayout(this);quick.setClipChildren(false);quick.setGravity(Gravity.CENTER);LinearLayout.LayoutParams qp=new LinearLayout.LayoutParams(-1,-2);qp.topMargin=d(10);panel.addView(quick,qp);
        round(quick,106,R.drawable.hybrid_ic_darkmode,"Dark",dark,()->{Prefs.setTheme(dark?"light":"dark");render();});
        round(quick,107,R.drawable.hybrid_ic_palette,"Auto","auto".equals(Prefs.theme()),()->{Prefs.setTheme("auto");render();});
        round(quick,109,R.drawable.hybrid_ic_backdrop,"Saver",false,()->startActivity(new Intent(this,SettingsActivity.class).putExtra("screensaver",true)));
        round(quick,110,R.drawable.hybrid_ic_display,"Display",false,()->system(Settings.ACTION_DISPLAY_SETTINGS));
        // Explicit D-pad links keep the unequal two-column grid predictable on Fire TV.
        standby.setNextFocusRightId(102);standby.setNextFocusDownId(104);standby.setNextFocusUpId(108);
        wifi.setNextFocusLeftId(101);wifi.setNextFocusDownId(103);wifi.setNextFocusUpId(108);
        bluetooth.setNextFocusLeftId(101);bluetooth.setNextFocusDownId(105);bluetooth.setNextFocusUpId(102);
        root.findViewById(104).setNextFocusDownId(106);root.findViewById(105).setNextFocusDownId(109);
        root.findViewById(104).setNextFocusUpId(101);root.findViewById(105).setNextFocusUpId(103);
        // Every edge has an explicit destination; focus cannot fall onto the background.
        int[] rounds={106,107,109,110};
        for(int i=0;i<rounds.length;i++) {
            View v=root.findViewById(rounds[i]);v.setNextFocusLeftId(rounds[Math.max(0,i-1)]);v.setNextFocusRightId(rounds[Math.min(rounds.length-1,i+1)]);v.setNextFocusDownId(rounds[i]);
        }
        root.findViewById(104).setNextFocusLeftId(104);root.findViewById(104).setNextFocusRightId(105);
        root.findViewById(105).setNextFocusLeftId(104);root.findViewById(105).setNextFocusRightId(105);
        wifi.setNextFocusRightId(102);bluetooth.setNextFocusRightId(103);standby.setNextFocusLeftId(101);
        avatar.setNextFocusLeftId(108);avatar.setNextFocusRightId(108);avatar.setNextFocusUpId(108);avatar.setNextFocusDownId(101);
        final int wanted=focusId==0?101:focusId;
        setContentView(root);
        // setContentView may automatically focus the first child (the avatar); keep the intended control instead.
        focusId=wanted;root.findViewById(wanted).requestFocus();panel.post(this::restoreControlFocus);
    }
    private View pill(int id,int resource,String name,String status,Runnable action) {
        LinearLayout v=new LinearLayout(this);v.setGravity(Gravity.CENTER_VERTICAL);v.setPadding(d(14),0,d(10),0);v.addView(icon(resource,22));
        LinearLayout words=new LinearLayout(this);words.setOrientation(LinearLayout.VERTICAL);LinearLayout.LayoutParams wp=new LinearLayout.LayoutParams(0,-2,1);wp.leftMargin=d(10);v.addView(words,wp);
        TextView title=label(name,12,true);title.setSingleLine(true);words.addView(title);
        if(!status.isEmpty()){TextView state=label(status,10,false);state.setTextColor(muted());state.setSingleLine(true);words.addView(state);}
        button(v,id,false,false,name,action);return v;
    }
    private void round(LinearLayout parent,int id,int resource,String name,boolean selected,Runnable action) {
        LinearLayout cell=new LinearLayout(this);cell.setOrientation(LinearLayout.VERTICAL);cell.setGravity(Gravity.CENTER);cell.setClipChildren(false);cell.setClipToPadding(false);cell.setPadding(0,d(4),0,0);
        FrameLayout hit=new FrameLayout(this);ImageView image=icon(resource,22);hit.addView(image,new FrameLayout.LayoutParams(d(22),d(22),Gravity.CENTER));
        button(hit,id,selected,true,name+(selected?", On":""),action);cell.addView(hit,new LinearLayout.LayoutParams(d(50),d(50)));
        TextView caption=label(name,10,false);caption.setGravity(Gravity.CENTER);caption.setPadding(0,d(6),0,0);cell.addView(caption,new LinearLayout.LayoutParams(-1,-2));parent.addView(cell,new LinearLayout.LayoutParams(0,-2,1));
        hit.setNextFocusUpId(id<=107?104:105);
    }
    private void settings(String page) {startActivity(new Intent(this,SettingsActivity.class).putExtra("page",page));}
    private void system(String action) {try{startActivity(new Intent(action));}catch(Exception ignored){startActivity(FireTv.settingsIntent());}}
    private void close(){if(closing)return;closing=true;panel.animate().cancel();panel.animate().scaleX(.92f).scaleY(.92f).alpha(0).setDuration(130).withEndAction(()->{finish();overridePendingTransition(0,0);}).start();}
    @Override public void onBackPressed(){close();}
    @Override public boolean dispatchKeyEvent(KeyEvent e){if(e.getAction()==KeyEvent.ACTION_DOWN && e.getKeyCode()>=KeyEvent.KEYCODE_DPAD_UP && e.getKeyCode()<=KeyEvent.KEYCODE_DPAD_CENTER)restoreControlFocus();if(e.getKeyCode()==KeyEvent.KEYCODE_MENU){if(e.getAction()==KeyEvent.ACTION_UP)close();return true;}return super.dispatchKeyEvent(e);}
}
