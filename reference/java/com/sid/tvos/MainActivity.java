package com.sid.tvos;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ArgbEvaluator;
import android.animation.LayoutTransition;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.AlertDialog;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.TransitionDrawable;
import android.media.tv.TvContract;
import android.media.tv.TvInputInfo;
import android.media.tv.TvInputManager;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.AndroidRuntimeException;
import android.util.Log;
import android.util.LruCache;
import android.util.Property;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.Choreographer;
import android.view.KeyEvent;
import android.view.PixelCopy;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LayoutAnimationController;
import android.view.animation.OvershootInterpolator;
import android.view.animation.PathInterpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ScrollView;
import android.widget.TextClock;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.sid.tvos.MainActivity;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Random;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import t.C0071l;
import t.C0072m;
import t.C0076q;
import t.C0079u;
import t.RunnableC0061b;
import t.RunnableC0062c;
import t.RunnableC0063d;
import t.RunnableC0065f;
import t.RunnableC0068i;
import t.RunnableC0069j;
import t.RunnableC0073n;
import t.RunnableC0074o;
import t.RunnableC0075p;
import t.RunnableC0077s;
import t.RunnableC0078t;
import t.RunnableC0081w;
import t.RunnableC0082x;
import t.RunnableC0084z;
import t.ViewOnClickListenerC0067h;
import t.ViewOnFocusChangeListenerC0083y;
import t.ViewOnKeyListenerC0064e;

/* JADX INFO: loaded from: classes.dex */
public class MainActivity extends Activity implements AppAdapter.TileListener {
    static int COLUMNS = 5;
    private static int lastFocused;
    private static String lastFocusedKey;
    static MainActivity live;
    private static String openFolderName;
    private static boolean reopenAppearance;
    private AppAdapter adapter;
    private int backdropGen;
    private boolean ccOpening;
    private PopupWindow controlCenter;
    private Runnable cwBackdropRun;
    private int cwBottomPx;
    private Map<String, List<WatchNext.Item>> cwData;
    private long cwFadeDelay;
    private int cwGen;
    private View cwInfo;
    private List<WatchNext.Item> cwItems;
    private View cwProgress;
    private boolean cwReleasing;
    private LinearLayout cwRow;
    private HorizontalScrollView cwScroll;
    private int cwSelected;
    private TextView cwSubtitle;
    private TextView cwTitle;
    private String cwUploadUrl;
    private boolean darkApplying;
    private boolean darkPending;
    private float density;
    private ImageView dim;
    private DockDecoration dockBand;
    private int dockTopPx;
    private AppAdapter folderAdapter;
    private ImageView folderBackdrop;
    private GlassView folderGlass;
    private boolean folderGlassShown;
    private RecyclerView folderGridView;
    private TextView folderName;
    private FrameLayout folderOverlay;
    private View folderPanel;
    private boolean fromStandByPreview;
    private boolean frostFade;
    private Bitmap fullFrosted;
    private boolean fullScreen;
    private GlassView glass;
    private ValueAnimator glassGlide;
    private boolean glassShown;
    private float glassTargetX;
    private float glassTargetY;
    private int glideDy;
    private RecyclerView grid;
    private boolean homeToFavourites;
    private long lastMoveAt;
    private long lastShelfSig;
    private Bitmap launchArt;
    private ImageView launchCard;
    private Rect launchFrom;
    private String launchKey;
    private boolean leftForApp;
    private String liveTvPkg;
    private Boolean lowRam;
    private TextView moveHint;
    private String movingKey;
    private Bitmap recentShadowBmp;
    private FrameLayout recentsOverlay;
    private LinearLayout recentsRow;
    private HorizontalScrollView recentsScroll;
    private boolean resumed;
    private FrameLayout root;
    private boolean rootCovered;
    private SettingsPanel settingsPanel;
    private ImageView shelf;
    private ImageView shelf2;
    private Runnable shelfBack;
    private Bitmap shelfBitmap;
    private FrameLayout shelfGroup;
    private View shelfScrim;
    private boolean shelfShown;
    private p.f springX;
    private p.f springY;
    private View standByReturnFocus;
    private ImageView statusAvatar;
    private LiquidGlassDrawable statusGlass;
    private View statusPill;
    private long stepFadeMs;
    private ViewGroup topBar;
    private boolean wasPaused;
    private String weatherCity;
    private LiquidGlassDrawable weatherGlass;
    private boolean weatherLoaded;
    private LinearLayout weatherPill;
    private int weatherTemp;
    private View wiggling;
    private static final Interpolator CALM = new DecelerateInterpolator(2.2f);
    private static final Interpolator PAGE = new PathInterpolator(0.3f, 0.0f, 0.15f, 1.0f);
    private static final ExecutorService FROST = Executors.newSingleThreadExecutor();
    private static final ExecutorService LAUNCH = Executors.newSingleThreadExecutor();
    private static final int[] STATUS_BUTTONS = {R.id.btnWifi, R.id.btnBluetooth, R.id.btnAssistant, R.id.btnSettings};
    private static final String[] STATUS_BUTTON_KEYS = {"wifi", "bluetooth", "assistant", "settings"};
    private static final ExecutorService DARK = Executors.newSingleThreadExecutor();
    private int shelfPosition = -1;
    private int cwPosition = -1;
    private LruCache<String, Bitmap> cwBackdrops = new LruCache<>(3);
    private final LruCache<Bitmap, Bitmap> frosted = new LruCache<>(4);
    private final Set<Bitmap> frostedSet = Collections.newSetFromMap(new WeakHashMap());
    private String wifiLabel = "";
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final ConnectivityManager.NetworkCallback networkCallback = new AnonymousClass1();
    private final Runnable minuteTick = new Runnable() { // from class: com.sid.tvos.MainActivity.2
        @Override // java.lang.Runnable
        public void run() {
            MainActivity.this.updateWifiLabel();
            MainActivity mainActivity = MainActivity.this;
            Weather.load(mainActivity, new C0015p(mainActivity, 19));
            if (DarkSchedule.apply(MainActivity.this)) {
                MainActivity.this.applyDark();
            }
            MainActivity.this.handler.postDelayed(this, 60000L);
        }
    };
    private final AppAdapter.TileListener folderTiles = new AppAdapter.TileListener() { // from class: com.sid.tvos.MainActivity.7
        @Override // com.sid.tvos.AppAdapter.TileListener
        public void onFolderOpen(AppAdapter.Entry entry) {
        }

        @Override // com.sid.tvos.AppAdapter.TileListener
        public void onLaunch(AppAdapter.Entry entry, View view) {
            MainActivity.this.onLaunch(entry, view);
        }

        @Override // com.sid.tvos.AppAdapter.TileListener
        public void onTileFocused(int i2, View view) {
            Rect rect = new Rect(0, 0, view.getWidth(), view.getHeight());
            MainActivity.this.folderOverlay.offsetDescendantRectToMyCoords(view, rect);
            float f2 = MainActivity.this.density * 30.0f * 2.0f;
            int width = (int) ((view.getWidth() * 1.13f) + f2);
            int height = (int) ((view.getHeight() * 1.13f) + f2);
            ViewGroup.LayoutParams layoutParams = MainActivity.this.folderGlass.getLayoutParams();
            if (layoutParams.width != width || layoutParams.height != height) {
                layoutParams.width = width;
                layoutParams.height = height;
                MainActivity.this.folderGlass.setLayoutParams(layoutParams);
                MainActivity.this.folderGlass.setRadius(MainActivity.this.density * 16.0f * 1.13f);
            }
            float fExactCenterX = rect.exactCenterX() - (width / 2.0f);
            float fExactCenterY = rect.exactCenterY() - (height / 2.0f);
            MainActivity.this.folderGlass.setTranslationX(fExactCenterX);
            MainActivity.this.folderGlass.setTranslationY(fExactCenterY);
            MainActivity mainActivity = MainActivity.this;
            mainActivity.popIn(mainActivity.folderGlass, !MainActivity.this.folderGlassShown, false);
            MainActivity.this.folderGlassShown = true;
            View view2 = (View) view.getParent();
            MainActivity.this.folderGridView.requestChildRectangleOnScreen(view2, new Rect(0, 0, view2.getWidth(), view2.getHeight()), false);
        }

        @Override // com.sid.tvos.AppAdapter.TileListener
        public boolean onTileHorizontalKey(int i2, int i3) {
            return MainActivity.atRowEnd(i2, i3, 4, MainActivity.this.folderAdapter.getItemCount());
        }

        @Override // com.sid.tvos.AppAdapter.TileListener
        public void onTileLongPress(AppAdapter.Entry entry, View view) {
            MainActivity.this.onTileLongPress(entry, view);
        }

        @Override // com.sid.tvos.AppAdapter.TileListener
        public boolean onTileVerticalKey(int i2, int i3) {
            int i4 = i3 == 19 ? i2 - 4 : i2 + 4;
            int itemCount = MainActivity.this.folderAdapter.getItemCount();
            if (i3 == 20 && i4 >= itemCount) {
                int i5 = itemCount - 1;
                i4 = i2 >= (i5 / 4) * 4 ? -1 : i5;
            }
            if (i4 < 0) {
                return true;
            }
            androidx.recyclerview.widget.o oVarFindViewHolderForAdapterPosition = MainActivity.this.folderGridView.findViewHolderForAdapterPosition(i4);
            if (oVarFindViewHolderForAdapterPosition != null) {
                oVarFindViewHolderForAdapterPosition.itemView.findViewById(R.id.card).requestFocus();
            } else {
                MainActivity.this.folderGridView.smoothScrollToPosition(i4);
            }
            return true;
        }
    };
    private long glideMs = 340;
    private Interpolator glideCurve = CALM;
    private final Map<Bitmap, Integer> labelColors = new WeakHashMap();
    private final LruCache<Bitmap, Bitmap[]> frostSteps = new LruCache<>(3);
    private final Runnable frostLater = new RunnableC0062c(this, 24);
    private final Runnable cwRenderLater = new RunnableC0062c(this, 25);
    private final Runnable prewarmCw = new RunnableC0062c(this, 26);
    private final Set<Bitmap> cwArt = Collections.newSetFromMap(new WeakHashMap());
    private String launchArtKey = "";
    private final Runnable prepareLaunch = new RunnableC0062c(this, 27);
    private final Runnable cwColourApply = new RunnableC0062c(this, 28);
    private final Map<Bitmap, Bitmap> frostSource = new WeakHashMap();
    private final SparseArray<Bitmap> badgeCache = new SparseArray<>();
    private String weatherLine = "";
    private int fullFromCard = -1;
    private final List<WeakReference<PopupWindow>> popups = new ArrayList();

    /* JADX INFO: renamed from: com.sid.tvos.MainActivity$1, reason: invalid class name */
    public class AnonymousClass1 extends ConnectivityManager.NetworkCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f188a = 0;

        public AnonymousClass1() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            MainActivity.this.handler.post(new S(MainActivity.this, 3));
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            MainActivity.this.handler.post(new S(MainActivity.this, 3));
        }
    }

    public interface IntChoice {
        void pick(int i2);
    }

    public interface IntLabel {
        String text(int i2);
    }

    public interface NameCallback {
        void onName(String str);
    }

    public interface PageBuilder {
        void build(SettingsPanel settingsPanel);
    }

    public final class SettingsPanel {
        private boolean closing;
        private boolean fadedIn;
        private LiquidGlassDrawable glassBg;
        private FrameLayout panel;
        private Runnable pendingFadeIn;
        private LinearLayout rows;
        private ScrollView scroll;
        private TextView titleView;
        private final List<Page> stack = new ArrayList();
        private final Runnable glassRun = new S(this, 1);

        public final class Page {
            final PageBuilder builder;
            int focus = -1;
            Runnable onBack;
            int scrollY;
            final String title;

            public Page(String str, PageBuilder pageBuilder) {
                this.title = str;
                this.builder = pageBuilder;
            }
        }

        public SettingsPanel() {
        }

        private void build() {
            this.panel = new FrameLayout(MainActivity.this);
            LiquidGlassDrawable liquidGlassDrawable = new LiquidGlassDrawable(MainActivity.this.density, MainActivity.this.density * 30.0f);
            this.glassBg = liquidGlassDrawable;
            liquidGlassDrawable.setLiquid(Appearance.liquid(MainActivity.this));
            this.panel.setBackground(this.glassBg);
            this.panel.setElevation(MainActivity.this.density * 24.0f);
            this.panel.setOutlineProvider(new ViewOutlineProvider() { // from class: com.sid.tvos.MainActivity.SettingsPanel.1
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    Corners.set(outline, view, MainActivity.this.density * 30.0f);
                }
            });
            this.panel.setClipToOutline(true);
            this.panel.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.sid.tvos.b0
                @Override // android.view.View.OnLayoutChangeListener
                public final void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                    this.f256a.lambda$build$5(view, i2, i3, i4, i5, i6, i7, i8, i9);
                }
            });
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) Math.min(MainActivity.this.density * 440.0f, MainActivity.this.root.getWidth() * 0.46f), -1, 8388613);
            int i2 = (int) (MainActivity.this.density * 24.0f);
            layoutParams.setMargins(i2, i2, i2, i2);
            LinearLayout linearLayout = new LinearLayout(MainActivity.this);
            linearLayout.setOrientation(1);
            TextView textView = new TextView(MainActivity.this);
            this.titleView = textView;
            textView.setTextSize(22.0f);
            this.titleView.setTextColor(-1);
            this.titleView.setGravity(17);
            this.titleView.setTypeface(e.k.b(MainActivity.this, R.font.inter_semibold));
            this.titleView.setPadding(i2, (int) (MainActivity.this.density * 26.0f), i2, (int) (MainActivity.this.density * 14.0f));
            linearLayout.addView(this.titleView);
            ScrollView scrollView = new ScrollView(MainActivity.this);
            this.scroll = scrollView;
            scrollView.setVerticalScrollBarEnabled(false);
            this.scroll.setOverScrollMode(2);
            this.scroll.setClipToPadding(false);
            this.scroll.setPadding((int) (MainActivity.this.density * 14.0f), 0, (int) (MainActivity.this.density * 14.0f), (int) (MainActivity.this.density * 20.0f));
            LinearLayout linearLayout2 = new LinearLayout(MainActivity.this);
            this.rows = linearLayout2;
            linearLayout2.setOrientation(1);
            this.scroll.addView(this.rows, new FrameLayout.LayoutParams(-1, -2));
            linearLayout.addView(this.scroll, new LinearLayout.LayoutParams(-1, 0, 1.0f));
            this.panel.addView(linearLayout);
            MainActivity.this.root.addView(this.panel, layoutParams);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void fadeIn() {
            FrameLayout frameLayout;
            if (this.fadedIn || this.closing || (frameLayout = this.panel) == null) {
                return;
            }
            this.fadedIn = true;
            this.pendingFadeIn = null;
            frameLayout.animate().alpha(1.0f).setDuration(280L).setInterpolator(new DecelerateInterpolator(1.5f)).withLayer().start();
        }

        private View firstFocusable(View view) {
            if (view.isFocusable() && view.getVisibility() == 0) {
                return view;
            }
            if (!(view instanceof ViewGroup)) {
                return null;
            }
            ArrayList<View> arrayList = new ArrayList<>();
            view.addFocusables(arrayList, 130);
            for (View view2 : arrayList) {
                if (Boolean.TRUE.equals(view2.getTag(R.id.selected))) {
                    return view2;
                }
            }
            if (arrayList.isEmpty()) {
                return null;
            }
            return arrayList.get(0);
        }

        private View firstFocusableRow(int i2, int i3) {
            while (i2 >= 0 && i2 < this.rows.getChildCount()) {
                View viewFirstFocusable = firstFocusable(this.rows.getChildAt(i2));
                if (viewFirstFocusable != null) {
                    return viewFirstFocusable;
                }
                i2 += i3;
            }
            return null;
        }

        private int focusedIndex() {
            View viewFindFocus = this.rows.findFocus();
            while (viewFindFocus != null && viewFindFocus.getParent() != this.rows) {
                viewFindFocus = viewFindFocus.getParent() instanceof View ? (View) viewFindFocus.getParent() : null;
            }
            if (viewFindFocus == null) {
                return -1;
            }
            return this.rows.indexOfChild(viewFindFocus);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$avatarView$22(GradientDrawable gradientDrawable, int i2, boolean z2, View view, boolean z3) {
            int i3;
            view.animate().scaleX(z3 ? 1.15f : 1.0f).scaleY(z3 ? 1.15f : 1.0f).setDuration(200L).setInterpolator(z3 ? new OvershootInterpolator(1.4f) : new DecelerateInterpolator()).start();
            if (z3) {
                i3 = -1;
            } else {
                i3 = z2 ? -1275068417 : 16777215;
            }
            gradientDrawable.setStroke(i2, i3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$avatarView$23(Runnable runnable, View view) {
            runnable.run();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$build$4() {
            refreshGlass(this.pendingFadeIn);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$build$5(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            if (i4 - i2 == i8 - i6 && i5 - i3 == i9 - i7) {
                return;
            }
            view.post(new S(this, 2));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$choices$13(boolean[] zArr, Runnable[] runnableArr, IntChoice intChoice, int[] iArr, int i2, IntChoice intChoice2, SettingsPanel settingsPanel) {
            zArr[0] = true;
            if (runnableArr[0] != null) {
                MainActivity.this.handler.removeCallbacks(runnableArr[0]);
            }
            if (intChoice != null && iArr[0] != i2) {
                intChoice.pick(i2);
            }
            if (intChoice2 != null) {
                intChoice2.pick(i2);
            }
            settingsPanel.back();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$choices$14(int[] iArr, int i2, IntChoice intChoice, SettingsPanel settingsPanel) {
            iArr[0] = i2;
            intChoice.pick(i2);
            settingsPanel.glassSoon();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$choices$15(int[] iArr, int i2, Runnable[] runnableArr, IntChoice intChoice, SettingsPanel settingsPanel, View view, boolean z2) {
            if (!z2 || iArr[0] == i2) {
                return;
            }
            if (runnableArr[0] != null) {
                MainActivity.this.handler.removeCallbacks(runnableArr[0]);
            }
            runnableArr[0] = new Y(iArr, i2, intChoice, settingsPanel);
            MainActivity.this.handler.postDelayed(runnableArr[0], 140L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$choices$16(Runnable[] runnableArr, boolean[] zArr, IntChoice intChoice, int[] iArr, int i2, SettingsPanel settingsPanel) {
            if (runnableArr[0] != null) {
                MainActivity.this.handler.removeCallbacks(runnableArr[0]);
            }
            if (zArr[0] || intChoice == null || iArr[0] == i2) {
                return;
            }
            intChoice.pick(i2);
            settingsPanel.glassSoon();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0 */
        /* JADX WARN: Type inference failed for: r1v1, types: [boolean, int] */
        /* JADX WARN: Type inference failed for: r1v4 */
        public /* synthetic */ void lambda$choices$17(final int i2, String[] strArr, final IntChoice intChoice, final IntChoice intChoice2, final SettingsPanel settingsPanel) {
            ?? r1 = 0;
            final boolean[] zArr = {false};
            final int[] iArr = {i2};
            String str = null;
            Runnable[] runnableArr = {null};
            int i3 = 0;
            while (i3 < strArr.length) {
                View viewRow = settingsPanel.row(r1, strArr[i3], i3 == i2 ? "✓" : str, r1);
                final Runnable[] runnableArr2 = runnableArr;
                final int i4 = i3;
                final int i5 = i3;
                final Runnable[] runnableArr3 = runnableArr;
                settingsPanel.wire(viewRow, viewRow, new Runnable() { // from class: com.sid.tvos.V
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f220a.lambda$choices$13(zArr, runnableArr2, intChoice, iArr, i4, intChoice2, settingsPanel);
                    }
                });
                if (intChoice != null) {
                    viewRow.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.sid.tvos.W
                        @Override // android.view.View.OnFocusChangeListener
                        public final void onFocusChange(View view, boolean z2) {
                            this.f228a.lambda$choices$15(iArr, i5, runnableArr3, intChoice, settingsPanel, view, z2);
                        }
                    });
                }
                i3 = i5 + 1;
                runnableArr = runnableArr3;
                r1 = 0;
                str = null;
            }
            final Runnable[] runnableArr4 = runnableArr;
            Page pVar = settingsPanel.top();
            pVar.focus = i2;
            pVar.onBack = new Runnable() { // from class: com.sid.tvos.X
                @Override // java.lang.Runnable
                public final void run() {
                    this.f234a.lambda$choices$16(runnableArr4, zArr, intChoice, iArr, i2, settingsPanel);
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$choices$18(String str, final int i2, final String[] strArr, final IntChoice intChoice, final IntChoice intChoice2) {
            lambda$nav$10(str, new PageBuilder() { // from class: com.sid.tvos.U
                @Override // com.sid.tvos.MainActivity.PageBuilder
                public final void build(MainActivity.SettingsPanel settingsPanel) {
                    this.lambda$choices$17(i2, strArr, intChoice, intChoice2, settingsPanel);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$closeThen$6(View view) {
            MainActivity.this.root.removeView(view);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$refreshGlass$0(Bitmap bitmap, Runnable runnable) {
            if (this.closing || MainActivity.this.settingsPanel != this) {
                return;
            }
            if (bitmap != null) {
                this.glassBg.setBackdrop(bitmap, runnable != null ? 0L : 260L);
            }
            if (runnable != null) {
                runnable.run();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$refreshGlass$1(Bitmap bitmap, int i2, float f2, int i3, int i4, int i5, int i6, int i7, Runnable runnable) {
            Bitmap bitmapSoften = Blur.soften(bitmap, i2, f2);
            int iMax = Math.max(0, i3 / i4);
            int iMax2 = Math.max(0, i5 / i4);
            int iMin = Math.min(bitmapSoften.getWidth() - iMax, Math.max(1, i6 / i4));
            int iMin2 = Math.min(bitmapSoften.getHeight() - iMax2, Math.max(1, i7 / i4));
            Bitmap bitmapCreateBitmap = (iMin <= 0 || iMin2 <= 0) ? null : Bitmap.createBitmap(bitmapSoften, iMax, iMax2, iMin, iMin2);
            if (bitmapCreateBitmap != null) {
                bitmapCreateBitmap.prepareToDraw();
            }
            MainActivity.this.handler.post(new RunnableC0012m(this, bitmapCreateBitmap, runnable, 3));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$refreshGlass$2(final int i2, final float f2, final int i3, final int i4, final int i5, final int i6, final int i7, final Runnable runnable, final Bitmap bitmap) {
            MainActivity.FROST.execute(new Runnable() { // from class: com.sid.tvos.P
                @Override // java.lang.Runnable
                public final void run() {
                    this.lambda$refreshGlass$1(bitmap, i2, f2, i3, i4, i5, i6, i7, runnable);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$refreshGlass$3(Images.Callback callback, Bitmap bitmap, int i2, int i3) {
            if (i3 != 0) {
                bitmap = Blur.capture(MainActivity.this.root, i2);
            }
            callback.onImage(bitmap);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$render$7(int i2, int i3) {
            this.scroll.scrollTo(0, i2);
            View viewFirstFocusable = (i3 < 0 || i3 >= this.rows.getChildCount()) ? null : firstFocusable(this.rows.getChildAt(i3));
            if (viewFirstFocusable == null) {
                viewFirstFocusable = firstFocusableRow(0, 1);
            }
            if (viewFirstFocusable != null) {
                viewFirstFocusable.requestFocus();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$slider$19(TextView textView, IntLabel intLabel, int[] iArr, TrackColours trackColours, GradientDrawable gradientDrawable, View view, FrameLayout frameLayout, int i2, int i3) {
            String string;
            if (intLabel != null) {
                string = intLabel.text(iArr[0]);
            } else {
                int i4 = iArr[0];
                string = i4 == 0 ? MainActivity.this.getString(R.string.state_off) : String.valueOf(i4);
            }
            textView.setText(string);
            if (trackColours == null) {
                view.getLayoutParams().width = (int) ((frameLayout.getWidth() * iArr[0]) / i3);
                view.requestLayout();
            } else {
                gradientDrawable.setOrientation(GradientDrawable.Orientation.LEFT_RIGHT);
                gradientDrawable.setColors(trackColours.colours());
                view.setTranslationX(((frameLayout.getWidth() - i2) * iArr[0]) / i3);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$slider$20(TrackColours trackColours, GradientDrawable gradientDrawable, GradientDrawable gradientDrawable2, Runnable runnable, View view, boolean z2) {
            if (trackColours == null) {
                gradientDrawable.setColor(z2 ? 855638016 : 1090519039);
                gradientDrawable2.setColor(z2 ? -14935010 : -1);
            }
            if (z2 || runnable == null) {
                return;
            }
            runnable.run();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$slider$21(LinearLayout linearLayout, int i2, int[] iArr, IntChoice intChoice, Runnable runnable, View view, int i3, KeyEvent keyEvent) {
            if (onRowKey(linearLayout, i3, keyEvent)) {
                return true;
            }
            if (i3 != 21 && i3 != 22) {
                return false;
            }
            if (keyEvent.getAction() == 0) {
                int iMax = Math.max(0, Math.min(i2, iArr[0] + (i3 == 22 ? 1 : -1)));
                if (iMax != iArr[0]) {
                    iArr[0] = iMax;
                    intChoice.pick(iMax);
                    runnable.run();
                    glassSoon();
                }
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$strip$24(HorizontalScrollView horizontalScrollView, int i2, List list, View view, int i3, KeyEvent keyEvent) {
            if (onRowKey(horizontalScrollView, i3, keyEvent)) {
                return true;
            }
            if (keyEvent.getAction() != 0) {
                return false;
            }
            if (i3 == 21 && i2 == 0) {
                return true;
            }
            return i3 == 22 && i2 == list.size() - 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$switchRow$11(Runnable runnable) {
            runnable.run();
            glassSoon();
            refresh();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$toggle$12(String str, boolean z2) {
            Appearance.setShow(MainActivity.this, str, !z2);
            glassSoon();
            MainActivity.this.applyStatusItems();
            refresh();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$wire$8(View view, View view2, View view3, int i2, KeyEvent keyEvent) {
            if (onRowKey(view, i2, keyEvent)) {
                return true;
            }
            return view2 == view && (i2 == 21 || i2 == 22);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$wire$9(Runnable runnable, View view) {
            runnable.run();
        }

        private boolean onRowKey(View view, int i2, KeyEvent keyEvent) {
            if (keyEvent.getAction() != 0) {
                if (i2 == 4 || i2 == 23 || i2 == 66) {
                    return false;
                }
                return i2 == 19 || i2 == 20;
            }
            if (i2 != 19 && i2 != 20) {
                return false;
            }
            int i3 = i2 == 20 ? 1 : -1;
            View viewFirstFocusableRow = firstFocusableRow(this.rows.indexOfChild(view) + i3, i3);
            if (viewFirstFocusableRow != null) {
                viewFirstFocusableRow.requestFocus();
            }
            return true;
        }

        private void render(int i2) {
            Page pVar = top();
            this.rows.removeAllViews();
            this.titleView.setText(pVar.title);
            pVar.onBack = null;
            pVar.builder.build(this);
            final int i3 = pVar.focus;
            final int i4 = pVar.scrollY;
            this.rows.post(new Runnable() { // from class: com.sid.tvos.Z
                @Override // java.lang.Runnable
                public final void run() {
                    this.f246a.lambda$render$7(i4, i3);
                }
            });
            if (i2 != 0) {
                this.rows.setAlpha(0.0f);
                this.rows.setTranslationX(MainActivity.this.density * i2 * 36);
                this.rows.animate().alpha(1.0f).translationX(0.0f).setDuration(260L).setInterpolator(new DecelerateInterpolator(2.0f)).start();
                this.titleView.setAlpha(0.0f);
                this.titleView.animate().alpha(1.0f).setDuration(260L).start();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code duplicated, block: B:11:0x007e  */
        /* JADX WARN: Code duplicated, block: B:13:0x0082  */
        /* JADX WARN: Code duplicated, block: B:15:0x0088  */
        /* JADX WARN: Code duplicated, block: B:17:0x008c  */
        /* JADX WARN: Code duplicated, block: B:20:0x009f  */
        public View row(int i2, String str, String str2, boolean z2) {
            String strConcat;
            View viewInflate = MainActivity.this.getLayoutInflater().inflate(R.layout.item_input, (ViewGroup) this.rows, false);
            Corners.clip(viewInflate, MainActivity.this.density * 13.0f);
            ImageView imageView = (ImageView) viewInflate.findViewById(R.id.icon);
            if (i2 != -1) {
                if (i2 != 0) {
                    imageView.setImageTintList(null);
                    imageView.setImageDrawable(MainActivity.this.settingBadge(i2));
                } else {
                    imageView.setVisibility(8);
                }
                ((TextView) viewInflate.findViewById(R.id.title)).setText(str);
                TextView textView = (TextView) viewInflate.findViewById(R.id.status);
                if (str2 == null) {
                    str2 = "";
                }
                if (z2) {
                    if (str2.isEmpty()) {
                        strConcat = "›";
                    } else {
                        strConcat = str2.concat("   ›");
                    }
                    str2 = strConcat;
                }
                textView.setText(str2);
                textView.setTextSize(13.0f);
                textView.setVisibility(str2.isEmpty() ? 8 : 0);
                viewInflate.findViewById(R.id.dot).setVisibility(8);
                ViewGroup.LayoutParams layoutParams = viewInflate.getLayoutParams();
                layoutParams.height = (int) (MainActivity.this.density * 50.0f);
                viewInflate.setLayoutParams(layoutParams);
                this.rows.addView(viewInflate);
                return viewInflate;
            }
            imageView.setImageTintList(null);
            imageView.setImageBitmap(MainActivity.this.avatarBadge());
            imageView.getLayoutParams().width = (int) (MainActivity.this.density * 28.0f);
            imageView.getLayoutParams().height = (int) (MainActivity.this.density * 28.0f);
            ((TextView) viewInflate.findViewById(R.id.title)).setText(str);
            TextView textView2 = (TextView) viewInflate.findViewById(R.id.status);
            if (str2 == null) {
                str2 = "";
            }
            if (z2) {
                if (str2.isEmpty()) {
                    strConcat = "›";
                } else {
                    strConcat = str2.concat("   ›");
                }
                str2 = strConcat;
            }
            textView2.setText(str2);
            textView2.setTextSize(13.0f);
            textView2.setVisibility(str2.isEmpty() ? 8 : 0);
            viewInflate.findViewById(R.id.dot).setVisibility(8);
            ViewGroup.LayoutParams layoutParams2 = viewInflate.getLayoutParams();
            layoutParams2.height = (int) (MainActivity.this.density * 50.0f);
            viewInflate.setLayoutParams(layoutParams2);
            this.rows.addView(viewInflate);
            return viewInflate;
        }

        private Page top() {
            if (this.stack.isEmpty()) {
                return null;
            }
            List<Page> list = this.stack;
            return list.get(list.size() - 1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void wire(final View view, final View view2, Runnable runnable) {
            view2.setOnKeyListener(new View.OnKeyListener() { // from class: com.sid.tvos.N
                @Override // android.view.View.OnKeyListener
                public final boolean onKey(View view3, int i2, KeyEvent keyEvent) {
                    return this.f189a.lambda$wire$8(view, view2, view3, i2, keyEvent);
                }
            });
            if (runnable != null) {
                view2.setOnClickListener(new O(runnable, 0));
            }
        }

        public void action(int i2, String str, String str2, Runnable runnable) {
            View viewRow = row(i2, str, str2, false);
            wire(viewRow, viewRow, runnable);
        }

        public View avatarView(Bitmap bitmap, final boolean z2, Runnable runnable) {
            FrameLayout frameLayout = new FrameLayout(MainActivity.this);
            int i2 = (int) (MainActivity.this.density * 64.0f);
            final int i3 = (int) (MainActivity.this.density * 4.0f);
            ImageView imageView = new ImageView(MainActivity.this);
            imageView.setId(android.R.id.icon);
            imageView.setImageBitmap(bitmap);
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            imageView.setOutlineProvider(new ViewOutlineProvider() { // from class: com.sid.tvos.MainActivity.SettingsPanel.2
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    outline.setOval(0, 0, view.getWidth(), view.getHeight());
                }
            });
            imageView.setClipToOutline(true);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(1);
            gradientDrawable.setColor(654311423);
            imageView.setBackground(gradientDrawable);
            frameLayout.addView(imageView, new FrameLayout.LayoutParams(i2, i2, 17));
            final GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setShape(1);
            gradientDrawable2.setStroke(i3, z2 ? -1 : 16777215);
            frameLayout.setForeground(gradientDrawable2);
            frameLayout.setPadding(((int) (MainActivity.this.density * 2.0f)) + i3, ((int) (MainActivity.this.density * 2.0f)) + i3, ((int) (MainActivity.this.density * 2.0f)) + i3, ((int) (MainActivity.this.density * 2.0f)) + i3);
            frameLayout.setFocusable(true);
            frameLayout.setClickable(true);
            frameLayout.setTag(R.id.selected, Boolean.valueOf(z2));
            frameLayout.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.sid.tvos.Q
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z3) {
                    MainActivity.SettingsPanel.lambda$avatarView$22(gradientDrawable2, i3, z2, view, z3);
                }
            });
            frameLayout.setOnClickListener(new O(runnable, 1));
            return frameLayout;
        }

        public void back() {
            Runnable runnable;
            Page pVar = top();
            if (pVar != null && (runnable = pVar.onBack) != null) {
                runnable.run();
            }
            if (this.stack.size() <= 1) {
                close();
                return;
            }
            List<Page> list = this.stack;
            list.remove(list.size() - 1);
            render(-1);
        }

        public void choices(int i2, final String str, final String[] strArr, final int i3, final IntChoice intChoice, final IntChoice intChoice2) {
            View viewRow = row(i2, str, strArr[Math.max(0, Math.min(strArr.length - 1, i3))], true);
            wire(viewRow, viewRow, new Runnable() { // from class: com.sid.tvos.T
                @Override // java.lang.Runnable
                public final void run() {
                    this.f209a.lambda$choices$18(str, i3, strArr, intChoice, intChoice2);
                }
            });
        }

        public void close() {
            closeThen(null);
        }

        public void closeNow() {
            if (this.closing) {
                return;
            }
            this.closing = true;
            MainActivity.this.endBlurPreview();
            MainActivity.this.root.removeView(this.panel);
            if (MainActivity.this.settingsPanel == this) {
                MainActivity.this.settingsPanel = null;
            }
            MainActivity.this.setHomeFocusable(true);
        }

        public void closeThen(Runnable runnable) {
            Runnable runnable2;
            if (this.closing) {
                return;
            }
            this.closing = true;
            Page pVar = top();
            if (pVar != null && (runnable2 = pVar.onBack) != null && runnable == null) {
                runnable2.run();
            }
            MainActivity.this.endBlurPreview();
            FrameLayout frameLayout = this.panel;
            frameLayout.animate().alpha(0.0f).translationX(MainActivity.this.density * 60.0f).setDuration(220L).setInterpolator(new DecelerateInterpolator()).withEndAction(new a0(this, frameLayout, 0)).start();
            if (MainActivity.this.settingsPanel == this) {
                MainActivity.this.settingsPanel = null;
            }
            MainActivity.this.setHomeFocusable(true);
            if (runnable != null) {
                runnable.run();
            } else {
                MainActivity.this.focusTile(Math.min(MainActivity.lastFocused, Math.max(0, MainActivity.this.adapter.getItemCount() - 1)));
            }
        }

        public void disabled(int i2, String str, String str2) {
            View viewRow = row(i2, str, str2, false);
            viewRow.setAlpha(0.4f);
            viewRow.setFocusable(false);
            viewRow.setClickable(false);
        }

        public void glassSoon() {
            MainActivity.this.handler.removeCallbacks(this.glassRun);
            MainActivity.this.handler.postDelayed(this.glassRun, 520L);
        }

        public void header(String str) {
            float f2;
            float f3;
            TextView textView = new TextView(MainActivity.this);
            textView.setText(str);
            textView.setTextSize(12.0f);
            textView.setTextColor(-1929379841);
            textView.setTypeface(e.k.b(MainActivity.this, R.font.inter_semibold));
            int i2 = (int) (MainActivity.this.density * 14.0f);
            if (this.rows.getChildCount() == 0) {
                f2 = MainActivity.this.density;
                f3 = 2.0f;
            } else {
                f2 = MainActivity.this.density;
                f3 = 18.0f;
            }
            textView.setPadding(i2, (int) (f2 * f3), i2, (int) (MainActivity.this.density * 6.0f));
            this.rows.addView(textView);
        }

        public void nav(int i2, String str, String str2, PageBuilder pageBuilder) {
            View viewRow = row(i2, str, str2, true);
            wire(viewRow, viewRow, new RunnableC0012m(this, str, pageBuilder, 2));
        }

        public void note(String str) {
            TextView textView = new TextView(MainActivity.this);
            textView.setText(str);
            textView.setTextSize(13.0f);
            textView.setTextColor(-1711276033);
            textView.setTypeface(e.k.b(MainActivity.this, R.font.inter_regular));
            int i2 = (int) (MainActivity.this.density * 14.0f);
            textView.setPadding(i2, 0, i2, (int) (MainActivity.this.density * 6.0f));
            this.rows.addView(textView);
        }

        public void open(String str, PageBuilder pageBuilder) {
            if (MainActivity.this.settingsPanel != null) {
                MainActivity.this.settingsPanel.closeNow();
            }
            if (MainActivity.this.recentsOverlay != null && MainActivity.this.recentsOverlay.getVisibility() == 0) {
                MainActivity.this.closeRecentsNow();
            }
            MainActivity.this.settingsPanel = this;
            this.pendingFadeIn = new S(this, 0);
            build();
            this.panel.setAlpha(0.0f);
            this.stack.add(new Page(str, pageBuilder));
            render(0);
            MainActivity.this.setHomeFocusable(false);
            MainActivity.this.hideGlass();
            MainActivity.this.handler.postDelayed(new S(this, 0), 300L);
        }

        /* JADX INFO: renamed from: push, reason: merged with bridge method [inline-methods] */
        public void lambda$nav$10(String str, PageBuilder pageBuilder) {
            Page pVar = top();
            if (pVar != null) {
                pVar.focus = focusedIndex();
                pVar.scrollY = this.scroll.getScrollY();
            }
            this.stack.add(new Page(str, pageBuilder));
            render(1);
        }

        public void refresh() {
            Page pVar = top();
            if (pVar == null) {
                return;
            }
            pVar.focus = focusedIndex();
            pVar.scrollY = this.scroll.getScrollY();
            render(0);
        }

        public void refreshGlass() {
            refreshGlass(null);
        }

        public void slider(int i2, String str, int i3, int i4, IntChoice intChoice, Runnable runnable) {
            slider(i2, str, i3, i4, intChoice, runnable, null, null);
        }

        public void strip(final List<View> list) {
            final HorizontalScrollView horizontalScrollView = new HorizontalScrollView(MainActivity.this);
            horizontalScrollView.setHorizontalScrollBarEnabled(false);
            horizontalScrollView.setOverScrollMode(2);
            horizontalScrollView.setClipToPadding(false);
            horizontalScrollView.setClipChildren(false);
            horizontalScrollView.setPadding((int) (MainActivity.this.density * 8.0f), (int) (MainActivity.this.density * 6.0f), (int) (MainActivity.this.density * 8.0f), (int) (MainActivity.this.density * 6.0f));
            LinearLayout linearLayout = new LinearLayout(MainActivity.this);
            linearLayout.setClipChildren(false);
            linearLayout.setOrientation(0);
            for (final int i2 = 0; i2 < list.size(); i2++) {
                View view = list.get(i2);
                view.setOnKeyListener(new View.OnKeyListener() { // from class: com.sid.tvos.J
                    @Override // android.view.View.OnKeyListener
                    public final boolean onKey(View view2, int i3, KeyEvent keyEvent) {
                        return this.f165a.lambda$strip$24(horizontalScrollView, i2, list, view2, i3, keyEvent);
                    }
                });
                linearLayout.addView(view);
            }
            horizontalScrollView.addView(linearLayout);
            this.rows.addView(horizontalScrollView);
        }

        public void switchRow(int i2, String str, boolean z2, Runnable runnable) {
            View viewRow = row(i2, str, MainActivity.this.getString(z2 ? R.string.state_on : R.string.state_off), false);
            viewRow.findViewById(R.id.dot).setVisibility(z2 ? 0 : 8);
            wire(viewRow, viewRow, new a0(this, runnable, 1));
        }

        public void toggle(int i2, String str, String str2) {
            boolean zShow = Appearance.show(MainActivity.this, str2);
            View viewRow = row(i2, str, MainActivity.this.getString(zShow ? R.string.state_on : R.string.state_off), false);
            viewRow.findViewById(R.id.dot).setVisibility(zShow ? 0 : 8);
            wire(viewRow, viewRow, new A(this, str2, zShow));
        }

        /* JADX WARN: Type inference failed for: r0v13, types: [com.sid.tvos.c0] */
        /* JADX WARN: Type inference failed for: r3v9, types: [com.sid.tvos.d0] */
        public void refreshGlass(final Runnable runnable) {
            FrameLayout frameLayout;
            if (this.closing || (frameLayout = this.panel) == null || frameLayout.getWidth() == 0 || MainActivity.this.root.getWidth() == 0) {
                if (runnable != null) {
                    runnable.run();
                    return;
                }
                return;
            }
            boolean zLiquid = Appearance.liquid(MainActivity.this);
            this.glassBg.setLiquid(zLiquid);
            final int iP4 = MainActivity.p4(MainActivity.this);
            final int iBlurPx = MainActivity.this.blurPx(zLiquid ? 2 : 4);
            final float f2 = zLiquid ? 0.52f : 0.42f;
            final int left = this.panel.getLeft();
            final int top = this.panel.getTop();
            final int width = this.panel.getWidth();
            final int height = this.panel.getHeight();
            final ?? r0 = new Images.Callback() { // from class: com.sid.tvos.c0
                @Override // com.sid.tvos.Images.Callback
                public final void onImage(Bitmap bitmap) {
                    this.f259a.lambda$refreshGlass$2(iBlurPx, f2, left, iP4, top, width, height, runnable, bitmap);
                }
            };
            if (runnable != null && Build.VERSION.SDK_INT >= 26) {
                final Bitmap bitmapCreateBitmap = Bitmap.createBitmap(Math.max(1, MainActivity.this.root.getWidth() / iP4), Math.max(1, MainActivity.this.root.getHeight() / iP4), Bitmap.Config.ARGB_8888);
                try {
                    PixelCopy.request(MainActivity.this.getWindow(), bitmapCreateBitmap, (PixelCopy.OnPixelCopyFinishedListener) new PixelCopy.OnPixelCopyFinishedListener() { // from class: com.sid.tvos.d0
                        @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
                        public final void onPixelCopyFinished(int i2) {
                            this.f270a.lambda$refreshGlass$3((c0) r0, bitmapCreateBitmap, iP4, i2);
                        }
                    }, MainActivity.this.handler);
                    return;
                } catch (Exception unused) {
                }
            }
            float alpha = this.panel.getAlpha();
            this.panel.setAlpha(0.0f);
            Bitmap bitmapCapture = Blur.capture(MainActivity.this.root, iP4);
            this.panel.setAlpha(alpha);
            r0.onImage(bitmapCapture);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r8v1, types: [com.sid.tvos.K, java.lang.Runnable] */
        public void slider(int i2, String str, int i3, final int i4, final IntChoice intChoice, final Runnable runnable, final IntLabel intLabel, final TrackColours trackColours) {
            final LinearLayout linearLayout = new LinearLayout(MainActivity.this);
            linearLayout.setOrientation(1);
            linearLayout.setBackgroundResource(R.drawable.input_row_bg);
            linearLayout.setFocusable(true);
            int i5 = (int) (MainActivity.this.density * 12.0f);
            linearLayout.setPadding(i5, (int) (MainActivity.this.density * 10.0f), i5, (int) (MainActivity.this.density * 12.0f));
            View viewRow = row(i2, str, String.valueOf(i3), false);
            this.rows.removeView(viewRow);
            viewRow.setBackground(null);
            viewRow.setClipToOutline(false);
            Corners.clip(linearLayout, MainActivity.this.density * 13.0f);
            viewRow.setFocusable(false);
            viewRow.setDuplicateParentStateEnabled(true);
            viewRow.setPadding(0, 0, 0, 0);
            viewRow.getLayoutParams().height = (int) (MainActivity.this.density * 30.0f);
            linearLayout.addView(viewRow);
            final FrameLayout frameLayout = new FrameLayout(MainActivity.this);
            final GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadius(MainActivity.this.density * 3.0f);
            gradientDrawable.setColor(1090519039);
            frameLayout.setBackground(gradientDrawable);
            final View view = new View(MainActivity.this);
            final GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setCornerRadius(MainActivity.this.density * 3.0f);
            gradientDrawable2.setColor(-1);
            if (trackColours != null) {
                gradientDrawable2.setStroke((int) (MainActivity.this.density * 1.5f), -14935010);
            }
            view.setBackground(gradientDrawable2);
            final int i6 = (int) (MainActivity.this.density * 8.0f);
            frameLayout.addView(view, new FrameLayout.LayoutParams(trackColours != null ? i6 : 0, trackColours != null ? (int) (MainActivity.this.density * 14.0f) : -1, 16));
            if (trackColours != null) {
                frameLayout.setClipChildren(false);
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, (int) (MainActivity.this.density * (trackColours != null ? 10 : 6)));
            layoutParams.topMargin = (int) (MainActivity.this.density * 8.0f);
            linearLayout.addView(frameLayout, layoutParams);
            this.rows.addView(linearLayout);
            final TextView textView = (TextView) viewRow.findViewById(R.id.status);
            final int[] iArr = {i3};
            final ?? r8 = new Runnable() { // from class: com.sid.tvos.K
                @Override // java.lang.Runnable
                public final void run() {
                    this.f169a.lambda$slider$19(textView, intLabel, iArr, trackColours, gradientDrawable, view, frameLayout, i6, i4);
                }
            };
            frameLayout.post(r8);
            linearLayout.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.sid.tvos.L
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view2, boolean z2) {
                    MainActivity.SettingsPanel.lambda$slider$20(trackColours, gradientDrawable, gradientDrawable2, runnable, view2, z2);
                }
            });
            linearLayout.setOnKeyListener(new View.OnKeyListener() { // from class: com.sid.tvos.M
                @Override // android.view.View.OnKeyListener
                public final boolean onKey(View view2, int i7, KeyEvent keyEvent) {
                    return this.f182a.lambda$slider$21(linearLayout, i4, iArr, intChoice, (K) r8, view2, i7, keyEvent);
                }
            });
        }
    }

    public interface TextCallback {
        void onText(String str);
    }

    public interface TrackColours {
        int[] colours();
    }

    public MainActivity() {
        final int i2 = 0;
        this.shelfBack = new Runnable() { // from class: t.L
            @Override // java.lang.Runnable
            public final void run() {
                switch (i2) {
                    case 0:
                        MainActivity.lambda$new$32();
                        break;
                    default:
                        MainActivity.lambda$new$62();
                        break;
                }
            }
        };
        final int i3 = 1;
        this.cwBackdropRun = new Runnable() { // from class: t.L
            @Override // java.lang.Runnable
            public final void run() {
                switch (i3) {
                    case 0:
                        MainActivity.lambda$new$32();
                        break;
                    default:
                        MainActivity.lambda$new$62();
                        break;
                }
            }
        };
    }

    private void addInputRow(LinearLayout linearLayout, PopupWindow popupWindow, int i2, String str, int i3, Runnable runnable) {
        int i4;
        int i5 = 0;
        View viewInflate = getLayoutInflater().inflate(R.layout.item_input, (ViewGroup) linearLayout, false);
        ((ImageView) viewInflate.findViewById(R.id.icon)).setImageResource(i2);
        ((TextView) viewInflate.findViewById(R.id.title)).setText(str);
        TextView textView = (TextView) viewInflate.findViewById(R.id.status);
        View viewFindViewById = viewInflate.findViewById(R.id.dot);
        if (i3 != 0) {
            i5 = 8;
            if (i3 == 2) {
                i4 = R.string.not_connected;
            } else {
                textView.setVisibility(8);
            }
            viewFindViewById.setVisibility(i5);
            viewInflate.setOnClickListener(new t.B(this, popupWindow, runnable, 1));
            linearLayout.addView(viewInflate);
        }
        i4 = R.string.connected;
        textView.setText(i4);
        viewFindViewById.setVisibility(i5);
        viewInflate.setOnClickListener(new t.B(this, popupWindow, runnable, 1));
        linearLayout.addView(viewInflate);
    }

    private View addMenuRow(LinearLayout linearLayout, PopupWindow popupWindow, int i2, String str, String str2, boolean z2, Runnable runnable) {
        View viewInflate = getLayoutInflater().inflate(R.layout.item_input, (ViewGroup) linearLayout, false);
        ((ImageView) viewInflate.findViewById(R.id.icon)).setImageResource(i2);
        ((TextView) viewInflate.findViewById(R.id.title)).setText(str);
        TextView textView = (TextView) viewInflate.findViewById(R.id.status);
        textView.setText(str2 == null ? "" : str2);
        textView.setVisibility(str2 == null ? 8 : 0);
        viewInflate.findViewById(R.id.dot).setVisibility(z2 ? 0 : 8);
        viewInflate.setOnClickListener(new t.B(this, popupWindow, runnable, 0));
        linearLayout.addView(viewInflate);
        return viewInflate;
    }

    private void addSeparator(LinearLayout linearLayout) {
        View view = new View(this);
        view.setBackgroundColor(536870911);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, (int) this.density);
        float f2 = this.density;
        int i2 = (int) (6.0f * f2);
        int i3 = (int) (f2 * 12.0f);
        layoutParams.setMargins(i3, i2, i3, i2);
        linearLayout.addView(view, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyCwBackground() {
        CwBackground.invalidate();
        this.cwBackdrops.evictAll();
        int i2 = this.shelfPosition;
        if (!this.shelfShown || i2 < 0) {
            return;
        }
        this.shelfPosition = -1;
        showShelf(i2);
    }

    private void applyCwBlur() {
        this.cwBackdrops.evictAll();
        this.frosted.evictAll();
        this.frostSteps.evictAll();
        if (this.cwPosition >= 0 && this.shelfShown) {
            selectCw(this.cwSelected);
        }
        this.handler.removeCallbacks(this.prewarmCw);
        this.handler.postDelayed(this.prewarmCw, 1500L);
    }

    private void applyCwOn() {
        this.handler.removeCallbacks(this.prewarmCw);
        this.handler.removeCallbacks(this.cwRenderLater);
        this.handler.removeCallbacks(this.cwBackdropRun);
        if (!Appearance.cwOn(this)) {
            this.cwGen++;
            hideCw();
            this.cwRow.removeAllViews();
            this.cwItems = null;
            this.cwData = null;
            this.cwBackdrops.evictAll();
        }
        applyStatusItems();
        Stage.clear();
        this.adapter.prewarmShelves(COLUMNS);
        int i2 = this.shelfPosition;
        if (!this.shelfShown || i2 < 0) {
            return;
        }
        this.shelfPosition = -1;
        showShelf(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyDark() {
        if (this.darkApplying) {
            this.darkPending = true;
            return;
        }
        this.darkApplying = true;
        this.darkPending = false;
        boolean zDark = Appearance.dark(this);
        List<AppAdapter.Entry> listAllEntries = this.adapter.allEntries();
        List<AppAdapter.Entry> listFirstEntries = this.adapter.firstEntries(COLUMNS);
        DARK.execute(new RunnableC0082x(this, this.shelfPosition, listFirstEntries, zDark, listAllEntries));
    }

    private void applyGlass(boolean z2) {
        Appearance.setGlass(this, z2 ? "liquid" : "frosted");
        this.dockBand.setLiquid(z2);
        this.grid.invalidate();
        updateStatusGlass(this.shelfBitmap);
    }

    private void applyLayout() {
        this.adapter.notifyDataSetChanged();
        updateGridPadding(this.grid.getHeight());
        if (this.cwPosition >= 0) {
            renderCw();
        }
        layoutCw();
    }

    private void applyPanelGlass(View view, float f2) {
        float f3 = this.density;
        LiquidGlassDrawable liquidGlassDrawable = new LiquidGlassDrawable(f3, f2 * f3);
        liquidGlassDrawable.setLiquid(Appearance.liquid(this));
        view.setBackground(liquidGlassDrawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyStatusItems() {
        boolean zShow = Appearance.show(this, "statusbar");
        boolean zStatusMinimal = Appearance.statusMinimal(this);
        boolean z2 = Appearance.show(this, "clock") || zStatusMinimal;
        boolean z3 = !zStatusMinimal && Appearance.show(this, "weather") && this.weatherLoaded;
        findViewById(R.id.clock).setVisibility(z2 ? 0 : 8);
        findViewById(R.id.weatherIcon).setVisibility(z3 ? 0 : 8);
        findViewById(R.id.weatherText).setVisibility(z3 ? 0 : 8);
        boolean z4 = z2 || z3;
        int i2 = 0;
        while (true) {
            int[] iArr = STATUS_BUTTONS;
            if (i2 >= iArr.length) {
                break;
            }
            boolean z5 = !zStatusMinimal && Appearance.show(this, STATUS_BUTTON_KEYS[i2]);
            findViewById(iArr[i2]).setVisibility(z5 ? 0 : 8);
            z4 |= z5;
            i2++;
        }
        this.statusAvatar.setVisibility(zStatusMinimal ? 0 : 8);
        if (zStatusMinimal) {
            this.statusAvatar.setImageBitmap(Profile.avatar(this, (int) (this.density * 30.0f)));
        }
        this.statusPill.setFocusable(zStatusMinimal);
        View view = this.statusPill;
        float f2 = this.density;
        view.setPadding((int) (4.0f * f2), 0, (int) ((zStatusMinimal ? 5 : 4) * f2), 0);
        ViewGroup.LayoutParams layoutParams = this.statusPill.getLayoutParams();
        int i3 = (int) ((zStatusMinimal ? 40 : 48) * this.density);
        if (layoutParams.height != i3) {
            layoutParams.height = i3;
            this.statusPill.setLayoutParams(layoutParams);
        }
        boolean z6 = !Appearance.cwOn(this) && Appearance.show(this, "weather_pill") && this.weatherLoaded;
        this.weatherPill.setVisibility(z6 ? 0 : 8);
        ViewGroup.LayoutParams layoutParams2 = this.weatherPill.getLayoutParams();
        if (layoutParams2.height != i3) {
            layoutParams2.height = i3;
            this.weatherPill.setLayoutParams(layoutParams2);
        }
        if (this.weatherLoaded) {
            applyWeatherText(i3);
        }
        this.topBar.setVisibility((zShow && (z4 || z6)) ? 0 : 8);
        this.statusPill.post(new t.P(this, 0));
    }

    private void applyWeatherText(int i2) {
        String str;
        boolean z2 = (!Appearance.show(this, "weather_city") || (str = this.weatherCity) == null || str.isEmpty()) ? false : true;
        TextView textView = (TextView) findViewById(R.id.weatherText);
        textView.setText(z2 ? getString(R.string.weather_line, Integer.valueOf(this.weatherTemp), this.weatherCity) : getString(R.string.weather_temp, Integer.valueOf(this.weatherTemp)));
        this.weatherLine = textView.getText().toString().replace("  ", " ");
        TextView textView2 = (TextView) findViewById(R.id.weatherPillText);
        ImageView imageView = (ImageView) findViewById(R.id.weatherPillIcon);
        textView2.setText(this.weatherLine);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) imageView.getLayoutParams();
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) textView2.getLayoutParams();
        ViewGroup.LayoutParams layoutParams3 = this.weatherPill.getLayoutParams();
        if (z2) {
            this.weatherPill.setOrientation(0);
            LinearLayout linearLayout = this.weatherPill;
            float f2 = this.density;
            linearLayout.setPadding((int) (14.0f * f2), 0, (int) (f2 * 16.0f), 0);
            imageView.setVisibility(0);
            float f3 = this.density;
            int i3 = (int) (20.0f * f3);
            layoutParams.height = i3;
            layoutParams.width = i3;
            layoutParams2.setMargins((int) (f3 * 8.0f), 0, 0, 0);
            textView2.setTextSize(15.0f);
            i2 = -2;
        } else {
            this.weatherPill.setPadding(0, 0, 0, 0);
            imageView.setVisibility(8);
            layoutParams2.setMargins(0, 0, 0, 0);
            float f4 = i2;
            int i4 = this.weatherTemp;
            textView2.setTextSize(0, f4 * ((i4 <= -10 || i4 >= 100) ? 0.3f : 0.36f));
        }
        layoutParams3.width = i2;
        this.weatherPill.setGravity(17);
        imageView.setLayoutParams(layoutParams);
        textView2.setLayoutParams(layoutParams2);
        this.weatherPill.setLayoutParams(layoutParams3);
    }

    private void askName(String str, NameCallback nameCallback) {
        EditText editText = new EditText(this);
        editText.setSingleLine(true);
        editText.setText(str);
        editText.setSelectAllOnFocus(true);
        int i2 = (int) (this.density * 20.0f);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setPadding(i2, i2 / 2, i2, 0);
        frameLayout.addView(editText);
        new AlertDialog.Builder(this, android.R.style.Theme.DeviceDefault.Dialog.Alert).setTitle(R.string.folder_name).setView(frameLayout).setPositiveButton(android.R.string.ok, new DialogInterfaceOnClickListenerC0025z(editText, nameCallback, 0)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
    }

    private void askText(int i2, String str, TextCallback textCallback) {
        EditText editText = new EditText(this);
        editText.setSingleLine(true);
        editText.setText(str);
        editText.setSelectAllOnFocus(true);
        int i3 = (int) (this.density * 20.0f);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setPadding(i3, i3 / 2, i3, 0);
        frameLayout.addView(editText);
        new AlertDialog.Builder(this, android.R.style.Theme.DeviceDefault.Dialog.Alert).setTitle(i2).setView(frameLayout).setPositiveButton(android.R.string.ok, new DialogInterfaceOnClickListenerC0025z(editText, textCallback, 1)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
    }

    public static boolean atRowEnd(int i2, int i3, int i4, int i5) {
        if (i3 == 21) {
            return i2 % i4 == 0;
        }
        return i2 % i4 == i4 - 1 || i2 == i5 - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap avatarBadge() {
        int iRound = Math.round(this.density * 28.0f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iRound, iRound, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Bitmap bitmapPhoto = Profile.photo(this, iRound);
        if (bitmapPhoto != null) {
            Paint paint = new Paint(3);
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            paint.setShader(new BitmapShader(bitmapPhoto, tileMode, tileMode));
            float f2 = iRound;
            canvas.drawPath(Corners.squircle(new Path(), new RectF(0.0f, 0.0f, f2, f2), f2 * 0.23f), paint);
        } else {
            darkTile(canvas, iRound);
            Paint paint2 = new Paint(1);
            float f3 = iRound;
            paint2.setTextSize(0.64f * f3);
            paint2.setTextAlign(Paint.Align.CENTER);
            Paint.FontMetrics fontMetrics = paint2.getFontMetrics();
            float f4 = f3 / 2.0f;
            canvas.drawText(Profile.emoji(this), f4, f4 - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), paint2);
        }
        return bitmapCreateBitmap;
    }

    private Bitmap backdrop(Bitmap bitmap) {
        float width = this.root.getWidth() / Math.max(1, this.root.getHeight());
        float width2 = bitmap.getWidth() / bitmap.getHeight();
        if (Math.abs(width2 - width) / width < 0.02f) {
            return bitmap;
        }
        int width3 = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width2 > width) {
            width3 = Math.round(height * width);
        } else {
            height = Math.round(width3 / width);
        }
        return Bitmap.createBitmap(bitmap, (bitmap.getWidth() - width3) / 2, (bitmap.getHeight() - height) / 2, width3, height);
    }

    private static int badgeColor(int i2) {
        if (i2 == R.drawable.ic_palette) {
            return -10169601;
        }
        if (i2 == R.drawable.ic_remote) {
            return -5329230;
        }
        if (i2 == R.drawable.ic_display) {
            return -16087809;
        }
        if (i2 == R.drawable.ic_sound) {
            return -51361;
        }
        if (i2 == R.drawable.ic_input) {
            return -13577896;
        }
        if (i2 == R.drawable.ic_apps) {
            return -10593050;
        }
        if (i2 == R.drawable.ic_tune) {
            return -5329230;
        }
        if (i2 == R.drawable.ic_info) {
            return -3026474;
        }
        if (i2 == R.drawable.ic_glass) {
            return -12531488;
        }
        if (i2 == R.drawable.ic_iconpack) {
            return -24822;
        }
        if (i2 == R.drawable.ic_blur) {
            return -9381889;
        }
        if (i2 == R.drawable.ic_statusbar) {
            return -16087809;
        }
        if (i2 == R.drawable.ic_eye) {
            return -4236558;
        }
        if (i2 == R.drawable.ic_clock) {
            return -24822;
        }
        if (i2 == R.drawable.ic_weather) {
            return -10742;
        }
        if (i2 == R.drawable.ic_wifi || i2 == R.drawable.ic_bluetooth) {
            return -16087809;
        }
        if (i2 == R.drawable.ic_assistant) {
            return -10593050;
        }
        if (i2 == R.drawable.ic_settings) {
            return -5329230;
        }
        if (i2 == R.drawable.ic_cards) {
            return -47814;
        }
        if (i2 == R.drawable.ic_updown) {
            return -13577896;
        }
        if (i2 == R.drawable.ic_resize) {
            return -24822;
        }
        if (i2 == R.drawable.ic_dock) {
            return -12531488;
        }
        if (i2 == R.drawable.ic_columns) {
            return -10593050;
        }
        if (i2 == R.drawable.ic_spacing) {
            return -10038065;
        }
        if (i2 == R.drawable.ic_edit) {
            return -24822;
        }
        if (i2 == R.drawable.ic_backdrop) {
            return -51361;
        }
        if (i2 == R.drawable.ic_focus) {
            return -16087809;
        }
        if (i2 == R.drawable.ic_cw) {
            return -10742;
        }
        if (i2 == R.drawable.ic_mappin) {
            return -47814;
        }
        if (i2 == R.drawable.ic_weatherpill) {
            return -10827526;
        }
        if (i2 == R.drawable.ic_keyboard) {
            return -5329230;
        }
        if (i2 == R.drawable.ic_location) {
            return -16087809;
        }
        if (i2 == R.drawable.ic_poster) {
            return -4236558;
        }
        if (i2 == R.drawable.ic_darkmode) {
            return -12961220;
        }
        return i2 == R.drawable.ic_calendar ? -47814 : -5329230;
    }

    private void blurBackdrop(Bitmap bitmap, boolean z2, int i2) {
        FROST.execute(new RunnableC0069j(this, bitmap, z2, i2, 1));
    }

    private int blurDiv(int i2) {
        return Math.max(2, Math.min((i2 * 3) / 2, Math.round(((Appearance.blurScale(this) * 0.65f) + 0.35f) * i2)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int blurPx(int i2) {
        return Math.round(i2 * Appearance.blurScale(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void buildAppearancePage(SettingsPanel settingsPanel) {
        int i2 = 10;
        int i3 = 11;
        int i4 = 0;
        int i5 = 2;
        int i6 = 1;
        boolean zLiquid = Appearance.liquid(this);
        settingsPanel.header(getString(R.string.cat_style));
        settingsPanel.choices(R.drawable.ic_glass, getString(R.string.glass_style), new String[]{getString(R.string.glass_liquid), getString(R.string.glass_frosted)}, !zLiquid ? 1 : 0, new C0015p(this, i6), null);
        String strCurrent = IconPack.current(this);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new String[]{"original", getString(R.string.icons_original)});
        arrayList.add(new String[]{"tvos", getString(R.string.icons_tvos)});
        arrayList.addAll(IconPack.installed(this));
        String[] strArr = new String[arrayList.size()];
        int i7 = 0;
        for (int i8 = 0; i8 < arrayList.size(); i8++) {
            strArr[i8] = ((String[]) arrayList.get(i8))[1];
            if (((String[]) arrayList.get(i8))[0].equals(strCurrent)) {
                i7 = i8;
            }
        }
        settingsPanel.choices(R.drawable.ic_iconpack, getString(R.string.icon_pack), strArr, i7, new C0006g(this, arrayList, i5), null);
        boolean zDark = Appearance.dark(this);
        settingsPanel.switchRow(R.drawable.ic_darkmode, getString(R.string.dark_mode), zDark, new RunnableC0084z(this, zDark, i5));
        int iMode = DarkSchedule.mode(this);
        settingsPanel.choices(R.drawable.ic_clock, getString(R.string.dark_schedule), new String[]{getString(R.string.state_off), getString(R.string.dark_sunset), getString(R.string.dark_custom)}, iMode, null, new C0015p(this, 6));
        if (iMode == 1) {
            int[] iArrWindow = DarkSchedule.window(this, Calendar.getInstance());
            settingsPanel.note(getString(R.string.dark_sunset_note, timeLabel(iArrWindow[0]), timeLabel(iArrWindow[1])));
        } else if (iMode == 2) {
            String[] strArr2 = new String[48];
            for (int i9 = 0; i9 < 48; i9++) {
                strArr2[i9] = timeLabel(i9 * 30);
            }
            int iCustomOn = DarkSchedule.customOn(this);
            int iCustomOff = DarkSchedule.customOff(this);
            settingsPanel.choices(R.drawable.ic_clock, getString(R.string.dark_turns_on), strArr2, iCustomOn / 30, null, new C0015p(this, 7));
            settingsPanel.choices(R.drawable.ic_clock, getString(R.string.dark_turns_off), strArr2, iCustomOff / 30, null, new C0015p(this, 8));
        }
        settingsPanel.note(getString(R.string.dark_mode_note));
        settingsPanel.slider(R.drawable.ic_blur, getString(R.string.blur_intensity), Appearance.blur(this), 10, new C0015p(this, 9), new RunnableC0062c(this, i3));
        settingsPanel.note(getString(R.string.blur_note));
        settingsPanel.header(getString(R.string.cat_standby));
        int iStandByLayout = Appearance.standByLayout(this);
        settingsPanel.choices(R.drawable.ic_standby, getString(R.string.standby_layout), getResources().getStringArray(R.array.standby_layouts), iStandByLayout, null, new C0015p(this, i2));
        if (iStandByLayout == 0) {
            String[] stringArray = getResources().getStringArray(R.array.standby_widgets);
            settingsPanel.choices(R.drawable.ic_clock, getString(R.string.standby_left), stringArray, Appearance.standByLeft(this), null, new C0015p(this, i3));
            settingsPanel.choices(R.drawable.ic_calendar, getString(R.string.standby_right), stringArray, Appearance.standByRight(this), null, new C0015p(this, i5));
        } else if (iStandByLayout == 2) {
            settingsPanel.choices(R.drawable.ic_palette, getString(R.string.standby_colour), getResources().getStringArray(R.array.standby_colours), Appearance.standByColour(this), null, new C0015p(this, 3));
        }
        View viewRow = settingsPanel.row(R.drawable.ic_eye, getString(R.string.standby_preview), null, false);
        settingsPanel.wire(viewRow, viewRow, new RunnableC0068i(this, viewRow, i5));
        View viewRow2 = settingsPanel.row(R.drawable.ic_settings, getString(R.string.standby_set), null, true);
        settingsPanel.wire(viewRow2, viewRow2, new RunnableC0062c(this, i2));
        settingsPanel.note(getString(R.string.standby_note));
        settingsPanel.header(getString(R.string.recent_apps));
        int iRecentSize = Appearance.recentSize(this);
        boolean zRecentRam = Appearance.recentRam(this);
        settingsPanel.choices(R.drawable.ic_resize, getString(R.string.recent_card_size), getResources().getStringArray(R.array.size_steps), iRecentSize, null, new C0015p(this, 4));
        settingsPanel.switchRow(R.drawable.ic_info, getString(R.string.recent_show_ram), zRecentRam, new RunnableC0084z(this, zRecentRam, i4));
        settingsPanel.header(getString(R.string.cat_statusbar));
        boolean zStatusMinimal = Appearance.statusMinimal(this);
        settingsPanel.choices(R.drawable.ic_statusbar, getString(R.string.status_style), new String[]{getString(R.string.status_minimal), getString(R.string.status_full)}, !zStatusMinimal ? 1 : 0, new C0015p(this, 5), null);
        settingsPanel.toggle(R.drawable.ic_eye, getString(R.string.show_statusbar), "statusbar");
        settingsPanel.nav(-1, getString(R.string.profile_picture), null, new C0015p(this, i4));
        settingsPanel.toggle(R.drawable.ic_clock, getString(R.string.show_clock), "clock");
        if (!zStatusMinimal) {
            settingsPanel.toggle(R.drawable.ic_wifi, getString(R.string.show_wifi), "wifi");
            settingsPanel.toggle(R.drawable.ic_bluetooth, getString(R.string.show_bluetooth), "bluetooth");
            settingsPanel.toggle(R.drawable.ic_assistant, getString(R.string.show_assistant), "assistant");
            settingsPanel.toggle(R.drawable.ic_settings, getString(R.string.show_settings_icon), "settings");
        }
        boolean zCwOn = Appearance.cwOn(this);
        settingsPanel.header(getString(R.string.cw_title));
        settingsPanel.switchRow(R.drawable.ic_cw, getString(R.string.cw_show), zCwOn, new RunnableC0084z(this, zCwOn, i6));
        if (!zCwOn) {
            settingsPanel.note(getString(R.string.cw_off_note));
        }
        if (zCwOn) {
            layoutChoice(settingsPanel, R.drawable.ic_cards, R.string.cw_size, "cw_size", R.array.size_steps);
            layoutChoice(settingsPanel, R.drawable.ic_updown, R.string.cw_position, "cw_pos", R.array.position_steps);
            buildCwArtRows(settingsPanel);
        }
        settingsPanel.header(getString(R.string.cat_weather));
        int i10 = R.drawable.ic_weatherpill;
        String string = getString(R.string.weather_pill);
        if (zCwOn) {
            settingsPanel.disabled(i10, string, getString(R.string.state_off));
            settingsPanel.note(getString(R.string.weather_pill_needs_cw_off));
        } else {
            settingsPanel.toggle(i10, string, "weather_pill");
        }
        if (!zStatusMinimal) {
            settingsPanel.toggle(R.drawable.ic_weather, getString(R.string.show_weather), "weather");
        }
        buildWeatherRows(settingsPanel);
        settingsPanel.header(getString(R.string.cat_favourites));
        layoutChoice(settingsPanel, R.drawable.ic_dock, R.string.fav_position, "fav_pos", R.array.position_steps);
        layoutChoice(settingsPanel, R.drawable.ic_columns, R.string.row_icons, "row_icons", R.array.row_icon_steps);
        settingsPanel.header(getString(R.string.layout_header));
        layoutChoice(settingsPanel, R.drawable.ic_resize, R.string.icon_size, "icon_size", R.array.size_steps);
        layoutChoice(settingsPanel, R.drawable.ic_spacing, R.string.row_gap, "row_gap", R.array.gap_steps);
    }

    private void buildCwArtRows(SettingsPanel settingsPanel) {
        int i2 = 4;
        int i3 = 3;
        int i4 = 0;
        boolean zCwArt = Appearance.cwArt(this);
        int iMode = CwBackground.mode(this);
        settingsPanel.choices(R.drawable.ic_poster, getString(R.string.cw_bg), getResources().getStringArray(R.array.cw_bg_modes), iMode, new C0015p(this, 13), null);
        int i5 = 1;
        if (iMode == 1) {
            settingsPanel.note(getString(R.string.cw_art_off_note));
        }
        if (iMode == 2) {
            cwColourRows(settingsPanel, 1, R.string.cw_bg_colour);
        } else if (iMode == 3) {
            String[] stringArray = getResources().getStringArray(R.array.cw_presets);
            int iPreset = CwBackground.preset(this);
            String[] strArr = (String[]) Arrays.copyOf(stringArray, stringArray.length + 1);
            strArr[stringArray.length] = getString(R.string.cw_custom);
            int i6 = R.drawable.ic_backdrop;
            String string = getString(R.string.cw_bg_preset);
            if (iPreset < 0) {
                iPreset = stringArray.length;
            }
            settingsPanel.choices(i6, string, strArr, iPreset, new C0006g(this, stringArray, i3), null);
            cwBgChoice(settingsPanel, R.drawable.ic_backdrop, R.string.cw_bg_style, getResources().getStringArray(R.array.cw_bg_styles), "cw_bg_style", CwBackground.style(this));
            cwColourRows(settingsPanel, 1, R.string.cw_bg_colour1);
            cwColourRows(settingsPanel, 2, R.string.cw_bg_colour2);
        } else if (iMode == 4) {
            Bitmap bitmap = null;
            View viewRow = settingsPanel.row(R.drawable.ic_folder, getString(R.string.cw_pick_picture), null, true);
            settingsPanel.wire(viewRow, viewRow, new RunnableC0068i(this, viewRow, 6));
            View viewRow2 = settingsPanel.row(R.drawable.ic_cast, getString(R.string.cw_from_phone), null, true);
            settingsPanel.wire(viewRow2, viewRow2, new RunnableC0019t(9, settingsPanel, this));
            String str = this.cwUploadUrl;
            if (str != null) {
                settingsPanel.note(getString(R.string.cw_from_phone_note, str));
            }
            List<Uri> listPhotos = Profile.photos(this, 24);
            if (!listPhotos.isEmpty()) {
                int i7 = (int) (this.density * 64.0f);
                ArrayList arrayList = new ArrayList();
                for (Uri uri : listPhotos) {
                    View viewAvatarView = settingsPanel.avatarView(bitmap, false, new t.G(this, uri, i4));
                    ImageView[] imageViewArr = new ImageView[i5];
                    imageViewArr[0] = (ImageView) viewAvatarView.findViewById(android.R.id.icon);
                    arrayList.add(viewAvatarView);
                    new Thread(new t.E(this, uri, i7, imageViewArr, 1)).start();
                    bitmap = null;
                    i5 = 1;
                }
                settingsPanel.strip(arrayList);
            }
        }
        boolean z2 = Appearance.cwBlur(this) && zCwArt;
        if (zCwArt) {
            settingsPanel.switchRow(R.drawable.ic_backdrop, getString(R.string.cw_blur), z2, new RunnableC0084z(this, z2, i2));
        }
        if (z2) {
            settingsPanel.slider(R.drawable.ic_focus, getString(R.string.cw_blur_level), Appearance.cwBlurLevel(this), 10, new C0023x(i4, settingsPanel, this), null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void buildDefaultLauncherPage(SettingsPanel settingsPanel) {
        boolean zIsHome = DefaultHome.isHome(this);
        View viewRow = settingsPanel.row(R.drawable.ic_apps, getString(zIsHome ? R.string.dl_is_home : R.string.dl_not_home), getString(zIsHome ? R.string.state_on : R.string.state_off), false);
        viewRow.findViewById(R.id.dot).setVisibility(zIsHome ? 0 : 8);
        viewRow.setFocusable(false);
        if (!zIsHome) {
            View viewRow2 = settingsPanel.row(R.drawable.ic_apps, getString(R.string.dl_set), null, true);
            settingsPanel.wire(viewRow2, viewRow2, new RunnableC0068i(this, viewRow2, 5));
        }
        boolean zServiceEnabled = Remaps.serviceEnabled(this);
        settingsPanel.switchRow(R.drawable.ic_remote, getString(R.string.dl_catch_home), zServiceEnabled, new RunnableC0084z(this, zServiceEnabled, 3));
        settingsPanel.note(getString(R.string.dl_catch_note));
        settingsPanel.header(getString(R.string.dl_adb));
        String strIp = DefaultHome.ip();
        settingsPanel.note(getString(R.string.dl_adb_note));
        StringBuilder sb = new StringBuilder("adb connect ");
        if (strIp == null) {
            strIp = "TV-IP";
        }
        sb.append(strIp);
        sb.append(":5555");
        settingsPanel.note(sb.toString());
        settingsPanel.note("adb shell " + DefaultHome.adbCommand());
        settingsPanel.note("adb shell pm grant " + getPackageName() + " android.permission.WRITE_SECURE_SETTINGS");
        settingsPanel.note(getString(R.string.dl_adb_script));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void buildProfilePage(final SettingsPanel settingsPanel) {
        settingsPanel.header(getString(R.string.avatars));
        String strChoice = Profile.choice(this);
        int i2 = (int) (this.density * 64.0f);
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        for (final int i4 = 0; i4 < Profile.EMOJI.length; i4++) {
            arrayList.add(settingsPanel.avatarView(Profile.emojiAvatar(i4, i2), strChoice.equals("emoji:" + i4), new Runnable() { // from class: com.sid.tvos.u
                @Override // java.lang.Runnable
                public final void run() {
                    this.lambda$buildProfilePage$135(i4, settingsPanel);
                }
            }));
        }
        settingsPanel.strip(arrayList);
        settingsPanel.header(getString(R.string.your_photos));
        List<Uri> listPhotos = Profile.photos(this, 12);
        if (listPhotos.isEmpty()) {
            settingsPanel.note(getString(R.string.no_photos));
        } else {
            ArrayList arrayList2 = new ArrayList();
            for (Uri uri : listPhotos) {
                View viewAvatarView = settingsPanel.avatarView(null, false, new RunnableC0021v(this, uri, settingsPanel, i3));
                ImageView[] imageViewArr = {(ImageView) viewAvatarView.findViewById(android.R.id.icon)};
                arrayList2.add(viewAvatarView);
                new Thread(new t.E(this, uri, i2, imageViewArr, 0)).start();
            }
            settingsPanel.strip(arrayList2);
        }
        settingsPanel.header(getString(R.string.profile));
        settingsPanel.action(R.drawable.ic_edit, getString(R.string.edit_name), Profile.name(this), new RunnableC0019t(7, settingsPanel, this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void buildSettingsPage(SettingsPanel settingsPanel) {
        settingsPanel.header(getString(R.string.cat_launcher));
        settingsPanel.nav(R.drawable.ic_palette, getString(R.string.appearance), null, new C0015p(this, 16));
        settingsPanel.nav(-1, getString(R.string.profile), Profile.name(this), new C0015p(this, 0));
        settingsPanel.action(R.drawable.ic_remote, getString(R.string.remote_buttons), null, new RunnableC0019t(0, settingsPanel, this));
        settingsPanel.nav(R.drawable.ic_apps, getString(R.string.default_launcher), getString(DefaultHome.isHome(this) ? R.string.state_on : R.string.state_off), new C0015p(this, 12));
        settingsPanel.header(getString(R.string.cat_tv));
        settingsPanel.action(R.drawable.ic_display, getString(R.string.display), null, new RunnableC0019t(1, settingsPanel, this));
        settingsPanel.action(R.drawable.ic_sound, getString(R.string.sound), null, new RunnableC0019t(2, settingsPanel, this));
        settingsPanel.action(R.drawable.ic_input, getString(R.string.inputs), null, new RunnableC0019t(3, settingsPanel, this));
        settingsPanel.action(R.drawable.ic_apps, getString(R.string.apps), null, new RunnableC0019t(4, settingsPanel, this));
        settingsPanel.header(getString(R.string.cat_system));
        settingsPanel.action(R.drawable.ic_tune, getString(R.string.all_settings), null, new RunnableC0019t(5, settingsPanel, this));
        settingsPanel.action(R.drawable.ic_info, getString(R.string.about), null, new RunnableC0019t(6, settingsPanel, this));
    }

    private void buildWeatherRows(SettingsPanel settingsPanel) {
        settingsPanel.toggle(R.drawable.ic_mappin, getString(R.string.show_location), "weather_city");
        String strManualPlace = Weather.manualPlace(this);
        settingsPanel.action(R.drawable.ic_keyboard, getString(R.string.enter_city), strManualPlace != null ? strManualPlace : getString(R.string.location_automatic), new RunnableC0012m(this, strManualPlace, settingsPanel, 1));
        if (strManualPlace != null) {
            settingsPanel.action(R.drawable.ic_location, getString(R.string.use_automatic_location), null, new RunnableC0019t(8, settingsPanel, this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void captureRemapKey() {
        final PopupWindow[] popupWindowArr = new PopupWindow[1];
        View viewAddMenuRow = addMenuRow(showCenteredPanel(false, popupWindowArr), null, R.drawable.ic_remote, getString(R.string.remap_press), getString(R.string.remap_press_hint), false, null);
        viewAddMenuRow.setClickable(false);
        viewAddMenuRow.setTag(R.id.selected, "own keys");
        Remaps.onCaptured = new C0006g(this, popupWindowArr, 4);
        Remaps.capturing = true;
        popupWindowArr[0].setOnDismissListener(new C0071l(this, 4));
        viewAddMenuRow.setOnKeyListener(new View.OnKeyListener() { // from class: t.K
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i2, KeyEvent keyEvent) {
                return this.f809a.lambda$captureRemapKey$169(popupWindowArr, view, i2, keyEvent);
            }
        });
    }

    private void ccFocusLift(View view, final float f2) {
        view.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: t.a0
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z2) {
                this.f851a.lambda$ccFocusLift$195(f2, view2, z2);
            }
        });
    }

    private void ccPill(View view, int i2, int i3, String str, String str2, Runnable runnable) {
        View viewFindViewById = view.findViewById(i2);
        ((ImageView) viewFindViewById.findViewById(R.id.icon)).setImageResource(i3);
        ((TextView) viewFindViewById.findViewById(R.id.title)).setText(str);
        TextView textView = (TextView) viewFindViewById.findViewById(R.id.status);
        textView.setText(str2 == null ? "" : str2);
        textView.setVisibility(str2 == null ? 8 : 0);
        viewFindViewById.setOnClickListener(new ViewOnClickListenerC0067h(runnable, 7));
        ccFocusLift(viewFindViewById, 1.05f);
    }

    private View ccRound(LinearLayout linearLayout, PopupWindow popupWindow, int i2, String str, Runnable runnable) {
        ColorStateList colorStateListA;
        ColorStateList colorStateListA2;
        e.i iVar;
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setBackgroundResource(R.drawable.cc_glass_round);
        frameLayout.setFocusable(true);
        frameLayout.setClickable(true);
        frameLayout.setContentDescription(str);
        ImageView imageView = new ImageView(this);
        imageView.setImageResource(i2);
        int i3 = R.drawable.pill_text;
        Resources resources = getResources();
        Resources.Theme theme = getTheme();
        e.j jVar = new e.j(resources, theme);
        synchronized (e.k.f389c) {
            try {
                SparseArray sparseArray = (SparseArray) e.k.f388b.get(jVar);
                colorStateListA = null;
                if (sparseArray == null || sparseArray.size() <= 0 || (iVar = (e.i) sparseArray.get(i3)) == null) {
                    colorStateListA2 = null;
                } else if (iVar.f384b.equals(resources.getConfiguration())) {
                    colorStateListA2 = iVar.f383a;
                } else {
                    sparseArray.remove(i3);
                    colorStateListA2 = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (colorStateListA2 == null) {
            ThreadLocal threadLocal = e.k.f387a;
            TypedValue typedValue = (TypedValue) threadLocal.get();
            if (typedValue == null) {
                typedValue = new TypedValue();
                threadLocal.set(typedValue);
            }
            resources.getValue(i3, typedValue, true);
            int i4 = typedValue.type;
            if (i4 < 28 || i4 > 31) {
                try {
                    colorStateListA = e.c.a(resources, resources.getXml(i3), theme);
                } catch (Exception e2) {
                    Log.w("ResourcesCompat", "Failed to inflate ColorStateList, leaving it to the framework", e2);
                }
            }
            if (colorStateListA != null) {
                e.k.a(jVar, i3, colorStateListA);
                colorStateListA2 = colorStateListA;
            } else {
                colorStateListA2 = Build.VERSION.SDK_INT >= 23 ? e.h.a(resources, i3, theme) : resources.getColorStateList(i3);
            }
        }
        imageView.setImageTintList(colorStateListA2);
        imageView.setDuplicateParentStateEnabled(true);
        int i5 = (int) (this.density * 22.0f);
        frameLayout.addView(imageView, new FrameLayout.LayoutParams(i5, i5, 17));
        int i6 = (int) (this.density * 50.0f);
        if (linearLayout.getChildCount() > 0) {
            linearLayout.addView(new View(this), new LinearLayout.LayoutParams(0, 1, 1.0f));
        }
        linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(i6, i6));
        frameLayout.setOnClickListener(new t.B(this, popupWindow, runnable, 2));
        ccFocusLift(frameLayout, 1.12f);
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: centreRecent, reason: merged with bridge method [inline-methods] */
    public void lambda$closeRecentApp$221(View view) {
        this.recentsScroll.post(new RunnableC0068i(this, view, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: chooseLauncherAction, reason: merged with bridge method [inline-methods] */
    public void lambda$chooseRemapAction$171(int i2) {
        PopupWindow[] popupWindowArr = new PopupWindow[1];
        LinearLayout linearLayoutShowCenteredPanel = showCenteredPanel(true, popupWindowArr);
        addMenuRow(linearLayoutShowCenteredPanel, null, R.drawable.ic_remote, getString(R.string.remap_choose, Remaps.keyName(i2)), null, false, null).setFocusable(false);
        int i3 = 0;
        while (true) {
            String[] strArr = LauncherActions.IDS;
            if (i3 >= strArr.length) {
                return;
            }
            String str = strArr[i3];
            addMenuRow(linearLayoutShowCenteredPanel, popupWindowArr[0], LauncherActions.ICONS[i3], LauncherActions.name(this, str), null, false, new t.I(this, i2, str, 3));
            i3++;
        }
    }

    private void chooseRemapAction(int i2) {
        int i3 = 1;
        PopupWindow[] popupWindowArr = new PopupWindow[1];
        LinearLayout linearLayoutShowCenteredPanel = showCenteredPanel(true, popupWindowArr);
        char c2 = 0;
        addMenuRow(linearLayoutShowCenteredPanel, null, R.drawable.ic_remote, getString(R.string.remap_choose, Remaps.keyName(i2)), null, false, null).setFocusable(false);
        String[][] strArr = {new String[]{"recents", null}, new String[]{"home", null}, new String[]{"back", null}, new String[]{"playpause", null}, new String[]{"mute", null}, new String[]{"settings", null}, new String[]{"none", null}};
        int[] iArr = {R.drawable.ic_recents, R.drawable.ic_apps, R.drawable.ic_folder_out, R.drawable.ic_power, R.drawable.ic_sound, R.drawable.ic_settings, R.drawable.ic_delete};
        int i4 = 0;
        for (int i5 = 7; i4 < i5; i5 = 7) {
            String str = strArr[i4][0];
            addMenuRow(linearLayoutShowCenteredPanel, popupWindowArr[0], iArr[i4], Remaps.actionName(this, str), null, false, new t.I(this, i2, str, i3));
            i4++;
            strArr = strArr;
        }
        int i6 = 2;
        addMenuRow(linearLayoutShowCenteredPanel, popupWindowArr[0], R.drawable.ic_palette, getString(R.string.remap_launcher_setting), "›", false, new RunnableC0081w(this, i2, i3));
        PackageManager packageManager = getPackageManager();
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LEANBACK_LAUNCHER"), 0);
        Collections.sort(listQueryIntentActivities, new C0072m(packageManager, i3));
        for (ResolveInfo resolveInfo : listQueryIntentActivities) {
            String str2 = resolveInfo.activityInfo.packageName;
            if (!str2.equals(getPackageName())) {
                PopupWindow popupWindow = popupWindowArr[c2];
                int i7 = R.drawable.ic_apps;
                int i8 = R.string.remap_open_app;
                Object[] objArr = new Object[i3];
                objArr[c2] = resolveInfo.loadLabel(packageManager);
                PackageManager packageManager2 = packageManager;
                ImageView imageView = (ImageView) addMenuRow(linearLayoutShowCenteredPanel, popupWindow, i7, getString(i8, objArr), null, false, new t.I(this, i2, str2, i6)).findViewById(R.id.icon);
                imageView.setImageTintList(null);
                imageView.setImageDrawable(resolveInfo.loadIcon(packageManager2));
                packageManager = packageManager2;
                i3 = 1;
                c2 = 0;
            }
        }
    }

    private View closeAllButton() {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        linearLayout.setFocusable(true);
        linearLayout.setClickable(true);
        int i2 = (int) (this.density * 84.0f);
        FrameLayout frameLayout = new FrameLayout(this);
        final GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(872415231);
        gradientDrawable.setStroke((int) Math.max(1.0f, this.density), 1509949439);
        frameLayout.setBackground(gradientDrawable);
        final ImageView imageView = new ImageView(this);
        imageView.setImageResource(R.drawable.ic_delete);
        imageView.setImageTintList(ColorStateList.valueOf(-1));
        float f2 = this.density;
        frameLayout.addView(imageView, new FrameLayout.LayoutParams((int) (f2 * 32.0f), (int) (f2 * 32.0f), 17));
        linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(i2, i2));
        TextView textView = new TextView(this);
        textView.setText(R.string.clear_all);
        textView.setTextColor(-1);
        textView.setTextSize(14.0f);
        textView.setTypeface(e.k.b(this, R.font.inter_semibold));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.topMargin = (int) (this.density * 12.0f);
        linearLayout.addView(textView, layoutParams);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.topMargin = (int) (this.density * 38.0f);
        layoutParams2.setMarginStart(((int) (recentCardPx()[0] * 0.45f)) + ((int) (this.density * 40.0f)));
        linearLayout.setLayoutParams(layoutParams2);
        linearLayout.setAlpha(0.7f);
        linearLayout.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: t.Y
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z2) {
                this.f848a.lambda$closeAllButton$215(gradientDrawable, imageView, view, z2);
            }
        });
        linearLayout.setOnKeyListener(new t.Z());
        linearLayout.setOnClickListener(new ViewOnClickListenerC0067h(this, 6));
        return linearLayout;
    }

    private void closeFolder() {
        openFolderName = null;
        this.folderOverlay.animate().alpha(0.0f).setDuration(200L).withEndAction(new t.P(this, 11)).start();
        this.folderPanel.animate().scaleX(0.92f).scaleY(0.92f).setDuration(200L).start();
        setHomeFocusable(true);
        focusTile(lastFocused);
    }

    private void closeRecentApp(View view, boolean z2) {
        if (view.getParent() == this.recentsRow && (view.getTag() instanceof AppAdapter.Entry)) {
            AppAdapter.Entry entry = (AppAdapter.Entry) view.getTag();
            view.setTag(null);
            view.animate().translationY((-this.root.getHeight()) * 0.6f).alpha(0.0f).setStartDelay(0L).setDuration(320L).setInterpolator(new AccelerateInterpolator(1.4f)).withEndAction(new RunnableC0069j(this, view, z2, this.recentsRow.indexOfChild(view), 0)).start();
            Recents.dismiss(this, entry.pkg);
            try {
                ActivityManager activityManager = (ActivityManager) getSystemService("activity");
                if (activityManager != null) {
                    activityManager.killBackgroundProcesses(entry.pkg);
                }
            } catch (Exception unused) {
            }
            this.handler.postDelayed(new RunnableC0062c(this, 2), 900L);
        }
    }

    private void closeRecents() {
        this.recentsOverlay.animate().alpha(0.0f).setDuration(200L).withEndAction(new t.P(this, 6)).start();
        setHomeFocusable(true);
        focusTile(lastFocused);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeRecentsNow() {
        this.recentsOverlay.setVisibility(8);
        this.topBar.setAlpha(1.0f);
        setHomeFocusable(true);
    }

    private Bitmap cwBackdrop(Bitmap bitmap) {
        Bitmap bitmapBackdrop = backdrop(bitmap);
        if (Appearance.cwBlur(this)) {
            Bitmap bitmapSoften = Blur.soften(bitmapBackdrop, Appearance.cwBlurLevel(this));
            if (bitmapSoften != bitmapBackdrop && bitmapBackdrop != bitmap) {
                bitmapBackdrop.recycle();
            }
            bitmapBackdrop = bitmapSoften;
        }
        if (bitmapBackdrop != bitmap) {
            bitmap = Gpu.upload(bitmapBackdrop);
        } else if (Gpu.enabled()) {
            bitmap = bitmap.copy(Bitmap.Config.HARDWARE, false);
        }
        if (bitmap != null) {
            bitmapBackdrop = bitmap;
        }
        synchronized (this.cwArt) {
            this.cwArt.add(bitmapBackdrop);
        }
        return bitmapBackdrop;
    }

    private Bitmap cwBackdropNow(int i2) {
        List<WatchNext.Item> listCwItemsFor = cwItemsFor(i2);
        if (listCwItemsFor == null || listCwItemsFor.isEmpty()) {
            return null;
        }
        return this.cwBackdrops.get(listCwItemsFor.get(i2 == this.cwPosition ? Math.min(this.cwSelected, listCwItemsFor.size() - 1) : 0).art);
    }

    private void cwBgChoice(SettingsPanel settingsPanel, int i2, int i3, String[] strArr, String str, int i4) {
        settingsPanel.choices(i2, getString(i3), strArr, i4, new C0016q(2, this, str), null);
    }

    private int[] cwCardPx() {
        int width = this.root.getWidth() > 0 ? this.root.getWidth() : getResources().getDisplayMetrics().widthPixels;
        float f2 = this.density;
        float fMin = ((((width - (110.0f * f2)) - ((24.0f * f2) * 0.55f)) / 1.55f) * 9.0f) / 16.0f;
        int i2 = this.dockTopPx;
        if (i2 > 0) {
            float f3 = ((i2 - (80.0f * f2)) - (50.0f * f2)) / 1.05f;
            if (f3 > f2 * 60.0f) {
                fMin = Math.min(fMin, f3);
            }
        }
        float fPow = fMin / ((float) Math.pow(1.13d, 2 - Appearance.step(this, "cw_size")));
        return new int[]{Math.round((16.0f * fPow) / 9.0f), Math.round(fPow)};
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v22, types: [float[], java.io.Serializable] */
    private void cwColourRows(SettingsPanel settingsPanel, final int i2, int i3) {
        float f2;
        float fAbs;
        final int i4 = 2;
        final int i5 = 0;
        String[] stringArray = getResources().getStringArray(R.array.cw_colours);
        final int i6 = 1;
        String[] strArr = (String[]) Arrays.copyOf(stringArray, stringArray.length + 1);
        strArr[stringArray.length] = getString(R.string.cw_custom);
        int iChoice = CwBackground.choice(this, i2);
        settingsPanel.choices(R.drawable.ic_palette, getString(i3), strArr, iChoice, new IntChoice() { // from class: com.sid.tvos.B
            @Override // com.sid.tvos.MainActivity.IntChoice
            public final void pick(int i7) {
                this.f140a.lambda$cwColourRows$120(i2, i7);
            }
        }, null);
        if (iChoice != CwBackground.CUSTOM) {
            return;
        }
        int iCustom = CwBackground.custom(this, i2);
        int i7 = f.a.f400a;
        float fRed = Color.red(iCustom) / 255.0f;
        float fGreen = Color.green(iCustom) / 255.0f;
        float fBlue = Color.blue(iCustom) / 255.0f;
        float fMax = Math.max(fRed, Math.max(fGreen, fBlue));
        float fMin = Math.min(fRed, Math.min(fGreen, fBlue));
        float f3 = fMax - fMin;
        float f4 = (fMax + fMin) / 2.0f;
        if (fMax == fMin) {
            f2 = 0.0f;
            fAbs = 0.0f;
        } else {
            if (fMax == fRed) {
                f2 = ((fGreen - fBlue) / f3) % 6.0f;
            } else {
                f2 = fMax == fGreen ? ((fBlue - fRed) / f3) + 2.0f : ((fRed - fGreen) / f3) + 4.0f;
            }
            fAbs = f3 / (1.0f - Math.abs((2.0f * f4) - 1.0f));
        }
        float f5 = 360.0f;
        float f6 = (f2 * 60.0f) % 360.0f;
        if (f6 < 0.0f) {
            f6 += 360.0f;
        }
        if (f6 < 0.0f) {
            f5 = 0.0f;
        } else if (f6 <= 360.0f) {
            f5 = f6;
        }
        if (fAbs < 0.0f) {
            fAbs = 0.0f;
        } else if (fAbs > 1.0f) {
            fAbs = 1.0f;
        }
        if (f4 < 0.0f) {
            f4 = 0.0f;
        } else if (f4 > 1.0f) {
            f4 = 1.0f;
        }
        final ?? r5 = {f5, fAbs, f4};
        final t.I i8 = new t.I(this, i2, r5, 4);
        settingsPanel.slider(R.drawable.ic_palette, getString(R.string.cw_hue), Math.round(r5[0] / 5.0f), 72, new IntChoice() { // from class: com.sid.tvos.D
            @Override // com.sid.tvos.MainActivity.IntChoice
            public final void pick(int i9) {
                switch (i5) {
                    case 0:
                        MainActivity.lambda$cwColourRows$122(r5, (t.I) i8, i9);
                        break;
                    case 1:
                        MainActivity.lambda$cwColourRows$125(r5, (t.I) i8, i9);
                        break;
                    default:
                        MainActivity.lambda$cwColourRows$128(r5, (t.I) i8, i9);
                        break;
                }
            }
        }, null, new IntLabel() { // from class: com.sid.tvos.E
            @Override // com.sid.tvos.MainActivity.IntLabel
            public final String text(int i9) {
                switch (i5) {
                    case 0:
                        return MainActivity.lambda$cwColourRows$123(i9);
                    case 1:
                        return MainActivity.lambda$cwColourRows$126(i9);
                    default:
                        return MainActivity.lambda$cwColourRows$129(i9);
                }
            }
        }, new TrackColours() { // from class: com.sid.tvos.C
            @Override // com.sid.tvos.MainActivity.TrackColours
            public final int[] colours() {
                switch (i6) {
                    case 0:
                        return MainActivity.lambda$cwColourRows$130(r5);
                    case 1:
                        return MainActivity.lambda$cwColourRows$124(r5);
                    default:
                        return MainActivity.lambda$cwColourRows$127(r5);
                }
            }
        });
        settingsPanel.slider(R.drawable.ic_palette, getString(R.string.cw_saturation), Math.round(r5[1] * 20.0f), 20, new IntChoice() { // from class: com.sid.tvos.D
            @Override // com.sid.tvos.MainActivity.IntChoice
            public final void pick(int i9) {
                switch (i6) {
                    case 0:
                        MainActivity.lambda$cwColourRows$122(r5, (t.I) i8, i9);
                        break;
                    case 1:
                        MainActivity.lambda$cwColourRows$125(r5, (t.I) i8, i9);
                        break;
                    default:
                        MainActivity.lambda$cwColourRows$128(r5, (t.I) i8, i9);
                        break;
                }
            }
        }, null, new IntLabel() { // from class: com.sid.tvos.E
            @Override // com.sid.tvos.MainActivity.IntLabel
            public final String text(int i9) {
                switch (i6) {
                    case 0:
                        return MainActivity.lambda$cwColourRows$123(i9);
                    case 1:
                        return MainActivity.lambda$cwColourRows$126(i9);
                    default:
                        return MainActivity.lambda$cwColourRows$129(i9);
                }
            }
        }, new TrackColours() { // from class: com.sid.tvos.C
            @Override // com.sid.tvos.MainActivity.TrackColours
            public final int[] colours() {
                switch (i4) {
                    case 0:
                        return MainActivity.lambda$cwColourRows$130(r5);
                    case 1:
                        return MainActivity.lambda$cwColourRows$124(r5);
                    default:
                        return MainActivity.lambda$cwColourRows$127(r5);
                }
            }
        });
        settingsPanel.slider(R.drawable.ic_palette, getString(R.string.cw_lightness), Math.round(r5[2] * 20.0f), 20, new IntChoice() { // from class: com.sid.tvos.D
            @Override // com.sid.tvos.MainActivity.IntChoice
            public final void pick(int i9) {
                switch (i4) {
                    case 0:
                        MainActivity.lambda$cwColourRows$122(r5, (t.I) i8, i9);
                        break;
                    case 1:
                        MainActivity.lambda$cwColourRows$125(r5, (t.I) i8, i9);
                        break;
                    default:
                        MainActivity.lambda$cwColourRows$128(r5, (t.I) i8, i9);
                        break;
                }
            }
        }, null, new IntLabel() { // from class: com.sid.tvos.E
            @Override // com.sid.tvos.MainActivity.IntLabel
            public final String text(int i9) {
                switch (i4) {
                    case 0:
                        return MainActivity.lambda$cwColourRows$123(i9);
                    case 1:
                        return MainActivity.lambda$cwColourRows$126(i9);
                    default:
                        return MainActivity.lambda$cwColourRows$129(i9);
                }
            }
        }, new TrackColours() { // from class: com.sid.tvos.C
            @Override // com.sid.tvos.MainActivity.TrackColours
            public final int[] colours() {
                switch (i5) {
                    case 0:
                        return MainActivity.lambda$cwColourRows$130(r5);
                    case 1:
                        return MainActivity.lambda$cwColourRows$124(r5);
                    default:
                        return MainActivity.lambda$cwColourRows$127(r5);
                }
            }
        });
    }

    private List<WatchNext.Item> cwItemsFor(int i2) {
        AppAdapter.Entry entryEntryAt = this.adapter.entryAt(i2);
        if (this.cwData == null || entryEntryAt == null || entryEntryAt.isFolder()) {
            return null;
        }
        return this.cwData.get(entryEntryAt.pkg);
    }

    private int cwTopDp() {
        return 42;
    }

    private static void darkTile(Canvas canvas, int i2) {
        float f2 = i2;
        float f3 = f2 * 0.23f;
        RectF rectF = new RectF(0.0f, 0.0f, f2, f2);
        Paint paint = new Paint(5);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, f2, -12961220, -15592940, tileMode));
        canvas.drawPath(Corners.squircle(new Path(), rectF, f3), paint);
        paint.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, f2, 1090519039, 184549375, tileMode));
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(Math.max(1.0f, f2 / 40.0f));
        rectF.inset(paint.getStrokeWidth() / 2.0f, paint.getStrokeWidth() / 2.0f);
        canvas.drawPath(Corners.squircle(new Path(), rectF, f3), paint);
    }

    private void downFromStatusBar() {
        if (this.cwRow.getVisibility() != 0 || this.cwRow.getChildCount() <= 0 || this.cwPosition < 0 || !this.shelfShown) {
            focusTile(Math.min(lastFocused % COLUMNS, this.adapter.getItemCount() - 1));
            return;
        }
        setCwFocusable(true);
        LinearLayout linearLayout = this.cwRow;
        linearLayout.getChildAt(Math.min(this.cwSelected, linearLayout.getChildCount() - 1)).requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void endBlurPreview() {
    }

    private void enterFullScreen() {
        Bitmap bitmap;
        int i2 = 0;
        if (this.fullScreen || !this.shelfShown) {
            return;
        }
        this.fullScreen = true;
        View[] viewArr = {this.grid, this.cwInfo, this.cwScroll, this.topBar, this.glass, findViewById(R.id.fullHint)};
        for (int i3 = 0; i3 < 6; i3++) {
            viewArr[i3].animate().alpha(0.0f).setDuration(380L).setInterpolator(CALM).start();
        }
        this.grid.animate().translationY(this.density * 60.0f).setDuration(420L).setInterpolator(CALM).start();
        this.shelfScrim.animate().alpha(0.35f).setDuration(420L).start();
        this.fullFrosted = null;
        if (!Appearance.cwArt(this) && this.frostedSet.contains(this.shelfBitmap) && (bitmap = this.frostSource.get(this.shelfBitmap)) != null) {
            this.fullFrosted = this.shelfBitmap;
            this.stepFadeMs = 420L;
            setShelf(bitmap, 0);
        }
        View viewFindViewById = findViewById(R.id.fullCatcher);
        viewFindViewById.setOnKeyListener(new ViewOnKeyListenerC0064e(this, i2));
        viewFindViewById.requestFocus();
    }

    private void exitFullScreen(boolean z2) {
        if (this.fullScreen) {
            this.fullScreen = false;
            View[] viewArr = {this.grid, this.cwInfo, this.cwScroll, this.topBar};
            for (int i2 = 0; i2 < 4; i2++) {
                viewArr[i2].animate().alpha(1.0f).setDuration(380L).setInterpolator(CALM).start();
            }
            this.grid.animate().translationY(0.0f).setDuration(420L).setInterpolator(CALM).start();
            this.shelfScrim.animate().alpha(1.0f).setDuration(420L).start();
            Bitmap bitmap = this.fullFrosted;
            if (bitmap != null && !bitmap.isRecycled() && this.frostSource.get(this.fullFrosted) == this.shelfBitmap) {
                this.stepFadeMs = 420L;
                setShelf(this.fullFrosted, 0);
            }
            this.fullFrosted = null;
            int i3 = this.fullFromCard;
            this.fullFromCard = -1;
            if (z2 && focusStatusBar()) {
                return;
            }
            if (i3 < 0 || i3 >= this.cwRow.getChildCount() || this.cwRow.getVisibility() != 0) {
                focusTile(Math.min(lastFocused % COLUMNS, Math.max(0, this.adapter.getItemCount() - 1)));
            } else {
                setCwFocusable(true);
                this.cwRow.getChildAt(i3).requestFocus();
            }
        }
    }

    private void fadeOutThen(PopupWindow popupWindow, Runnable runnable) {
        if (popupWindow != null && popupWindow.isShowing()) {
            popupWindow.getContentView().animate().alpha(0.0f).scaleX(0.97f).scaleY(0.97f).setDuration(160L).setInterpolator(new DecelerateInterpolator()).withEndAction(new RunnableC0074o(popupWindow, runnable, 2)).start();
        } else if (runnable != null) {
            runnable.run();
        }
    }

    private void finishMove() {
        this.movingKey = null;
        stopWiggle();
        TextView textView = this.moveHint;
        if (textView != null) {
            textView.animate().alpha(0.0f).setDuration(200L).start();
        }
    }

    private static void focusFirst(LinearLayout linearLayout) {
        for (int i2 = 0; i2 < linearLayout.getChildCount(); i2++) {
            if (linearLayout.getChildAt(i2).isFocusable()) {
                linearLayout.getChildAt(i2).requestFocus();
                return;
            }
        }
    }

    private boolean focusStatusBar() {
        List<View> listShownStatusButtons = shownStatusButtons();
        if (listShownStatusButtons.isEmpty()) {
            return false;
        }
        listShownStatusButtons.get(0).requestFocus();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void focusTile(int i2) {
        if (this.adapter.getItemCount() == 0) {
            return;
        }
        final int iMax = Math.max(0, Math.min(i2, this.adapter.getItemCount() - 1));
        androidx.recyclerview.widget.o oVarFindViewHolderForAdapterPosition = this.grid.findViewHolderForAdapterPosition(iMax);
        if (oVarFindViewHolderForAdapterPosition == null) {
            this.grid.addOnScrollListener(new r.Q() { // from class: com.sid.tvos.MainActivity.14
                @Override // r.Q
                public void onScrollStateChanged(RecyclerView recyclerView, int i3) {
                    if (i3 != 0) {
                        return;
                    }
                    recyclerView.removeOnScrollListener(this);
                    androidx.recyclerview.widget.o oVarFindViewHolderForAdapterPosition2 = recyclerView.findViewHolderForAdapterPosition(iMax);
                    View viewFindViewById = oVarFindViewHolderForAdapterPosition2 != null ? oVarFindViewHolderForAdapterPosition2.itemView.findViewById(R.id.card) : recyclerView.getChildAt(0);
                    if (viewFindViewById != null) {
                        viewFindViewById.requestFocus();
                    }
                }
            });
            this.grid.smoothScrollToPosition(iMax);
            return;
        }
        View viewFindViewById = oVarFindViewHolderForAdapterPosition.itemView.findViewById(R.id.card);
        if (viewFindViewById.isFocused()) {
            onTileFocused(iMax, viewFindViewById);
        } else {
            viewFindViewById.requestFocus();
        }
    }

    private long frostMs() {
        return isLowRam() ? 650L : 950L;
    }

    private void frostShelf() {
        Bitmap bitmap = this.shelfBitmap;
        if (bitmap == null || this.frostedSet.contains(bitmap)) {
            return;
        }
        Bitmap[] bitmapArr = this.frostSteps.get(bitmap);
        if (bitmapArr != null) {
            playFrostSteps(bitmap, bitmapArr);
        } else {
            FROST.execute(new t.F(this, bitmap, Appearance.blur(this), 2));
        }
    }

    private static String gb(long j) {
        return String.format(Locale.US, "%.1f GB", Double.valueOf(j / 1.073741824E9d));
    }

    private Bitmap glassBackdrop(float f2) {
        FrameLayout frameLayout;
        int iBlurDiv;
        int iBlurPx;
        if (Appearance.liquid(this)) {
            frameLayout = this.root;
            iBlurDiv = blurDiv(4);
            iBlurPx = blurPx(1);
            f2 = Math.min(1.0f, f2 + 0.18f);
        } else {
            frameLayout = this.root;
            iBlurDiv = blurDiv(8);
            iBlurPx = blurPx(3);
        }
        return Blur.snapshot(frameLayout, iBlurDiv, iBlurPx, f2);
    }

    private void glideGlass(final View view, final float f2, final float f3) {
        final Rect rect = new Rect();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.glassGlide = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(this.glideMs);
        this.glassGlide.setInterpolator(this.glideCurve);
        final float translationX = this.glass.getTranslationX() - tileX(view, rect, f2);
        final float translationY = this.glass.getTranslationY() - tileY(view, rect, f3);
        this.glassGlide.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: t.Q
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f817a.lambda$glideGlass$31(view, rect, f2, f3, translationX, translationY, valueAnimator);
            }
        });
        this.glassGlide.start();
    }

    private boolean hasAirPlay() {
        PackageManager packageManager = getPackageManager();
        if (isInstalled(packageManager, "com.tcl.airplay2") || packageManager.resolveActivity(new Intent().setClassName("com.mediatek.AirplayAPK", "com.mediatek.activity.TVActivity"), 0) != null) {
            return true;
        }
        for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LEANBACK_LAUNCHER"), 0)) {
            String lowerCase = (resolveInfo.activityInfo.packageName + " " + ((Object) resolveInfo.loadLabel(packageManager))).toLowerCase(Locale.ROOT);
            if (lowerCase.contains("airplay") || lowerCase.contains("airscreen") || lowerCase.contains("airreceiver")) {
                return true;
            }
        }
        return false;
    }

    private void hideCw() {
        this.cwPosition = -1;
        setCwFocusable(false);
        showCwViews(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideGlass() {
        if (this.glassShown) {
            this.glassShown = false;
            this.glass.animate().alpha(0.0f).setDuration(160L).start();
        }
    }

    private void hideShelf() {
        showFullHint(false);
        if (this.shelfShown) {
            this.shelfShown = false;
            hideCw();
            this.handler.removeCallbacks(this.frostLater);
            this.handler.removeCallbacks(this.shelfBack);
            this.handler.postDelayed(this.frostLater, isLowRam() ? 280L : 170L);
            return;
        }
        if (this.shelfGroup.getAlpha() != 0.0f || this.adapter.getItemCount() <= 0) {
            return;
        }
        if (this.shelfBitmap == null) {
            setShelf(this.adapter.shelfAt(0), 0);
        }
        this.shelfPosition = 0;
        this.shelfScrim.animate().alpha(1.0f).setDuration(300L).start();
        this.shelfGroup.setTranslationY(0.0f);
        this.shelfGroup.animate().alpha(0.85f).setDuration(380L).start();
        frostShelf();
    }

    private static boolean isConnected(BluetoothDevice bluetoothDevice) {
        try {
            return ((Boolean) BluetoothDevice.class.getMethod("isConnected", null).invoke(bluetoothDevice, null)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    private boolean isCwApp(int i2) {
        AppAdapter.Entry entryEntryAt = this.adapter.entryAt(i2);
        return Appearance.cwOn(this) && i2 < COLUMNS && entryEntryAt != null && !entryEntryAt.isFolder();
    }

    private boolean isCwArt(Bitmap bitmap) {
        boolean z2;
        if (bitmap == null) {
            return false;
        }
        synchronized (this.cwArt) {
            try {
                z2 = this.cwArt.contains(bitmap) || this.cwArt.contains(this.frostSource.get(bitmap));
            } catch (Throwable th) {
                throw th;
            }
        }
        return z2;
    }

    private static boolean isEnabled(PackageManager packageManager, String str) {
        try {
            return packageManager.getApplicationInfo(str, 0).enabled;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    private static boolean isInstalled(PackageManager packageManager, String str) {
        try {
            packageManager.getPackageInfo(str, 0);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    private boolean isLowRam() {
        if (this.lowRam == null) {
            ActivityManager activityManager = (ActivityManager) getSystemService("activity");
            this.lowRam = Boolean.valueOf(activityManager != null && activityManager.isLowRamDevice());
        }
        return this.lowRam.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: keepFrostSteps, reason: merged with bridge method [inline-methods] */
    public void lambda$prefrost$37(Bitmap bitmap, Bitmap[] bitmapArr) {
        for (Bitmap bitmap2 : bitmapArr) {
            this.frostedSet.add(bitmap2);
            this.frostSource.put(bitmap2, bitmap);
        }
        this.frosted.put(bitmap, bitmapArr[bitmapArr.length - 1]);
        this.frostSteps.put(bitmap, bitmapArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addInputRow$202(PopupWindow popupWindow, Runnable runnable, View view) {
        fadeOutThen(popupWindow, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addMenuRow$83(PopupWindow popupWindow, Runnable runnable, View view) {
        fadeOutThen(popupWindow, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$applyDark$159(boolean z2, List list) {
        if (this.darkPending || Appearance.dark(this) != z2) {
            return;
        }
        this.adapter.notifyItemRangeChanged(0, list.size());
        int i2 = this.shelfPosition;
        if (this.shelfShown && i2 >= 0) {
            this.shelfPosition = -1;
            showShelf(i2);
        }
        PopupWindow popupWindow = this.controlCenter;
        if (popupWindow == null || !popupWindow.isShowing()) {
            return;
        }
        this.shelf.animate().cancel();
        this.shelf.setAlpha(1.0f);
        this.shelf2.animate().cancel();
        this.shelf2.setAlpha(0.0f);
        this.handler.postDelayed(new RunnableC0062c(this, 4), 60L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$applyDark$160(boolean z2) {
        this.darkApplying = false;
        if (this.darkPending || Appearance.dark(this) != z2) {
            applyDark();
        } else {
            this.adapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$applyDark$161(int i2, final List list, final boolean z2, List list2) {
        IconPack.clearCache();
        Stage.clear();
        if (i2 >= 0 && i2 < list.size()) {
            renderStage((AppAdapter.Entry) list.get(i2));
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AppAdapter.Entry entry = (AppAdapter.Entry) it.next();
            if (!entry.isPlaceholder()) {
                IconPack.tile(this, entry);
            }
        }
        this.handler.post(new Runnable() { // from class: t.b0
            @Override // java.lang.Runnable
            public final void run() {
                this.f857a.lambda$applyDark$159(z2, list);
            }
        });
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            AppAdapter.Entry entry2 = (AppAdapter.Entry) it2.next();
            if (Appearance.dark(this) != z2) {
                break;
            } else if (!entry2.isPlaceholder()) {
                IconPack.tile(this, entry2);
            }
        }
        for (int i3 = 0; i3 < list.size() && Appearance.dark(this) == z2; i3++) {
            renderStage((AppAdapter.Entry) list.get(i3));
        }
        this.handler.post(new RunnableC0084z(this, z2, 7));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$applyStatusItems$75() {
        updateStatusGlass(this.shelfBitmap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$askName$29(EditText editText, NameCallback nameCallback, DialogInterface dialogInterface, int i2) {
        String strTrim = editText.getText().toString().trim();
        if (strTrim.isEmpty()) {
            return;
        }
        nameCallback.onName(strTrim);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$askText$162(EditText editText, TextCallback textCallback, DialogInterface dialogInterface, int i2) {
        String strTrim = editText.getText().toString().trim();
        if (strTrim.isEmpty()) {
            return;
        }
        textCallback.onText(strTrim);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$blurBackdrop$10(int i2, Bitmap bitmap) {
        if (i2 != this.backdropGen) {
            return;
        }
        this.dim.setImageBitmap(bitmap);
        this.dim.animate().alpha(1.0f).setDuration(260L).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$blurBackdrop$11(Bitmap bitmap, boolean z2, int i2) {
        Bitmap bitmapSoften = Blur.soften(bitmap, blurPx(z2 ? 1 : 3), z2 ? 0.8f : 0.62f);
        bitmapSoften.prepareToDraw();
        this.handler.post(new t.F(this, i2, bitmapSoften, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildAppearancePage$102(int i2) {
        applyGlass(i2 == 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildAppearancePage$103(List list, int i2) {
        IconPack.set(this, ((String[]) list.get(i2))[0]);
        this.adapter.reload();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildAppearancePage$104(boolean z2) {
        Appearance.setDark(this, !z2);
        DarkSchedule.holdManual(this);
        applyDark();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildAppearancePage$105(int i2) {
        DarkSchedule.setMode(this, i2);
        if (DarkSchedule.apply(this)) {
            applyDark();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildAppearancePage$106(int i2) {
        DarkSchedule.setCustom(this, i2 * 30, DarkSchedule.customOff(this));
        if (DarkSchedule.apply(this)) {
            applyDark();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildAppearancePage$107(int i2) {
        DarkSchedule.setCustom(this, DarkSchedule.customOn(this), i2 * 30);
        if (DarkSchedule.apply(this)) {
            applyDark();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildAppearancePage$108(int i2) {
        Appearance.setStandBy(this, "standby_layout", i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildAppearancePage$109(int i2) {
        Appearance.setStandBy(this, "standby_left", i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildAppearancePage$110(int i2) {
        Appearance.setStandBy(this, "standby_right", i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildAppearancePage$111(int i2) {
        Appearance.setStandBy(this, "standby_colour", i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildAppearancePage$112(View view) {
        this.fromStandByPreview = true;
        this.standByReturnFocus = view;
        startActivity(new Intent(this, (Class<?>) StandByActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildAppearancePage$113() {
        Intent intentAddFlags = new Intent("android.settings.DREAM_SETTINGS").addFlags(268435456);
        if (intentAddFlags.resolveActivity(getPackageManager()) == null) {
            intentAddFlags = new Intent("android.settings.SETTINGS").addFlags(268435456);
        }
        lambda$showInputs$201(intentAddFlags);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildAppearancePage$114(int i2) {
        Appearance.setRecent(this, i2, Appearance.recentRam(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildAppearancePage$115(boolean z2) {
        Appearance.setRecent(this, Appearance.recentSize(this), !z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildAppearancePage$116(int i2) {
        Appearance.setStatusMinimal(this, i2 == 0);
        applyStatusItems();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildAppearancePage$117(boolean z2) {
        Appearance.setCwOn(this, !z2);
        applyCwOn();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildCwArtRows$147(int i2) {
        CwBackground.set(this, "cw_bg", i2);
        applyCwBackground();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildCwArtRows$148(String[] strArr, int i2) {
        if (i2 < strArr.length) {
            CwBackground.setPreset(this, i2);
        }
        applyCwBackground();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildCwArtRows$150(boolean z2) {
        Toast.makeText(this, getString(z2 ? R.string.cw_picture_set : R.string.cw_picture_failed), 0).show();
        if (z2) {
            this.cwUploadUrl = null;
            applyCwBackground();
            SettingsPanel settingsPanel = this.settingsPanel;
            if (settingsPanel != null) {
                settingsPanel.refresh();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildCwArtRows$151(SettingsPanel settingsPanel) {
        this.cwUploadUrl = PhoneUpload.start(this, new C0015p(this, 14));
        settingsPanel.refresh();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildCwArtRows$152(boolean z2) {
        if (z2) {
            applyCwBackground();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildCwArtRows$153(Uri uri) {
        this.handler.post(new RunnableC0084z(this, CwBackground.setPicture(this, uri), 5));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildCwArtRows$154(Uri uri) {
        new Thread(new t.G(this, uri, 1)).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$buildCwArtRows$155(ImageView[] imageViewArr, Bitmap bitmap) {
        imageViewArr[0].setImageBitmap(bitmap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildCwArtRows$156(Uri uri, int i2, ImageView[] imageViewArr) {
        Bitmap bitmapThumb = Profile.thumb(this, uri, i2);
        if (bitmapThumb != null) {
            this.handler.post(new t.H(imageViewArr, bitmapThumb, 1));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildCwArtRows$157(boolean z2) {
        Appearance.setCwBlur(this, !z2);
        applyCwBlur();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildCwArtRows$158(SettingsPanel settingsPanel, int i2) {
        if (i2 != 0) {
            Appearance.setCwBlurLevel(this, i2);
            applyCwBlur();
        } else {
            Appearance.setCwBlur(this, false);
            applyCwBlur();
            settingsPanel.refresh();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildDefaultLauncherPage$100(View view) {
        this.fromStandByPreview = true;
        this.standByReturnFocus = view;
        if (DefaultHome.request(this, 42)) {
            return;
        }
        this.fromStandByPreview = false;
        Toast.makeText(this, getString(R.string.dl_cannot), 1).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildDefaultLauncherPage$101(boolean z2) {
        if (!z2 && Remaps.enableService(this)) {
            return;
        }
        Intent intent = new Intent("android.settings.ACCESSIBILITY_SETTINGS");
        lambda$showInputs$201(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildProfilePage$135(int i2, SettingsPanel settingsPanel) {
        Profile.setEmoji(this, i2);
        applyStatusItems();
        settingsPanel.refresh();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildProfilePage$136(boolean z2, SettingsPanel settingsPanel) {
        if (z2) {
            applyStatusItems();
            settingsPanel.refresh();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildProfilePage$137(Uri uri, SettingsPanel settingsPanel) {
        this.handler.post(new A(this, Profile.setPhoto(this, uri), settingsPanel));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildProfilePage$138(Uri uri, SettingsPanel settingsPanel) {
        new Thread(new RunnableC0021v(this, uri, settingsPanel, 1)).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$buildProfilePage$139(ImageView[] imageViewArr, Bitmap bitmap) {
        imageViewArr[0].setImageBitmap(bitmap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildProfilePage$140(Uri uri, int i2, ImageView[] imageViewArr) {
        Bitmap bitmapThumb = Profile.thumb(this, uri, i2);
        if (bitmapThumb != null) {
            this.handler.post(new t.H(imageViewArr, bitmapThumb, 0));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildProfilePage$141(SettingsPanel settingsPanel, String str) {
        Profile.setName(this, str);
        settingsPanel.refresh();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildProfilePage$142(SettingsPanel settingsPanel) {
        askText(R.string.profile_name, Profile.name(this), new C0023x(1, settingsPanel, this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildSettingsPage$88(SettingsPanel settingsPanel) {
        settingsPanel.closeThen(new RunnableC0062c(this, 15));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildSettingsPage$89() {
        lambda$showInputs$201(new Intent("android.settings.DISPLAY_SETTINGS"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildSettingsPage$90(SettingsPanel settingsPanel) {
        settingsPanel.closeThen(new RunnableC0062c(this, 12));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildSettingsPage$91() {
        lambda$showInputs$201(new Intent("android.settings.SOUND_SETTINGS"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildSettingsPage$92(SettingsPanel settingsPanel) {
        settingsPanel.closeThen(new RunnableC0062c(this, 14));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildSettingsPage$93(SettingsPanel settingsPanel) {
        settingsPanel.closeThen(new t.P(this, 7));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildSettingsPage$94() {
        lambda$showInputs$201(new Intent("android.settings.APPLICATION_SETTINGS"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildSettingsPage$95(SettingsPanel settingsPanel) {
        settingsPanel.closeThen(new RunnableC0062c(this, 16));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildSettingsPage$96() {
        lambda$showInputs$201(new Intent("android.settings.SETTINGS"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildSettingsPage$97(SettingsPanel settingsPanel) {
        settingsPanel.closeThen(new RunnableC0062c(this, 13));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildSettingsPage$98() {
        lambda$showInputs$201(new Intent("android.settings.DEVICE_INFO_SETTINGS"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildSettingsPage$99(SettingsPanel settingsPanel) {
        settingsPanel.closeThen(new RunnableC0062c(this, 18));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildWeatherRows$143(String str, SettingsPanel settingsPanel, String str2) {
        if (str2 == null) {
            Toast.makeText(this, getString(R.string.place_not_found, str), 1).show();
        } else {
            Weather.load(this, new C0015p(this, 15));
            settingsPanel.refresh();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildWeatherRows$144(SettingsPanel settingsPanel, String str) {
        Weather.setManual(this, str, new F(settingsPanel, this, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildWeatherRows$145(String str, SettingsPanel settingsPanel) {
        int i2 = R.string.enter_city;
        if (str == null) {
            str = "";
        }
        askText(i2, str, new C0023x(2, settingsPanel, this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildWeatherRows$146(SettingsPanel settingsPanel) {
        Weather.setAutomatic(this);
        Weather.load(this, new C0015p(this, 15));
        settingsPanel.refresh();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$captureRemapKey$167(PopupWindow[] popupWindowArr, int i2) {
        if (popupWindowArr[0].isShowing()) {
            popupWindowArr[0].dismiss();
            chooseRemapAction(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$captureRemapKey$168() {
        Remaps.capturing = false;
        Remaps.onCaptured = null;
        this.dim.animate().alpha(0.0f).setDuration(200L).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$captureRemapKey$169(PopupWindow[] popupWindowArr, View view, int i2, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) {
            return true;
        }
        if (i2 == 4) {
            popupWindowArr[0].dismiss();
            return true;
        }
        if (Remaps.reserved(i2)) {
            Toast.makeText(this, R.string.remap_reserved, 0).show();
            return true;
        }
        popupWindowArr[0].dismiss();
        chooseRemapAction(i2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$ccFocusLift$195(float f2, View view, boolean z2) {
        if (!this.ccOpening) {
            ViewPropertyAnimator viewPropertyAnimatorScaleX = view.animate().scaleX(z2 ? f2 : 1.0f);
            if (!z2) {
                f2 = 1.0f;
            }
            viewPropertyAnimatorScaleX.scaleY(f2).setDuration(200L).setInterpolator(z2 ? new OvershootInterpolator(1.3f) : new DecelerateInterpolator(2.0f)).start();
            return;
        }
        view.setScaleX(z2 ? f2 : 1.0f);
        if (!z2) {
            f2 = 1.0f;
        }
        view.setScaleY(f2);
        if (view.getBackground() != null) {
            view.getBackground().jumpToCurrentState();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$ccRound$194(PopupWindow popupWindow, Runnable runnable, View view) {
        fadeOutThen(popupWindow, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$centreRecent$220(View view) {
        int iMax = Math.max(0, this.recentsScroll.getPaddingLeft() + (((view.getWidth() / 2) + view.getLeft()) - (this.recentsScroll.getWidth() / 2)));
        HorizontalScrollView horizontalScrollView = this.recentsScroll;
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(horizontalScrollView, "scrollX", horizontalScrollView.getScrollX(), iMax);
        objectAnimatorOfInt.setDuration(360L);
        objectAnimatorOfInt.setInterpolator(CALM);
        objectAnimatorOfInt.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$chooseLauncherAction$175(int i2, String str) {
        lambda$chooseRemapAction$170(i2, "launcher:" + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$chooseRemapAction$172(int i2) {
        this.handler.postDelayed(new RunnableC0081w(this, i2, 2), 250L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$chooseRemapAction$173(PackageManager packageManager, ResolveInfo resolveInfo, ResolveInfo resolveInfo2) {
        return String.valueOf(resolveInfo.loadLabel(packageManager)).compareToIgnoreCase(String.valueOf(resolveInfo2.loadLabel(packageManager)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$chooseRemapAction$174(int i2, String str) {
        lambda$chooseRemapAction$170(i2, "app:" + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closeAllButton$215(GradientDrawable gradientDrawable, ImageView imageView, View view, boolean z2) {
        view.animate().scaleX(z2 ? 1.12f : 1.0f).scaleY(z2 ? 1.12f : 1.0f).alpha(z2 ? 1.0f : 0.7f).setDuration(220L).start();
        gradientDrawable.setColor(z2 ? -218103809 : 872415231);
        imageView.setImageTintList(ColorStateList.valueOf(z2 ? -14935010 : -1));
        if (z2) {
            lambda$closeRecentApp$221(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$closeAllButton$216(View view, int i2, KeyEvent keyEvent) {
        return keyEvent.getAction() == 0 && (i2 == 19 || i2 == 20 || i2 == 22);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closeAllButton$217(View view) {
        closeRecentApp(view, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closeAllButton$218() {
        if (this.recentsOverlay.getVisibility() == 0) {
            closeRecents();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closeAllButton$219(View view) {
        int childCount = this.recentsRow.getChildCount();
        int i2 = childCount - 2;
        for (int i3 = i2; i3 >= 0; i3--) {
            this.handler.postDelayed(new RunnableC0068i(this, this.recentsRow.getChildAt(i3), 0), ((long) (i2 - i3)) * 70);
        }
        this.handler.postDelayed(new RunnableC0062c(this, 1), (((long) (childCount - 1)) * 70) + 420);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closeFolder$15() {
        this.folderOverlay.setVisibility(8);
        this.folderBackdrop.setImageDrawable(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closeRecentApp$222(View view, boolean z2, int i2) {
        this.recentsRow.removeView(view);
        boolean z3 = false;
        for (int i3 = 0; i3 < this.recentsRow.getChildCount(); i3++) {
            if (this.recentsRow.getChildAt(i3).getTag() instanceof AppAdapter.Entry) {
                z3 = true;
            }
        }
        if (!z3) {
            if (z2) {
                closeRecents();
            }
        } else if (z2) {
            LinearLayout linearLayout = this.recentsRow;
            View childAt = linearLayout.getChildAt(Math.min(i2, linearLayout.getChildCount() - 1));
            if (childAt != null) {
                childAt.requestFocus();
                this.recentsRow.postDelayed(new RunnableC0068i(this, childAt, 3), 320L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closeRecents$225() {
        this.recentsOverlay.setVisibility(8);
        this.topBar.animate().alpha(1.0f).setDuration(200L).start();
        ((ImageView) findViewById(R.id.recentsBackdrop)).setImageDrawable(null);
        this.recentsRow.removeAllViews();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cwBgChoice$134(String str, int i2) {
        CwBackground.set(this, str, i2);
        applyCwBackground();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cwColourRows$120(int i2, int i3) {
        if (i3 == CwBackground.CUSTOM) {
            CwBackground.setCustom(this, i2, CwBackground.colour(this, i2));
        } else {
            CwBackground.set(this, i2 == 1 ? "cw_bg_c1" : "cw_bg_c2", i3);
        }
        applyCwBackground();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cwColourRows$121(int i2, float[] fArr) {
        CwBackground.setCustom(this, i2, f.a.a(fArr));
        this.handler.removeCallbacks(this.cwColourApply);
        this.handler.postDelayed(this.cwColourApply, 90L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$cwColourRows$122(float[] fArr, Runnable runnable, int i2) {
        fArr[0] = Math.min(359.9f, i2 * 5.0f);
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$cwColourRows$123(int i2) {
        return (i2 * 5) + "°";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int[] lambda$cwColourRows$124(float[] fArr) {
        int[] iArr = new int[13];
        for (int i2 = 0; i2 < 13; i2++) {
            iArr[i2] = f.a.a(new float[]{(i2 * 30.0f) % 360.0f, Math.max(0.5f, fArr[1]), 0.5f});
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$cwColourRows$125(float[] fArr, Runnable runnable, int i2) {
        fArr[1] = i2 / 20.0f;
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$cwColourRows$126(int i2) {
        return (i2 * 5) + "%";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int[] lambda$cwColourRows$127(float[] fArr) {
        return new int[]{f.a.a(new float[]{fArr[0], 0.0f, fArr[2]}), f.a.a(new float[]{fArr[0], 1.0f, fArr[2]})};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$cwColourRows$128(float[] fArr, Runnable runnable, int i2) {
        fArr[2] = i2 / 20.0f;
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$cwColourRows$129(int i2) {
        return (i2 * 5) + "%";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int[] lambda$cwColourRows$130(float[] fArr) {
        return new int[]{-16777216, f.a.a(new float[]{fArr[0], fArr[1], 0.5f}), -1};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$enterFullScreen$204(View view, int i2, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) {
            return true;
        }
        if (i2 != 4 && i2 != 23 && i2 != 66) {
            if (i2 == 19) {
                exitFullScreen(true);
                return true;
            }
            if (i2 != 20) {
                return true;
            }
        }
        exitFullScreen(false);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$fadeOutThen$203(PopupWindow popupWindow, Runnable runnable) {
        popupWindow.dismiss();
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$frostShelf$41(Bitmap bitmap, Bitmap[] bitmapArr) {
        lambda$prefrost$37(bitmap, bitmapArr);
        if (this.shelfShown || this.shelfBitmap != bitmap) {
            return;
        }
        playFrostSteps(bitmap, bitmapArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$frostShelf$42(Bitmap bitmap, int i2) {
        this.handler.post(new RunnableC0061b(this, bitmap, makeFrostSteps(bitmap, i2), 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$glideGlass$31(View view, Rect rect, float f2, float f3, float f4, float f5, ValueAnimator valueAnimator) {
        if (view.isAttachedToWindow()) {
            float fFloatValue = 1.0f - ((Float) valueAnimator.getAnimatedValue()).floatValue();
            float fTileX = tileX(view, rect, f2);
            float fTileY = tileY(view, rect, f3);
            this.glass.setTranslationX((f4 * fFloatValue) + fTileX);
            this.glass.setTranslationY((f5 * fFloatValue) + fTileY);
            this.glassTargetX = fTileX;
            this.glassTargetY = fTileY;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$layoutChoice$118(int i2, String str, int i3) {
        if (i3 == i2) {
            return;
        }
        Appearance.setStep(this, str, i3);
        reopenAppearance = true;
        recreate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$layoutChoice$119(String str, int i2) {
        Appearance.setStep(this, str, i2);
        applyLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$makeCwCard$47(View view, View view2, WatchNext.Item item) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = (int) ((view2.getWidth() * item.progress) / 100.0f);
        view.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$makeCwCard$48(ImageView imageView, View view, Bitmap bitmap) {
        bitmap.prepareToDraw();
        imageView.setImageBitmap(bitmap);
        view.setBackground(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$makeCwCard$49(View view) {
        int left = view.getLeft() - this.cwRow.getChildAt(0).getLeft();
        int width = view.getWidth() + left;
        int width2 = this.cwScroll.getWidth() - ((int) (this.density * 110.0f));
        int scrollX = this.cwScroll.getScrollX();
        if (width > scrollX + width2) {
            left = width - width2;
        } else if (left >= scrollX) {
            left = scrollX;
        }
        if (left == scrollX) {
            return;
        }
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(this.cwScroll, "scrollX", scrollX, left);
        objectAnimatorOfInt.setDuration(460L);
        objectAnimatorOfInt.setInterpolator(CALM);
        objectAnimatorOfInt.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$makeCwCard$50(int i2, View view, boolean z2) {
        view.animate().scaleX(z2 ? 1.05f : 1.0f).scaleY(z2 ? 1.05f : 1.0f).setDuration(240L).setInterpolator(new DecelerateInterpolator(2.0f)).start();
        if (!z2 || this.cwReleasing) {
            return;
        }
        selectCw(i2);
        this.cwScroll.post(new RunnableC0068i(this, view, 4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$makeCwCard$51(WatchNext.Item item, View view) {
        openCw(item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$32() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$40() {
        if (this.shelfShown) {
            return;
        }
        this.shelfGroup.setAlpha(1.0f);
        this.frostFade = true;
        frostShelf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$46() {
        int i2 = this.cwPosition;
        if (i2 >= 0 && i2 == this.shelfPosition && this.shelfShown) {
            renderCw();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$53(String str, Bitmap bitmap) {
        if (this.cwBackdrops.get(str) == null) {
            this.cwBackdrops.put(str, bitmap);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$54(Bitmap bitmap, String str) {
        Bitmap bitmapCwBackdrop = cwBackdrop(bitmap);
        if (bitmapCwBackdrop != bitmap) {
            bitmap.recycle();
        }
        this.handler.post(new RunnableC0075p(bitmapCwBackdrop, this, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$55(String str, Bitmap bitmap) {
        if (bitmap == null || this.cwBackdrops.get(str) != null) {
            return;
        }
        FROST.execute(new RunnableC0075p(this, bitmap, str, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$56(String str) {
        Images.loadFirst(this, WatchNext.bestArt(str), Stage.cap(this.root.getWidth()), new C0016q(0, this, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$57() {
        if (Appearance.cwOn(this) && Appearance.cwArt(this)) {
            int iMaxSize = this.cwBackdrops.maxSize();
            int i2 = 0;
            for (int i3 = 0; i3 < COLUMNS && i2 < iMaxSize; i3++) {
                List<WatchNext.Item> listCwItemsFor = cwItemsFor(i3);
                if (listCwItemsFor != null && !listCwItemsFor.isEmpty()) {
                    String str = listCwItemsFor.get(0).art;
                    i2++;
                    if (this.cwBackdrops.get(str) == null) {
                        this.handler.postDelayed(new RunnableC0073n(4, this, str), ((long) i2) * 300);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$62() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$65(Bitmap bitmap, String str) {
        this.launchArt = bitmap;
        this.launchArtKey = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$66(AppAdapter.Entry entry, String str) {
        this.handler.post(new RunnableC0075p(this, launchArt(entry), str, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$67() {
        AppAdapter.Entry entryEntryAt = this.adapter.entryAt(lastFocused);
        if (entryEntryAt == null || entryEntryAt.isFolder() || entryEntryAt.isPlaceholder() || this.root.getWidth() == 0) {
            return;
        }
        String strLaunchArtFor = launchArtFor(entryEntryAt);
        if (strLaunchArtFor.equals(this.launchArtKey)) {
            return;
        }
        LAUNCH.execute(new RunnableC0014o(this, entryEntryAt, strLaunchArtFor, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActivityResult$131() {
        Toast.makeText(this, getString(DefaultHome.isHome(this) ? R.string.dl_is_home : R.string.dl_not_set), 0).show();
        SettingsPanel settingsPanel = this.settingsPanel;
        if (settingsPanel != null) {
            settingsPanel.refresh();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActivityResult$132(boolean z2) {
        Toast.makeText(this, getString(z2 ? R.string.cw_picture_set : R.string.cw_picture_failed), 0).show();
        if (z2) {
            applyCwBackground();
            SettingsPanel settingsPanel = this.settingsPanel;
            if (settingsPanel != null) {
                settingsPanel.refresh();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActivityResult$133(Uri uri) {
        this.handler.post(new RunnableC0084z(this, CwBackground.setPicture(this, uri), 6));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$onCreate$0() {
        float alpha = this.shelfGroup.getVisibility() == 0 ? this.shelfGroup.getAlpha() : 0.0f;
        boolean z2 = alpha >= 0.999f && this.shelfBitmap != null && this.shelf.getAlpha() >= 0.999f;
        if (z2 != this.rootCovered) {
            this.rootCovered = z2;
            this.root.setBackground(z2 ? null : new ColorDrawable(-16777216));
        }
        this.statusGlass.setBackdropOpacity(alpha);
        this.weatherGlass.setBackdropOpacity(alpha);
        if (this.statusGlass.isLive()) {
            long jShelfSignature = shelfSignature();
            if (jShelfSignature != this.lastShelfSig) {
                this.lastShelfSig = jShelfSignature;
                this.statusPill.invalidate();
                if (this.weatherPill.getVisibility() == 0) {
                    this.weatherPill.invalidate();
                }
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$1(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        updateGridPadding(i5 - i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$2(View view, View view2) {
        if (view2 == null || view2.getId() != R.id.card) {
            hideGlass();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLaunch$64(AppAdapter.Entry entry) {
        try {
            startActivity(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LEANBACK_LAUNCHER").setComponent(entry.component).addFlags(270532608), ActivityOptions.makeCustomAnimation(this, android.R.anim.fade_in, 0).toBundle());
        } catch (Exception unused) {
            this.launchCard.setVisibility(8);
            this.dim.animate().alpha(0.0f).setDuration(200L).start();
            this.launchKey = null;
            Toast.makeText(this, getString(R.string.cant_open, entry.label), 0).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onNewIntent$228(String str) {
        if ("cc".equals(str)) {
            showControlCenter();
        } else {
            showSettingsMenu(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResume$4() {
        this.fromStandByPreview = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResume$5() {
        Remaps.kickIfStuck(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResume$6() {
        if (!this.resumed || this.badgeCache.size() > 0) {
            return;
        }
        int[] iArr = {R.drawable.ic_palette, R.drawable.ic_remote, R.drawable.ic_display, R.drawable.ic_sound, R.drawable.ic_input, R.drawable.ic_apps, R.drawable.ic_tune, R.drawable.ic_info};
        for (int i2 = 0; i2 < 8; i2++) {
            settingBadge(iArr[i2]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResume$7(AppAdapter.Entry entry) {
        openFolder(entry, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResume$8(String str, boolean z2, int i2, String str2) {
        View view;
        int iPositionOf = this.adapter.positionOf(str);
        if (z2 && (view = this.standByReturnFocus) != null && view.isAttachedToWindow()) {
            this.standByReturnFocus.requestFocus();
            return;
        }
        if (iPositionOf >= 0) {
            i2 = iPositionOf;
        }
        focusTile(i2);
        if (str2 != null) {
            AppAdapter.Entry entryEntryAt = this.adapter.entryAt(this.adapter.positionOf("folder:".concat(str2)));
            if (entryEntryAt == null || !entryEntryAt.isFolder()) {
                openFolderName = null;
            } else {
                this.grid.postDelayed(new RunnableC0011l(this, entryEntryAt, 9), 120L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTileLongPress$16() {
        this.dim.animate().alpha(0.0f).setDuration(200L).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTileLongPress$17(AppAdapter.Entry entry, String str) {
        if (openFolderName != null) {
            openFolderName = str;
        }
        Folders.rename(this, entry.label, str);
        reloadKeepingFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTileLongPress$18(AppAdapter.Entry entry) {
        askName(entry.label, new C0018s(this, entry, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTileLongPress$19(AppAdapter.Entry entry) {
        Folders.delete(this, entry.label);
        reloadKeepingFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTileLongPress$21(AppAdapter.Entry entry) {
        Favorites.remove(this, entry.pkg);
        reloadKeepingFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTileLongPress$22(AppAdapter.Entry entry) {
        if (!Favorites.add(this, entry.pkg, 30)) {
            Toast.makeText(this, getString(R.string.favourites_full, 30), 1).show();
            return;
        }
        if (this.folderOverlay.getVisibility() == 0) {
            closeFolder();
        }
        reloadKeepingFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTileLongPress$23(AppAdapter.Entry entry) {
        Folders.removeApp(this, entry.pkg);
        if (this.folderOverlay.getVisibility() == 0) {
            closeFolder();
        }
        reloadKeepingFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTileLongPress$24(AppAdapter.Entry entry, String str) {
        Folders.moveTo(this, entry.pkg, str);
        if (this.folderOverlay.getVisibility() == 0) {
            closeFolder();
        }
        reloadKeepingFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTileLongPress$25(AppAdapter.Entry entry, String str) {
        Folders.moveTo(this, entry.pkg, str);
        if (this.folderOverlay.getVisibility() == 0) {
            closeFolder();
        }
        reloadKeepingFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTileLongPress$26(AppAdapter.Entry entry) {
        askName("", new C0018s(this, entry, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTileLongPress$27(AppAdapter.Entry entry) {
        lambda$showInputs$201(new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.parse("package:" + entry.pkg)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openFolder$14() {
        androidx.recyclerview.widget.o oVarFindViewHolderForAdapterPosition = this.folderGridView.findViewHolderForAdapterPosition(0);
        if (oVarFindViewHolderForAdapterPosition != null) {
            oVarFindViewHolderForAdapterPosition.itemView.findViewById(R.id.card).requestFocus();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$ownBlur$33(Bitmap bitmap, Bitmap bitmap2, int i2) {
        this.frosted.put(bitmap, bitmap2);
        this.frostedSet.add(bitmap2);
        this.frostSource.put(bitmap2, bitmap);
        if (this.shelfShown && this.shelfPosition == i2) {
            setShelf(bitmap2, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$ownBlur$34(Bitmap bitmap, int i2, int i3) {
        Bitmap bitmapFrost = Blur.frost(bitmap, i2);
        bitmapFrost.prepareToDraw();
        this.handler.post(new RunnableC0065f(this, bitmap, bitmapFrost, i3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$paceKeys$226(View view, int i2, KeyEvent keyEvent) {
        if ((i2 != 19 && i2 != 20 && i2 != 21 && i2 != 22) || keyEvent.getAction() != 0) {
            return false;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (keyEvent.getRepeatCount() > 0 && (jUptimeMillis - keyEvent.getEventTime() > 120 || jUptimeMillis - this.lastMoveAt < 95)) {
            return true;
        }
        this.lastMoveAt = jUptimeMillis;
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playCloseAnimation$69() {
        this.launchCard.setVisibility(8);
        this.launchCard.setImageDrawable(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playCloseAnimation$70() {
        this.launchCard.animate().alpha(0.0f).setDuration(140L).withEndAction(new RunnableC0062c(this, 3)).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playFrostSteps$39(Bitmap bitmap, Bitmap bitmap2, long j) {
        if (this.shelfShown || this.frostSource.get(bitmap) != bitmap2) {
            return;
        }
        this.frostFade = false;
        this.stepFadeMs = j + 60;
        setShelf(bitmap, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prefrost$38(Bitmap bitmap, int i2) {
        this.handler.post(new RunnableC0061b(this, bitmap, makeFrostSteps(bitmap, i2), 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$recentCard$207(AppAdapter.Entry entry, int i2, int i3, ImageView imageView) {
        Bitmap bitmapBrandArt = Stage.brandArt(this, entry.pkg, i2, i3);
        if (bitmapBrandArt != null) {
            this.handler.post(new RunnableC0063d(imageView, bitmapBrandArt, 0));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$recentCard$209(AppAdapter.Entry entry, int i2, int i3, ImageView imageView) {
        Bitmap bitmapTile = IconPack.tile(this, entry, i2, i3);
        if (bitmapTile != null) {
            this.handler.post(new RunnableC0063d(imageView, bitmapTile, 2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$recentCard$211(AppAdapter.Entry entry, int i2, int i3, ImageView imageView) {
        this.handler.post(new RunnableC0063d(imageView, Stage.iconArt(this, entry, i2, i3), 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$recentCard$212(View view, boolean z2) {
        view.animate().scaleX(z2 ? 1.0f : 0.86f).scaleY(z2 ? 1.0f : 0.86f).setDuration(360L).setInterpolator(CALM).start();
        if (z2) {
            restackRecents(this.recentsRow.indexOfChild(view));
            lambda$closeRecentApp$221(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$recentCard$213(AppAdapter.Entry entry, ImageView imageView, View view) {
        closeRecentsNow();
        onLaunch(entry, imageView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$recentCard$214(View view, int i2, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) {
            return false;
        }
        int iIndexOfChild = this.recentsRow.indexOfChild(view);
        switch (i2) {
            case 19:
                closeRecentApp(view, true);
                return true;
            case 20:
                return true;
            case 21:
                return iIndexOfChild == 0;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$refreshBackdrop$12(int i2, Drawable drawable, Bitmap bitmap) {
        if (i2 != this.backdropGen) {
            return;
        }
        if (drawable == null) {
            this.dim.setImageBitmap(bitmap);
            return;
        }
        TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{drawable, new BitmapDrawable(getResources(), bitmap)});
        transitionDrawable.setCrossFadeEnabled(false);
        this.dim.setImageDrawable(transitionDrawable);
        transitionDrawable.startTransition(360);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$refreshBackdrop$13(Bitmap bitmap, boolean z2, int i2, Drawable drawable) {
        Bitmap bitmapSoften = Blur.soften(bitmap, blurPx(z2 ? 1 : 3), z2 ? 0.8f : 0.62f);
        bitmapSoften.prepareToDraw();
        this.handler.post(new RunnableC0065f(this, i2, drawable, bitmapSoften));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$reloadKeepingFocus$30(String str) {
        int iPositionOf = this.adapter.positionOf(str);
        if (iPositionOf < 0) {
            iPositionOf = Math.min(lastFocused, this.adapter.getItemCount() - 1);
        }
        focusTile(iPositionOf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderCw$44(int i2, List list, int i3, int i4, int[] iArr, int i5) {
        if (i2 != this.cwGen) {
            return;
        }
        View viewMakeCwCard = makeCwCard(list, i3, i4, iArr);
        boolean z2 = false;
        if (this.cwRow.getChildCount() > 0 && this.cwRow.getChildAt(0).isFocusable()) {
            z2 = true;
        }
        viewMakeCwCard.setFocusable(z2);
        this.cwRow.addView(viewMakeCwCard);
        if (i3 == i5) {
            scrollCwTo(i5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveRemap$176() {
        Remaps.kickIfStuck(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$scrollCwTo$45(int i2) {
        View childAt = this.cwRow.getChildAt(i2);
        if (childAt != null) {
            this.cwScroll.scrollTo(Math.max(0, childAt.getLeft() - this.cwRow.getChildAt(0).getLeft()), 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$selectCw$58(WatchNext.Item item, Bitmap bitmap, int i2, int i3) {
        int i4;
        this.cwBackdrops.put(item.art, bitmap);
        if (this.cwSelected == i2 && (i4 = this.cwPosition) == i3 && i4 == this.shelfPosition && this.shelfShown) {
            setShelf(bitmap, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$selectCw$59(int i2, int i3, Bitmap bitmap, WatchNext.Item item) {
        if (this.cwSelected == i2 && this.cwPosition == i3) {
            Bitmap bitmapCwBackdrop = cwBackdrop(bitmap);
            if (bitmapCwBackdrop != bitmap) {
                bitmap.recycle();
            }
            bitmapCwBackdrop.prepareToDraw();
            this.handler.post(new RunnableC0022w(this, item, bitmapCwBackdrop, i2, i3));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$selectCw$60(int i2, int i3, WatchNext.Item item, Bitmap bitmap) {
        if (bitmap != null) {
            FROST.execute(new RunnableC0022w(this, i2, i3, bitmap, item));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$selectCw$61(final int i2, final int i3, final WatchNext.Item item) {
        if (this.cwSelected == i2 && this.cwPosition == i3) {
            Bitmap bitmap = this.cwBackdrops.get(item.art);
            if (bitmap == null) {
                Images.loadFirst(this, WatchNext.bestArt(item.art), Stage.cap(this.root.getWidth()), new Images.Callback() { // from class: com.sid.tvos.r
                    @Override // com.sid.tvos.Images.Callback
                    public final void onImage(Bitmap bitmap2) {
                        this.f331a.lambda$selectCw$60(i2, i3, item, bitmap2);
                    }
                });
            } else if (this.cwPosition == this.shelfPosition && this.shelfShown) {
                setShelf(bitmap, 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setUpStatusPill$76(float[] fArr, GradientDrawable gradientDrawable, TextClock textClock, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        fArr[0] = fFloatValue;
        gradientDrawable.setAlpha((int) (255.0f * fFloatValue));
        textClock.setTextColor(((Integer) new ArgbEvaluator().evaluate(fFloatValue, -1, -14935010)).intValue());
        this.statusPill.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setUpStatusPill$77(ValueAnimator[] valueAnimatorArr, final float[] fArr, final GradientDrawable gradientDrawable, final TextClock textClock, View view, boolean z2) {
        view.animate().scaleX(z2 ? 1.08f : 1.0f).scaleY(z2 ? 1.08f : 1.0f).setDuration(240L).setInterpolator(z2 ? new OvershootInterpolator(1.2f) : new DecelerateInterpolator(2.0f)).start();
        ValueAnimator valueAnimator = valueAnimatorArr[0];
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr[0], z2 ? 1.0f : 0.0f);
        valueAnimatorOfFloat.setDuration(200L);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: t.r
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f906a.lambda$setUpStatusPill$76(fArr, gradientDrawable, textClock, valueAnimator2);
            }
        });
        valueAnimatorArr[0] = valueAnimatorOfFloat;
        valueAnimatorOfFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setUpStatusPill$78(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        view.setPivotX(view.getWidth());
        view.setPivotY(view.getHeight() / 2.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setUpStatusPill$79(View view) {
        showControlCenter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$setUpStatusPill$80(View view, int i2, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) {
            return false;
        }
        switch (i2) {
            case 20:
                downFromStatusBar();
            case 19:
            case 21:
            case 22:
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setUpTopBar$71(View view) {
        openAssistant();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$setUpTopBar$72(View view, int i2, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) {
            return false;
        }
        List<View> listShownStatusButtons = shownStatusButtons();
        switch (i2) {
            case 20:
                downFromStatusBar();
            case 19:
                return true;
            case 21:
                return !listShownStatusButtons.isEmpty() && view == listShownStatusButtons.get(0);
            case 22:
                return !listShownStatusButtons.isEmpty() && view == listShownStatusButtons.get(listShownStatusButtons.size() - 1);
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setUpTopBar$73(ImageView imageView, ValueAnimator valueAnimator) {
        imageView.setImageTintList(ColorStateList.valueOf(((Integer) valueAnimator.getAnimatedValue()).intValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setUpTopBar$74(ImageView imageView, View view, boolean z2) {
        int i2 = 1;
        ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(imageView.getImageTintList().getDefaultColor()), Integer.valueOf(z2 ? -15658735 : -1));
        valueAnimatorOfObject.setDuration(200L);
        valueAnimatorOfObject.addUpdateListener(new C0076q(imageView, i2));
        valueAnimatorOfObject.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showBackdrop$9(int i2, int i3, boolean z2, Bitmap bitmap, int i4) {
        if (i4 == 0) {
            blurBackdrop(bitmap, z2, i2);
        } else if (i2 == this.backdropGen) {
            blurBackdrop(Blur.capture(this.root, i3), z2, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showBluetoothMenu$86(boolean z2, BluetoothAdapter bluetoothAdapter) {
        if (z2) {
            bluetoothAdapter.disable();
        } else {
            bluetoothAdapter.enable();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$showBluetoothMenu$87(BluetoothDevice bluetoothDevice, BluetoothDevice bluetoothDevice2) {
        boolean zIsConnected = isConnected(bluetoothDevice);
        if (zIsConnected != isConnected(bluetoothDevice2)) {
            return zIsConnected ? -1 : 1;
        }
        return String.valueOf(bluetoothDevice.getName()).compareToIgnoreCase(String.valueOf(bluetoothDevice2.getName()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCenteredPanel$163() {
        this.dim.animate().alpha(0.0f).setDuration(200L).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCenteredPanel$164(View view, PopupWindow popupWindow, LinearLayout linearLayout) {
        view.setAlpha(0.0f);
        view.setScaleX(0.95f);
        view.setScaleY(0.95f);
        popupWindow.showAtLocation(this.root, 17, 0, 0);
        view.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(220L).setInterpolator(new DecelerateInterpolator(1.8f)).start();
        showBackdrop();
        focusFirst(linearLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showControlCenter$177() {
        this.dim.animate().alpha(0.0f).setDuration(200L).start();
        this.statusPill.animate().alpha(1.0f).setDuration(200L).start();
        this.controlCenter = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showControlCenter$178(PopupWindow popupWindow, View view) {
        fadeOutThen(popupWindow, new t.P(this, 12));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showControlCenter$179(View view, boolean z2) {
        view.animate().scaleX(z2 ? 1.15f : 1.0f).scaleY(z2 ? 1.15f : 1.0f).setDuration(180L).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showControlCenter$180() {
        startActivity(new Intent(this, (Class<?>) StandByActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showControlCenter$181(PopupWindow popupWindow, View view) {
        fadeOutThen(popupWindow, new RunnableC0062c(this, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showControlCenter$182() {
        showWifiMenu(this.statusPill);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showControlCenter$183(PopupWindow popupWindow) {
        fadeOutThen(popupWindow, new t.P(this, 8));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showControlCenter$184() {
        showBluetoothMenu(this.statusPill);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showControlCenter$185(PopupWindow popupWindow) {
        fadeOutThen(popupWindow, new t.P(this, 10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showControlCenter$186(PopupWindow popupWindow) {
        fadeOutThen(popupWindow, new t.P(this, 7));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showControlCenter$187() {
        showSettingsMenu(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showControlCenter$188(PopupWindow popupWindow) {
        fadeOutThen(popupWindow, new t.P(this, 13));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showControlCenter$189(View view) {
        boolean z2 = !Appearance.dark(this);
        Appearance.setDark(this, z2);
        DarkSchedule.holdManual(this);
        view.setSelected(z2);
        applyDark();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showControlCenter$191() {
        lambda$showInputs$201(new Intent("android.settings.DISPLAY_SETTINGS"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showCwViews$63(View view) {
        view.setVisibility(4);
        view.setTranslationY(0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showInputs$198() {
        this.dim.animate().alpha(0.0f).setDuration(200L).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ int lambda$showInputs$199(TvInputInfo tvInputInfo, TvInputInfo tvInputInfo2) {
        boolean z2 = tvInputInfo.getType() == 1007;
        if (z2 != (tvInputInfo2.getType() == 1007)) {
            return z2 ? -1 : 1;
        }
        return String.valueOf(tvInputInfo.loadLabel(this)).compareToIgnoreCase(String.valueOf(tvInputInfo2.loadLabel(this)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showInputs$200(String str) {
        lambda$showInputs$201(new Intent("android.intent.action.VIEW").setDataAndType(TvContract.buildChannelUriForPassthroughInput(str), "vnd.android.cursor.item/channel"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showRecents$205() {
        this.recentsRow.getChildAt(0).requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showRemapMenu$165() {
        if (Remaps.enableService(this)) {
            Toast.makeText(this, R.string.remap_turned_on, 0).show();
        } else {
            lambda$showInputs$201(new Intent("android.settings.ACCESSIBILITY_SETTINGS"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showRemapMenu$166(int i2, String str) {
        Remaps.remove(this, i2);
        Toast.makeText(this, getString(R.string.remap_removed, str), 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showShelf$35(int i2, boolean z2, boolean z3, int i3, Bitmap bitmap) {
        List<WatchNext.Item> list;
        if (this.shelfPosition == i2 && this.shelfShown) {
            if (!z2 || this.cwPosition != i2 || (list = this.cwItems) == null || list.isEmpty()) {
                if (z3) {
                    bitmap = ownBlur(bitmap, i2, i3);
                }
                setShelf(bitmap, i3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showShelf$36(int i2, Bitmap bitmap) {
        if (this.shelfShown) {
            if (this.shelfPosition == i2) {
                setShelf(bitmap, 0);
            }
            this.shelfGroup.animate().alpha(1.0f).translationY(0.0f).setDuration(450L).setInterpolator(new DecelerateInterpolator(1.5f)).start();
            this.shelfScrim.animate().alpha(1.0f).setDuration(450L).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showStatusMenu$81() {
        this.dim.animate().alpha(0.0f).setDuration(200L).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showStatusMenu$82(View view, int i2, View view2, PopupWindow popupWindow, LinearLayout linearLayout) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        View view3 = (View) view.getParent();
        int[] iArr2 = new int[2];
        view3.getLocationInWindow(iArr2);
        int iMax = Math.max((int) (this.density * 16.0f), Math.min((view.getWidth() + iArr[0]) - i2, (this.root.getWidth() - i2) - ((int) (this.density * 16.0f))));
        int height = view3.getHeight() + iArr2[1] + ((int) (this.density * 10.0f));
        view2.setAlpha(0.0f);
        view2.setTranslationY(this.density * (-8.0f));
        popupWindow.showAtLocation(this.root, 8388659, iMax, height);
        view2.animate().alpha(1.0f).translationY(0.0f).setDuration(220L).setInterpolator(new DecelerateInterpolator(1.8f)).start();
        showBackdrop();
        focusFirst(linearLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showWifiMenu$84(WifiManager wifiManager, boolean z2) {
        if (wifiManager != null) {
            wifiManager.setWifiEnabled(!z2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showWifiMenu$85() {
        lambda$showInputs$201(new Intent("android.settings.WIFI_SETTINGS"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startMove$28() {
        focusTile(this.adapter.positionOf(this.movingKey));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$track$227(PopupWindow popupWindow) {
        paceKeys(popupWindow.getContentView());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateContinueWatching$43(Map map) {
        this.cwData = map;
        int i2 = this.cwPosition;
        if (i2 >= 0 && i2 == this.shelfPosition && this.shelfShown && !sameItems(cwItemsFor(i2), this.cwItems)) {
            renderCw();
        }
        this.handler.removeCallbacks(this.prewarmCw);
        this.handler.postDelayed(this.prewarmCw, 1200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateRam$223(View view, ValueAnimator valueAnimator) {
        view.getLayoutParams().width = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        view.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateRam$224(View view, long j, ActivityManager.MemoryInfo memoryInfo, View view2) {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(view2.getWidth(), (int) ((((long) view.getWidth()) * j) / Math.max(1L, memoryInfo.totalMem)));
        valueAnimatorOfInt.setDuration(500L);
        valueAnimatorOfInt.addUpdateListener(new C0076q(view2, 0));
        valueAnimatorOfInt.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$wireCwKeys$52(int i2, int i3, View view, int i4, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) {
            return false;
        }
        switch (i4) {
            case 19:
                this.fullFromCard = i2;
                enterFullScreen();
                break;
            case 20:
                focusTile(this.cwPosition);
                break;
            case 21:
                return i2 == 0;
            case 22:
                return i2 == i3 - 1;
            default:
                return false;
        }
        setCwFocusable(false);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$zoom$68(Rect rect, float f2, float f3, float[] fArr, float f4, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float fWidth = (((f2 - rect.width()) * fFloatValue) + rect.width()) / f2;
        float fHeight = (((f3 - rect.height()) * fFloatValue) + rect.height()) / f3;
        this.launchCard.setScaleX(fWidth);
        this.launchCard.setScaleY(fHeight);
        float f5 = 1.0f - fFloatValue;
        this.launchCard.setTranslationX(rect.left * f5);
        this.launchCard.setTranslationY(rect.top * f5);
        fArr[0] = (f4 * f5) / Math.max(0.01f, Math.min(fWidth, fHeight));
        this.launchCard.invalidateOutline();
    }

    private Bitmap launchArt(AppAdapter.Entry entry) {
        int iCap = (Stage.cap(this.root.getWidth()) * 3) / 4;
        int iRound = Math.round((iCap / this.root.getWidth()) * this.root.getHeight());
        Bitmap bitmapTile = IconPack.tile(this, entry, iCap, iRound);
        return bitmapTile == null ? Stage.iconArt(this, entry, iCap, iRound) : Gpu.upload(bitmapTile);
    }

    private String launchArtFor(AppAdapter.Entry entry) {
        StringBuilder sb = new StringBuilder();
        sb.append(entry.key());
        sb.append(Appearance.dark(this) ? "|dark" : "|light");
        sb.append("|");
        sb.append(IconPack.current(this));
        return sb.toString();
    }

    private void layoutChoice(SettingsPanel settingsPanel, int i2, int i3, final String str, int i4) {
        final int iStep = Appearance.step(this, str);
        boolean zEquals = "row_icons".equals(str);
        String string = getString(i3);
        String[] stringArray = getResources().getStringArray(i4);
        if (zEquals) {
            settingsPanel.choices(i2, string, stringArray, iStep, null, new IntChoice() { // from class: com.sid.tvos.y
                @Override // com.sid.tvos.MainActivity.IntChoice
                public final void pick(int i5) {
                    this.lambda$layoutChoice$118(iStep, str, i5);
                }
            });
        } else {
            settingsPanel.choices(i2, string, stringArray, iStep, new C0016q(1, this, str), null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void layoutCw() {
        if (this.dockTopPx == 0) {
            return;
        }
        int i2 = cwCardPx()[1];
        float fCwTopDp = cwTopDp();
        float f2 = this.density;
        int i3 = (int) (fCwTopDp * f2);
        int i4 = (int) (f2 * 38.0f);
        float f3 = Appearance.CW_OFFSET_DP[Appearance.step(this, "cw_pos")];
        float f4 = this.density;
        int iMax = Math.max(Math.round((i2 * 0.049999952f) / 2.0f) + i3 + i4, ((((this.dockTopPx + i3) - ((int) (f4 * 44.0f))) / 2) - ((i4 + i2) / 2)) + ((int) (f3 * f4)) + i4);
        this.cwBottomPx = iMax + i2;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.cwScroll.getLayoutParams();
        int iMax2 = Math.max(0, iMax - ((int) (this.density * 14.0f)));
        if (layoutParams.topMargin != iMax2 || layoutParams.gravity != 48) {
            layoutParams.gravity = 48;
            layoutParams.topMargin = iMax2;
            layoutParams.bottomMargin = 0;
            this.cwScroll.setLayoutParams(layoutParams);
        }
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.cwInfo.getLayoutParams();
        int i5 = iMax - i4;
        if (layoutParams2.topMargin != i5) {
            layoutParams2.topMargin = i5;
            this.cwInfo.setLayoutParams(layoutParams2);
        }
        if (this.cwRow.getChildCount() <= 0 || this.cwRow.getChildAt(0).getLayoutParams().height == i2 || this.cwPosition < 0) {
            return;
        }
        renderCw();
    }

    private Intent liveTvIntent() {
        Intent leanbackLaunchIntentForPackage = this.liveTvPkg.isEmpty() ? null : getPackageManager().getLeanbackLaunchIntentForPackage(this.liveTvPkg);
        String strTunerInputId = tunerInputId();
        return (leanbackLaunchIntentForPackage == null || strTunerInputId == null) ? leanbackLaunchIntentForPackage : new Intent("android.intent.action.VIEW").setDataAndType(TvContract.buildChannelUriForPassthroughInput(strTunerInputId), "vnd.android.cursor.item/channel").setPackage(this.liveTvPkg);
    }

    private View makeCwCard(List<WatchNext.Item> list, final int i2, int i3, int[] iArr) {
        WatchNext.Item item = list.get(i2);
        View viewInflate = getLayoutInflater().inflate(R.layout.item_cw, this.cwRow, false);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) viewInflate.getLayoutParams();
        marginLayoutParams.width = iArr[0];
        marginLayoutParams.height = iArr[1];
        marginLayoutParams.setMarginEnd((int) (this.density * 24.0f));
        viewInflate.setLayoutParams(marginLayoutParams);
        ((TextView) viewInflate.findViewById(R.id.cwCardTitle)).setText(item.title);
        TextView textView = (TextView) viewInflate.findViewById(R.id.cwCardSub);
        textView.setText(item.subtitle);
        String str = item.subtitle;
        textView.setVisibility((str == null || str.isEmpty()) ? 8 : 0);
        final float f2 = this.density * 16.0f;
        viewInflate.setOutlineProvider(new ViewOutlineProvider() { // from class: com.sid.tvos.MainActivity.9
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), f2);
            }
        });
        viewInflate.setClipToOutline(true);
        if (Build.VERSION.SDK_INT >= 24) {
            viewInflate.forceHasOverlappingRendering(false);
        }
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.cwImage);
        View viewFindViewById = viewInflate.findViewById(R.id.cwCardProgress);
        View viewFindViewById2 = viewInflate.findViewById(R.id.cwCardTrack);
        if (item.progress < 0.0f) {
            viewFindViewById2.setVisibility(8);
        } else {
            viewFindViewById2.post(new RunnableC0012m(viewFindViewById, viewFindViewById2, item, 0));
        }
        Images.load(this, item.art, Math.min((int) (this.density * 540.0f), 960), new C0006g(imageView, viewInflate, 1));
        viewInflate.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: t.g
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z2) {
                this.f872a.lambda$makeCwCard$50(i2, view, z2);
            }
        });
        viewInflate.setOnClickListener(new ViewOnClickListenerC0001b(this, item, 2));
        wireCwKeys(viewInflate, i2, i3);
        viewInflate.setFocusable(false);
        return viewInflate;
    }

    private static Bitmap[] makeFrostSteps(Bitmap bitmap, int i2) {
        return i2 <= 1 ? new Bitmap[]{Gpu.upload(Blur.frost(bitmap, i2))} : new Bitmap[]{Gpu.upload(Blur.frost(bitmap, Math.max(1, i2 / 3))), Gpu.upload(Blur.frost(bitmap, Math.max(1, (i2 * 2) / 3))), Gpu.upload(Blur.frost(bitmap, i2))};
    }

    private void moveFavourite(int i2, final int i3) {
        String str;
        int iMove;
        AppAdapter.Entry entryEntryAt = this.adapter.entryAt(i2);
        if (entryEntryAt == null || (str = entryEntryAt.pkg) == null || (iMove = Favorites.move(this, str, i3)) < 0) {
            return;
        }
        final int iFavouriteIndexAt = i2 - this.adapter.favouriteIndexAt(i2);
        this.adapter.reload();
        this.adapter.showFavourite(iMove);
        this.grid.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.sid.tvos.MainActivity.8
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                MainActivity.this.grid.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                int iPositionOf = MainActivity.this.adapter.positionOf(MainActivity.this.movingKey);
                float width = MainActivity.this.grid.getWidth() / MainActivity.COLUMNS;
                if (iPositionOf - MainActivity.this.adapter.favouriteIndexAt(iPositionOf) == iFavouriteIndexAt) {
                    MainActivity.this.slideFrom(iPositionOf, (-i3) * width);
                    MainActivity mainActivity = MainActivity.this;
                    int i4 = i3;
                    mainActivity.slideFrom(iPositionOf - i4, i4 * width);
                }
                MainActivity.this.focusTile(iPositionOf);
            }
        });
        this.grid.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: open, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void lambda$showInputs$201(Intent intent) {
        intent.addFlags(268435456);
        try {
            startActivity(intent, ActivityOptions.makeCustomAnimation(this, R.anim.fade_in_soft, R.anim.fade_out_soft).toBundle());
        } catch (ActivityNotFoundException | SecurityException unused) {
            Toast.makeText(this, R.string.not_available, 0).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openAirPlay() {
        PackageManager packageManager = getPackageManager();
        if (isInstalled(packageManager, "com.tcl.airplay2")) {
            if (!isEnabled(packageManager, "com.tcl.tv")) {
                Toast.makeText(this, R.string.airplay_needs_tv_app, 1).show();
                return;
            } else {
                try {
                    sendBroadcast(new Intent("Show.Home.AirplayAPK").setPackage("com.tcl.airplay2"));
                    return;
                } catch (Exception unused) {
                }
            }
        }
        Intent className = new Intent().setClassName("com.mediatek.AirplayAPK", "com.mediatek.activity.TVActivity");
        if (packageManager.resolveActivity(className, 0) != null) {
            lambda$showInputs$201(className);
            return;
        }
        String[] strArr = {"android.intent.category.LEANBACK_LAUNCHER", "android.intent.category.LAUNCHER"};
        for (int i2 = 0; i2 < 2; i2++) {
            String str = strArr[i2];
            for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(new Intent("android.intent.action.MAIN").addCategory(str), 0)) {
                String lowerCase = (resolveInfo.activityInfo.packageName + " " + ((Object) resolveInfo.loadLabel(packageManager))).toLowerCase(Locale.ROOT);
                if (lowerCase.contains("airplay") || lowerCase.contains("airscreen") || lowerCase.contains("airreceiver")) {
                    Intent intentAddCategory = new Intent("android.intent.action.MAIN").addCategory(str);
                    ActivityInfo activityInfo = resolveInfo.activityInfo;
                    lambda$showInputs$201(intentAddCategory.setClassName(activityInfo.packageName, activityInfo.name));
                    return;
                }
            }
        }
        Toast.makeText(this, R.string.no_airplay, 1).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openAssistant() {
        Intent[] intentArr = {new Intent("android.intent.action.ASSIST"), new Intent("android.intent.action.VOICE_ASSIST"), new Intent("android.speech.action.WEB_SEARCH"), new Intent("android.search.action.GLOBAL_SEARCH")};
        for (int i2 = 0; i2 < 4; i2++) {
            Intent intent = intentArr[i2];
            if (intent.resolveActivity(getPackageManager()) != null) {
                lambda$showInputs$201(intent);
                return;
            }
        }
        Toast.makeText(this, R.string.not_available, 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openBluetooth() {
        Intent[] intentArr = {new Intent("android.settings.BLUETOOTH_SETTINGS"), new Intent("com.google.android.intent.action.CONNECT_INPUT"), new Intent("android.settings.SETTINGS")};
        for (int i2 = 0; i2 < 3; i2++) {
            Intent intent = intentArr[i2];
            if (intent.resolveActivity(getPackageManager()) != null) {
                lambda$showInputs$201(intent);
                return;
            }
        }
        Toast.makeText(this, R.string.not_available, 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openCast() {
        Intent intent = new Intent("com.google.android.settings.CAST_RECEIVER_SETTINGS");
        if (getPackageManager().resolveActivity(intent, 0) == null) {
            intent = new Intent("android.settings.SETTINGS");
        }
        lambda$showInputs$201(intent);
    }

    private void openCw(WatchNext.Item item) {
        Intent leanbackLaunchIntentForPackage;
        AppAdapter.Entry entryEntryAt = this.adapter.entryAt(this.cwPosition);
        if (item.intent != null) {
            try {
                startActivity(new Intent(item.intent).addFlags(268435456));
                return;
            } catch (Exception unused) {
            }
        }
        if (entryEntryAt == null || entryEntryAt.isFolder() || (leanbackLaunchIntentForPackage = getPackageManager().getLeanbackLaunchIntentForPackage(entryEntryAt.pkg)) == null) {
            return;
        }
        lambda$showInputs$201(leanbackLaunchIntentForPackage);
    }

    private void openFolder(AppAdapter.Entry entry, boolean z2) {
        String str = entry.label;
        openFolderName = str;
        this.folderName.setText(str);
        applyPanelGlass(this.folderPanel, 30.0f);
        this.folderAdapter.setEntries(entry.children);
        int size = (entry.children.size() + 3) / 4;
        ViewGroup.LayoutParams layoutParams = this.folderGridView.getLayoutParams();
        float fItemDp = AppAdapter.itemDp(this) * Math.min(size, 2);
        float f2 = this.density;
        layoutParams.height = (int) ((fItemDp * f2) + (size > 2 ? f2 * 30.0f : 0.0f));
        layoutParams.width = Math.round((this.root.getWidth() - (this.density * 90.0f)) / COLUMNS) * 4;
        this.folderGridView.setLayoutParams(layoutParams);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.folderPanel.getLayoutParams();
        layoutParams2.width = this.folderPanel.getPaddingRight() + this.folderPanel.getPaddingLeft() + layoutParams.width;
        layoutParams2.gravity = 49;
        layoutParams2.rightMargin = 0;
        layoutParams2.leftMargin = 0;
        this.folderPanel.setLayoutParams(layoutParams2);
        this.folderGridView.scrollToPosition(0);
        this.folderBackdrop.setImageBitmap(glassBackdrop(0.7f));
        setHomeFocusable(false);
        hideGlass();
        this.folderGlassShown = false;
        this.folderGlass.setAlpha(0.0f);
        this.folderOverlay.setVisibility(0);
        if (z2) {
            this.folderOverlay.setAlpha(0.0f);
            this.folderPanel.setScaleX(0.9f);
            this.folderPanel.setScaleY(0.9f);
            this.folderName.setTranslationY(this.density * (-12.0f));
            this.folderOverlay.animate().alpha(1.0f).setDuration(220L).start();
            this.folderPanel.animate().scaleX(1.0f).scaleY(1.0f).setDuration(320L).setInterpolator(new DecelerateInterpolator(2.0f)).start();
            this.folderName.animate().translationY(0.0f).setDuration(320L).start();
        } else {
            this.folderOverlay.setAlpha(1.0f);
        }
        this.folderGridView.post(new RunnableC0062c(this, 6));
    }

    private Bitmap ownBlur(Bitmap bitmap, int i2, int i3) {
        Bitmap bitmap2 = this.frosted.get(bitmap);
        if (bitmap2 != null) {
            return bitmap2;
        }
        FROST.execute(new t.F(this, bitmap, i2, 4));
        return bitmap;
    }

    public static /* bridge */ /* synthetic */ int p4(MainActivity mainActivity) {
        return mainActivity.blurDiv(6);
    }

    private void paceKeys(View view) {
        if (view == null) {
            return;
        }
        if (view.isFocusable() && view.getTag(R.id.selected) == null) {
            view.setOnKeyListener(new ViewOnKeyListenerC0064e(this, 1));
        }
        if (!(view instanceof ViewGroup)) {
            return;
        }
        int i2 = 0;
        while (true) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (i2 >= viewGroup.getChildCount()) {
                return;
            }
            paceKeys(viewGroup.getChildAt(i2));
            i2++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: pickCwPicture, reason: merged with bridge method [inline-methods] */
    public void lambda$buildCwArtRows$149(View view) {
        Intent intentAddCategory = new Intent("android.intent.action.GET_CONTENT").setType("image/*").addCategory("android.intent.category.OPENABLE");
        ComponentName componentName = null;
        ComponentName componentName2 = null;
        for (ResolveInfo resolveInfo : getPackageManager().queryIntentActivities(intentAddCategory, 0)) {
            String str = resolveInfo.activityInfo.packageName;
            if (!str.contains("frameworkpackagestubs")) {
                ComponentName componentName3 = new ComponentName(str, resolveInfo.activityInfo.name);
                if (str.contains("providers.media")) {
                    componentName2 = componentName3;
                } else if (componentName == null) {
                    componentName = componentName3;
                }
            }
        }
        if (componentName == null) {
            componentName = componentName2;
        }
        if (componentName == null) {
            Toast.makeText(this, getString(R.string.cw_no_picker), 1).show();
            return;
        }
        this.fromStandByPreview = true;
        this.standByReturnFocus = view;
        try {
            startActivityForResult(intentAddCategory.setComponent(componentName), 41);
        } catch (Exception unused) {
            this.fromStandByPreview = false;
            Toast.makeText(this, getString(R.string.cw_no_picker), 1).show();
        }
    }

    private void playCloseAnimation() {
        if (this.launchKey == null || this.launchFrom == null || this.launchCard.getDrawable() == null) {
            this.launchCard.setVisibility(8);
            return;
        }
        this.launchKey = null;
        this.launchCard.setVisibility(0);
        this.launchCard.setAlpha(1.0f);
        if (this.dim.getDrawable() == null) {
            this.dim.setImageBitmap(glassBackdrop(0.55f));
        }
        this.dim.setAlpha(1.0f);
        this.dim.animate().alpha(0.0f).setStartDelay(60L).setDuration(460L).setInterpolator(new DecelerateInterpolator(1.5f)).start();
        zoom(1.0f, 0.0f, 460L, new DecelerateInterpolator(2.5f), new t.P(this, 14));
    }

    private void playFrostSteps(Bitmap bitmap, Bitmap[] bitmapArr) {
        long jMax = isLowRam() ? 260L : Math.max(90L, (this.glideMs - 170) / ((long) bitmapArr.length));
        for (int i2 = 0; i2 < bitmapArr.length; i2++) {
            t.S s2 = new t.S(this, bitmapArr[i2], bitmap, jMax);
            if (i2 == 0) {
                s2.run();
            } else {
                this.handler.postDelayed(s2, ((long) i2) * jMax);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void popIn(View view, boolean z2, boolean z3) {
        view.animate().cancel();
        view.setScaleX(0.88495576f);
        view.setScaleY(0.88495576f);
        if (z2) {
            view.setAlpha(0.0f);
        }
        view.animate().scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(z3 ? 380L : 300L).setInterpolator(z3 ? new DecelerateInterpolator(2.0f) : new OvershootInterpolator(1.4f)).start();
    }

    private void prefrost(Bitmap bitmap) {
        if (bitmap == null || this.frostedSet.contains(bitmap) || this.frosted.get(bitmap) != null) {
            return;
        }
        FROST.execute(new t.F(this, bitmap, Appearance.blur(this), 3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void previewBlur(int i2) {
        Appearance.setBlur(this, i2);
        this.frostSteps.evictAll();
        LiquidGlassDrawable.blurScale = Appearance.blurScale(this);
        this.statusPill.invalidate();
        SettingsPanel settingsPanel = this.settingsPanel;
        if (settingsPanel != null) {
            settingsPanel.glassSoon();
        }
    }

    private View recentCard(final AppAdapter.Entry entry, final int i2, final int i3) {
        Thread thread;
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setFocusable(true);
        linearLayout.setClickable(true);
        linearLayout.setClipChildren(false);
        linearLayout.setTag(entry);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        ImageView imageView = new ImageView(this);
        float f2 = this.density;
        int i4 = (int) (40.0f * f2);
        int i5 = (int) (f2 * 24.0f);
        Bitmap bitmapTile = IconPack.tile(this, entry);
        if (bitmapTile != null) {
            imageView.setImageBitmap(bitmapTile);
        } else {
            Drawable drawable = entry.icon;
            if (drawable != null) {
                imageView.setImageDrawable(drawable);
            }
        }
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_CROP;
        imageView.setScaleType(scaleType);
        roundCorners(imageView, this.density * 6.0f);
        linearLayout2.addView(imageView, new LinearLayout.LayoutParams(i4, i5));
        TextView textView = new TextView(this);
        textView.setText(entry.label);
        textView.setTextColor(-1);
        textView.setTextSize(14.0f);
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setTypeface(e.k.b(this, R.font.inter_semibold));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams((i2 - i4) - ((int) (this.density * 14.0f)), -2);
        layoutParams.setMarginStart((int) (this.density * 10.0f));
        linearLayout2.addView(textView, layoutParams);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        float f3 = this.density;
        layoutParams2.bottomMargin = (int) (12.0f * f3);
        layoutParams2.setMarginStart((int) (f3 * 4.0f));
        linearLayout.addView(linearLayout2, layoutParams2);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setClipChildren(false);
        frameLayout.setClipToPadding(false);
        int iShadowPad = shadowPad();
        ImageView imageView2 = new ImageView(this);
        imageView2.setImageBitmap(recentShadow(i2, i3));
        int i6 = iShadowPad * 2;
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i2 + i6, i6 + i3);
        int i7 = -iShadowPad;
        layoutParams3.leftMargin = i7;
        layoutParams3.topMargin = i7;
        frameLayout.addView(imageView2, layoutParams3);
        final ImageView imageView3 = new ImageView(this);
        imageView3.setScaleType(scaleType);
        roundCorners(imageView3, this.density * 22.0f);
        frameLayout.addView(imageView3, new FrameLayout.LayoutParams(i2, i3));
        linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(i2, i3));
        if (Stage.brandBackground(this, entry.pkg) != 0) {
            final int i8 = 0;
            thread = new Thread(new Runnable(this) { // from class: com.sid.tvos.H

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ MainActivity f157b;

                {
                    this.f157b = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (i8) {
                        case 0:
                            this.f157b.lambda$recentCard$207(entry, i2, i3, imageView3);
                            break;
                        case 1:
                            this.f157b.lambda$recentCard$209(entry, i2, i3, imageView3);
                            break;
                        default:
                            this.f157b.lambda$recentCard$211(entry, i2, i3, imageView3);
                            break;
                    }
                }
            });
        } else if (bitmapTile != null) {
            imageView3.setImageBitmap(bitmapTile);
            final int i9 = 1;
            thread = new Thread(new Runnable(this) { // from class: com.sid.tvos.H

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ MainActivity f157b;

                {
                    this.f157b = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (i9) {
                        case 0:
                            this.f157b.lambda$recentCard$207(entry, i2, i3, imageView3);
                            break;
                        case 1:
                            this.f157b.lambda$recentCard$209(entry, i2, i3, imageView3);
                            break;
                        default:
                            this.f157b.lambda$recentCard$211(entry, i2, i3, imageView3);
                            break;
                    }
                }
            });
        } else {
            final int i10 = 2;
            thread = new Thread(new Runnable(this) { // from class: com.sid.tvos.H

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ MainActivity f157b;

                {
                    this.f157b = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (i10) {
                        case 0:
                            this.f157b.lambda$recentCard$207(entry, i2, i3, imageView3);
                            break;
                        case 1:
                            this.f157b.lambda$recentCard$209(entry, i2, i3, imageView3);
                            break;
                        default:
                            this.f157b.lambda$recentCard$211(entry, i2, i3, imageView3);
                            break;
                    }
                }
            });
        }
        thread.start();
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams4.setMarginEnd(-((int) (i2 * 0.45f)));
        linearLayout.setLayoutParams(layoutParams4);
        linearLayout.setScaleX(0.86f);
        linearLayout.setScaleY(0.86f);
        linearLayout.setOnFocusChangeListener(new t.T(this, 1));
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.sid.tvos.I
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f162a.lambda$recentCard$213(entry, imageView3, view);
            }
        });
        linearLayout.setOnKeyListener(new ViewOnKeyListenerC0064e(this, 3));
        return linearLayout;
    }

    private int[] recentCardPx() {
        float[] fArr = Appearance.RECENT_WIDTH;
        int width = (int) (this.root.getWidth() * fArr[Math.max(0, Math.min(fArr.length - 1, Appearance.recentSize(this)))]);
        return new int[]{width, (width * 9) / 16};
    }

    private Bitmap recentShadow(int i2, int i3) {
        int iShadowPad = shadowPad();
        Bitmap bitmap = this.recentShadowBmp;
        if (bitmap != null) {
            int i4 = iShadowPad * 2;
            if (bitmap.getWidth() == i2 + i4 && bitmap.getHeight() == i4 + i3) {
                return bitmap;
            }
        }
        int i5 = iShadowPad * 2;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2 + i5, i5 + i3, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(1);
        float f2 = iShadowPad;
        paint.setColor(1711276032);
        paint.setMaskFilter(new BlurMaskFilter(0.55f * f2, BlurMaskFilter.Blur.NORMAL));
        float f3 = 0.22f * f2;
        float f4 = 0.1f * f2;
        RectF rectF = new RectF(f2 + f4, f2 + f3, (i2 + iShadowPad) - f4, iShadowPad + i3 + f3);
        float f5 = this.density;
        canvas.drawRoundRect(rectF, f5 * 22.0f, f5 * 22.0f, paint);
        int height = bitmapCreateBitmap.getHeight() * bitmapCreateBitmap.getWidth();
        int[] iArr = new int[height];
        bitmapCreateBitmap.getPixels(iArr, 0, bitmapCreateBitmap.getWidth(), 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
        Random random = new Random(7L);
        for (int i6 = 0; i6 < height; i6++) {
            int i7 = iArr[i6] >>> 24;
            if (i7 != 0 && i7 != 255) {
                iArr[i6] = Math.max(0, Math.min(255, (random.nextInt(3) + i7) - 1)) << 24;
            }
        }
        bitmapCreateBitmap.setPixels(iArr, 0, bitmapCreateBitmap.getWidth(), 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
        this.recentShadowBmp = bitmapCreateBitmap;
        return bitmapCreateBitmap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshBackdrop() {
        PopupWindow popupWindow = this.controlCenter;
        if (popupWindow == null || !popupWindow.isShowing() || this.root.getWidth() == 0) {
            return;
        }
        boolean zLiquid = Appearance.liquid(this);
        int i2 = this.backdropGen + 1;
        this.backdropGen = i2;
        Drawable drawable = this.dim.getDrawable();
        this.dim.setVisibility(4);
        Bitmap bitmapCapture = Blur.capture(this.root, blurDiv(zLiquid ? 4 : 8));
        this.dim.setVisibility(0);
        FROST.execute(new RunnableC0082x(this, bitmapCapture, zLiquid, i2, drawable, 0));
    }

    private void reloadKeepingFocus() {
        String str = lastFocusedKey;
        this.adapter.reload();
        this.grid.post(new RunnableC0073n(1, this, str));
    }

    private void renderCw() {
        this.cwRow.removeAllViews();
        this.cwScroll.scrollTo(0, 0);
        List<WatchNext.Item> listCwItemsFor = cwItemsFor(this.cwPosition);
        this.cwItems = listCwItemsFor;
        if (listCwItemsFor == null || listCwItemsFor.isEmpty()) {
            showCwViews(false);
            return;
        }
        int iMin = Math.min(this.cwItems.size(), 15);
        String string = this.cwItems.get(0).section;
        TextView textView = (TextView) findViewById(R.id.cwKicker);
        if (string == null) {
            string = getString(R.string.cw_title);
        }
        textView.setText(string);
        final int[] iArrCwCardPx = cwCardPx();
        final int i2 = this.cwGen + 1;
        this.cwGen = i2;
        final List<WatchNext.Item> list = this.cwItems;
        int iMin2 = Math.min(iMin, 4);
        final int iMin3 = Math.min(this.cwSelected, iMin - 1);
        for (int i3 = 0; i3 < iMin2; i3++) {
            this.cwRow.addView(makeCwCard(list, i3, iMin, iArrCwCardPx));
        }
        int i4 = iMin2;
        while (i4 < iMin) {
            final int i5 = i4;
            final int i6 = iMin;
            int i7 = i4;
            this.handler.postDelayed(new Runnable() { // from class: t.U
                @Override // java.lang.Runnable
                public final void run() {
                    this.f831a.lambda$renderCw$44(i2, list, i5, i6, iArrCwCardPx, iMin3);
                }
            }, (((long) (i7 - iMin2)) * 34) + 450);
            i4 = i7 + 1;
            iMin = iMin;
        }
        selectCw(iMin3);
        if (iMin3 > 0 && iMin3 < iMin2) {
            scrollCwTo(iMin3);
        }
        showCwViews(true);
    }

    private void renderStage(AppAdapter.Entry entry) {
        if (entry.isPlaceholder() || entry.isFolder()) {
            return;
        }
        Stage.render(this, entry, AppAdapter.colorOf(entry));
    }

    private void restackRecents(int i2) {
        for (int i3 = 0; i3 < this.recentsRow.getChildCount(); i3++) {
            this.recentsRow.getChildAt(i3).animate().translationZ((20 - (Math.min(19, Math.abs(i3 - i2)) * 2)) * this.density).setDuration(360L).setInterpolator(CALM).start();
        }
    }

    private void roundCorners(View view, final float f2) {
        view.setOutlineProvider(new ViewOutlineProvider() { // from class: com.sid.tvos.MainActivity.15
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view2, Outline outline) {
                outline.setRoundRect(0, 0, view2.getWidth(), view2.getHeight(), f2);
            }
        });
        view.setClipToOutline(true);
    }

    private static boolean sameItems(List<WatchNext.Item> list, List<WatchNext.Item> list2) {
        if (list == list2) {
            return true;
        }
        if (list == null || list2 == null || list.size() != list2.size()) {
            return false;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (!Objects.equals(list.get(i2).art, list2.get(i2).art) || list.get(i2).progress != list2.get(i2).progress) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: saveRemap, reason: merged with bridge method [inline-methods] */
    public void lambda$chooseRemapAction$170(int i2, String str) {
        Remaps.set(this, i2, str);
        Remaps.ensureServiceEnabled(this);
        this.handler.postDelayed(new RunnableC0062c(this, 23), 2000L);
        Toast.makeText(this, getString(R.string.remap_saved, Remaps.keyName(i2), Remaps.actionName(this, str)), 0).show();
    }

    private void scrollCwTo(int i2) {
        this.cwRow.post(new RunnableC0081w(this, i2, 0));
    }

    private void selectCw(final int i2) {
        List<WatchNext.Item> list = this.cwItems;
        if (list == null || i2 < 0 || i2 >= list.size()) {
            return;
        }
        this.cwSelected = i2;
        final WatchNext.Item item = this.cwItems.get(i2);
        setCwInfo(item.title, item.subtitle, item.progress);
        final int i3 = this.cwPosition;
        if (Appearance.cwArt(this)) {
            this.handler.removeCallbacks(this.cwBackdropRun);
            this.cwBackdropRun = new Runnable() { // from class: com.sid.tvos.n
                @Override // java.lang.Runnable
                public final void run() {
                    this.f318a.lambda$selectCw$61(i2, i3, item);
                }
            };
            if (this.cwRow.hasFocus()) {
                this.handler.postDelayed(this.cwBackdropRun, 480L);
            } else {
                this.cwBackdropRun.run();
            }
        }
    }

    private void setCwFocusable(boolean z2) {
        this.cwReleasing = !z2;
        for (int i2 = 0; i2 < this.cwRow.getChildCount(); i2++) {
            this.cwRow.getChildAt(i2).setFocusable(z2);
        }
        this.cwReleasing = false;
    }

    private void setCwInfo(String str, String str2, float f2) {
        boolean z2 = (str2 == null || str2.isEmpty()) ? false : true;
        TextView textView = this.cwTitle;
        if (str == null) {
            str = "";
        } else if (z2) {
            str = str + "  ·  " + str2;
        }
        textView.setText(str);
        this.cwSubtitle.setText(str2);
        if (f2 >= 0.0f) {
            ViewGroup.LayoutParams layoutParams = this.cwProgress.getLayoutParams();
            layoutParams.width = (int) (((this.density * 180.0f) * f2) / 100.0f);
            this.cwProgress.setLayoutParams(layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHomeFocusable(boolean z2) {
        int i2 = z2 ? 262144 : 393216;
        this.grid.setDescendantFocusability(i2);
        this.topBar.setDescendantFocusability(i2);
    }

    private void setShelf(Bitmap bitmap, int i2) {
        long j;
        long jFrostMs;
        if (bitmap == null || bitmap == this.shelfBitmap) {
            return;
        }
        ImageView imageView = this.shelf2;
        ImageView imageView2 = this.shelf;
        BitmapDrawable bitmapDrawable = new BitmapDrawable(getResources(), bitmap);
        bitmapDrawable.setFilterBitmap(true);
        imageView.setImageDrawable(bitmapDrawable);
        if (Build.VERSION.SDK_INT >= 23) {
            imageView.setForeground(isCwArt(bitmap) ? new CwScrim() : null);
        }
        imageView.animate().cancel();
        imageView2.animate().cancel();
        this.root.getWidth();
        new DecelerateInterpolator(2.0f);
        if (this.shelfBitmap == null) {
            imageView.setTranslationX(0.0f);
            imageView.setAlpha(1.0f);
            imageView2.setAlpha(0.0f);
            j = 450;
        } else {
            imageView.setTranslationX(0.0f);
            imageView.setAlpha(0.0f);
            if (i2 == 0) {
                imageView2.setTranslationX(0.0f);
                imageView2.setAlpha(1.0f);
                if (this.frostFade) {
                    jFrostMs = frostMs();
                } else {
                    jFrostMs = this.stepFadeMs;
                    if (jFrostMs <= 0) {
                        jFrostMs = 320;
                    }
                }
                this.stepFadeMs = 0L;
                imageView.animate().alpha(1.0f).setStartDelay(0L).setDuration(jFrostMs).setInterpolator(this.frostFade ? new AccelerateDecelerateInterpolator() : new DecelerateInterpolator(1.4f)).start();
                boolean z2 = this.frostFade;
                imageView2.animate().alpha(0.0f).setStartDelay(jFrostMs).setDuration(1L).start();
                this.frostFade = false;
                j = jFrostMs;
            } else {
                imageView.animate().alpha(1.0f).setStartDelay(0L).setDuration(420L).setInterpolator(new AccelerateDecelerateInterpolator()).start();
                imageView2.setTranslationX(0.0f);
                imageView2.setAlpha(1.0f);
                imageView2.animate().alpha(0.0f).setStartDelay(420L).setDuration(1L).start();
                j = 420;
            }
        }
        imageView.bringToFront();
        this.shelf = imageView;
        this.shelf2 = imageView2;
        this.shelfBitmap = bitmap;
        updateLabelColor(bitmap);
        updateStatusGlass(bitmap, j);
        if (this.shelfShown) {
            prefrost(bitmap);
        }
    }

    private void setUpRecents() {
        this.recentsOverlay = (FrameLayout) findViewById(R.id.recentsOverlay);
        this.recentsScroll = (HorizontalScrollView) findViewById(R.id.recentsScroll);
        this.recentsRow = (LinearLayout) findViewById(R.id.recentsRow);
        LayoutTransition layoutTransition = new LayoutTransition();
        layoutTransition.disableTransitionType(2);
        layoutTransition.disableTransitionType(3);
        layoutTransition.setDuration(300L);
        this.recentsRow.setLayoutTransition(layoutTransition);
    }

    private void setUpStatusPill() {
        final GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(this.density * 100.0f);
        gradientDrawable.setColor(-134217729);
        gradientDrawable.setAlpha(0);
        this.statusPill.setBackground(null);
        this.statusPill.setBackground(new LayerDrawable(new Drawable[]{this.statusGlass, gradientDrawable}));
        ViewGroup viewGroup = (ViewGroup) this.statusPill.getParent();
        viewGroup.setClipChildren(false);
        viewGroup.setClipToPadding(false);
        this.topBar.setClipChildren(false);
        this.topBar.setClipToPadding(false);
        ViewGroup viewGroup2 = this.topBar;
        viewGroup2.setPadding(viewGroup2.getPaddingLeft(), this.topBar.getPaddingTop(), this.topBar.getPaddingRight(), (int) (this.density * 16.0f));
        final TextClock textClock = (TextClock) findViewById(R.id.clock);
        final float[] fArr = {0.0f};
        final ValueAnimator[] valueAnimatorArr = {null};
        this.statusPill.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: t.W
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z2) {
                this.f843a.lambda$setUpStatusPill$77(valueAnimatorArr, fArr, gradientDrawable, textClock, view, z2);
            }
        });
        this.statusPill.addOnLayoutChangeListener(new t.X());
        this.statusPill.setOnClickListener(new ViewOnClickListenerC0067h(this, 5));
        this.statusPill.setOnKeyListener(new ViewOnKeyListenerC0064e(this, 4));
        this.statusAvatar.setOutlineProvider(new ViewOutlineProvider() { // from class: com.sid.tvos.MainActivity.12
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setOval(0, 0, view.getWidth(), view.getHeight());
            }
        });
        this.statusAvatar.setClipToOutline(true);
    }

    private void setUpTopBar() {
        View viewFindViewById = findViewById(R.id.btnWifi);
        View viewFindViewById2 = findViewById(R.id.btnBluetooth);
        View viewFindViewById3 = findViewById(R.id.btnAssistant);
        viewFindViewById.setOnClickListener(new ViewOnClickListenerC0067h(this, 1));
        int i2 = 2;
        viewFindViewById2.setOnClickListener(new ViewOnClickListenerC0067h(this, i2));
        viewFindViewById3.setOnClickListener(new ViewOnClickListenerC0067h(this, 3));
        View viewFindViewById4 = findViewById(R.id.btnSettings);
        viewFindViewById4.setOnClickListener(new ViewOnClickListenerC0067h(this, 4));
        ViewOnKeyListenerC0064e viewOnKeyListenerC0064e = new ViewOnKeyListenerC0064e(this, i2);
        int i3 = 0;
        View[] viewArr = {viewFindViewById, viewFindViewById2, viewFindViewById3, viewFindViewById4};
        for (int i4 = 0; i4 < 4; i4++) {
            View view = viewArr[i4];
            view.setOnKeyListener(viewOnKeyListenerC0064e);
            ImageView imageView = (ImageView) ((ViewGroup) view).getChildAt(0);
            imageView.setImageTintList(ColorStateList.valueOf(-1));
            view.setOnFocusChangeListener(new t.T(imageView, i3));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable settingBadge(int i2) {
        Bitmap bitmap = this.badgeCache.get(i2);
        if (bitmap != null) {
            return new BitmapDrawable(getResources(), bitmap);
        }
        int iRound = Math.round(this.density * 28.0f);
        int iBadgeColor = badgeColor(i2);
        Bitmap.Config config = Bitmap.Config.ARGB_8888;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iRound, iRound, config);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        darkTile(canvas, iRound);
        int iRound2 = Math.round(this.density * 5.5f);
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(iRound, iRound, config);
        Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
        Drawable drawableMutate = d.a.b(this, i2).mutate();
        int i3 = iRound - iRound2;
        drawableMutate.setBounds(iRound2, iRound2, i3, i3);
        drawableMutate.draw(canvas2);
        float[] fArr = new float[3];
        Color.colorToHSV(iBadgeColor, fArr);
        fArr[1] = fArr[1] * 0.55f;
        fArr[2] = 1.0f;
        Paint paint = new Paint(1);
        paint.setShader(new LinearGradient(0.0f, iRound2, 0.0f, i3, Color.HSVToColor(fArr), iBadgeColor, Shader.TileMode.CLAMP));
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        float f2 = iRound;
        canvas2.drawRect(0.0f, 0.0f, f2, f2, paint);
        canvas.drawBitmap(bitmapCreateBitmap2, 0.0f, 0.0f, (Paint) null);
        bitmapCreateBitmap2.recycle();
        this.badgeCache.put(i2, bitmapCreateBitmap);
        return new BitmapDrawable(getResources(), bitmapCreateBitmap);
    }

    private int shadowPad() {
        return (int) (this.density * 44.0f);
    }

    private long shelfSignature() {
        View[] viewArr = {this.shelf, this.shelf2, this.shelfGroup};
        long jFloatToIntBits = 17;
        for (int i2 = 0; i2 < 3; i2++) {
            View view = viewArr[i2];
            jFloatToIntBits = (((((((jFloatToIntBits * 31) + ((long) Float.floatToIntBits(view.getAlpha()))) * 31) + ((long) Float.floatToIntBits(view.getTranslationX()))) * 31) + ((long) Float.floatToIntBits(view.getTranslationY()))) * 31) + ((long) view.getVisibility());
        }
        return (((jFloatToIntBits * 31) + ((long) System.identityHashCode(this.shelf.getDrawable()))) * 31) + ((long) System.identityHashCode(this.shelf2.getDrawable()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAppearanceMenu() {
        new SettingsPanel().open(getString(R.string.appearance), new C0015p(this, 16));
    }

    /* JADX WARN: Type inference failed for: r12v0, types: [t.V] */
    private void showBackdrop() {
        final boolean zLiquid = Appearance.liquid(this);
        final int i2 = this.backdropGen + 1;
        this.backdropGen = i2;
        if (Build.VERSION.SDK_INT >= 26 && this.root.getWidth() > 0) {
            final int iBlurDiv = blurDiv(zLiquid ? 4 : 8);
            final Bitmap bitmapCreateBitmap = Bitmap.createBitmap(Math.max(1, this.root.getWidth() / iBlurDiv), Math.max(1, this.root.getHeight() / iBlurDiv), Bitmap.Config.ARGB_8888);
            try {
                PixelCopy.request(getWindow(), bitmapCreateBitmap, (PixelCopy.OnPixelCopyFinishedListener) new PixelCopy.OnPixelCopyFinishedListener() { // from class: t.V
                    @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
                    public final void onPixelCopyFinished(int i3) {
                        this.f838a.lambda$showBackdrop$9(i2, iBlurDiv, zLiquid, bitmapCreateBitmap, i3);
                    }
                }, this.handler);
                return;
            } catch (Exception unused) {
            }
        }
        blurBackdrop(Blur.capture(this.root, blurDiv(zLiquid ? 4 : 8)), zLiquid, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showBluetoothMenu(View view) {
        PopupWindow[] popupWindowArr = new PopupWindow[1];
        LinearLayout linearLayoutShowStatusMenu = showStatusMenu(view, popupWindowArr);
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter == null) {
            addMenuRow(linearLayoutShowStatusMenu, popupWindowArr[0], R.drawable.ic_bluetooth, getString(R.string.not_available), null, false, null);
            return;
        }
        boolean zIsEnabled = defaultAdapter.isEnabled();
        addMenuRow(linearLayoutShowStatusMenu, popupWindowArr[0], R.drawable.ic_power, getString(R.string.bluetooth), getString(zIsEnabled ? R.string.state_on : R.string.state_off), false, new RunnableC0078t(zIsEnabled, defaultAdapter));
        if (zIsEnabled) {
            ArrayList<BluetoothDevice> arrayList = new ArrayList(defaultAdapter.getBondedDevices());
            Collections.sort(arrayList, new C0079u());
            for (BluetoothDevice bluetoothDevice : arrayList) {
                boolean zIsConnected = isConnected(bluetoothDevice);
                addMenuRow(linearLayoutShowStatusMenu, popupWindowArr[0], R.drawable.ic_bluetooth, bluetoothDevice.getName() != null ? bluetoothDevice.getName() : bluetoothDevice.getAddress(), getString(zIsConnected ? R.string.connected : R.string.paired), zIsConnected, null);
            }
            addMenuRow(linearLayoutShowStatusMenu, popupWindowArr[0], R.drawable.ic_add, getString(R.string.pair_new_device), null, false, new RunnableC0062c(this, 8));
        }
    }

    private LinearLayout showCenteredPanel(boolean z2, PopupWindow[] popupWindowArr) {
        final View viewInflate = getLayoutInflater().inflate(z2 ? R.layout.popup_list : R.layout.popup_inputs, (ViewGroup) this.root, false);
        applyPanelGlass(viewInflate, 22.0f);
        final LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.rows);
        final PopupWindow popupWindowTrack = track(new PopupWindow(viewInflate, (int) (this.density * 380.0f), -2, true));
        popupWindowTrack.setBackgroundDrawable(new ColorDrawable(0));
        popupWindowTrack.setOutsideTouchable(true);
        popupWindowTrack.setAnimationStyle(0);
        popupWindowTrack.setOnDismissListener(new C0071l(this, 3));
        popupWindowArr[0] = popupWindowTrack;
        this.handler.post(new Runnable() { // from class: t.J
            @Override // java.lang.Runnable
            public final void run() {
                this.f805a.lambda$showCenteredPanel$164(viewInflate, popupWindowTrack, linearLayout);
            }
        });
        return linearLayout;
    }

    private void showControlCenter() {
        int i2;
        String string;
        Runnable p2;
        int i3;
        String string2;
        Runnable runnableC0062c;
        PopupWindow popupWindow = this.controlCenter;
        if (popupWindow == null || !popupWindow.isShowing()) {
            View viewInflate = getLayoutInflater().inflate(R.layout.control_center, (ViewGroup) this.root, false);
            int i4 = (int) (this.density * 262.0f);
            final PopupWindow popupWindowTrack = track(new PopupWindow(viewInflate, i4, -2, true));
            popupWindowTrack.setBackgroundDrawable(new ColorDrawable(0));
            popupWindowTrack.setOutsideTouchable(true);
            popupWindowTrack.setAnimationStyle(0);
            popupWindowTrack.setClippingEnabled(false);
            popupWindowTrack.setOnDismissListener(new C0071l(this, 5));
            ImageView imageView = (ImageView) viewInflate.findViewById(R.id.ccAvatar);
            imageView.setImageBitmap(Profile.avatar(this, (int) (this.density * 30.0f)));
            final int i5 = 0;
            imageView.setOnClickListener(new View.OnClickListener(this) { // from class: t.v

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ MainActivity f916b;

                {
                    this.f916b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i5) {
                        case 0:
                            this.f916b.lambda$showControlCenter$178(popupWindowTrack, view);
                            break;
                        default:
                            this.f916b.lambda$showControlCenter$181(popupWindowTrack, view);
                            break;
                    }
                }
            });
            imageView.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0083y());
            final int i6 = 1;
            viewInflate.findViewById(R.id.ccSleep).setOnClickListener(new View.OnClickListener(this) { // from class: t.v

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ MainActivity f916b;

                {
                    this.f916b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i6) {
                        case 0:
                            this.f916b.lambda$showControlCenter$178(popupWindowTrack, view);
                            break;
                        default:
                            this.f916b.lambda$showControlCenter$181(popupWindowTrack, view);
                            break;
                    }
                }
            });
            ccFocusLift(viewInflate.findViewById(R.id.ccSleep), 1.05f);
            WifiManager wifiManager = (WifiManager) getApplicationContext().getSystemService("wifi");
            ccPill(viewInflate, R.id.ccWifi, R.drawable.ic_wifi, getString(R.string.wifi), wifiManager != null && wifiManager.isWifiEnabled() ? this.wifiLabel : getString(R.string.state_off), new t.C(this, popupWindowTrack, 0));
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            ccPill(viewInflate, R.id.ccBluetooth, R.drawable.ic_bluetooth, getString(R.string.bluetooth), getString((defaultAdapter == null || !defaultAdapter.isEnabled()) ? R.string.state_off : R.string.state_on), new t.C(this, popupWindowTrack, 1));
            ccPill(viewInflate, R.id.ccInputs, R.drawable.ic_input, getString(R.string.inputs), null, new t.C(this, popupWindowTrack, 2));
            ccPill(viewInflate, R.id.ccSettings, R.drawable.ic_settings, getString(R.string.settings), null, new t.C(this, popupWindowTrack, 3));
            int[] iArr = {R.id.ccSleep, R.id.ccWifi, R.id.ccBluetooth, R.id.ccInputs, R.id.ccSettings};
            for (int i7 = 0; i7 < 5; i7++) {
                View viewFindViewById = viewInflate.findViewById(iArr[i7]);
                if (viewFindViewById != null) {
                    Corners.clip(viewFindViewById, this.density * 26.0f);
                }
            }
            LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.ccRound);
            ccRound(linearLayout, popupWindowTrack, R.drawable.ic_assistant, getString(R.string.assistant), new RunnableC0062c(this, 17));
            if (hasAirPlay()) {
                i2 = R.drawable.ic_airplay;
                string = getString(R.string.airplay);
                p2 = new RunnableC0062c(this, 21);
            } else {
                i2 = R.drawable.ic_cast;
                string = getString(R.string.cast);
                p2 = new t.P(this, 15);
            }
            ccRound(linearLayout, popupWindowTrack, i2, string, p2);
            View viewCcRound = ccRound(linearLayout, popupWindowTrack, R.drawable.ic_darkmode, getString(R.string.dark_mode), null);
            viewCcRound.setSelected(Appearance.dark(this));
            viewCcRound.setOnClickListener(new ViewOnClickListenerC0067h(this, 0));
            Intent intentLiveTvIntent = liveTvIntent();
            if (intentLiveTvIntent != null) {
                i3 = R.drawable.ic_livetv;
                string2 = getString(R.string.live_tv);
                runnableC0062c = new RunnableC0074o(this, intentLiveTvIntent, 0);
            } else {
                i3 = R.drawable.ic_display;
                string2 = getString(R.string.display);
                runnableC0062c = new RunnableC0062c(this, 5);
            }
            ccRound(linearLayout, popupWindowTrack, i3, string2, runnableC0062c);
            float f2 = this.density;
            int i8 = (int) (6.0f * f2);
            viewInflate.setPivotX(i4);
            viewInflate.setPivotY(0.0f);
            viewInflate.setScaleX(0.86f);
            viewInflate.setScaleY(0.86f);
            viewInflate.setAlpha(0.0f);
            viewInflate.setLayerType(2, null);
            popupWindowTrack.showAtLocation(this.root, 8388661, ((int) (45.0f * f2)) - i8, ((int) (f2 * 24.0f)) - i8);
            viewInflate.animate().scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(300L).setInterpolator(new DecelerateInterpolator(2.2f)).withEndAction(new RunnableC0077s(viewInflate, 0)).start();
            this.statusPill.animate().cancel();
            this.statusPill.setAlpha(0.0f);
            showBackdrop();
            this.ccOpening = true;
            viewInflate.findViewById(R.id.ccSleep).requestFocus();
            this.ccOpening = false;
            this.controlCenter = popupWindowTrack;
        }
    }

    private void showCwViews(boolean z2) {
        ViewPropertyAnimator viewPropertyAnimatorWithEndAction;
        int i2 = 1;
        View[] viewArr = {this.cwInfo, this.cwRow};
        for (int i3 = 0; i3 < 2; i3++) {
            View view = viewArr[i3];
            view.animate().cancel();
            if (z2) {
                view.setVisibility(0);
                view.setTranslationY(0.0f);
                viewPropertyAnimatorWithEndAction = view.animate().alpha(1.0f).setStartDelay(this.cwFadeDelay).setDuration(300L);
            } else {
                if (view.getVisibility() == 0) {
                    viewPropertyAnimatorWithEndAction = view.animate().alpha(0.0f).translationY(-Math.max(0, this.glideDy)).setDuration(Math.min(this.glideMs, 220L)).setInterpolator(this.glideCurve).withEndAction(new RunnableC0077s(view, i2));
                }
            }
            viewPropertyAnimatorWithEndAction.start();
        }
    }

    private void showFullHint(boolean z2) {
        ViewPropertyAnimator viewPropertyAnimatorAlpha;
        long j;
        int i2;
        View viewFindViewById = findViewById(R.id.fullHint);
        if (!z2 || this.fullScreen || (i2 = this.dockTopPx) <= 0) {
            viewPropertyAnimatorAlpha = viewFindViewById.animate().alpha(0.0f);
            j = 180;
        } else {
            float f2 = i2 - (this.density * 12.0f);
            float f3 = (this.cwScroll.getVisibility() == 0 && this.cwRow.getVisibility() == 0 && this.cwRow.getChildCount() > 0) ? this.cwBottomPx : f2 - (this.density * 60.0f);
            float f4 = f2 - f3;
            float height = viewFindViewById.getHeight() > 0 ? viewFindViewById.getHeight() : (int) (this.density * 24.0f);
            float f5 = this.density;
            if (f4 < (4.0f * f5) + height) {
                viewFindViewById.animate().alpha(0.0f).setDuration(120L).start();
                return;
            } else {
                viewFindViewById.setY(Math.max((6.0f * f5) + f3, (f2 - height) - (f5 * 10.0f)));
                viewPropertyAnimatorAlpha = viewFindViewById.animate().alpha(1.0f);
                j = 300;
            }
        }
        viewPropertyAnimatorAlpha.setDuration(j).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showInputs() {
        View viewInflate = getLayoutInflater().inflate(R.layout.popup_inputs, (ViewGroup) this.root, false);
        applyPanelGlass(viewInflate, 22.0f);
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.rows);
        PopupWindow popupWindowTrack = track(new PopupWindow(viewInflate, (int) (this.density * 300.0f), -2, true));
        popupWindowTrack.setBackgroundDrawable(new ColorDrawable(0));
        popupWindowTrack.setOutsideTouchable(true);
        popupWindowTrack.setAnimationStyle(0);
        popupWindowTrack.setElevation(0.0f);
        popupWindowTrack.setOnDismissListener(new C0071l(this, 0));
        TvInputManager tvInputManager = (TvInputManager) getSystemService("tv_input");
        if (tvInputManager != null) {
            ArrayList<TvInputInfo> arrayList = new ArrayList(tvInputManager.getTvInputList());
            Collections.sort(arrayList, new C0072m(this, 0));
            int i2 = 0;
            int i3 = 0;
            for (TvInputInfo tvInputInfo : arrayList) {
                if (tvInputInfo.isPassthroughInput() && tvInputInfo.getType() == 1007) {
                    i2++;
                    if (tvInputManager.getInputState(tvInputInfo.getId()) == 0) {
                        i3++;
                    }
                }
            }
            boolean z2 = i2 > 1 && i3 == i2;
            boolean z3 = false;
            for (TvInputInfo tvInputInfo2 : arrayList) {
                if (tvInputInfo2.isPassthroughInput()) {
                    CharSequence charSequenceLoadLabel = tvInputInfo2.loadLabel(this);
                    String id = charSequenceLoadLabel == null ? tvInputInfo2.getId() : charSequenceLoadLabel.toString();
                    boolean z4 = tvInputInfo2.getType() == 1007;
                    if (z4 && !id.toUpperCase().contains("HDMI")) {
                        id = "HDMI ".concat(id);
                    }
                    String str = id;
                    String id2 = tvInputInfo2.getId();
                    int inputState = (z4 && z2) ? -1 : tvInputManager.getInputState(id2);
                    if (!z4 && linearLayout.getChildCount() > 0 && !z3) {
                        addSeparator(linearLayout);
                    }
                    boolean z5 = !z4 ? true : z3;
                    addInputRow(linearLayout, popupWindowTrack, z4 ? R.drawable.ic_input : R.drawable.ic_av, str, inputState, new RunnableC0073n(0, this, id2));
                    z3 = z5;
                }
            }
        }
        Intent intentLiveTvIntent = liveTvIntent();
        if (intentLiveTvIntent != null) {
            if (linearLayout.getChildCount() > 0) {
                addSeparator(linearLayout);
            }
            addInputRow(linearLayout, popupWindowTrack, R.drawable.ic_livetv, getString(R.string.live_tv), -1, new RunnableC0074o(this, intentLiveTvIntent, 1));
        }
        if (linearLayout.getChildCount() == 0) {
            Toast.makeText(this, R.string.no_inputs, 0).show();
            return;
        }
        viewInflate.setAlpha(0.0f);
        viewInflate.setTranslationX(this.density * 48.0f);
        float f2 = this.density;
        popupWindowTrack.showAtLocation(this.root, 8388661, (int) (45.0f * f2), (int) (f2 * 84.0f));
        viewInflate.animate().alpha(1.0f).translationX(0.0f).setDuration(260L).setInterpolator(new DecelerateInterpolator(1.8f)).start();
        showBackdrop();
        linearLayout.getChildAt(0).requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showProfileMenu() {
        new SettingsPanel().open(getString(R.string.profile), new C0015p(this, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showRecents() {
        if (this.recentsOverlay == null) {
            setUpRecents();
        }
        SettingsPanel settingsPanel = this.settingsPanel;
        if (settingsPanel != null) {
            settingsPanel.closeNow();
        }
        this.recentsRow.removeAllViews();
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = Recents.list(this, 12).iterator();
        while (it.hasNext()) {
            AppAdapter.Entry entryEntryFor = AppAdapter.entryFor(this, it.next());
            if (entryEntryFor != null) {
                arrayList.add(entryEntryFor);
            }
        }
        int[] iArrRecentCardPx = recentCardPx();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            this.recentsRow.addView(recentCard((AppAdapter.Entry) it2.next(), iArrRecentCardPx[0], iArrRecentCardPx[1]));
        }
        if (!arrayList.isEmpty()) {
            this.recentsRow.addView(closeAllButton());
        }
        int width = (this.root.getWidth() - iArrRecentCardPx[0]) / 2;
        this.recentsScroll.setPadding(width, 0, width, 0);
        this.recentsRow.setPadding(0, shadowPad(), 0, shadowPad());
        findViewById(R.id.recentsEmpty).setVisibility(arrayList.isEmpty() ? 0 : 8);
        findViewById(R.id.recentsHint).setVisibility(arrayList.isEmpty() ? 8 : 0);
        boolean zRecentRam = Appearance.recentRam(this);
        findViewById(R.id.recentsRam).setVisibility(zRecentRam ? 0 : 8);
        if (zRecentRam) {
            updateRam();
        }
        Bitmap bitmap = this.shelfBitmap;
        Bitmap bitmapShelfAt = (bitmap == null || !this.frostSource.containsKey(bitmap)) ? this.shelfBitmap : this.frostSource.get(this.shelfBitmap);
        if (bitmapShelfAt == null) {
            bitmapShelfAt = this.adapter.shelfAt(0);
        }
        ((ImageView) findViewById(R.id.recentsBackdrop)).setImageBitmap(bitmapShelfAt != null ? Blur.frost(bitmapShelfAt, Appearance.blur(this)) : null);
        findViewById(R.id.recentsBackdrop).setBackgroundColor(-16777216);
        setHomeFocusable(false);
        hideGlass();
        this.recentsOverlay.setVisibility(0);
        this.topBar.animate().alpha(0.0f).setDuration(200L).start();
        this.recentsOverlay.setAlpha(0.0f);
        this.recentsOverlay.animate().alpha(1.0f).setDuration(260L).start();
        for (int i2 = 0; i2 < this.recentsRow.getChildCount(); i2++) {
            View childAt = this.recentsRow.getChildAt(i2);
            childAt.setTranslationY(this.density * 70.0f);
            childAt.animate().translationY(0.0f).setStartDelay(((long) i2) * 35).setDuration(420L).setInterpolator(CALM).start();
        }
        this.recentsScroll.scrollTo(0, 0);
        if (this.recentsRow.getChildCount() > 0) {
            this.recentsRow.post(new RunnableC0062c(this, 29));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showRemapMenu() {
        PopupWindow[] popupWindowArr = new PopupWindow[1];
        LinearLayout linearLayoutShowCenteredPanel = showCenteredPanel(false, popupWindowArr);
        if (!Remaps.serviceEnabled(this)) {
            addMenuRow(linearLayoutShowCenteredPanel, popupWindowArr[0], R.drawable.ic_power, getString(R.string.remap_turn_on), getString(R.string.remap_turn_on_hint), false, new RunnableC0062c(this, 19));
        }
        for (Map.Entry<Integer, String> entry : Remaps.all(this).entrySet()) {
            int iIntValue = entry.getKey().intValue();
            String strKeyName = Remaps.keyName(iIntValue);
            addMenuRow(linearLayoutShowCenteredPanel, popupWindowArr[0], R.drawable.ic_remote, strKeyName + "  →  " + Remaps.actionName(this, entry.getValue()), getString(R.string.remap_tap_to_remove), false, new t.I(this, iIntValue, strKeyName, 0));
        }
        addMenuRow(linearLayoutShowCenteredPanel, popupWindowArr[0], R.drawable.ic_add, getString(R.string.remap_add), null, false, new RunnableC0062c(this, 20));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSettingsMenu(View view) {
        new SettingsPanel().open(getString(R.string.settings), new C0015p(this, 18));
    }

    private void showShelf(int i2) {
        showFullHint(true);
        boolean zCwArt = Appearance.cwArt(this);
        boolean z2 = false;
        boolean z3 = (!isCwApp(i2) || cwItemsFor(i2) == null || cwItemsFor(i2).isEmpty()) ? false : true;
        int iMode = CwBackground.mode(this);
        boolean z4 = !zCwArt && z3 && iMode == 1;
        Bitmap bitmapCwBackdropNow = null;
        Bitmap bitmap = (!z3 || iMode < 2) ? null : CwBackground.get(this, Stage.cap(this.root.getWidth()), Math.round((this.root.getHeight() * Stage.cap(this.root.getWidth())) / Math.max(1, this.root.getWidth())));
        if (bitmap != null) {
            bitmapCwBackdropNow = bitmap;
        } else if (isCwApp(i2) && zCwArt) {
            bitmapCwBackdropNow = cwBackdropNow(i2);
        }
        int iCompare = Integer.compare(i2, this.shelfPosition);
        if (bitmapCwBackdropNow == null) {
            bitmapCwBackdropNow = this.adapter.shelfReady(i2, new G(this, i2, zCwArt, z4, iCompare));
        }
        if (z4 && bitmapCwBackdropNow != null) {
            bitmapCwBackdropNow = ownBlur(bitmapCwBackdropNow, i2, iCompare);
        }
        this.shelfPosition = i2;
        if (!this.shelfShown && this.shelfGroup.getAlpha() > 0.05f && !isLowRam()) {
            z2 = true;
        }
        this.cwFadeDelay = z2 ? 200L : 0L;
        updateContinueWatching(i2);
        this.cwFadeDelay = 0L;
        if (this.shelfShown) {
            setShelf(bitmapCwBackdropNow, iCompare);
            return;
        }
        this.shelfShown = true;
        this.handler.removeCallbacks(this.shelfBack);
        t.F f2 = new t.F(this, i2, bitmapCwBackdropNow, 1);
        this.shelfBack = f2;
        if (z2) {
            this.handler.postDelayed(f2, 200L);
        } else {
            f2.run();
        }
    }

    private LinearLayout showStatusMenu(final View view, PopupWindow[] popupWindowArr) {
        final View viewInflate = getLayoutInflater().inflate(R.layout.popup_inputs, (ViewGroup) this.root, false);
        applyPanelGlass(viewInflate, 22.0f);
        final LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.rows);
        final int i2 = (int) (this.density * 290.0f);
        final PopupWindow popupWindowTrack = track(new PopupWindow(viewInflate, i2, -2, true));
        popupWindowTrack.setBackgroundDrawable(new ColorDrawable(0));
        popupWindowTrack.setOutsideTouchable(true);
        popupWindowTrack.setAnimationStyle(0);
        popupWindowTrack.setOnDismissListener(new C0071l(this, 2));
        popupWindowArr[0] = popupWindowTrack;
        this.handler.post(new Runnable() { // from class: t.D
            @Override // java.lang.Runnable
            public final void run() {
                this.f780a.lambda$showStatusMenu$82(view, i2, viewInflate, popupWindowTrack, linearLayout);
            }
        });
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showWeather(int i2, int i3, boolean z2, String str) {
        this.weatherTemp = i2;
        this.weatherCity = str;
        ((ImageView) findViewById(R.id.weatherIcon)).setImageResource(Weather.icon(i3, z2));
        ((ImageView) findViewById(R.id.weatherPillIcon)).setImageResource(Weather.icon(i3, z2));
        this.weatherLoaded = true;
        applyStatusItems();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showWifiMenu(View view) {
        PopupWindow[] popupWindowArr = new PopupWindow[1];
        LinearLayout linearLayoutShowStatusMenu = showStatusMenu(view, popupWindowArr);
        WifiManager wifiManager = (WifiManager) getApplicationContext().getSystemService("wifi");
        boolean z2 = wifiManager != null && wifiManager.isWifiEnabled();
        if (z2) {
            addMenuRow(linearLayoutShowStatusMenu, popupWindowArr[0], R.drawable.ic_wifi, this.wifiLabel, getString(R.string.connected), true, null);
        }
        addMenuRow(linearLayoutShowStatusMenu, popupWindowArr[0], R.drawable.ic_power, getString(R.string.wifi), getString(z2 ? R.string.state_on : R.string.state_off), false, new RunnableC0078t(wifiManager, z2));
        addMenuRow(linearLayoutShowStatusMenu, popupWindowArr[0], R.drawable.ic_settings, getString(R.string.wifi_settings), null, false, new RunnableC0062c(this, 7));
    }

    private List<View> shownStatusButtons() {
        ArrayList arrayList = new ArrayList();
        if (this.topBar.getVisibility() != 0) {
            return arrayList;
        }
        if (Appearance.statusMinimal(this)) {
            arrayList.add(this.statusPill);
            return arrayList;
        }
        for (int i2 : STATUS_BUTTONS) {
            View viewFindViewById = findViewById(i2);
            if (viewFindViewById.getVisibility() == 0) {
                arrayList.add(viewFindViewById);
            }
        }
        return arrayList;
    }

    private void slideDock(final int i2, final int i3) {
        this.grid.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.sid.tvos.MainActivity.13
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                MainActivity.this.grid.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                MainActivity.this.slideDockNow(i2, i3);
            }
        });
        this.grid.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void slideDockNow(int i2, int i3) {
        float width = this.grid.getWidth() / COLUMNS;
        for (int i4 = 0; i4 < COLUMNS; i4++) {
            androidx.recyclerview.widget.o oVarFindViewHolderForAdapterPosition = this.grid.findViewHolderForAdapterPosition(i4);
            if (oVarFindViewHolderForAdapterPosition != null) {
                oVarFindViewHolderForAdapterPosition.itemView.setTranslationX(i3 * width);
                oVarFindViewHolderForAdapterPosition.itemView.animate().translationX(0.0f).setDuration(380L).setInterpolator(CALM).start();
            }
        }
        for (int i5 = 0; i5 < COLUMNS; i5++) {
            androidx.recyclerview.widget.o oVarFindViewHolderForAdapterPosition2 = this.grid.findViewHolderForAdapterPosition(i5);
            if (oVarFindViewHolderForAdapterPosition2 != null && i5 != i2) {
                View viewFindViewById = oVarFindViewHolderForAdapterPosition2.itemView.findViewById(R.id.card);
                viewFindViewById.setScaleX(1.0f);
                viewFindViewById.setScaleY(1.0f);
                oVarFindViewHolderForAdapterPosition2.itemView.findViewById(R.id.name).setAlpha(0.0f);
            }
        }
        androidx.recyclerview.widget.o oVarFindViewHolderForAdapterPosition3 = this.grid.findViewHolderForAdapterPosition(i2);
        if (oVarFindViewHolderForAdapterPosition3 != null) {
            View viewFindViewById2 = oVarFindViewHolderForAdapterPosition3.itemView.findViewById(R.id.card);
            if (viewFindViewById2.isFocused()) {
                onTileFocused(i2, viewFindViewById2);
            } else {
                viewFindViewById2.requestFocus();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void slideFrom(int i2, float f2) {
        androidx.recyclerview.widget.o oVarFindViewHolderForAdapterPosition = this.grid.findViewHolderForAdapterPosition(i2);
        if (oVarFindViewHolderForAdapterPosition == null) {
            return;
        }
        oVarFindViewHolderForAdapterPosition.itemView.setTranslationX(f2);
        oVarFindViewHolderForAdapterPosition.itemView.animate().translationX(0.0f).setDuration(260L).setInterpolator(CALM).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: startMove, reason: merged with bridge method [inline-methods] */
    public void lambda$onTileLongPress$20(AppAdapter.Entry entry) {
        this.movingKey = entry.key();
        if (this.moveHint == null) {
            TextView textView = new TextView(this);
            this.moveHint = textView;
            textView.setTextColor(-14935010);
            this.moveHint.setTextSize(14.0f);
            this.moveHint.setTypeface(e.k.b(this, R.font.inter_semibold));
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadius(this.density * 100.0f);
            gradientDrawable.setColor(-218103809);
            this.moveHint.setBackground(gradientDrawable);
            float f2 = this.density;
            int i2 = (int) (18.0f * f2);
            int i3 = (int) (f2 * 9.0f);
            this.moveHint.setPadding(i2, i3, i2, i3);
            this.moveHint.setElevation(this.density * 10.0f);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 49);
            layoutParams.topMargin = (int) (this.density * 28.0f);
            this.root.addView(this.moveHint, layoutParams);
        }
        this.moveHint.setText(getString(R.string.moving_hint, entry.label));
        this.moveHint.setAlpha(0.0f);
        this.moveHint.setTranslationY(this.density * (-12.0f));
        this.moveHint.animate().alpha(1.0f).translationY(0.0f).setDuration(260L).start();
        this.grid.post(new RunnableC0062c(this, 9));
    }

    private void startWiggle(View view) {
        if (this.wiggling == view) {
            return;
        }
        stopWiggle();
        this.wiggling = view;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ROTATION, -1.6f, 1.6f);
        objectAnimatorOfFloat.setDuration(130L);
        objectAnimatorOfFloat.setRepeatMode(2);
        objectAnimatorOfFloat.setRepeatCount(-1);
        view.setTag(R.id.selected, objectAnimatorOfFloat);
        objectAnimatorOfFloat.start();
    }

    private void stopWiggle() {
        View view = this.wiggling;
        if (view == null) {
            return;
        }
        Object tag = view.getTag(R.id.selected);
        if (tag instanceof Animator) {
            ((Animator) tag).cancel();
        }
        this.wiggling.setRotation(0.0f);
        this.wiggling.setTag(R.id.selected, null);
        this.wiggling = null;
    }

    private float tileX(View view, Rect rect, float f2) {
        rect.set(0, 0, view.getWidth(), view.getHeight());
        this.root.offsetDescendantRectToMyCoords(view, rect);
        return rect.exactCenterX() - (f2 / 2.0f);
    }

    private float tileY(View view, Rect rect, float f2) {
        rect.set(0, 0, view.getWidth(), view.getHeight());
        this.root.offsetDescendantRectToMyCoords(view, rect);
        return rect.exactCenterY() - (f2 / 2.0f);
    }

    private String timeLabel(int i2) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, i2 / 60);
        calendar.set(12, i2 % 60);
        return DateFormat.getTimeFormat(this).format(calendar.getTime());
    }

    private PopupWindow track(PopupWindow popupWindow) {
        this.popups.add(new WeakReference<>(popupWindow));
        this.handler.postDelayed(new t.C(this, popupWindow, 4), 60L);
        return popupWindow;
    }

    private String tunerInputId() {
        TvInputManager tvInputManager = (TvInputManager) getSystemService("tv_input");
        String id = null;
        if (tvInputManager == null) {
            return null;
        }
        for (TvInputInfo tvInputInfo : tvInputManager.getTvInputList()) {
            if (tvInputInfo.getType() == 0 && (tvInputInfo.getServiceInfo().applicationInfo.flags & 1) != 0 && (id == null || tvInputInfo.getId().compareTo(id) < 0)) {
                id = tvInputInfo.getId();
            }
        }
        return id;
    }

    private void updateContinueWatching(int i2) {
        if (!isCwApp(i2)) {
            hideCw();
            return;
        }
        boolean z2 = i2 == this.cwPosition && this.cwRow.getChildCount() > 0;
        if (i2 != this.cwPosition) {
            this.cwSelected = 0;
        }
        this.cwPosition = i2;
        Map<String, List<WatchNext.Item>> mapLoad = WatchNext.load(this, new C0015p(this, 17));
        if (mapLoad != null && mapLoad != this.cwData) {
            this.cwData = mapLoad;
            this.handler.removeCallbacks(this.prewarmCw);
            this.handler.postDelayed(this.prewarmCw, 1200L);
        }
        if (z2 && sameItems(cwItemsFor(i2), this.cwItems)) {
            showCwViews(true);
            return;
        }
        this.handler.removeCallbacks(this.cwRenderLater);
        if (!this.shelfShown || isLowRam()) {
            renderCw();
            return;
        }
        this.cwGen++;
        showCwViews(false);
        this.handler.postDelayed(this.cwRenderLater, 430L);
    }

    private void updateGridPadding(int i2) {
        if (i2 <= 0) {
            return;
        }
        int iMax = Math.max(0, (i2 - ((int) (((AppAdapter.itemDp(this) + 6.0f) + 20.0f) * this.density))) + ((int) ((Appearance.FAV_OFFSET_DP[Appearance.step(this, "fav_pos")] + 8) * this.density)));
        this.dockTopPx = ((int) ((Appearance.ROW_GAP_DP[Appearance.step(this, "row_gap")] + 6) * this.density)) + iMax;
        this.grid.post(new t.P(this, 9));
        if (this.grid.getPaddingTop() != iMax) {
            RecyclerView recyclerView = this.grid;
            recyclerView.setPadding(recyclerView.getPaddingLeft(), iMax, this.grid.getPaddingRight(), this.grid.getPaddingBottom());
        }
    }

    private void updateLabelColor(Bitmap bitmap) {
        int iIntValue;
        if (bitmap == null || bitmap.isRecycled() || bitmap.getWidth() < 4 || bitmap.getHeight() < 4) {
            return;
        }
        Integer num = isCwArt(bitmap) ? -1 : this.labelColors.get(bitmap);
        if (num != null) {
            iIntValue = num.intValue();
        } else {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            Bitmap bitmapRegion = Gpu.region(bitmap, new Rect(width / 10, (height * 82) / 100, (width * 9) / 10, (height * 98) / 100), 16, 4);
            float f2 = 0.0f;
            for (int i2 = 0; i2 < 4; i2++) {
                for (int i3 = 0; i3 < 16; i3++) {
                    int pixel = bitmapRegion.getPixel(i3, i2);
                    f2 += ((pixel & 255) * 0.0722f) + (((pixel >> 8) & 255) * 0.7152f) + (((pixel >> 16) & 255) * 0.2126f);
                }
            }
            bitmapRegion.recycle();
            int i4 = f2 / 64.0f > 170.0f ? -14935010 : -1;
            this.labelColors.put(bitmap, Integer.valueOf(i4));
            iIntValue = i4;
        }
        if (iIntValue == AppAdapter.labelColor) {
            return;
        }
        AppAdapter.labelColor = iIntValue;
        for (int i5 = 0; i5 < this.grid.getChildCount(); i5++) {
            TextView textView = (TextView) this.grid.getChildAt(i5).findViewById(R.id.name);
            if (textView != null) {
                AppAdapter.styleLabel(textView);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRam() {
        ActivityManager activityManager = (ActivityManager) getSystemService("activity");
        if (activityManager == null || this.recentsOverlay == null) {
            return;
        }
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        long j = memoryInfo.totalMem - memoryInfo.availMem;
        ((TextView) findViewById(R.id.recentsRamText)).setText(getString(R.string.ram_usage, gb(j), gb(memoryInfo.totalMem)));
        View viewFindViewById = findViewById(R.id.recentsRamTrack);
        viewFindViewById.post(new t.S(viewFindViewById, j, memoryInfo, findViewById(R.id.recentsRamFill)));
    }

    private void updateStatusGlass(Bitmap bitmap) {
        updateStatusGlass(bitmap, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:21:0x004f  */
    public void updateWifiLabel() {
        NetworkCapabilities networkCapabilities;
        int i2;
        String string = getString(R.string.wifi);
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) getSystemService("connectivity");
            if (connectivityManager != null && Build.VERSION.SDK_INT >= 23) {
                Network activeNetwork = connectivityManager.getActiveNetwork();
                if (activeNetwork != null) {
                    networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
                } else {
                    networkCapabilities = null;
                }
            } else if (connectivityManager != null) {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                NetworkCapabilities networkCapabilities2 = null;
                for (Network network : connectivityManager.getAllNetworks()) {
                    NetworkInfo networkInfo = connectivityManager.getNetworkInfo(network);
                    if (activeNetworkInfo != null && networkInfo != null && networkInfo.getType() == activeNetworkInfo.getType()) {
                        networkCapabilities2 = connectivityManager.getNetworkCapabilities(network);
                    }
                }
                networkCapabilities = networkCapabilities2;
            } else {
                networkCapabilities = null;
            }
            if (networkCapabilities != null) {
                if (networkCapabilities.hasTransport(3)) {
                    i2 = R.string.ethernet;
                } else if (networkCapabilities.hasTransport(1)) {
                    WifiManager wifiManager = (WifiManager) getApplicationContext().getSystemService("wifi");
                    WifiInfo connectionInfo = wifiManager != null ? wifiManager.getConnectionInfo() : null;
                    String ssid = connectionInfo != null ? connectionInfo.getSSID() : null;
                    if (ssid != null) {
                        String strTrim = ssid.replace("\"", "").trim();
                        if (!strTrim.isEmpty() && !strTrim.contains("unknown") && !strTrim.equals("0x")) {
                            string = strTrim;
                        }
                    }
                }
                this.wifiLabel = string;
            }
            i2 = R.string.offline;
            string = getString(i2);
        } catch (Exception unused) {
        }
        this.wifiLabel = string;
    }

    private void wireCwKeys(View view, final int i2, final int i3) {
        view.setOnKeyListener(new View.OnKeyListener() { // from class: t.A
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view2, int i4, KeyEvent keyEvent) {
                return this.f770a.lambda$wireCwKeys$52(i2, i3, view2, i4, keyEvent);
            }
        });
    }

    private void zoom(float f2, float f3, long j, TimeInterpolator timeInterpolator, final Runnable runnable) {
        final Rect rect = this.launchFrom;
        final float width = this.root.getWidth();
        final float height = this.root.getHeight();
        final float f4 = this.density * 16.0f;
        this.launchCard.setPivotX(0.0f);
        this.launchCard.setPivotY(0.0f);
        final float[] fArr = {f4};
        this.launchCard.setOutlineProvider(new ViewOutlineProvider() { // from class: com.sid.tvos.MainActivity.10
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), fArr[0]);
            }
        });
        this.launchCard.setClipToOutline(true);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f2, f3);
        valueAnimatorOfFloat.setDuration(j);
        valueAnimatorOfFloat.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: t.k
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f884a.lambda$zoom$68(rect, width, height, fArr, f4, valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.sid.tvos.MainActivity.11
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        });
        valueAnimatorOfFloat.start();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:4:0x000b  */
    /* JADX INFO: renamed from: applyLauncherSetting, reason: merged with bridge method [inline-methods] */
    public void lambda$onResume$3(String str) {
        str.getClass();
        switch (str) {
            case "cw_art":
                this.cwBackdrops.evictAll();
                int i2 = this.shelfPosition;
                if (this.shelfShown && i2 >= 0) {
                    this.shelfPosition = -1;
                    showShelf(i2);
                    break;
                }
                break;
            case "status":
                applyStatusItems();
                break;
            case "cw":
                applyCwOn();
                break;
            case "dark":
                applyDark();
                break;
            case "glass":
                applyGlass(Appearance.liquid(this));
                break;
            case "icons":
                this.adapter.reload();
                break;
        }
        SettingsPanel settingsPanel = this.settingsPanel;
        if (settingsPanel != null) {
            settingsPanel.refresh();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        String str = (Remaps.capturing || Remaps.reserved(keyCode)) ? null : Remaps.get(this, keyCode);
        if (str == null || !(str.startsWith("launcher:") || str.startsWith("app:") || str.equals("recents"))) {
            if ((keyCode == 19 || keyCode == 20 || keyCode == 21 || keyCode == 22) && keyEvent.getAction() == 0) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                if (keyEvent.getRepeatCount() > 0 && (jUptimeMillis - keyEvent.getEventTime() > 120 || jUptimeMillis - this.lastMoveAt < 95)) {
                    return true;
                }
                this.lastMoveAt = jUptimeMillis;
            }
            return super.dispatchKeyEvent(keyEvent);
        }
        if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
            if (str.startsWith("launcher:")) {
                LauncherActions.run(this, str.substring(9));
            } else if (str.equals("recents")) {
                showRecents();
            } else {
                Intent leanbackLaunchIntentForPackage = getPackageManager().getLeanbackLaunchIntentForPackage(str.substring(4));
                if (leanbackLaunchIntentForPackage == null) {
                    leanbackLaunchIntentForPackage = getPackageManager().getLaunchIntentForPackage(str.substring(4));
                }
                if (leanbackLaunchIntentForPackage != null) {
                    lambda$showInputs$201(leanbackLaunchIntentForPackage);
                }
            }
        }
        return true;
    }

    public boolean isFront() {
        return this.resumed;
    }

    @Override // android.app.Activity
    public void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        if (i2 == 42) {
            this.handler.postDelayed(new RunnableC0062c(this, 22), 300L);
        } else {
            if (i2 != 41 || i3 != -1 || intent == null || intent.getData() == null) {
                return;
            }
            new Thread(new t.G(this, intent.getData(), 2)).start();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        SettingsPanel settingsPanel = this.settingsPanel;
        if (settingsPanel != null) {
            settingsPanel.back();
            return;
        }
        if (this.movingKey != null) {
            finishMove();
            return;
        }
        if (this.fullScreen) {
            exitFullScreen(false);
            return;
        }
        FrameLayout frameLayout = this.recentsOverlay;
        if (frameLayout != null && frameLayout.getVisibility() == 0) {
            closeRecents();
            return;
        }
        if (this.folderOverlay.getVisibility() == 0) {
            closeFolder();
            return;
        }
        if (this.cwRow.hasFocus()) {
            setCwFocusable(false);
            focusTile(this.cwPosition);
            return;
        }
        int i2 = lastFocused;
        int i3 = COLUMNS;
        if (i2 >= i3) {
            focusTile(Math.min(i2 % i3, this.adapter.getItemCount() - 1));
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_main);
        getWindow().setBackgroundDrawable(null);
        this.density = getResources().getDisplayMetrics().density;
        COLUMNS = Appearance.ROW_ICON_COUNT[Appearance.step(this, "row_icons")];
        this.liveTvPkg = getString(R.string.live_tv_package).trim();
        this.root = (FrameLayout) findViewById(R.id.root);
        GlassView glassView = (GlassView) findViewById(R.id.glass);
        this.glass = glassView;
        glassView.setLayerType(2, null);
        this.shelf = (ImageView) findViewById(R.id.shelf);
        this.shelfScrim = findViewById(R.id.shelfScrim);
        this.dim = (ImageView) findViewById(R.id.dim);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.shelfGroup);
        this.shelfGroup = frameLayout;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 24) {
            frameLayout.forceHasOverlappingRendering(false);
        }
        this.shelf2 = (ImageView) findViewById(R.id.shelf2);
        this.launchCard = (ImageView) findViewById(R.id.launchCard);
        this.cwInfo = findViewById(R.id.cwInfo);
        this.cwRow = (LinearLayout) findViewById(R.id.cwRow);
        this.cwScroll = (HorizontalScrollView) findViewById(R.id.cwScroll);
        if (i2 >= 24) {
            this.cwRow.forceHasOverlappingRendering(false);
            this.cwInfo.forceHasOverlappingRendering(false);
        }
        this.cwTitle = (TextView) findViewById(R.id.cwTitle);
        this.cwSubtitle = (TextView) findViewById(R.id.cwSubtitle);
        this.cwProgress = findViewById(R.id.cwProgress);
        this.topBar = (ViewGroup) findViewById(R.id.topBar);
        this.statusPill = findViewById(R.id.statusPill);
        this.statusAvatar = (ImageView) findViewById(R.id.statusAvatar);
        if (!isLowRam()) {
            this.cwBackdrops = new LruCache<>(5);
        }
        LiquidGlassDrawable.blurScale = Appearance.blurScale(this);
        LiquidGlassDrawable liquidGlassDrawable = new LiquidGlassDrawable(this.density);
        this.statusGlass = liquidGlassDrawable;
        this.statusPill.setBackground(liquidGlassDrawable);
        this.statusGlass.setLiveSource(this.shelfGroup, this.statusPill);
        if (!this.statusGlass.isLive()) {
            this.statusPill.setLayerType(2, null);
        }
        this.weatherPill = (LinearLayout) findViewById(R.id.weatherPill);
        LiquidGlassDrawable liquidGlassDrawable2 = new LiquidGlassDrawable(this.density);
        this.weatherGlass = liquidGlassDrawable2;
        liquidGlassDrawable2.setLiquid(Appearance.liquid(this));
        this.weatherPill.setBackground(this.weatherGlass);
        this.weatherGlass.setLiveSource(this.shelfGroup, this.weatherPill);
        if (!this.weatherGlass.isLive()) {
            this.weatherPill.setLayerType(2, null);
        }
        this.statusPill.setOutlineProvider(new ViewOutlineProvider() { // from class: com.sid.tvos.MainActivity.3
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), view.getHeight() / 2.0f);
                outline.setAlpha(0.5f);
            }
        });
        this.statusPill.setElevation(0.0f);
        this.folderOverlay = (FrameLayout) findViewById(R.id.folderOverlay);
        this.folderBackdrop = (ImageView) findViewById(R.id.folderBackdrop);
        this.folderName = (TextView) findViewById(R.id.folderName);
        this.folderPanel = findViewById(R.id.folderPanel);
        this.folderGlass = (GlassView) findViewById(R.id.folderGlass);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.folderGridView);
        this.folderGridView = recyclerView;
        recyclerView.setLayoutManager(new GridLayoutManager(4));
        this.folderGridView.setItemAnimator(null);
        AppAdapter appAdapter = new AppAdapter(this, this.folderTiles);
        this.folderAdapter = appAdapter;
        this.folderGridView.setAdapter(appAdapter);
        this.folderGridView.addOnScrollListener(new r.Q() { // from class: com.sid.tvos.MainActivity.4
            @Override // r.Q
            public void onScrolled(RecyclerView recyclerView2, int i3, int i4) {
                MainActivity.this.folderGlass.setTranslationY(MainActivity.this.folderGlass.getTranslationY() - i4);
            }
        });
        setUpTopBar();
        setUpStatusPill();
        this.root.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: t.M
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                return this.f812a.lambda$onCreate$0();
            }
        });
        RecyclerView recyclerView2 = (RecyclerView) findViewById(R.id.grid);
        this.grid = recyclerView2;
        recyclerView2.setLayoutManager(new GridLayoutManager(this, COLUMNS) { // from class: com.sid.tvos.MainActivity.5
            {
                super(i);
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager
            public void calculateExtraLayoutSpace(r.Y y2, int[] iArr) {
                int height = MainActivity.this.grid.getHeight();
                iArr[0] = height;
                iArr[1] = height;
            }

            @Override // androidx.recyclerview.widget.j
            public boolean requestChildRectangleOnScreen(RecyclerView recyclerView3, View view, Rect rect, boolean z2, boolean z3) {
                return false;
            }
        });
        this.grid.setHasFixedSize(true);
        this.grid.setItemViewCacheSize(COLUMNS * 4);
        if (!isLowRam()) {
            ((HomeGrid) this.grid).setTopFade((int) (this.density * 150.0f));
        }
        this.topBar.setTranslationZ(this.density * 2.0f);
        this.grid.setItemAnimator(null);
        DockDecoration dockDecoration = new DockDecoration(COLUMNS, this.density);
        this.dockBand = dockDecoration;
        dockDecoration.setLiquid(Appearance.liquid(this));
        this.grid.addItemDecoration(this.dockBand);
        this.grid.setLayoutAnimation(new LayoutAnimationController(AnimationUtils.loadAnimation(this, R.anim.tile_enter), 0.04f));
        AppAdapter appAdapter2 = new AppAdapter(this, this);
        this.adapter = appAdapter2;
        this.grid.setAdapter(appAdapter2);
        this.grid.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: t.N
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                this.f813a.lambda$onCreate$1(view, i3, i4, i5, i6, i7, i8, i9, i10);
            }
        });
        this.grid.addOnScrollListener(new r.Q() { // from class: com.sid.tvos.MainActivity.6
            @Override // r.Q
            public void onScrolled(RecyclerView recyclerView3, int i3, int i4) {
                if (MainActivity.this.glassShown) {
                    if (MainActivity.this.glassGlide == null || !MainActivity.this.glassGlide.isRunning()) {
                        MainActivity.this.glassTargetY -= i4;
                        if (!MainActivity.this.springY.f529e) {
                            MainActivity.this.glass.setTranslationY(MainActivity.this.glassTargetY);
                            return;
                        }
                        p.f fVar = MainActivity.this.springY;
                        float f2 = MainActivity.this.glassTargetY;
                        if (fVar.f529e) {
                            fVar.f534k = f2;
                            return;
                        }
                        if (fVar.j == null) {
                            fVar.j = new p.g(f2);
                        }
                        p.g gVar = fVar.j;
                        double d2 = f2;
                        gVar.f543i = d2;
                        double d3 = (float) d2;
                        if (d3 > Float.MAX_VALUE) {
                            throw new UnsupportedOperationException("Final position of the spring cannot be greater than the max value.");
                        }
                        if (d3 < -3.4028235E38f) {
                            throw new UnsupportedOperationException("Final position of the spring cannot be less than the min value.");
                        }
                        double dAbs = Math.abs(fVar.f531g * 0.75f);
                        gVar.f538d = dAbs;
                        gVar.f539e = dAbs * 62.5d;
                        if (Looper.myLooper() != Looper.getMainLooper()) {
                            throw new AndroidRuntimeException("Animations may only be started on the main thread");
                        }
                        boolean z2 = fVar.f529e;
                        if (z2 || z2) {
                            return;
                        }
                        fVar.f529e = true;
                        float fR = fVar.f528d.r(fVar.f527c);
                        fVar.f526b = fR;
                        if (fR > Float.MAX_VALUE || fR < -3.4028235E38f) {
                            throw new IllegalArgumentException("Starting value need to be in between min value and max value");
                        }
                        ThreadLocal threadLocal = p.c.f508f;
                        if (threadLocal.get() == null) {
                            threadLocal.set(new p.c());
                        }
                        p.c cVar = (p.c) threadLocal.get();
                        ArrayList arrayList = cVar.f510b;
                        if (arrayList.size() == 0) {
                            if (cVar.f512d == null) {
                                cVar.f512d = new p.b(cVar.f511c);
                            }
                            p.b bVar = cVar.f512d;
                            ((Choreographer) bVar.f506b).postFrameCallback((p.a) bVar.f507c);
                        }
                        if (arrayList.contains(fVar)) {
                            return;
                        }
                        arrayList.add(fVar);
                    }
                }
            }
        });
        this.springX = new p.f(this.glass, p.f.f517l);
        p.f fVar = new p.f(this.glass, p.f.f518m);
        this.springY = fVar;
        p.f[] fVarArr = {this.springX, fVar};
        for (int i3 = 0; i3 < 2; i3++) {
            p.f fVar2 = fVarArr[i3];
            p.g gVar = new p.g();
            gVar.f535a = Math.sqrt(240.0f);
            gVar.f536b = 1.0f;
            gVar.f537c = false;
            fVar2.j = gVar;
        }
        getWindow().getDecorView().getViewTreeObserver().addOnGlobalFocusChangeListener(new ViewTreeObserver.OnGlobalFocusChangeListener() { // from class: t.O
            @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
            public final void onGlobalFocusChanged(View view, View view2) {
                this.f814a.lambda$onCreate$2(view, view2);
            }
        });
        ConnectivityManager connectivityManager = (ConnectivityManager) getSystemService("connectivity");
        if (connectivityManager != null) {
            if (Build.VERSION.SDK_INT >= 24) {
                connectivityManager.registerDefaultNetworkCallback(this.networkCallback);
            } else {
                connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().build(), this.networkCallback);
            }
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (live == this) {
            live = null;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) getSystemService("connectivity");
        if (connectivityManager != null) {
            connectivityManager.unregisterNetworkCallback(this.networkCallback);
        }
    }

    @Override // com.sid.tvos.AppAdapter.TileListener
    public void onFolderOpen(AppAdapter.Entry entry) {
        openFolder(entry, true);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 != 82) {
            return super.onKeyDown(i2, keyEvent);
        }
        showControlCenter();
        return true;
    }

    @Override // com.sid.tvos.AppAdapter.TileListener
    public void onLaunch(AppAdapter.Entry entry, View view) {
        if (this.movingKey != null) {
            finishMove();
            return;
        }
        Recents.record(this, entry.pkg);
        Rect rect = new Rect(0, 0, view.getWidth(), view.getHeight());
        this.root.offsetDescendantRectToMyCoords(view, rect);
        this.launchFrom = rect;
        this.launchKey = entry.key();
        Bitmap bitmapLaunchArt = launchArtFor(entry).equals(this.launchArtKey) ? this.launchArt : null;
        if (bitmapLaunchArt == null) {
            bitmapLaunchArt = launchArt(entry);
        }
        this.launchCard.setImageBitmap(bitmapLaunchArt);
        this.launchArt = null;
        this.launchArtKey = "";
        this.launchCard.setVisibility(0);
        this.launchCard.setAlpha(1.0f);
        this.dim.setImageBitmap(glassBackdrop(0.55f));
        this.dim.setAlpha(0.0f);
        this.dim.animate().alpha(1.0f).setDuration(420L).setInterpolator(new DecelerateInterpolator(1.5f)).start();
        zoom(0.0f, 1.0f, 420L, new DecelerateInterpolator(2.5f), new RunnableC0011l(this, entry, 0));
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        boolean z2;
        Handler handler;
        Runnable runnableC0073n;
        long j;
        super.onNewIntent(intent);
        if (intent == null || !intent.getBooleanExtra("show_recents", false)) {
            String stringExtra = intent == null ? null : intent.getStringExtra("launcher_action");
            if (stringExtra == null) {
                if (intent == null || !intent.hasCategory("android.intent.category.HOME")) {
                    return;
                }
                if (!this.resumed) {
                    this.homeToFavourites = true;
                }
                SettingsPanel settingsPanel = this.settingsPanel;
                if (settingsPanel != null) {
                    settingsPanel.closeNow();
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (this.movingKey != null) {
                    finishMove();
                }
                FrameLayout frameLayout = this.recentsOverlay;
                if (frameLayout != null && frameLayout.getVisibility() == 0) {
                    closeRecents();
                    z2 = true;
                }
                Iterator<WeakReference<PopupWindow>> it = this.popups.iterator();
                while (it.hasNext()) {
                    PopupWindow popupWindow = it.next().get();
                    if (popupWindow != null && popupWindow.isShowing()) {
                        popupWindow.dismiss();
                        z2 = true;
                    }
                }
                this.popups.clear();
                if (this.folderOverlay.getVisibility() == 0) {
                    closeFolder();
                    z2 = true;
                }
                setCwFocusable(false);
                if (z2) {
                    return;
                }
                focusTile(Math.min(lastFocused % COLUMNS, Math.max(0, this.adapter.getItemCount() - 1)));
                return;
            }
            handler = this.handler;
            runnableC0073n = new RunnableC0073n(3, this, stringExtra);
            j = 200;
        } else {
            handler = this.handler;
            runnableC0073n = new t.P(this, 2);
            j = 150;
        }
        handler.postDelayed(runnableC0073n, j);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.resumed = false;
        this.wasPaused = true;
        this.handler.removeCallbacks(this.minuteTick);
        NotifListener.onChange = null;
        PopupWindow popupWindow = this.controlCenter;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        String[] strArr;
        super.onResume();
        this.resumed = true;
        live = this;
        Set<String> set = LauncherActions.pending;
        synchronized (set) {
            strArr = (String[]) set.toArray(new String[0]);
            set.clear();
        }
        for (String str : strArr) {
            this.handler.post(new RunnableC0073n(2, this, str));
        }
        SettingsPanel settingsPanel = this.settingsPanel;
        if (settingsPanel != null && !this.fromStandByPreview) {
            settingsPanel.closeNow();
        }
        if (this.fromStandByPreview) {
            this.handler.postDelayed(new t.P(this, 1), 1500L);
            View view = this.standByReturnFocus;
            if (view != null) {
                this.handler.postDelayed(new RunnableC0077s(view, 2), 150L);
            }
        }
        if (this.fullScreen) {
            exitFullScreen(false);
        }
        this.glassShown = false;
        this.glass.setAlpha(0.0f);
        this.shelfShown = false;
        this.shelfGroup.setAlpha(0.0f);
        this.shelfGroup.setTranslationY(0.0f);
        this.shelfPosition = -1;
        this.shelfScrim.setAlpha(0.0f);
        Weather.load(this, new C0015p(this, 15));
        applyStatusItems();
        Remaps.ensureServiceEnabled(this);
        if (getIntent() != null && getIntent().getBooleanExtra("show_recents", false)) {
            getIntent().removeExtra("show_recents");
            this.handler.postDelayed(new t.P(this, 2), 400L);
        }
        if (reopenAppearance) {
            reopenAppearance = false;
            this.handler.postDelayed(new t.P(this, 3), 500L);
        }
        this.handler.postDelayed(new t.P(this, 4), 4000L);
        boolean z2 = this.homeToFavourites || (this.wasPaused && !this.leftForApp);
        this.leftForApp = false;
        this.homeToFavourites = false;
        String str2 = z2 ? null : lastFocusedKey;
        int i2 = z2 ? lastFocused % COLUMNS : lastFocused;
        this.adapter.reload();
        this.adapter.prewarmShelves(COLUMNS);
        this.handler.postDelayed(new t.P(this, 5), 4000L);
        this.grid.scheduleLayoutAnimation();
        updateWifiLabel();
        if (DarkSchedule.apply(this)) {
            applyDark();
        }
        this.handler.postDelayed(this.minuteTick, 60000L);
        WatchNext.invalidate();
        playCloseAnimation();
        String str3 = openFolderName;
        this.folderOverlay.setVisibility(8);
        setHomeFocusable(true);
        this.grid.post(new RunnableC0082x(this, str2, this.fromStandByPreview && this.settingsPanel != null, i2, str3, 2));
    }

    @Override // com.sid.tvos.AppAdapter.TileListener
    public void onTileFocused(int i2, View view) {
        lastFocused = i2;
        lastFocusedKey = this.adapter.keyAt(i2);
        this.handler.removeCallbacks(this.prepareLaunch);
        this.handler.postDelayed(this.prepareLaunch, 250L);
        String str = this.movingKey;
        if (str != null) {
            if (str.equals(lastFocusedKey)) {
                startWiggle(view);
            } else {
                stopWiggle();
            }
        }
        Rect rect = new Rect(0, 0, view.getWidth(), view.getHeight());
        this.root.offsetDescendantRectToMyCoords(view, rect);
        float f2 = this.density * 30.0f * 2.0f;
        float width = (view.getWidth() * 1.13f) + f2;
        float height = (view.getHeight() * 1.13f) + f2;
        float fExactCenterX = rect.exactCenterX() - (width / 2.0f);
        float fExactCenterY = rect.exactCenterY() - (height / 2.0f);
        ViewGroup.LayoutParams layoutParams = this.glass.getLayoutParams();
        int i3 = (int) width;
        if (layoutParams.width != i3 || layoutParams.height != ((int) height)) {
            layoutParams.width = i3;
            layoutParams.height = (int) height;
            this.glass.setLayoutParams(layoutParams);
            this.glass.setRadius(this.density * 16.0f * 1.13f);
        }
        this.glassTargetX = fExactCenterX;
        this.glassTargetY = fExactCenterY;
        boolean z2 = this.glassShown && AppAdapter.calmFocusInProgress;
        ValueAnimator valueAnimator = this.glassGlide;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (z2) {
            this.glass.animate().cancel();
            this.springX.a();
            this.springY.a();
            this.glass.setScaleX(1.0f);
            this.glass.setScaleY(1.0f);
            this.glass.setAlpha(1.0f);
        } else {
            this.springX.a();
            this.springY.a();
            this.glass.setTranslationX(fExactCenterX);
            this.glass.setTranslationY(fExactCenterY);
            popIn(this.glass, !this.glassShown, false);
        }
        this.glassShown = true;
        View view2 = (View) view.getParent();
        if (i2 < COLUMNS) {
            int top = (view2.getTop() - ((int) (this.density * 6.0f))) - this.grid.getPaddingTop();
            long j = ((float) Math.abs(top)) > ((float) view2.getHeight()) * 1.3f ? 480L : 340L;
            this.glideMs = j;
            this.glideCurve = j > 340 ? PAGE : CALM;
            if (Math.abs(top) > 1) {
                this.grid.smoothScrollBy(0, top, this.glideCurve, (int) this.glideMs);
            }
            if (z2) {
                glideGlass(view, width, height);
            }
            showShelf(i2);
            return;
        }
        int top2 = view2.getTop() - ((int) (this.density * 118.0f));
        long j2 = ((float) Math.abs(top2)) > ((float) view2.getHeight()) * 1.3f ? 480L : 340L;
        this.glideMs = j2;
        this.glideCurve = j2 > 340 ? PAGE : CALM;
        this.glideDy = top2;
        hideShelf();
        this.glideDy = 0;
        if (Math.abs(top2) > 1) {
            this.grid.smoothScrollBy(0, top2, this.glideCurve, (int) this.glideMs);
        }
        if (z2) {
            glideGlass(view, width, height);
        }
    }

    @Override // com.sid.tvos.AppAdapter.TileListener
    public boolean onTileHorizontalKey(int i2, int i3) {
        String str = this.movingKey;
        if (str != null) {
            if (i2 < COLUMNS && str.equals(this.adapter.keyAt(i2))) {
                moveFavourite(i2, i3 == 22 ? 1 : -1);
            }
            return true;
        }
        int i4 = COLUMNS;
        if (i2 >= i4) {
            return atRowEnd(i2, i3, i4, this.adapter.getItemCount());
        }
        int i5 = i3 == 22 ? 1 : -1;
        int iMax = Math.max(0, this.adapter.dockShown() - 1);
        if (i5 <= 0 ? i2 != 0 : i2 < iMax) {
            return false;
        }
        if (this.adapter.shiftDock(i5)) {
            slideDock(i2, i5);
        }
        return true;
    }

    @Override // com.sid.tvos.AppAdapter.TileListener
    public void onTileLongPress(AppAdapter.Entry entry, View view) {
        int i2;
        String string;
        Runnable runnableC0011l;
        int i3;
        LinearLayout linearLayout;
        PopupWindow popupWindow;
        int i4;
        LinearLayout linearLayout2;
        PopupWindow popupWindow2;
        int i5;
        String string2;
        Runnable runnableC0011l2;
        int i6 = 2;
        int i7 = 0;
        int i8 = 1;
        if (this.movingKey != null) {
            return;
        }
        View viewInflate = getLayoutInflater().inflate(R.layout.popup_inputs, this.root, false);
        applyPanelGlass(viewInflate, 22.0f);
        LinearLayout linearLayout3 = (LinearLayout) viewInflate.findViewById(R.id.rows);
        PopupWindow popupWindowTrack = track(new PopupWindow(viewInflate, (int) (this.density * 280.0f), -2, true));
        popupWindowTrack.setBackgroundDrawable(new ColorDrawable(0));
        popupWindowTrack.setOutsideTouchable(true);
        popupWindowTrack.setAnimationStyle(0);
        popupWindowTrack.setOnDismissListener(new C0071l(this, i8));
        if (entry.isFolder()) {
            i4 = -1;
            linearLayout2 = linearLayout3;
            popupWindow2 = popupWindowTrack;
            addInputRow(linearLayout2, popupWindow2, R.drawable.ic_edit, getString(R.string.rename_folder), -1, new RunnableC0011l(this, entry, i8));
            i5 = R.drawable.ic_delete;
            string2 = getString(R.string.delete_folder);
            runnableC0011l2 = new RunnableC0011l(this, entry, i6);
        } else {
            if (this.adapter.isFavorite(entry.pkg)) {
                i3 = -1;
                linearLayout = linearLayout3;
                popupWindow = popupWindowTrack;
                addInputRow(linearLayout, popupWindow, R.drawable.ic_apps, getString(R.string.move_in_favourites), -1, new RunnableC0011l(this, entry, 3));
                i2 = R.drawable.ic_star_off;
                string = getString(R.string.remove_from_favourites);
                runnableC0011l = new RunnableC0011l(this, entry, 4);
            } else {
                i2 = R.drawable.ic_star;
                string = getString(R.string.add_to_favourites);
                runnableC0011l = new RunnableC0011l(this, entry, 5);
                i3 = -1;
                linearLayout = linearLayout3;
                popupWindow = popupWindowTrack;
            }
            addInputRow(linearLayout, popupWindow, i2, string, i3, runnableC0011l);
            String strFolderOf = this.adapter.folderOf(entry.pkg);
            if (strFolderOf != null) {
                addInputRow(linearLayout3, popupWindowTrack, R.drawable.ic_folder_out, getString(R.string.remove_from_folder, strFolderOf), -1, new RunnableC0011l(this, entry, 6));
            }
            for (String str : Folders.load(this).keySet()) {
                if (!str.equals(strFolderOf)) {
                    addInputRow(linearLayout3, popupWindowTrack, R.drawable.ic_folder, getString(R.string.move_to_folder, str), -1, new RunnableC0014o(this, entry, str, i7));
                }
            }
            i4 = -1;
            linearLayout2 = linearLayout3;
            popupWindow2 = popupWindowTrack;
            addInputRow(linearLayout2, popupWindow2, R.drawable.ic_folder_new, getString(R.string.new_folder), -1, new RunnableC0011l(this, entry, 7));
            i5 = R.drawable.ic_info;
            string2 = getString(R.string.app_info);
            runnableC0011l2 = new RunnableC0011l(this, entry, 8);
        }
        addInputRow(linearLayout2, popupWindow2, i5, string2, i4, runnableC0011l2);
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        viewInflate.measure(View.MeasureSpec.makeMeasureSpec((int) (this.density * 280.0f), 1073741824), 0);
        int iMax = Math.max((int) (this.density * 24.0f), Math.min(iArr[0], this.root.getWidth() - ((int) (this.density * 304.0f))));
        int height = view.getHeight() + iArr[1] + ((int) (this.density * 14.0f));
        float measuredHeight = viewInflate.getMeasuredHeight() + height;
        float height2 = this.root.getHeight();
        float f2 = this.density;
        if (measuredHeight > height2 - (f2 * 16.0f)) {
            height = Math.max((int) (f2 * 16.0f), (iArr[1] - viewInflate.getMeasuredHeight()) - ((int) (this.density * 14.0f)));
        }
        viewInflate.setAlpha(0.0f);
        viewInflate.setScaleX(0.94f);
        viewInflate.setScaleY(0.94f);
        popupWindowTrack.showAtLocation(this.root, 8388659, iMax, height);
        viewInflate.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(200L).setInterpolator(new DecelerateInterpolator(1.8f)).start();
        showBackdrop();
        linearLayout3.getChildAt(0).requestFocus();
    }

    @Override // com.sid.tvos.AppAdapter.TileListener
    public boolean onTileVerticalKey(int i2, int i3) {
        int iMin;
        if (this.movingKey != null) {
            return true;
        }
        int itemCount = this.adapter.getItemCount();
        if (i3 == 19) {
            int i4 = COLUMNS;
            if (i2 < i4) {
                if (i2 != this.cwPosition || this.cwRow.getVisibility() != 0 || this.cwRow.getChildCount() <= 0) {
                    this.fullFromCard = -1;
                    enterFullScreen();
                    return true;
                }
                setCwFocusable(true);
                LinearLayout linearLayout = this.cwRow;
                linearLayout.getChildAt(Math.min(this.cwSelected, linearLayout.getChildCount() - 1)).requestFocus();
                return true;
            }
            iMin = i2 - i4;
            if (iMin < i4) {
                iMin = Math.min(iMin, Math.max(0, this.adapter.dockShown() - 1));
            }
        } else {
            int i5 = itemCount - 1;
            int i6 = COLUMNS;
            if (i2 >= (i5 / i6) * i6) {
                return true;
            }
            iMin = Math.min(i2 + i6, i5);
        }
        AppAdapter.calmNextFocus = true;
        focusTile(iMin);
        return true;
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i2) {
        super.onTrimMemory(i2);
        if (i2 < 20) {
            return;
        }
        this.cwBackdrops.evictAll();
        this.frosted.evictAll();
        this.frostSteps.evictAll();
        Images.clear();
        Stage.trimTo(i2 >= 40 ? 0 : 1);
        if (this.resumed) {
            return;
        }
        this.shelf2.setImageDrawable(null);
    }

    @Override // android.app.Activity, android.content.ContextWrapper, android.content.Context
    public void startActivity(Intent intent, Bundle bundle) {
        this.leftForApp = true;
        super.startActivity(intent, bundle);
    }

    private void updateStatusGlass(Bitmap bitmap, long j) {
        int i2;
        if (this.statusGlass.isLive()) {
            this.statusGlass.setLiquid(Appearance.liquid(this));
            this.weatherGlass.setLiquid(Appearance.liquid(this));
            return;
        }
        if (bitmap == null || this.root.getWidth() == 0 || this.statusPill.getWidth() == 0) {
            return;
        }
        Rect rect = new Rect(0, 0, this.statusPill.getWidth(), this.statusPill.getHeight());
        this.root.offsetDescendantRectToMyCoords(this.statusPill, rect);
        float width = bitmap.getWidth() / this.root.getWidth();
        float height = bitmap.getHeight() / this.root.getHeight();
        int iMax = Math.max(0, (int) (rect.left * width));
        int iMax2 = Math.max(0, (int) (rect.top * height));
        int iMin = Math.min(bitmap.getWidth(), (int) (rect.right * width));
        int iMin2 = Math.min(bitmap.getHeight(), (int) (rect.bottom * height));
        int i3 = iMin - iMax;
        if (i3 < 4 || (i2 = iMin2 - iMax2) < 4) {
            return;
        }
        Rect rect2 = new Rect(iMax, iMax2, iMin, iMin2);
        boolean zLiquid = Appearance.liquid(this);
        this.statusGlass.setLiquid(zLiquid);
        this.weatherGlass.setLiquid(zLiquid);
        if (zLiquid) {
            this.statusGlass.setBackdrop(Gpu.region(bitmap, rect2, i3, i2), j);
            return;
        }
        int iMax3 = Math.max(4, i3 / 4);
        int iMax4 = Math.max(4, i2 / 4);
        Bitmap bitmapRegion = Gpu.region(bitmap, rect2, iMax3, iMax4);
        int i4 = iMax3 * iMax4;
        int[] iArr = new int[i4];
        bitmapRegion.getPixels(iArr, 0, iMax3, 0, 0, iMax3, iMax4);
        for (int i5 = 0; i5 < 3; i5++) {
            Blur.boxBlur(iArr, iMax3, iMax4, 3);
        }
        float[] fArr = new float[3];
        for (int i6 = 0; i6 < i4; i6++) {
            Color.colorToHSV(iArr[i6], fArr);
            fArr[1] = Math.min(1.0f, fArr[1] * 1.25f);
            fArr[2] = Math.min(1.0f, (fArr[2] * 0.85f) + 0.12f);
            iArr[i6] = Color.HSVToColor(fArr);
        }
        bitmapRegion.setPixels(iArr, 0, iMax3, 0, 0, iMax3, iMax4);
        this.statusGlass.setBackdrop(bitmapRegion, j);
    }
}
