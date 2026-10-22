.class public Lcom/sid/tvos/MainActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/sid/tvos/AppAdapter$TileListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sid/tvos/MainActivity$SettingsPanel;,
        Lcom/sid/tvos/MainActivity$NameCallback;,
        Lcom/sid/tvos/MainActivity$PageBuilder;,
        Lcom/sid/tvos/MainActivity$IntChoice;,
        Lcom/sid/tvos/MainActivity$IntLabel;,
        Lcom/sid/tvos/MainActivity$TrackColours;,
        Lcom/sid/tvos/MainActivity$TextCallback;
    }
.end annotation


# static fields
.field private static final CALM:Landroid/view/animation/Interpolator;

.field static COLUMNS:I = 0x5

.field private static final DARK:Ljava/util/concurrent/ExecutorService;

.field private static final FROST:Ljava/util/concurrent/ExecutorService;

.field private static final LAUNCH:Ljava/util/concurrent/ExecutorService;

.field private static final PAGE:Landroid/view/animation/Interpolator;

.field private static final STATUS_BUTTONS:[I

.field private static final STATUS_BUTTON_KEYS:[Ljava/lang/String;

.field private static lastFocused:I

.field private static lastFocusedKey:Ljava/lang/String;

.field static live:Lcom/sid/tvos/MainActivity;

.field private static openFolderName:Ljava/lang/String;

.field private static reopenAppearance:Z


# instance fields
.field private adapter:Lcom/sid/tvos/AppAdapter;

.field private backdropGen:I

.field private final badgeCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private ccOpening:Z

.field private controlCenter:Landroid/widget/PopupWindow;

.field private final cwArt:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private cwBackdropRun:Ljava/lang/Runnable;

.field private cwBackdrops:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private cwBottomPx:I

.field private final cwColourApply:Ljava/lang/Runnable;

.field private cwData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sid/tvos/WatchNext$Item;",
            ">;>;"
        }
    .end annotation
.end field

.field private cwFadeDelay:J

.field private cwGen:I

.field private cwInfo:Landroid/view/View;

.field private cwItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sid/tvos/WatchNext$Item;",
            ">;"
        }
    .end annotation
.end field

.field private cwPosition:I

.field private cwProgress:Landroid/view/View;

.field private cwReleasing:Z

.field private final cwRenderLater:Ljava/lang/Runnable;

.field private cwRow:Landroid/widget/LinearLayout;

.field private cwScroll:Landroid/widget/HorizontalScrollView;

.field private cwSelected:I

.field private cwSubtitle:Landroid/widget/TextView;

.field private cwTitle:Landroid/widget/TextView;

.field private cwUploadUrl:Ljava/lang/String;

.field private darkApplying:Z

.field private darkPending:Z

.field private density:F

.field private dim:Landroid/widget/ImageView;

.field private dockBand:Lcom/sid/tvos/DockDecoration;

.field private dockTopPx:I

.field private folderAdapter:Lcom/sid/tvos/AppAdapter;

.field private folderBackdrop:Landroid/widget/ImageView;

.field private folderGlass:Lcom/sid/tvos/GlassView;

.field private folderGlassShown:Z

.field private folderGridView:Landroidx/recyclerview/widget/RecyclerView;

.field private folderName:Landroid/widget/TextView;

.field private folderOverlay:Landroid/widget/FrameLayout;

.field private folderPanel:Landroid/view/View;

.field private final folderTiles:Lcom/sid/tvos/AppAdapter$TileListener;

.field private fromStandByPreview:Z

.field private frostFade:Z

.field private final frostLater:Ljava/lang/Runnable;

.field private final frostSource:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final frostSteps:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/graphics/Bitmap;",
            "[",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final frosted:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final frostedSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private fullFromCard:I

.field private fullFrosted:Landroid/graphics/Bitmap;

.field private fullScreen:Z

.field private glass:Lcom/sid/tvos/GlassView;

.field private glassGlide:Landroid/animation/ValueAnimator;

.field private glassShown:Z

.field private glassTargetX:F

.field private glassTargetY:F

.field private glideCurve:Landroid/view/animation/Interpolator;

.field private glideDy:I

.field private glideMs:J

.field private grid:Landroidx/recyclerview/widget/RecyclerView;

.field private final handler:Landroid/os/Handler;

.field private homeToFavourites:Z

.field private final labelColors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lastMoveAt:J

.field private lastShelfSig:J

.field private launchArt:Landroid/graphics/Bitmap;

.field private launchArtKey:Ljava/lang/String;

.field private launchCard:Landroid/widget/ImageView;

.field private launchFrom:Landroid/graphics/Rect;

.field private launchKey:Ljava/lang/String;

.field private leftForApp:Z

.field private liveTvPkg:Ljava/lang/String;

.field private lowRam:Ljava/lang/Boolean;

.field private final minuteTick:Ljava/lang/Runnable;

.field private moveHint:Landroid/widget/TextView;

.field private movingKey:Ljava/lang/String;

.field private final networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final popups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/PopupWindow;",
            ">;>;"
        }
    .end annotation
.end field

.field private final prepareLaunch:Ljava/lang/Runnable;

.field private final prewarmCw:Ljava/lang/Runnable;

.field private recentShadowBmp:Landroid/graphics/Bitmap;

.field private recentsOverlay:Landroid/widget/FrameLayout;

.field private recentsRow:Landroid/widget/LinearLayout;

.field private recentsScroll:Landroid/widget/HorizontalScrollView;

.field private resumed:Z

.field private root:Landroid/widget/FrameLayout;

.field private rootCovered:Z

.field private settingsPanel:Lcom/sid/tvos/MainActivity$SettingsPanel;

.field private shelf:Landroid/widget/ImageView;

.field private shelf2:Landroid/widget/ImageView;

.field private shelfBack:Ljava/lang/Runnable;

.field private shelfBitmap:Landroid/graphics/Bitmap;

.field private shelfGroup:Landroid/widget/FrameLayout;

.field private shelfPosition:I

.field private shelfScrim:Landroid/view/View;

.field private shelfShown:Z

.field private springX:Lp/f;

.field private springY:Lp/f;

.field private standByReturnFocus:Landroid/view/View;

.field private statusAvatar:Landroid/widget/ImageView;

.field private statusGlass:Lcom/sid/tvos/LiquidGlassDrawable;

.field private statusPill:Landroid/view/View;

.field private stepFadeMs:J

.field private topBar:Landroid/view/ViewGroup;

.field private wasPaused:Z

.field private weatherCity:Ljava/lang/String;

.field private weatherGlass:Lcom/sid/tvos/LiquidGlassDrawable;

.field private weatherLine:Ljava/lang/String;

.field private weatherLoaded:Z

.field private weatherPill:Landroid/widget/LinearLayout;

.field private weatherTemp:I

.field private wifiLabel:Ljava/lang/String;

.field private wiggling:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x400ccccd    # 2.2f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/sid/tvos/MainActivity;->CALM:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e19999a    # 0.15f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/sid/tvos/MainActivity;->PAGE:Landroid/view/animation/Interpolator;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sid/tvos/MainActivity;->FROST:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sid/tvos/MainActivity;->LAUNCH:Ljava/util/concurrent/ExecutorService;

    sget v0, Lcom/sid/tvos/R$id;->btnWifi:I

    sget v1, Lcom/sid/tvos/R$id;->btnBluetooth:I

    sget v2, Lcom/sid/tvos/R$id;->btnAssistant:I

    sget v3, Lcom/sid/tvos/R$id;->btnSettings:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/sid/tvos/MainActivity;->STATUS_BUTTONS:[I

    const-string v0, "assistant"

    const-string v1, "settings"

    const-string v2, "wifi"

    const-string v3, "bluetooth"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sid/tvos/MainActivity;->STATUS_BUTTON_KEYS:[Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sid/tvos/MainActivity;->DARK:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sid/tvos/MainActivity;->shelfPosition:I

    iput v0, p0, Lcom/sid/tvos/MainActivity;->cwPosition:I

    new-instance v1, Landroid/util/LruCache;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v1, p0, Lcom/sid/tvos/MainActivity;->cwBackdrops:Landroid/util/LruCache;

    new-instance v1, Landroid/util/LruCache;

    const/4 v3, 0x4

    invoke-direct {v1, v3}, Landroid/util/LruCache;-><init>(I)V

    iput-object v1, p0, Lcom/sid/tvos/MainActivity;->frosted:Landroid/util/LruCache;

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/sid/tvos/MainActivity;->frostedSet:Ljava/util/Set;

    const-string v1, ""

    iput-object v1, p0, Lcom/sid/tvos/MainActivity;->wifiLabel:Ljava/lang/String;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/sid/tvos/MainActivity$1;

    invoke-direct {v3, p0}, Lcom/sid/tvos/MainActivity$1;-><init>(Lcom/sid/tvos/MainActivity;)V

    iput-object v3, p0, Lcom/sid/tvos/MainActivity;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    new-instance v3, Lcom/sid/tvos/MainActivity$2;

    invoke-direct {v3, p0}, Lcom/sid/tvos/MainActivity$2;-><init>(Lcom/sid/tvos/MainActivity;)V

    iput-object v3, p0, Lcom/sid/tvos/MainActivity;->minuteTick:Ljava/lang/Runnable;

    new-instance v3, Lcom/sid/tvos/MainActivity$7;

    invoke-direct {v3, p0}, Lcom/sid/tvos/MainActivity$7;-><init>(Lcom/sid/tvos/MainActivity;)V

    iput-object v3, p0, Lcom/sid/tvos/MainActivity;->folderTiles:Lcom/sid/tvos/AppAdapter$TileListener;

    const-wide/16 v3, 0x154

    iput-wide v3, p0, Lcom/sid/tvos/MainActivity;->glideMs:J

    sget-object v3, Lcom/sid/tvos/MainActivity;->CALM:Landroid/view/animation/Interpolator;

    iput-object v3, p0, Lcom/sid/tvos/MainActivity;->glideCurve:Landroid/view/animation/Interpolator;

    new-instance v3, Lt/L;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lt/L;-><init>(I)V

    iput-object v3, p0, Lcom/sid/tvos/MainActivity;->shelfBack:Ljava/lang/Runnable;

    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v3, p0, Lcom/sid/tvos/MainActivity;->labelColors:Ljava/util/Map;

    new-instance v3, Landroid/util/LruCache;

    invoke-direct {v3, v2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v3, p0, Lcom/sid/tvos/MainActivity;->frostSteps:Landroid/util/LruCache;

    new-instance v2, Lt/c;

    const/16 v3, 0x18

    invoke-direct {v2, p0, v3}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    iput-object v2, p0, Lcom/sid/tvos/MainActivity;->frostLater:Ljava/lang/Runnable;

    new-instance v2, Lt/c;

    const/16 v3, 0x19

    invoke-direct {v2, p0, v3}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    iput-object v2, p0, Lcom/sid/tvos/MainActivity;->cwRenderLater:Ljava/lang/Runnable;

    new-instance v2, Lt/c;

    const/16 v3, 0x1a

    invoke-direct {v2, p0, v3}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    iput-object v2, p0, Lcom/sid/tvos/MainActivity;->prewarmCw:Ljava/lang/Runnable;

    new-instance v2, Lt/L;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lt/L;-><init>(I)V

    iput-object v2, p0, Lcom/sid/tvos/MainActivity;->cwBackdropRun:Ljava/lang/Runnable;

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/sid/tvos/MainActivity;->cwArt:Ljava/util/Set;

    iput-object v1, p0, Lcom/sid/tvos/MainActivity;->launchArtKey:Ljava/lang/String;

    new-instance v2, Lt/c;

    const/16 v3, 0x1b

    invoke-direct {v2, p0, v3}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    iput-object v2, p0, Lcom/sid/tvos/MainActivity;->prepareLaunch:Ljava/lang/Runnable;

    new-instance v2, Lt/c;

    const/16 v3, 0x1c

    invoke-direct {v2, p0, v3}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    iput-object v2, p0, Lcom/sid/tvos/MainActivity;->cwColourApply:Ljava/lang/Runnable;

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v2, p0, Lcom/sid/tvos/MainActivity;->frostSource:Ljava/util/Map;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/sid/tvos/MainActivity;->badgeCache:Landroid/util/SparseArray;

    iput-object v1, p0, Lcom/sid/tvos/MainActivity;->weatherLine:Ljava/lang/String;

    iput v0, p0, Lcom/sid/tvos/MainActivity;->fullFromCard:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sid/tvos/MainActivity;->popups:Ljava/util/List;

    return-void
.end method

.method public static synthetic A(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$showWifiMenu$85()V

    return-void
.end method

.method public static synthetic A0(Lcom/sid/tvos/MainActivity;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sid/tvos/MainActivity;->lambda$ownBlur$33(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public static synthetic A1(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->layoutCw()V

    return-void
.end method

.method public static synthetic A2(Lcom/sid/tvos/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$new$56(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic A3(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->endBlurPreview()V

    return-void
.end method

.method public static bridge synthetic A4(Lcom/sid/tvos/MainActivity;IF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->slideFrom(IF)V

    return-void
.end method

.method public static synthetic B(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyCwBackground()V

    return-void
.end method

.method public static synthetic B0(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->buildProfilePage(Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void
.end method

.method public static synthetic B1(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->buildSettingsPage(Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void
.end method

.method public static synthetic B2(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->showRemapMenu()V

    return-void
.end method

.method public static synthetic B3(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildSettingsPage$92(Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void
.end method

.method public static bridge synthetic B4(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->updateWifiLabel()V

    return-void
.end method

.method public static synthetic C(Lcom/sid/tvos/MainActivity;Landroid/graphics/drawable/GradientDrawable;Landroid/widget/ImageView;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sid/tvos/MainActivity;->lambda$closeAllButton$215(Landroid/graphics/drawable/GradientDrawable;Landroid/widget/ImageView;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic C0(Landroid/graphics/Bitmap;Lcom/sid/tvos/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p1, p0, p2}, Lcom/sid/tvos/MainActivity;->lambda$new$54(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic C1(Lcom/sid/tvos/MainActivity;IIZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sid/tvos/MainActivity;->showWeather(IIZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic C2(Lcom/sid/tvos/MainActivity;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildCwArtRows$154(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic C3(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sid/tvos/MainActivity;->lambda$recentCard$213(Lcom/sid/tvos/AppAdapter$Entry;Landroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic C4()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcom/sid/tvos/MainActivity;->FROST:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static synthetic D(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$onResume$7(Lcom/sid/tvos/AppAdapter$Entry;)V

    return-void
.end method

.method public static synthetic D0(Landroid/graphics/Bitmap;Lcom/sid/tvos/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p1, p2, p0}, Lcom/sid/tvos/MainActivity;->lambda$new$55(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic D1(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$showControlCenter$177()V

    return-void
.end method

.method public static synthetic D2(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$updateRam$223(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic D3(Lcom/sid/tvos/MainActivity;Ljava/lang/String;Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sid/tvos/MainActivity;->lambda$buildWeatherRows$143(Ljava/lang/String;Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic D4()I
    .locals 1

    .line 1
    sget v0, Lcom/sid/tvos/MainActivity;->lastFocused:I

    return v0
.end method

.method public static synthetic E(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildSettingsPage$95(Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void
.end method

.method public static synthetic E0(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->openCast()V

    return-void
.end method

.method public static synthetic E1(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->showInputs()V

    return-void
.end method

.method public static synthetic E2(Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$showControlCenter$179(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic E3(Lcom/sid/tvos/MainActivity;IILandroid/graphics/Bitmap;Lcom/sid/tvos/WatchNext$Item;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/sid/tvos/MainActivity;->lambda$selectCw$60(IILcom/sid/tvos/WatchNext$Item;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic F(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->openAssistant()V

    return-void
.end method

.method public static synthetic F0([FLt/I;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$cwColourRows$122([FLjava/lang/Runnable;I)V

    return-void
.end method

.method public static synthetic F1(ILandroid/graphics/Bitmap;Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p2, p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$blurBackdrop$10(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic F2(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$recentCard$208(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic F3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sid/tvos/MainActivity;->lambda$showCwViews$63(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic G(Lcom/sid/tvos/MainActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildAppearancePage$102(I)V

    return-void
.end method

.method public static synthetic G0(Lcom/sid/tvos/MainActivity;Landroid/net/Uri;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$buildProfilePage$137(Landroid/net/Uri;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void
.end method

.method public static synthetic G1(ILandroid/view/View;Lcom/sid/tvos/MainActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p2, p1, p3, p0}, Lcom/sid/tvos/MainActivity;->lambda$closeRecentApp$222(Landroid/view/View;ZI)V

    return-void
.end method

.method public static synthetic G2(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sid/tvos/MainActivity;->lambda$showControlCenter$192(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic G3(Lcom/sid/tvos/MainActivity;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$onCreate$2(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic H(Lcom/sid/tvos/MainActivity;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$cwColourRows$120(II)V

    return-void
.end method

.method public static synthetic H0(ILandroid/view/View;Lcom/sid/tvos/MainActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p2, p0, p1, p3}, Lcom/sid/tvos/MainActivity;->lambda$makeCwCard$50(ILandroid/view/View;Z)V

    return-void
.end method

.method public static synthetic H1(Lcom/sid/tvos/MainActivity;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$showInputs$201(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic H2(Lcom/sid/tvos/MainActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$chooseRemapAction$172(I)V

    return-void
.end method

.method public static synthetic H3(Lcom/sid/tvos/MainActivity;IZZILandroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/sid/tvos/MainActivity;->lambda$showShelf$35(IZZILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic I(Lcom/sid/tvos/MainActivity;[Landroid/animation/ValueAnimator;[FLandroid/graphics/drawable/GradientDrawable;Landroid/widget/TextClock;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/sid/tvos/MainActivity;->lambda$setUpStatusPill$77([Landroid/animation/ValueAnimator;[FLandroid/graphics/drawable/GradientDrawable;Landroid/widget/TextClock;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic I0(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$showControlCenter$182()V

    return-void
.end method

.method public static synthetic I1(Lcom/sid/tvos/MainActivity;IIZLandroid/graphics/Bitmap;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/sid/tvos/MainActivity;->lambda$showBackdrop$9(IIZLandroid/graphics/Bitmap;I)V

    return-void
.end method

.method public static synthetic I2(Lcom/sid/tvos/MainActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$showControlCenter$189(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic I3(Lcom/sid/tvos/MainActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$applyDark$160(Z)V

    return-void
.end method

.method public static synthetic J(Lcom/sid/tvos/MainActivity;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/sid/tvos/MainActivity;->lambda$onCreate$1(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic J0(Lcom/sid/tvos/MainActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildCwArtRows$157(Z)V

    return-void
.end method

.method public static synthetic J1(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sid/tvos/MainActivity;->lambda$ccRound$194(Landroid/widget/PopupWindow;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic J2(Landroid/widget/ImageView;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$makeCwCard$48(Landroid/widget/ImageView;Landroid/view/View;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic J3(ILandroid/graphics/Bitmap;Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p2, p1, p0}, Lcom/sid/tvos/MainActivity;->lambda$prefrost$38(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public static synthetic K(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$buildAppearancePage$113()V

    return-void
.end method

.method public static synthetic K0([Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildCwArtRows$155([Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic K1(ILandroid/graphics/Bitmap;Lcom/sid/tvos/MainActivity;)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    invoke-direct {p2, p1, v0, p0}, Lcom/sid/tvos/MainActivity;->lambda$ownBlur$34(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method public static synthetic K2(Lcom/sid/tvos/MainActivity;IILandroid/graphics/Bitmap;Lcom/sid/tvos/WatchNext$Item;)V
    .locals 0

    .line 1
    invoke-direct {p0, p4, p3, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$selectCw$58(Lcom/sid/tvos/WatchNext$Item;Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method public static synthetic K3(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$showControlCenter$186(Landroid/widget/PopupWindow;)V

    return-void
.end method

.method public static synthetic L([F)[I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sid/tvos/MainActivity;->lambda$cwColourRows$127([F)[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L0(Lcom/sid/tvos/MainActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildAppearancePage$115(Z)V

    return-void
.end method

.method public static synthetic L1(Lcom/sid/tvos/MainActivity;Landroid/net/Uri;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$buildProfilePage$138(Landroid/net/Uri;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void
.end method

.method public static synthetic L2(Lcom/sid/tvos/MainActivity;Landroid/media/tv/TvInputInfo;Landroid/media/tv/TvInputInfo;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$showInputs$199(Landroid/media/tv/TvInputInfo;Landroid/media/tv/TvInputInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic L3(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$startMove$28()V

    return-void
.end method

.method public static synthetic M(Landroid/widget/EditText;Lcom/sid/tvos/MainActivity$TextCallback;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/sid/tvos/MainActivity;->lambda$askText$162(Landroid/widget/EditText;Lcom/sid/tvos/MainActivity$TextCallback;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic M0(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$closeRecents$225()V

    return-void
.end method

.method public static synthetic M1(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$showControlCenter$183(Landroid/widget/PopupWindow;)V

    return-void
.end method

.method public static synthetic M2(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$new$66(Lcom/sid/tvos/AppAdapter$Entry;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic M3(Lcom/sid/tvos/MainActivity;Landroid/view/View;Landroid/graphics/Rect;FFFFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/sid/tvos/MainActivity;->lambda$glideGlass$31(Landroid/view/View;Landroid/graphics/Rect;FFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic N(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$onTileLongPress$25(Lcom/sid/tvos/AppAdapter$Entry;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic N0(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$showInputs$198()V

    return-void
.end method

.method public static synthetic N1(Lcom/sid/tvos/MainActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildAppearancePage$108(I)V

    return-void
.end method

.method public static synthetic N2(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$onTileLongPress$19(Lcom/sid/tvos/AppAdapter$Entry;)V

    return-void
.end method

.method public static synthetic N3(Lcom/sid/tvos/MainActivity;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sid/tvos/MainActivity;->lambda$onResume$8(Ljava/lang/String;ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic O(Lcom/sid/tvos/MainActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$onCreate$0()Z

    move-result p0

    return p0
.end method

.method public static synthetic O0(Landroid/widget/ImageView;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$setUpTopBar$74(Landroid/widget/ImageView;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic O1(ILcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p2, p1, p0}, Lcom/sid/tvos/MainActivity;->lambda$buildCwArtRows$158(Lcom/sid/tvos/MainActivity$SettingsPanel;I)V

    return-void
.end method

.method public static synthetic O2(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$buildSettingsPage$94()V

    return-void
.end method

.method public static synthetic O3(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$onResume$6()V

    return-void
.end method

.method public static synthetic P(Landroid/view/View;JLandroid/app/ActivityManager$MemoryInfo;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sid/tvos/MainActivity;->lambda$updateRam$224(Landroid/view/View;JLandroid/app/ActivityManager$MemoryInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic P0(Lcom/sid/tvos/MainActivity;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildCwArtRows$153(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic P1(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$buildSettingsPage$98()V

    return-void
.end method

.method public static synthetic P2(Lcom/sid/tvos/MainActivity;Landroid/graphics/Bitmap;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sid/tvos/MainActivity;->lambda$blurBackdrop$11(Landroid/graphics/Bitmap;ZI)V

    return-void
.end method

.method public static synthetic P3(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$showControlCenter$180()V

    return-void
.end method

.method public static synthetic Q(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$showCenteredPanel$163()V

    return-void
.end method

.method public static synthetic Q0(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$new$46()V

    return-void
.end method

.method public static synthetic Q1(Lcom/sid/tvos/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$onResume$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic Q2(Lcom/sid/tvos/MainActivity;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$showControlCenter$190(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic Q3(ILcom/sid/tvos/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p1, p0, p2}, Lcom/sid/tvos/MainActivity;->lambda$chooseLauncherAction$175(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic R([F)[I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sid/tvos/MainActivity;->lambda$cwColourRows$130([F)[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R0(Lcom/sid/tvos/MainActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildAppearancePage$109(I)V

    return-void
.end method

.method public static synthetic R1(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$showStatusMenu$81()V

    return-void
.end method

.method public static synthetic R2(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$saveRemap$176()V

    return-void
.end method

.method public static bridge synthetic R3(Lcom/sid/tvos/MainActivity;)Lcom/sid/tvos/AppAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    return-object p0
.end method

.method public static synthetic S(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$buildSettingsPage$89()V

    return-void
.end method

.method public static synthetic S0(Lcom/sid/tvos/MainActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildCwArtRows$152(Z)V

    return-void
.end method

.method public static synthetic S1(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$playCloseAnimation$69()V

    return-void
.end method

.method public static synthetic S2(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$recentCard$210(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static bridge synthetic S3(Lcom/sid/tvos/MainActivity;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/sid/tvos/MainActivity;->density:F

    return p0
.end method

.method public static synthetic T([FLt/I;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$cwColourRows$125([FLjava/lang/Runnable;I)V

    return-void
.end method

.method public static synthetic T0(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$showControlCenter$191()V

    return-void
.end method

.method public static synthetic T1(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildSettingsPage$93(Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void
.end method

.method public static synthetic T2(Lcom/sid/tvos/MainActivity;[Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$buildCwArtRows$148([Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic T3(Lcom/sid/tvos/MainActivity;)Lcom/sid/tvos/AppAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sid/tvos/MainActivity;->folderAdapter:Lcom/sid/tvos/AppAdapter;

    return-object p0
.end method

.method public static synthetic U(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$onTileLongPress$27(Lcom/sid/tvos/AppAdapter$Entry;)V

    return-void
.end method

.method public static synthetic U0(Lcom/sid/tvos/MainActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildAppearancePage$116(I)V

    return-void
.end method

.method public static synthetic U1(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$playCloseAnimation$70()V

    return-void
.end method

.method public static synthetic U2(Lcom/sid/tvos/MainActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildAppearancePage$107(I)V

    return-void
.end method

.method public static bridge synthetic U3(Lcom/sid/tvos/MainActivity;)Lcom/sid/tvos/GlassView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sid/tvos/MainActivity;->folderGlass:Lcom/sid/tvos/GlassView;

    return-object p0
.end method

.method public static synthetic V(Lcom/sid/tvos/MainActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildAppearancePage$112(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic V0(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;IILandroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sid/tvos/MainActivity;->lambda$recentCard$211(Lcom/sid/tvos/AppAdapter$Entry;IILandroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic V1(Lcom/sid/tvos/MainActivity;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$updateContinueWatching$43(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic V2(Lcom/sid/tvos/MainActivity;ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sid/tvos/MainActivity;->lambda$refreshBackdrop$12(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static bridge synthetic V3(Lcom/sid/tvos/MainActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/sid/tvos/MainActivity;->folderGlassShown:Z

    return p0
.end method

.method public static synthetic W(Lcom/sid/tvos/MainActivity;Landroid/view/View;ILandroid/view/View;Landroid/widget/PopupWindow;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/sid/tvos/MainActivity;->lambda$showStatusMenu$82(Landroid/view/View;ILandroid/view/View;Landroid/widget/PopupWindow;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public static synthetic W0(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$openFolder$14()V

    return-void
.end method

.method public static synthetic W1(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$closeFolder$15()V

    return-void
.end method

.method public static synthetic W2(Lcom/sid/tvos/MainActivity;Landroid/net/Uri;I[Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sid/tvos/MainActivity;->lambda$buildCwArtRows$156(Landroid/net/Uri;I[Landroid/widget/ImageView;)V

    return-void
.end method

.method public static bridge synthetic W3(Lcom/sid/tvos/MainActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sid/tvos/MainActivity;->folderGridView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic X(Lcom/sid/tvos/MainActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->previewBlur(I)V

    return-void
.end method

.method public static synthetic X0(ILandroid/graphics/Bitmap;Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p2, p1, p0}, Lcom/sid/tvos/MainActivity;->lambda$frostShelf$42(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public static synthetic X1(Lcom/sid/tvos/MainActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildAppearancePage$110(I)V

    return-void
.end method

.method public static synthetic X2(Lcom/sid/tvos/MainActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildCwArtRows$149(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic X3(Lcom/sid/tvos/MainActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sid/tvos/MainActivity;->folderOverlay:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic Y(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->updateRam()V

    return-void
.end method

.method public static synthetic Y0(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$chooseRemapAction$173(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic Y1(Lcom/sid/tvos/MainActivity;Landroid/view/View;Landroid/widget/PopupWindow;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sid/tvos/MainActivity;->lambda$showCenteredPanel$164(Landroid/view/View;Landroid/widget/PopupWindow;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public static synthetic Y2(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->openBluetooth()V

    return-void
.end method

.method public static bridge synthetic Y3(Lcom/sid/tvos/MainActivity;)Lcom/sid/tvos/GlassView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sid/tvos/MainActivity;->glass:Lcom/sid/tvos/GlassView;

    return-object p0
.end method

.method public static synthetic Z(Lcom/sid/tvos/MainActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$chooseRemapAction$171(I)V

    return-void
.end method

.method public static synthetic Z0(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$onTileLongPress$24(Lcom/sid/tvos/AppAdapter$Entry;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic Z1(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildWeatherRows$146(Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void
.end method

.method public static synthetic Z2(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$onTileLongPress$26(Lcom/sid/tvos/AppAdapter$Entry;)V

    return-void
.end method

.method public static bridge synthetic Z3(Lcom/sid/tvos/MainActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sid/tvos/MainActivity;->glassGlide:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic a(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sid/tvos/MainActivity;->lambda$cwColourRows$126(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a0(Lcom/sid/tvos/MainActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sid/tvos/MainActivity;->lambda$paceKeys$226(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a1(Lcom/sid/tvos/MainActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$centreRecent$220(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a2(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$showControlCenter$178(Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a3(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$setUpTopBar$73(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static bridge synthetic a4(Lcom/sid/tvos/MainActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/sid/tvos/MainActivity;->glassShown:Z

    return p0
.end method

.method private addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/sid/tvos/R$layout;->item_input:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/sid/tvos/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    sget p3, Lcom/sid/tvos/R$id;->title:I

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p3, Lcom/sid/tvos/R$id;->status:I

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    sget p4, Lcom/sid/tvos/R$id;->dot:I

    invoke-virtual {v0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    if-nez p5, :cond_0

    sget p5, Lcom/sid/tvos/R$string;->connected:I

    :goto_0
    invoke-virtual {p3, p5}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    invoke-virtual {p4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_0
    const/4 v1, 0x2

    const/16 v2, 0x8

    if-ne p5, v1, :cond_1

    sget p5, Lcom/sid/tvos/R$string;->not_connected:I

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :goto_2
    new-instance p3, Lt/B;

    const/4 p4, 0x1

    invoke-direct {p3, p0, p2, p6, p4}, Lt/B;-><init>(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;Ljava/lang/Runnable;I)V

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addMenuRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/sid/tvos/R$layout;->item_input:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/sid/tvos/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    sget p3, Lcom/sid/tvos/R$id;->title:I

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p3, Lcom/sid/tvos/R$id;->status:I

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-nez p5, :cond_0

    const-string p4, ""

    goto :goto_0

    :cond_0
    move-object p4, p5

    :goto_0
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p4, 0x8

    if-nez p5, :cond_1

    const/16 p5, 0x8

    goto :goto_1

    :cond_1
    const/4 p5, 0x0

    :goto_1
    invoke-virtual {p3, p5}, Landroid/view/View;->setVisibility(I)V

    sget p3, Lcom/sid/tvos/R$id;->dot:I

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p6, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance p3, Lt/B;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p2, p7, p4}, Lt/B;-><init>(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;Ljava/lang/Runnable;I)V

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private addSeparator(Landroid/widget/LinearLayout;)V
    .locals 5

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v1, 0x1fffffff

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/sid/tvos/MainActivity;->density:F

    float-to-int v2, v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/sid/tvos/MainActivity;->density:F

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float v3, v3, v2

    float-to-int v3, v3

    const/high16 v4, 0x41400000    # 12.0f

    mul-float v2, v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private applyCwBackground()V
    .locals 2

    invoke-static {}, Lcom/sid/tvos/CwBackground;->invalidate()V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwBackdrops:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    iget v0, p0, Lcom/sid/tvos/MainActivity;->shelfPosition:I

    iget-boolean v1, p0, Lcom/sid/tvos/MainActivity;->shelfShown:Z

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    const/4 v1, -0x1

    iput v1, p0, Lcom/sid/tvos/MainActivity;->shelfPosition:I

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->showShelf(I)V

    :cond_0
    return-void
.end method

.method private applyCwBlur()V
    .locals 4

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwBackdrops:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->frosted:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->frostSteps:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    iget v0, p0, Lcom/sid/tvos/MainActivity;->cwPosition:I

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/sid/tvos/MainActivity;->shelfShown:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sid/tvos/MainActivity;->cwSelected:I

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->selectCw(I)V

    :cond_0
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->prewarmCw:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->prewarmCw:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private applyCwOn()V
    .locals 2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->prewarmCw:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->cwRenderLater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->cwBackdropRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->cwOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sid/tvos/MainActivity;->cwGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sid/tvos/MainActivity;->cwGen:I

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->hideCw()V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sid/tvos/MainActivity;->cwItems:Ljava/util/List;

    iput-object v0, p0, Lcom/sid/tvos/MainActivity;->cwData:Ljava/util/Map;

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwBackdrops:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    :cond_0
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyStatusItems()V

    invoke-static {}, Lcom/sid/tvos/Stage;->clear()V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    sget v1, Lcom/sid/tvos/MainActivity;->COLUMNS:I

    invoke-virtual {v0, v1}, Lcom/sid/tvos/AppAdapter;->prewarmShelves(I)V

    iget v0, p0, Lcom/sid/tvos/MainActivity;->shelfPosition:I

    iget-boolean v1, p0, Lcom/sid/tvos/MainActivity;->shelfShown:Z

    if-eqz v1, :cond_1

    if-ltz v0, :cond_1

    const/4 v1, -0x1

    iput v1, p0, Lcom/sid/tvos/MainActivity;->shelfPosition:I

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->showShelf(I)V

    :cond_1
    return-void
.end method

.method private applyDark()V
    .locals 8

    iget-boolean v0, p0, Lcom/sid/tvos/MainActivity;->darkApplying:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/sid/tvos/MainActivity;->darkPending:Z

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/sid/tvos/MainActivity;->darkApplying:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sid/tvos/MainActivity;->darkPending:Z

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->dark(Landroid/content/Context;)Z

    move-result v5

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {v0}, Lcom/sid/tvos/AppAdapter;->allEntries()Ljava/util/List;

    move-result-object v6

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    sget v1, Lcom/sid/tvos/MainActivity;->COLUMNS:I

    invoke-virtual {v0, v1}, Lcom/sid/tvos/AppAdapter;->firstEntries(I)Ljava/util/List;

    move-result-object v4

    iget v3, p0, Lcom/sid/tvos/MainActivity;->shelfPosition:I

    sget-object v0, Lcom/sid/tvos/MainActivity;->DARK:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lt/x;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lt/x;-><init>(Lcom/sid/tvos/MainActivity;ILjava/util/List;ZLjava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private applyGlass(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "liquid"

    goto :goto_0

    :cond_0
    const-string v0, "frosted"

    :goto_0
    invoke-static {p0, v0}, Lcom/sid/tvos/Appearance;->setGlass(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->dockBand:Lcom/sid/tvos/DockDecoration;

    invoke-virtual {v0, p1}, Lcom/sid/tvos/DockDecoration;->setLiquid(Z)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->shelfBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->updateStatusGlass(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private applyLayout()V
    .locals 1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/g;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->updateGridPadding(I)V

    iget v0, p0, Lcom/sid/tvos/MainActivity;->cwPosition:I

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->renderCw()V

    :cond_0
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->layoutCw()V

    return-void
.end method

.method private applyPanelGlass(Landroid/view/View;F)V
    .locals 2

    new-instance v0, Lcom/sid/tvos/LiquidGlassDrawable;

    iget v1, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float p2, p2, v1

    invoke-direct {v0, v1, p2}, Lcom/sid/tvos/LiquidGlassDrawable;-><init>(FF)V

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->liquid(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/sid/tvos/LiquidGlassDrawable;->setLiquid(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private applyStatusItems()V
    .locals 10

    const-string v0, "statusbar"

    invoke-static {p0, v0}, Lcom/sid/tvos/Appearance;->show(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->statusMinimal(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "clock"

    invoke-static {p0, v2}, Lcom/sid/tvos/Appearance;->show(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v1, :cond_2

    const-string v5, "weather"

    invoke-static {p0, v5}, Lcom/sid/tvos/Appearance;->show(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/sid/tvos/MainActivity;->weatherLoaded:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    sget v6, Lcom/sid/tvos/R$id;->clock:I

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    if-eqz v2, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    const/16 v8, 0x8

    :goto_3
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    sget v6, Lcom/sid/tvos/R$id;->weatherIcon:I

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v5, :cond_4

    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    const/16 v8, 0x8

    :goto_4
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    sget v6, Lcom/sid/tvos/R$id;->weatherText:I

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v5, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    const/16 v8, 0x8

    :goto_5
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    if-nez v2, :cond_7

    if-eqz v5, :cond_6

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v2, 0x1

    :goto_7
    const/4 v5, 0x0

    :goto_8
    sget-object v6, Lcom/sid/tvos/MainActivity;->STATUS_BUTTONS:[I

    array-length v8, v6

    if-ge v5, v8, :cond_a

    if-nez v1, :cond_8

    sget-object v8, Lcom/sid/tvos/MainActivity;->STATUS_BUTTON_KEYS:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-static {p0, v8}, Lcom/sid/tvos/Appearance;->show(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    goto :goto_9

    :cond_8
    const/4 v8, 0x0

    :goto_9
    aget v6, v6, v5

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v8, :cond_9

    const/4 v9, 0x0

    goto :goto_a

    :cond_9
    const/16 v9, 0x8

    :goto_a
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    or-int/2addr v2, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_a
    iget-object v5, p0, Lcom/sid/tvos/MainActivity;->statusAvatar:Landroid/widget/ImageView;

    if-eqz v1, :cond_b

    const/4 v6, 0x0

    goto :goto_b

    :cond_b
    const/16 v6, 0x8

    :goto_b
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v1, :cond_c

    iget-object v5, p0, Lcom/sid/tvos/MainActivity;->statusAvatar:Landroid/widget/ImageView;

    const/high16 v6, 0x41f00000    # 30.0f

    iget v8, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v8, v8, v6

    float-to-int v6, v8

    invoke-static {p0, v6}, Lcom/sid/tvos/Profile;->avatar(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_c
    iget-object v5, p0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v5, p0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    iget v6, p0, Lcom/sid/tvos/MainActivity;->density:F

    const/high16 v8, 0x40800000    # 4.0f

    mul-float v8, v8, v6

    float-to-int v8, v8

    if-eqz v1, :cond_d

    const/4 v9, 0x5

    goto :goto_c

    :cond_d
    const/4 v9, 0x4

    :goto_c
    int-to-float v9, v9

    mul-float v9, v9, v6

    float-to-int v6, v9

    invoke-virtual {v5, v8, v4, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v5, p0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v1, :cond_e

    const/16 v1, 0x28

    goto :goto_d

    :cond_e
    const/16 v1, 0x30

    :goto_d
    int-to-float v1, v1

    iget v6, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v1, v1, v6

    float-to-int v1, v1

    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v6, v1, :cond_f

    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v6, p0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    invoke-static {p0}, Lcom/sid/tvos/Appearance;->cwOn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "weather_pill"

    invoke-static {p0, v5}, Lcom/sid/tvos/Appearance;->show(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-boolean v5, p0, Lcom/sid/tvos/MainActivity;->weatherLoaded:Z

    if-eqz v5, :cond_10

    goto :goto_e

    :cond_10
    const/4 v3, 0x0

    :goto_e
    iget-object v5, p0, Lcom/sid/tvos/MainActivity;->weatherPill:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_11

    const/4 v6, 0x0

    goto :goto_f

    :cond_11
    const/16 v6, 0x8

    :goto_f
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/sid/tvos/MainActivity;->weatherPill:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v6, v1, :cond_12

    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v6, p0, Lcom/sid/tvos/MainActivity;->weatherPill:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_12
    iget-boolean v5, p0, Lcom/sid/tvos/MainActivity;->weatherLoaded:Z

    if-eqz v5, :cond_13

    invoke-direct {p0, v1}, Lcom/sid/tvos/MainActivity;->applyWeatherText(I)V

    :cond_13
    or-int v1, v2, v3

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->topBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_14

    if-eqz v1, :cond_14

    goto :goto_10

    :cond_14
    const/16 v4, 0x8

    :goto_10
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    new-instance v1, Lt/P;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lt/P;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private applyWeatherText(I)V
    .locals 9

    const/4 v0, 0x1

    const-string v1, "weather_city"

    invoke-static {p0, v1}, Lcom/sid/tvos/Appearance;->show(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->weatherCity:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget v3, Lcom/sid/tvos/R$id;->weatherText:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    sget v4, Lcom/sid/tvos/R$string;->weather_line:I

    iget v5, p0, Lcom/sid/tvos/MainActivity;->weatherTemp:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/sid/tvos/MainActivity;->weatherCity:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v2

    aput-object v6, v7, v0

    invoke-virtual {p0, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget v4, Lcom/sid/tvos/R$string;->weather_temp:I

    iget v5, p0, Lcom/sid/tvos/MainActivity;->weatherTemp:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v2

    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "  "

    const-string v4, " "

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sid/tvos/MainActivity;->weatherLine:Ljava/lang/String;

    sget v0, Lcom/sid/tvos/R$id;->weatherPillText:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v3, Lcom/sid/tvos/R$id;->weatherPillIcon:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sid/tvos/MainActivity;->weatherLine:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/sid/tvos/MainActivity;->weatherPill:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->weatherPill:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->weatherPill:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/sid/tvos/MainActivity;->density:F

    const/high16 v7, 0x41600000    # 14.0f

    mul-float v7, v7, v1

    float-to-int v7, v7

    const/high16 v8, 0x41800000    # 16.0f

    mul-float v1, v1, v8

    float-to-int v1, v1

    invoke-virtual {p1, v7, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget p1, p0, Lcom/sid/tvos/MainActivity;->density:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float v1, v1, p1

    float-to-int v1, v1

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v1, 0x41000000    # 8.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v5, p1, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/high16 p1, 0x41700000    # 15.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, -0x2

    :goto_2
    iput p1, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_5

    :cond_2
    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->weatherPill:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    int-to-float v1, p1

    iget v7, p0, Lcom/sid/tvos/MainActivity;->weatherTemp:I

    const/16 v8, -0xa

    if-le v7, v8, :cond_4

    const/16 v8, 0x64

    if-lt v7, v8, :cond_3

    goto :goto_3

    :cond_3
    const v7, 0x3eb851ec    # 0.36f

    goto :goto_4

    :cond_4
    :goto_3
    const v7, 0x3e99999a    # 0.3f

    :goto_4
    mul-float v1, v1, v7

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    :goto_5
    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->weatherPill:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->weatherPill:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private askName(Ljava/lang/String;Lcom/sid/tvos/MainActivity$NameCallback;)V
    .locals 4

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    const/high16 p1, 0x41a00000    # 20.0f

    iget v1, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v1, v1, p1

    float-to-int p1, v1

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    div-int/lit8 v2, p1, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, p1, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    const v2, 0x10302d1

    invoke-direct {p1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/sid/tvos/R$string;->folder_name:I

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/sid/tvos/z;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p2, v2}, Lcom/sid/tvos/z;-><init>(Landroid/widget/EditText;Ljava/lang/Object;I)V

    const p2, 0x104000a

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private askText(ILjava/lang/String;Lcom/sid/tvos/MainActivity$TextCallback;)V
    .locals 4

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    const/high16 p2, 0x41a00000    # 20.0f

    iget v1, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v1, v1, p2

    float-to-int p2, v1

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    div-int/lit8 v2, p2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, p2, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p2, Landroid/app/AlertDialog$Builder;

    const v2, 0x10302d1

    invoke-direct {p2, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/sid/tvos/z;

    const/4 v1, 0x1

    invoke-direct {p2, v0, p3, v1}, Lcom/sid/tvos/z;-><init>(Landroid/widget/EditText;Ljava/lang/Object;I)V

    const p3, 0x104000a

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static atRowEnd(IIII)Z
    .locals 3

    const/16 v0, 0x15

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    rem-int/2addr p0, p2

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    rem-int p1, p0, p2

    sub-int/2addr p2, v2

    if-eq p1, p2, :cond_2

    sub-int/2addr p3, v2

    if-ne p0, p3, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private avatarBadge()Landroid/graphics/Bitmap;
    .locals 8

    const/high16 v0, 0x41e00000    # 28.0f

    iget v1, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {p0, v0}, Lcom/sid/tvos/Profile;->photo(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v5, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, v3, v6, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    new-instance v5, Landroid/graphics/RectF;

    int-to-float v0, v0

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const v6, 0x3e6b851f    # 0.23f

    mul-float v0, v0, v6

    invoke-static {v3, v5, v0}, Lcom/sid/tvos/Corners;->squircle(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-static {v2, v0}, Lcom/sid/tvos/MainActivity;->darkTile(Landroid/graphics/Canvas;I)V

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    int-to-float v0, v0

    const v4, 0x3f23d70a    # 0.64f

    mul-float v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    invoke-static {p0}, Lcom/sid/tvos/Profile;->emoji(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v0, v6

    iget v7, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v7, v4

    div-float/2addr v7, v6

    sub-float v4, v0, v7

    invoke-virtual {v2, v5, v0, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-object v1
.end method

.method public static synthetic b(Landroid/graphics/Bitmap;Lcom/sid/tvos/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p1, p0, p2}, Lcom/sid/tvos/MainActivity;->lambda$new$65(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b0(Lcom/sid/tvos/MainActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildAppearancePage$104(Z)V

    return-void
.end method

.method public static synthetic b1(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$onResume$5()V

    return-void
.end method

.method public static synthetic b2(Lcom/sid/tvos/MainActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sid/tvos/MainActivity;->lambda$setUpStatusPill$80(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b3(Lcom/sid/tvos/MainActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildAppearancePage$117(Z)V

    return-void
.end method

.method public static bridge synthetic b4(Lcom/sid/tvos/MainActivity;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/sid/tvos/MainActivity;->glassTargetY:F

    return p0
.end method

.method private backdrop(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v2, v1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v0

    const v3, 0x3ca3d70a    # 0.02f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    int-to-float v1, v3

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_0

    :cond_1
    int-to-float v1, v2

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    invoke-static {p1, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private static badgeColor(I)I
    .locals 11

    sget v0, Lcom/sid/tvos/R$drawable;->ic_palette:I

    if-ne p0, v0, :cond_0

    const p0, -0x9b2d01

    return p0

    :cond_0
    sget v0, Lcom/sid/tvos/R$drawable;->ic_remote:I

    const v1, -0x51514e

    if-ne p0, v0, :cond_1

    return v1

    :cond_1
    sget v0, Lcom/sid/tvos/R$drawable;->ic_display:I

    const v2, -0xf57b01

    if-ne p0, v0, :cond_2

    return v2

    :cond_2
    sget v0, Lcom/sid/tvos/R$drawable;->ic_sound:I

    const v3, -0xc8a1

    if-ne p0, v0, :cond_3

    return v3

    :cond_3
    sget v0, Lcom/sid/tvos/R$drawable;->ic_input:I

    const v4, -0xcf2ea8

    if-ne p0, v0, :cond_4

    return v4

    :cond_4
    sget v0, Lcom/sid/tvos/R$drawable;->ic_apps:I

    const v5, -0xa1a31a

    if-ne p0, v0, :cond_5

    return v5

    :cond_5
    sget v0, Lcom/sid/tvos/R$drawable;->ic_tune:I

    if-ne p0, v0, :cond_6

    return v1

    :cond_6
    sget v0, Lcom/sid/tvos/R$drawable;->ic_info:I

    if-ne p0, v0, :cond_7

    const p0, -0x2e2e2a

    return p0

    :cond_7
    sget v0, Lcom/sid/tvos/R$drawable;->ic_glass:I

    const v6, -0xbf3720

    if-ne p0, v0, :cond_8

    return v6

    :cond_8
    sget v0, Lcom/sid/tvos/R$drawable;->ic_iconpack:I

    const/16 v7, -0x60f6

    if-ne p0, v0, :cond_9

    return v7

    :cond_9
    sget v0, Lcom/sid/tvos/R$drawable;->ic_blur:I

    if-ne p0, v0, :cond_a

    const p0, -0x8f2801

    return p0

    :cond_a
    sget v0, Lcom/sid/tvos/R$drawable;->ic_statusbar:I

    if-ne p0, v0, :cond_b

    return v2

    :cond_b
    sget v0, Lcom/sid/tvos/R$drawable;->ic_eye:I

    const v8, -0x40a50e

    if-ne p0, v0, :cond_c

    return v8

    :cond_c
    sget v0, Lcom/sid/tvos/R$drawable;->ic_clock:I

    if-ne p0, v0, :cond_d

    return v7

    :cond_d
    sget v0, Lcom/sid/tvos/R$drawable;->ic_weather:I

    const/16 v9, -0x29f6

    if-ne p0, v0, :cond_e

    return v9

    :cond_e
    sget v0, Lcom/sid/tvos/R$drawable;->ic_wifi:I

    if-ne p0, v0, :cond_f

    return v2

    :cond_f
    sget v0, Lcom/sid/tvos/R$drawable;->ic_bluetooth:I

    if-ne p0, v0, :cond_10

    return v2

    :cond_10
    sget v0, Lcom/sid/tvos/R$drawable;->ic_assistant:I

    if-ne p0, v0, :cond_11

    return v5

    :cond_11
    sget v0, Lcom/sid/tvos/R$drawable;->ic_settings:I

    if-ne p0, v0, :cond_12

    return v1

    :cond_12
    sget v0, Lcom/sid/tvos/R$drawable;->ic_cards:I

    const v10, -0xbac6

    if-ne p0, v0, :cond_13

    return v10

    :cond_13
    sget v0, Lcom/sid/tvos/R$drawable;->ic_updown:I

    if-ne p0, v0, :cond_14

    return v4

    :cond_14
    sget v0, Lcom/sid/tvos/R$drawable;->ic_resize:I

    if-ne p0, v0, :cond_15

    return v7

    :cond_15
    sget v0, Lcom/sid/tvos/R$drawable;->ic_dock:I

    if-ne p0, v0, :cond_16

    return v6

    :cond_16
    sget v0, Lcom/sid/tvos/R$drawable;->ic_columns:I

    if-ne p0, v0, :cond_17

    return v5

    :cond_17
    sget v0, Lcom/sid/tvos/R$drawable;->ic_spacing:I

    if-ne p0, v0, :cond_18

    const p0, -0x992b31

    return p0

    :cond_18
    sget v0, Lcom/sid/tvos/R$drawable;->ic_edit:I

    if-ne p0, v0, :cond_19

    return v7

    :cond_19
    sget v0, Lcom/sid/tvos/R$drawable;->ic_backdrop:I

    if-ne p0, v0, :cond_1a

    return v3

    :cond_1a
    sget v0, Lcom/sid/tvos/R$drawable;->ic_focus:I

    if-ne p0, v0, :cond_1b

    return v2

    :cond_1b
    sget v0, Lcom/sid/tvos/R$drawable;->ic_cw:I

    if-ne p0, v0, :cond_1c

    return v9

    :cond_1c
    sget v0, Lcom/sid/tvos/R$drawable;->ic_mappin:I

    if-ne p0, v0, :cond_1d

    return v10

    :cond_1d
    sget v0, Lcom/sid/tvos/R$drawable;->ic_weatherpill:I

    if-ne p0, v0, :cond_1e

    const p0, -0xa53706

    return p0

    :cond_1e
    sget v0, Lcom/sid/tvos/R$drawable;->ic_keyboard:I

    if-ne p0, v0, :cond_1f

    return v1

    :cond_1f
    sget v0, Lcom/sid/tvos/R$drawable;->ic_location:I

    if-ne p0, v0, :cond_20

    return v2

    :cond_20
    sget v0, Lcom/sid/tvos/R$drawable;->ic_poster:I

    if-ne p0, v0, :cond_21

    return v8

    :cond_21
    sget v0, Lcom/sid/tvos/R$drawable;->ic_darkmode:I

    if-ne p0, v0, :cond_22

    const p0, -0xc5c5c4

    return p0

    :cond_22
    sget v0, Lcom/sid/tvos/R$drawable;->ic_calendar:I

    if-ne p0, v0, :cond_23

    return v10

    :cond_23
    return v1
.end method

.method private blurBackdrop(Landroid/graphics/Bitmap;ZI)V
    .locals 8

    sget-object v0, Lcom/sid/tvos/MainActivity;->FROST:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lt/j;

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lt/j;-><init>(Lcom/sid/tvos/MainActivity;Ljava/lang/Object;ZII)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blurDiv(I)I
    .locals 4

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->blurScale(Landroid/content/Context;)F

    move-result v0

    mul-int/lit8 v1, p1, 0x3

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float p1, p1

    const v3, 0x3f266666    # 0.65f

    mul-float v0, v0, v3

    const v3, 0x3eb33333    # 0.35f

    add-float/2addr v0, v3

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private blurPx(I)I
    .locals 1

    int-to-float p1, p1

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->blurScale(Landroid/content/Context;)F

    move-result v0

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private buildAppearancePage(Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v14, p1

    const/16 v0, 0xa

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/Appearance;->liquid(Landroid/content/Context;)Z

    move-result v5

    sget v7, Lcom/sid/tvos/R$string;->cat_style:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Lcom/sid/tvos/MainActivity$SettingsPanel;->header(Ljava/lang/String;)V

    sget v8, Lcom/sid/tvos/R$drawable;->ic_glass:I

    sget v7, Lcom/sid/tvos/R$string;->glass_style:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v7, Lcom/sid/tvos/R$string;->glass_liquid:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v10, Lcom/sid/tvos/R$string;->glass_frosted:I

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v7, v10}, [Ljava/lang/String;

    move-result-object v10

    xor-int/lit8 v11, v5, 0x1

    new-instance v12, Lcom/sid/tvos/p;

    invoke-direct {v12, v6, v4}, Lcom/sid/tvos/p;-><init>(Lcom/sid/tvos/MainActivity;I)V

    const/4 v13, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v13}, Lcom/sid/tvos/MainActivity$SettingsPanel;->choices(ILjava/lang/String;[Ljava/lang/String;ILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;)V

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/IconPack;->current(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget v8, Lcom/sid/tvos/R$string;->icons_original:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "original"

    filled-new-array {v9, v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v8, Lcom/sid/tvos/R$string;->icons_tvos:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "tvos"

    filled-new-array {v9, v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/IconPack;->installed(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v10, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    aget-object v9, v9, v4

    aput-object v9, v10, v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v11, v8

    :cond_0
    add-int/2addr v8, v4

    goto :goto_0

    :cond_1
    sget v8, Lcom/sid/tvos/R$drawable;->ic_iconpack:I

    sget v5, Lcom/sid/tvos/R$string;->icon_pack:I

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v12, Lcom/sid/tvos/g;

    invoke-direct {v12, v6, v7, v3}, Lcom/sid/tvos/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 v13, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v13}, Lcom/sid/tvos/MainActivity$SettingsPanel;->choices(ILjava/lang/String;[Ljava/lang/String;ILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;)V

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/Appearance;->dark(Landroid/content/Context;)Z

    move-result v5

    sget v7, Lcom/sid/tvos/R$drawable;->ic_darkmode:I

    sget v8, Lcom/sid/tvos/R$string;->dark_mode:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lt/z;

    invoke-direct {v9, v6, v5, v3}, Lt/z;-><init>(Lcom/sid/tvos/MainActivity;ZI)V

    invoke-virtual {v14, v7, v8, v5, v9}, Lcom/sid/tvos/MainActivity$SettingsPanel;->switchRow(ILjava/lang/String;ZLjava/lang/Runnable;)V

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/DarkSchedule;->mode(Landroid/content/Context;)I

    move-result v5

    sget v8, Lcom/sid/tvos/R$drawable;->ic_clock:I

    sget v7, Lcom/sid/tvos/R$string;->dark_schedule:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v7, Lcom/sid/tvos/R$string;->state_off:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v10, Lcom/sid/tvos/R$string;->dark_sunset:I

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lcom/sid/tvos/R$string;->dark_custom:I

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v7, v10, v11}, [Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/sid/tvos/p;

    const/4 v7, 0x6

    invoke-direct {v13, v6, v7}, Lcom/sid/tvos/p;-><init>(Lcom/sid/tvos/MainActivity;I)V

    const/4 v12, 0x0

    move-object/from16 v7, p1

    move v11, v5

    invoke-virtual/range {v7 .. v13}, Lcom/sid/tvos/MainActivity$SettingsPanel;->choices(ILjava/lang/String;[Ljava/lang/String;ILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;)V

    if-ne v5, v4, :cond_2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/sid/tvos/DarkSchedule;->window(Landroid/content/Context;Ljava/util/Calendar;)[I

    move-result-object v5

    sget v7, Lcom/sid/tvos/R$string;->dark_sunset_note:I

    aget v8, v5, v2

    invoke-direct {v6, v8}, Lcom/sid/tvos/MainActivity;->timeLabel(I)Ljava/lang/String;

    move-result-object v8

    aget v5, v5, v4

    invoke-direct {v6, v5}, Lcom/sid/tvos/MainActivity;->timeLabel(I)Ljava/lang/String;

    move-result-object v5

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v8, v9, v2

    aput-object v5, v9, v4

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/sid/tvos/MainActivity$SettingsPanel;->note(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-ne v5, v3, :cond_4

    const/16 v5, 0x30

    new-array v15, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_3

    mul-int/lit8 v8, v7, 0x1e

    invoke-direct {v6, v8}, Lcom/sid/tvos/MainActivity;->timeLabel(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v15, v7

    add-int/2addr v7, v4

    goto :goto_1

    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/DarkSchedule;->customOn(Landroid/content/Context;)I

    move-result v5

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/DarkSchedule;->customOff(Landroid/content/Context;)I

    move-result v16

    sget v8, Lcom/sid/tvos/R$drawable;->ic_clock:I

    sget v7, Lcom/sid/tvos/R$string;->dark_turns_on:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    div-int/lit8 v11, v5, 0x1e

    new-instance v13, Lcom/sid/tvos/p;

    const/4 v5, 0x7

    invoke-direct {v13, v6, v5}, Lcom/sid/tvos/p;-><init>(Lcom/sid/tvos/MainActivity;I)V

    const/4 v12, 0x0

    move-object/from16 v7, p1

    move-object v10, v15

    invoke-virtual/range {v7 .. v13}, Lcom/sid/tvos/MainActivity$SettingsPanel;->choices(ILjava/lang/String;[Ljava/lang/String;ILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;)V

    sget v8, Lcom/sid/tvos/R$drawable;->ic_clock:I

    sget v5, Lcom/sid/tvos/R$string;->dark_turns_off:I

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    div-int/lit8 v11, v16, 0x1e

    new-instance v13, Lcom/sid/tvos/p;

    const/16 v5, 0x8

    invoke-direct {v13, v6, v5}, Lcom/sid/tvos/p;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual/range {v7 .. v13}, Lcom/sid/tvos/MainActivity$SettingsPanel;->choices(ILjava/lang/String;[Ljava/lang/String;ILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;)V

    :cond_4
    :goto_2
    sget v5, Lcom/sid/tvos/R$string;->dark_mode_note:I

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/sid/tvos/MainActivity$SettingsPanel;->note(Ljava/lang/String;)V

    sget v8, Lcom/sid/tvos/R$drawable;->ic_blur:I

    sget v5, Lcom/sid/tvos/R$string;->blur_intensity:I

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/Appearance;->blur(Landroid/content/Context;)I

    move-result v10

    new-instance v12, Lcom/sid/tvos/p;

    const/16 v5, 0x9

    invoke-direct {v12, v6, v5}, Lcom/sid/tvos/p;-><init>(Lcom/sid/tvos/MainActivity;I)V

    new-instance v13, Lt/c;

    invoke-direct {v13, v6, v1}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    const/16 v11, 0xa

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v13}, Lcom/sid/tvos/MainActivity$SettingsPanel;->slider(ILjava/lang/String;IILcom/sid/tvos/MainActivity$IntChoice;Ljava/lang/Runnable;)V

    sget v5, Lcom/sid/tvos/R$string;->blur_note:I

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/sid/tvos/MainActivity$SettingsPanel;->note(Ljava/lang/String;)V

    sget v5, Lcom/sid/tvos/R$string;->cat_standby:I

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/sid/tvos/MainActivity$SettingsPanel;->header(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/Appearance;->standByLayout(Landroid/content/Context;)I

    move-result v5

    sget v8, Lcom/sid/tvos/R$drawable;->ic_standby:I

    sget v7, Lcom/sid/tvos/R$string;->standby_layout:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v10, Lcom/sid/tvos/R$array;->standby_layouts:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/sid/tvos/p;

    invoke-direct {v13, v6, v0}, Lcom/sid/tvos/p;-><init>(Lcom/sid/tvos/MainActivity;I)V

    const/4 v12, 0x0

    move-object/from16 v7, p1

    move v11, v5

    invoke-virtual/range {v7 .. v13}, Lcom/sid/tvos/MainActivity$SettingsPanel;->choices(ILjava/lang/String;[Ljava/lang/String;ILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;)V

    if-nez v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/sid/tvos/R$array;->standby_widgets:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    sget v8, Lcom/sid/tvos/R$drawable;->ic_clock:I

    sget v7, Lcom/sid/tvos/R$string;->standby_left:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/Appearance;->standByLeft(Landroid/content/Context;)I

    move-result v11

    new-instance v13, Lcom/sid/tvos/p;

    invoke-direct {v13, v6, v1}, Lcom/sid/tvos/p;-><init>(Lcom/sid/tvos/MainActivity;I)V

    const/4 v12, 0x0

    move-object/from16 v7, p1

    move-object v10, v5

    invoke-virtual/range {v7 .. v13}, Lcom/sid/tvos/MainActivity$SettingsPanel;->choices(ILjava/lang/String;[Ljava/lang/String;ILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;)V

    sget v8, Lcom/sid/tvos/R$drawable;->ic_calendar:I

    sget v1, Lcom/sid/tvos/R$string;->standby_right:I

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/Appearance;->standByRight(Landroid/content/Context;)I

    move-result v11

    new-instance v13, Lcom/sid/tvos/p;

    invoke-direct {v13, v6, v3}, Lcom/sid/tvos/p;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual/range {v7 .. v13}, Lcom/sid/tvos/MainActivity$SettingsPanel;->choices(ILjava/lang/String;[Ljava/lang/String;ILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;)V

    goto :goto_3

    :cond_5
    if-ne v5, v3, :cond_6

    sget v8, Lcom/sid/tvos/R$drawable;->ic_palette:I

    sget v1, Lcom/sid/tvos/R$string;->standby_colour:I

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/sid/tvos/R$array;->standby_colours:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/Appearance;->standByColour(Landroid/content/Context;)I

    move-result v11

    new-instance v13, Lcom/sid/tvos/p;

    const/4 v1, 0x3

    invoke-direct {v13, v6, v1}, Lcom/sid/tvos/p;-><init>(Lcom/sid/tvos/MainActivity;I)V

    const/4 v12, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v13}, Lcom/sid/tvos/MainActivity$SettingsPanel;->choices(ILjava/lang/String;[Ljava/lang/String;ILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;)V

    :cond_6
    :goto_3
    sget v1, Lcom/sid/tvos/R$drawable;->ic_eye:I

    sget v5, Lcom/sid/tvos/R$string;->standby_preview:I

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v15, 0x0

    invoke-static {v14, v1, v5, v15, v2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->A(Lcom/sid/tvos/MainActivity$SettingsPanel;ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v1

    new-instance v5, Lt/i;

    invoke-direct {v5, v6, v1, v3}, Lt/i;-><init>(Lcom/sid/tvos/MainActivity;Landroid/view/View;I)V

    invoke-static {v14, v1, v1, v5}, Lcom/sid/tvos/MainActivity$SettingsPanel;->B(Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    sget v1, Lcom/sid/tvos/R$drawable;->ic_settings:I

    sget v3, Lcom/sid/tvos/R$string;->standby_set:I

    invoke-virtual {v6, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v1, v3, v15, v4}, Lcom/sid/tvos/MainActivity$SettingsPanel;->A(Lcom/sid/tvos/MainActivity$SettingsPanel;ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lt/c;

    invoke-direct {v3, v6, v0}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-static {v14, v1, v1, v3}, Lcom/sid/tvos/MainActivity$SettingsPanel;->B(Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    sget v0, Lcom/sid/tvos/R$string;->standby_note:I

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->note(Ljava/lang/String;)V

    sget v0, Lcom/sid/tvos/R$string;->recent_apps:I

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->header(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/Appearance;->recentSize(Landroid/content/Context;)I

    move-result v11

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/Appearance;->recentRam(Landroid/content/Context;)Z

    move-result v0

    sget v8, Lcom/sid/tvos/R$drawable;->ic_resize:I

    sget v1, Lcom/sid/tvos/R$string;->recent_card_size:I

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/sid/tvos/R$array;->size_steps:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/sid/tvos/p;

    const/4 v1, 0x4

    invoke-direct {v13, v6, v1}, Lcom/sid/tvos/p;-><init>(Lcom/sid/tvos/MainActivity;I)V

    const/4 v12, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v13}, Lcom/sid/tvos/MainActivity$SettingsPanel;->choices(ILjava/lang/String;[Ljava/lang/String;ILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;)V

    sget v1, Lcom/sid/tvos/R$drawable;->ic_info:I

    sget v3, Lcom/sid/tvos/R$string;->recent_show_ram:I

    invoke-virtual {v6, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lt/z;

    invoke-direct {v5, v6, v0, v2}, Lt/z;-><init>(Lcom/sid/tvos/MainActivity;ZI)V

    invoke-virtual {v14, v1, v3, v0, v5}, Lcom/sid/tvos/MainActivity$SettingsPanel;->switchRow(ILjava/lang/String;ZLjava/lang/Runnable;)V

    sget v0, Lcom/sid/tvos/R$string;->cat_statusbar:I

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->header(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/Appearance;->statusMinimal(Landroid/content/Context;)Z

    move-result v16

    sget v8, Lcom/sid/tvos/R$drawable;->ic_statusbar:I

    sget v0, Lcom/sid/tvos/R$string;->status_style:I

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v0, Lcom/sid/tvos/R$string;->status_minimal:I

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/sid/tvos/R$string;->status_full:I

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v10

    xor-int/lit8 v11, v16, 0x1

    new-instance v12, Lcom/sid/tvos/p;

    const/4 v0, 0x5

    invoke-direct {v12, v6, v0}, Lcom/sid/tvos/p;-><init>(Lcom/sid/tvos/MainActivity;I)V

    const/4 v13, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v13}, Lcom/sid/tvos/MainActivity$SettingsPanel;->choices(ILjava/lang/String;[Ljava/lang/String;ILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;)V

    sget v0, Lcom/sid/tvos/R$drawable;->ic_eye:I

    sget v1, Lcom/sid/tvos/R$string;->show_statusbar:I

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "statusbar"

    invoke-virtual {v14, v0, v1, v3}, Lcom/sid/tvos/MainActivity$SettingsPanel;->toggle(ILjava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/sid/tvos/R$string;->profile_picture:I

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sid/tvos/p;

    invoke-direct {v1, v6, v2}, Lcom/sid/tvos/p;-><init>(Lcom/sid/tvos/MainActivity;I)V

    const/4 v2, -0x1

    invoke-virtual {v14, v2, v0, v15, v1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->nav(ILjava/lang/String;Ljava/lang/String;Lcom/sid/tvos/MainActivity$PageBuilder;)V

    sget v0, Lcom/sid/tvos/R$drawable;->ic_clock:I

    sget v1, Lcom/sid/tvos/R$string;->show_clock:I

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "clock"

    invoke-virtual {v14, v0, v1, v2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->toggle(ILjava/lang/String;Ljava/lang/String;)V

    if-nez v16, :cond_7

    sget v0, Lcom/sid/tvos/R$drawable;->ic_wifi:I

    sget v1, Lcom/sid/tvos/R$string;->show_wifi:I

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v14, v0, v1, v2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->toggle(ILjava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/sid/tvos/R$drawable;->ic_bluetooth:I

    sget v1, Lcom/sid/tvos/R$string;->show_bluetooth:I

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bluetooth"

    invoke-virtual {v14, v0, v1, v2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->toggle(ILjava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/sid/tvos/R$drawable;->ic_assistant:I

    sget v1, Lcom/sid/tvos/R$string;->show_assistant:I

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "assistant"

    invoke-virtual {v14, v0, v1, v2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->toggle(ILjava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/sid/tvos/R$drawable;->ic_settings:I

    sget v1, Lcom/sid/tvos/R$string;->show_settings_icon:I

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "settings"

    invoke-virtual {v14, v0, v1, v2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->toggle(ILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/Appearance;->cwOn(Landroid/content/Context;)Z

    move-result v7

    sget v0, Lcom/sid/tvos/R$string;->cw_title:I

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->header(Ljava/lang/String;)V

    sget v0, Lcom/sid/tvos/R$drawable;->ic_cw:I

    sget v1, Lcom/sid/tvos/R$string;->cw_show:I

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lt/z;

    invoke-direct {v2, v6, v7, v4}, Lt/z;-><init>(Lcom/sid/tvos/MainActivity;ZI)V

    invoke-virtual {v14, v0, v1, v7, v2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->switchRow(ILjava/lang/String;ZLjava/lang/Runnable;)V

    if-nez v7, :cond_8

    sget v0, Lcom/sid/tvos/R$string;->cw_off_note:I

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->note(Ljava/lang/String;)V

    :cond_8
    if-eqz v7, :cond_9

    sget v2, Lcom/sid/tvos/R$drawable;->ic_cards:I

    sget v3, Lcom/sid/tvos/R$string;->cw_size:I

    const-string v4, "cw_size"

    sget v5, Lcom/sid/tvos/R$array;->size_steps:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sid/tvos/MainActivity;->layoutChoice(Lcom/sid/tvos/MainActivity$SettingsPanel;IILjava/lang/String;I)V

    sget v2, Lcom/sid/tvos/R$drawable;->ic_updown:I

    sget v3, Lcom/sid/tvos/R$string;->cw_position:I

    const-string v4, "cw_pos"

    sget v5, Lcom/sid/tvos/R$array;->position_steps:I

    invoke-direct/range {v0 .. v5}, Lcom/sid/tvos/MainActivity;->layoutChoice(Lcom/sid/tvos/MainActivity$SettingsPanel;IILjava/lang/String;I)V

    invoke-direct/range {p0 .. p1}, Lcom/sid/tvos/MainActivity;->buildCwArtRows(Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    :cond_9
    sget v0, Lcom/sid/tvos/R$string;->cat_weather:I

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->header(Ljava/lang/String;)V

    sget v0, Lcom/sid/tvos/R$drawable;->ic_weatherpill:I

    sget v1, Lcom/sid/tvos/R$string;->weather_pill:I

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v7, :cond_a

    const-string v2, "weather_pill"

    invoke-virtual {v14, v0, v1, v2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->toggle(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    sget v2, Lcom/sid/tvos/R$string;->state_off:I

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v0, v1, v2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->disabled(ILjava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/sid/tvos/R$string;->weather_pill_needs_cw_off:I

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->note(Ljava/lang/String;)V

    :goto_4
    if-nez v16, :cond_b

    sget v0, Lcom/sid/tvos/R$drawable;->ic_weather:I

    sget v1, Lcom/sid/tvos/R$string;->show_weather:I

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "weather"

    invoke-virtual {v14, v0, v1, v2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->toggle(ILjava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/sid/tvos/MainActivity;->buildWeatherRows(Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    sget v0, Lcom/sid/tvos/R$string;->cat_favourites:I

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->header(Ljava/lang/String;)V

    sget v2, Lcom/sid/tvos/R$drawable;->ic_dock:I

    sget v3, Lcom/sid/tvos/R$string;->fav_position:I

    const-string v4, "fav_pos"

    sget v5, Lcom/sid/tvos/R$array;->position_steps:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sid/tvos/MainActivity;->layoutChoice(Lcom/sid/tvos/MainActivity$SettingsPanel;IILjava/lang/String;I)V

    sget v2, Lcom/sid/tvos/R$drawable;->ic_columns:I

    sget v3, Lcom/sid/tvos/R$string;->row_icons:I

    const-string v4, "row_icons"

    sget v5, Lcom/sid/tvos/R$array;->row_icon_steps:I

    invoke-direct/range {v0 .. v5}, Lcom/sid/tvos/MainActivity;->layoutChoice(Lcom/sid/tvos/MainActivity$SettingsPanel;IILjava/lang/String;I)V

    sget v0, Lcom/sid/tvos/R$string;->layout_header:I

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->header(Ljava/lang/String;)V

    sget v2, Lcom/sid/tvos/R$drawable;->ic_resize:I

    sget v3, Lcom/sid/tvos/R$string;->icon_size:I

    const-string v4, "icon_size"

    sget v5, Lcom/sid/tvos/R$array;->size_steps:I

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sid/tvos/MainActivity;->layoutChoice(Lcom/sid/tvos/MainActivity$SettingsPanel;IILjava/lang/String;I)V

    sget v2, Lcom/sid/tvos/R$drawable;->ic_spacing:I

    sget v3, Lcom/sid/tvos/R$string;->row_gap:I

    const-string v4, "row_gap"

    sget v5, Lcom/sid/tvos/R$array;->gap_steps:I

    invoke-direct/range {v0 .. v5}, Lcom/sid/tvos/MainActivity;->layoutChoice(Lcom/sid/tvos/MainActivity$SettingsPanel;IILjava/lang/String;I)V

    return-void
.end method

.method private buildCwArtRows(Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/Appearance;->cwArt(Landroid/content/Context;)Z

    move-result v12

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/CwBackground;->mode(Landroid/content/Context;)I

    move-result v13

    sget v1, Lcom/sid/tvos/R$drawable;->ic_poster:I

    sget v0, Lcom/sid/tvos/R$string;->cw_bg:I

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/sid/tvos/R$array;->cw_bg_modes:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/sid/tvos/p;

    const/16 v0, 0xd

    invoke-direct {v5, v7, v0}, Lcom/sid/tvos/p;-><init>(Lcom/sid/tvos/MainActivity;I)V

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v4, v13

    invoke-virtual/range {v0 .. v6}, Lcom/sid/tvos/MainActivity$SettingsPanel;->choices(ILjava/lang/String;[Ljava/lang/String;ILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;)V

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    sget v0, Lcom/sid/tvos/R$string;->cw_art_off_note:I

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->note(Ljava/lang/String;)V

    :cond_0
    const/4 v15, 0x2

    if-ne v13, v15, :cond_1

    sget v0, Lcom/sid/tvos/R$string;->cw_bg_colour:I

    invoke-direct {v7, v8, v14, v0}, Lcom/sid/tvos/MainActivity;->cwColourRows(Lcom/sid/tvos/MainActivity$SettingsPanel;II)V

    goto/16 :goto_1

    :cond_1
    if-ne v13, v10, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sid/tvos/R$array;->cw_presets:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/CwBackground;->preset(Landroid/content/Context;)I

    move-result v1

    array-length v2, v0

    add-int/2addr v2, v14

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, [Ljava/lang/String;

    array-length v2, v0

    sget v4, Lcom/sid/tvos/R$string;->cw_custom:I

    invoke-virtual {v7, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    sget v2, Lcom/sid/tvos/R$drawable;->ic_backdrop:I

    sget v4, Lcom/sid/tvos/R$string;->cw_bg_preset:I

    invoke-virtual {v7, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-gez v1, :cond_2

    array-length v1, v0

    :cond_2
    move v5, v1

    new-instance v6, Lcom/sid/tvos/g;

    invoke-direct {v6, v7, v0, v10}, Lcom/sid/tvos/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 v10, 0x0

    move-object/from16 v0, p1

    move v1, v2

    move-object v2, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/sid/tvos/MainActivity$SettingsPanel;->choices(ILjava/lang/String;[Ljava/lang/String;ILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;)V

    sget v2, Lcom/sid/tvos/R$drawable;->ic_backdrop:I

    sget v3, Lcom/sid/tvos/R$string;->cw_bg_style:I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sid/tvos/R$array;->cw_bg_styles:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "cw_bg_style"

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/CwBackground;->style(Landroid/content/Context;)I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sid/tvos/MainActivity;->cwBgChoice(Lcom/sid/tvos/MainActivity$SettingsPanel;II[Ljava/lang/String;Ljava/lang/String;I)V

    sget v0, Lcom/sid/tvos/R$string;->cw_bg_colour1:I

    invoke-direct {v7, v8, v14, v0}, Lcom/sid/tvos/MainActivity;->cwColourRows(Lcom/sid/tvos/MainActivity$SettingsPanel;II)V

    sget v0, Lcom/sid/tvos/R$string;->cw_bg_colour2:I

    invoke-direct {v7, v8, v15, v0}, Lcom/sid/tvos/MainActivity;->cwColourRows(Lcom/sid/tvos/MainActivity$SettingsPanel;II)V

    goto/16 :goto_1

    :cond_3
    if-ne v13, v9, :cond_6

    sget v0, Lcom/sid/tvos/R$drawable;->ic_folder:I

    sget v1, Lcom/sid/tvos/R$string;->cw_pick_picture:I

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-static {v8, v0, v1, v6, v14}, Lcom/sid/tvos/MainActivity$SettingsPanel;->A(Lcom/sid/tvos/MainActivity$SettingsPanel;ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lt/i;

    const/4 v2, 0x6

    invoke-direct {v1, v7, v0, v2}, Lt/i;-><init>(Lcom/sid/tvos/MainActivity;Landroid/view/View;I)V

    invoke-static {v8, v0, v0, v1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->B(Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    sget v0, Lcom/sid/tvos/R$drawable;->ic_cast:I

    sget v1, Lcom/sid/tvos/R$string;->cw_from_phone:I

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1, v6, v14}, Lcom/sid/tvos/MainActivity$SettingsPanel;->A(Lcom/sid/tvos/MainActivity$SettingsPanel;ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sid/tvos/t;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v8, v7}, Lcom/sid/tvos/t;-><init>(ILcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;)V

    invoke-static {v8, v0, v0, v1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->B(Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    iget-object v0, v7, Lcom/sid/tvos/MainActivity;->cwUploadUrl:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget v1, Lcom/sid/tvos/R$string;->cw_from_phone_note:I

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v0, v2, v11

    invoke-virtual {v7, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->note(Ljava/lang/String;)V

    :cond_4
    const/16 v0, 0x18

    invoke-static {v7, v0}, Lcom/sid/tvos/Profile;->photos(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/high16 v1, 0x42800000    # 64.0f

    iget v2, v7, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v2, v2, v1

    float-to-int v10, v2

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/Uri;

    new-instance v0, Lt/G;

    invoke-direct {v0, v7, v2, v11}, Lt/G;-><init>(Lcom/sid/tvos/MainActivity;Landroid/net/Uri;I)V

    invoke-virtual {v8, v6, v11, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->avatarView(Landroid/graphics/Bitmap;ZLjava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-array v4, v14, [Landroid/widget/ImageView;

    aput-object v1, v4, v11

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/Thread;

    new-instance v3, Lt/E;

    const/16 v16, 0x1

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v6, v3

    move v3, v10

    move-object v14, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lt/E;-><init>(Lcom/sid/tvos/MainActivity;Landroid/net/Uri;I[Landroid/widget/ImageView;I)V

    invoke-direct {v14, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    const/4 v6, 0x0

    const/4 v14, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v8, v13}, Lcom/sid/tvos/MainActivity$SettingsPanel;->strip(Ljava/util/List;)V

    :cond_6
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/Appearance;->cwBlur(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v12, :cond_7

    const/4 v14, 0x1

    goto :goto_2

    :cond_7
    const/4 v14, 0x0

    :goto_2
    if-eqz v12, :cond_8

    sget v0, Lcom/sid/tvos/R$drawable;->ic_backdrop:I

    sget v1, Lcom/sid/tvos/R$string;->cw_blur:I

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lt/z;

    invoke-direct {v2, v7, v14, v9}, Lt/z;-><init>(Lcom/sid/tvos/MainActivity;ZI)V

    invoke-virtual {v8, v0, v1, v14, v2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->switchRow(ILjava/lang/String;ZLjava/lang/Runnable;)V

    :cond_8
    if-eqz v14, :cond_9

    sget v1, Lcom/sid/tvos/R$drawable;->ic_focus:I

    sget v0, Lcom/sid/tvos/R$string;->cw_blur_level:I

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/Appearance;->cwBlurLevel(Landroid/content/Context;)I

    move-result v3

    new-instance v5, Lcom/sid/tvos/x;

    invoke-direct {v5, v11, v8, v7}, Lcom/sid/tvos/x;-><init>(ILcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;)V

    const/4 v6, 0x0

    const/16 v4, 0xa

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sid/tvos/MainActivity$SettingsPanel;->slider(ILjava/lang/String;IILcom/sid/tvos/MainActivity$IntChoice;Ljava/lang/Runnable;)V

    :cond_9
    return-void
.end method

.method private buildDefaultLauncherPage(Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 5

    invoke-static {p0}, Lcom/sid/tvos/DefaultHome;->isHome(Landroid/content/Context;)Z

    move-result v0

    sget v1, Lcom/sid/tvos/R$drawable;->ic_apps:I

    if-eqz v0, :cond_0

    sget v2, Lcom/sid/tvos/R$string;->dl_is_home:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/sid/tvos/R$string;->dl_not_home:I

    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    sget v3, Lcom/sid/tvos/R$string;->state_on:I

    goto :goto_1

    :cond_1
    sget v3, Lcom/sid/tvos/R$string;->state_off:I

    :goto_1
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v3, v4}, Lcom/sid/tvos/MainActivity$SettingsPanel;->A(Lcom/sid/tvos/MainActivity$SettingsPanel;ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/sid/tvos/R$id;->dot:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    if-nez v0, :cond_3

    sget v0, Lcom/sid/tvos/R$drawable;->ic_apps:I

    sget v1, Lcom/sid/tvos/R$string;->dl_set:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lcom/sid/tvos/MainActivity$SettingsPanel;->A(Lcom/sid/tvos/MainActivity$SettingsPanel;ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lt/i;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v0, v2}, Lt/i;-><init>(Lcom/sid/tvos/MainActivity;Landroid/view/View;I)V

    invoke-static {p1, v0, v0, v1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->B(Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_3
    invoke-static {p0}, Lcom/sid/tvos/Remaps;->serviceEnabled(Landroid/content/Context;)Z

    move-result v0

    sget v1, Lcom/sid/tvos/R$drawable;->ic_remote:I

    sget v2, Lcom/sid/tvos/R$string;->dl_catch_home:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lt/z;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v0, v4}, Lt/z;-><init>(Lcom/sid/tvos/MainActivity;ZI)V

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/sid/tvos/MainActivity$SettingsPanel;->switchRow(ILjava/lang/String;ZLjava/lang/Runnable;)V

    sget v0, Lcom/sid/tvos/R$string;->dl_catch_note:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->note(Ljava/lang/String;)V

    sget v0, Lcom/sid/tvos/R$string;->dl_adb:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->header(Ljava/lang/String;)V

    invoke-static {}, Lcom/sid/tvos/DefaultHome;->ip()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/sid/tvos/R$string;->dl_adb_note:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->note(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adb connect "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const-string v0, "TV-IP"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":5555"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->note(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adb shell "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sid/tvos/DefaultHome;->adbCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->note(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adb shell pm grant "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->note(Ljava/lang/String;)V

    sget v0, Lcom/sid/tvos/R$string;->dl_adb_script:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->note(Ljava/lang/String;)V

    return-void
.end method

.method private buildProfilePage(Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 13

    const/4 v0, 0x1

    sget v1, Lcom/sid/tvos/R$string;->avatars:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->header(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sid/tvos/Profile;->choice(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x42800000    # 64.0f

    iget v3, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v3, v3, v2

    float-to-int v2, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    const/4 v4, 0x0

    :goto_0
    sget-object v5, Lcom/sid/tvos/Profile;->EMOJI:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    invoke-static {v4, v2}, Lcom/sid/tvos/Profile;->emojiAvatar(II)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "emoji:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    new-instance v7, Lcom/sid/tvos/u;

    invoke-direct {v7, v4, p1, p0}, Lcom/sid/tvos/u;-><init>(ILcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;)V

    invoke-virtual {p1, v5, v6, v7}, Lcom/sid/tvos/MainActivity$SettingsPanel;->avatarView(Landroid/graphics/Bitmap;ZLjava/lang/Runnable;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Lcom/sid/tvos/MainActivity$SettingsPanel;->strip(Ljava/util/List;)V

    sget v1, Lcom/sid/tvos/R$string;->your_photos:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->header(Ljava/lang/String;)V

    const/16 v1, 0xc

    invoke-static {p0, v1}, Lcom/sid/tvos/Profile;->photos(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    sget v0, Lcom/sid/tvos/R$string;->no_photos:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->note(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/net/Uri;

    new-instance v4, Lcom/sid/tvos/v;

    invoke-direct {v4, p0, v6, p1, v10}, Lcom/sid/tvos/v;-><init>(Lcom/sid/tvos/MainActivity;Landroid/net/Uri;Lcom/sid/tvos/MainActivity$SettingsPanel;I)V

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v10, v4}, Lcom/sid/tvos/MainActivity$SettingsPanel;->avatarView(Landroid/graphics/Bitmap;ZLjava/lang/Runnable;)Landroid/view/View;

    move-result-object v4

    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    new-array v8, v0, [Landroid/widget/ImageView;

    aput-object v5, v8, v10

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Ljava/lang/Thread;

    new-instance v12, Lt/E;

    const/4 v9, 0x0

    move-object v4, v12

    move-object v5, p0

    move v7, v2

    invoke-direct/range {v4 .. v9}, Lt/E;-><init>(Lcom/sid/tvos/MainActivity;Landroid/net/Uri;I[Landroid/widget/ImageView;I)V

    invoke-direct {v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v3}, Lcom/sid/tvos/MainActivity$SettingsPanel;->strip(Ljava/util/List;)V

    :goto_2
    sget v0, Lcom/sid/tvos/R$string;->profile:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->header(Ljava/lang/String;)V

    sget v0, Lcom/sid/tvos/R$drawable;->ic_edit:I

    sget v1, Lcom/sid/tvos/R$string;->edit_name:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/sid/tvos/Profile;->name(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sid/tvos/t;

    const/4 v4, 0x7

    invoke-direct {v3, v4, p1, p0}, Lcom/sid/tvos/t;-><init>(ILcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sid/tvos/MainActivity$SettingsPanel;->action(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private buildSettingsPage(Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 6

    sget v0, Lcom/sid/tvos/R$string;->cat_launcher:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->header(Ljava/lang/String;)V

    sget v0, Lcom/sid/tvos/R$drawable;->ic_palette:I

    sget v1, Lcom/sid/tvos/R$string;->appearance:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sid/tvos/p;

    const/16 v3, 0x10

    invoke-direct {v2, p0, v3}, Lcom/sid/tvos/p;-><init>(Lcom/sid/tvos/MainActivity;I)V

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->nav(ILjava/lang/String;Ljava/lang/String;Lcom/sid/tvos/MainActivity$PageBuilder;)V

    sget v0, Lcom/sid/tvos/R$string;->profile:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/sid/tvos/Profile;->name(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sid/tvos/p;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/sid/tvos/p;-><init>(Lcom/sid/tvos/MainActivity;I)V

    const/4 v4, -0x1

    invoke-virtual {p1, v4, v0, v1, v2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->nav(ILjava/lang/String;Ljava/lang/String;Lcom/sid/tvos/MainActivity$PageBuilder;)V

    sget v0, Lcom/sid/tvos/R$drawable;->ic_remote:I

    sget v1, Lcom/sid/tvos/R$string;->remote_buttons:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sid/tvos/t;

    const/4 v4, 0x0

    invoke-direct {v2, v4, p1, p0}, Lcom/sid/tvos/t;-><init>(ILcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;)V

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->action(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    sget v0, Lcom/sid/tvos/R$drawable;->ic_apps:I

    sget v1, Lcom/sid/tvos/R$string;->default_launcher:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/sid/tvos/DefaultHome;->isHome(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/sid/tvos/R$string;->state_on:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/sid/tvos/R$string;->state_off:I

    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/sid/tvos/p;

    const/16 v5, 0xc

    invoke-direct {v4, p0, v5}, Lcom/sid/tvos/p;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {p1, v0, v1, v2, v4}, Lcom/sid/tvos/MainActivity$SettingsPanel;->nav(ILjava/lang/String;Ljava/lang/String;Lcom/sid/tvos/MainActivity$PageBuilder;)V

    sget v0, Lcom/sid/tvos/R$string;->cat_tv:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->header(Ljava/lang/String;)V

    sget v0, Lcom/sid/tvos/R$drawable;->ic_display:I

    sget v1, Lcom/sid/tvos/R$string;->display:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sid/tvos/t;

    const/4 v4, 0x1

    invoke-direct {v2, v4, p1, p0}, Lcom/sid/tvos/t;-><init>(ILcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;)V

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->action(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    sget v0, Lcom/sid/tvos/R$drawable;->ic_sound:I

    sget v1, Lcom/sid/tvos/R$string;->sound:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sid/tvos/t;

    const/4 v4, 0x2

    invoke-direct {v2, v4, p1, p0}, Lcom/sid/tvos/t;-><init>(ILcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;)V

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->action(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    sget v0, Lcom/sid/tvos/R$drawable;->ic_input:I

    sget v1, Lcom/sid/tvos/R$string;->inputs:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sid/tvos/t;

    const/4 v4, 0x3

    invoke-direct {v2, v4, p1, p0}, Lcom/sid/tvos/t;-><init>(ILcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;)V

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->action(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    sget v0, Lcom/sid/tvos/R$drawable;->ic_apps:I

    sget v1, Lcom/sid/tvos/R$string;->apps:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sid/tvos/t;

    const/4 v4, 0x4

    invoke-direct {v2, v4, p1, p0}, Lcom/sid/tvos/t;-><init>(ILcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;)V

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->action(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    sget v0, Lcom/sid/tvos/R$string;->cat_system:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->header(Ljava/lang/String;)V

    sget v0, Lcom/sid/tvos/R$drawable;->ic_tune:I

    sget v1, Lcom/sid/tvos/R$string;->all_settings:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sid/tvos/t;

    const/4 v4, 0x5

    invoke-direct {v2, v4, p1, p0}, Lcom/sid/tvos/t;-><init>(ILcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;)V

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->action(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    sget v0, Lcom/sid/tvos/R$drawable;->ic_info:I

    sget v1, Lcom/sid/tvos/R$string;->about:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sid/tvos/t;

    const/4 v4, 0x6

    invoke-direct {v2, v4, p1, p0}, Lcom/sid/tvos/t;-><init>(ILcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;)V

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->action(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static/range {p0 .. p1}, Lcom/sid/tvos/FeatureBridge;->appendSettings(Landroid/app/Activity;Ljava/lang/Object;)V

    return-void
.end method

.method private buildWeatherRows(Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 6

    sget v0, Lcom/sid/tvos/R$drawable;->ic_mappin:I

    sget v1, Lcom/sid/tvos/R$string;->show_location:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "weather_city"

    invoke-virtual {p1, v0, v1, v2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->toggle(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sid/tvos/Weather;->manualPlace(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/sid/tvos/R$drawable;->ic_keyboard:I

    sget v2, Lcom/sid/tvos/R$string;->enter_city:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    sget v3, Lcom/sid/tvos/R$string;->location_automatic:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    new-instance v4, Lcom/sid/tvos/m;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v0, p1, v5}, Lcom/sid/tvos/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/sid/tvos/MainActivity$SettingsPanel;->action(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    if-eqz v0, :cond_1

    sget v0, Lcom/sid/tvos/R$drawable;->ic_location:I

    sget v1, Lcom/sid/tvos/R$string;->use_automatic_location:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sid/tvos/t;

    const/16 v3, 0x8

    invoke-direct {v2, v3, p1, p0}, Lcom/sid/tvos/t;-><init>(ILcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->action(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$track$227(Landroid/widget/PopupWindow;)V

    return-void
.end method

.method public static synthetic c0(Lcom/sid/tvos/MainActivity;Landroid/net/Uri;I[Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sid/tvos/MainActivity;->lambda$buildProfilePage$140(Landroid/net/Uri;I[Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic c1(Lcom/sid/tvos/MainActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildCwArtRows$147(I)V

    return-void
.end method

.method public static synthetic c2(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sid/tvos/MainActivity;->lambda$cwColourRows$129(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c3(Lcom/sid/tvos/MainActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$setUpStatusPill$79(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic c4(Lcom/sid/tvos/MainActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private captureRemapKey()V
    .locals 11

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/sid/tvos/MainActivity;->showCenteredPanel(Z[Landroid/widget/PopupWindow;)Landroid/widget/LinearLayout;

    move-result-object v4

    sget v6, Lcom/sid/tvos/R$drawable;->ic_remote:I

    sget v3, Lcom/sid/tvos/R$string;->remap_press:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v3, Lcom/sid/tvos/R$string;->remap_press_hint:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/sid/tvos/MainActivity;->addMenuRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setClickable(Z)V

    sget v4, Lcom/sid/tvos/R$id;->selected:I

    const-string v5, "own keys"

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v4, Lcom/sid/tvos/g;

    const/4 v5, 0x4

    invoke-direct {v4, p0, v1, v5}, Lcom/sid/tvos/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    sput-object v4, Lcom/sid/tvos/Remaps;->onCaptured:Lcom/sid/tvos/Remaps$CaptureListener;

    sput-boolean v0, Lcom/sid/tvos/Remaps;->capturing:Z

    aget-object v0, v1, v2

    new-instance v2, Lt/l;

    const/4 v4, 0x4

    invoke-direct {v2, p0, v4}, Lt/l;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    new-instance v0, Lt/K;

    invoke-direct {v0, p0, v1}, Lt/K;-><init>(Lcom/sid/tvos/MainActivity;[Landroid/widget/PopupWindow;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private ccFocusLift(Landroid/view/View;F)V
    .locals 1

    new-instance v0, Lt/a0;

    invoke-direct {v0, p0, p2}, Lt/a0;-><init>(Lcom/sid/tvos/MainActivity;F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private ccPill(Landroid/view/View;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/sid/tvos/R$id;->icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    sget p2, Lcom/sid/tvos/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p2, Lcom/sid/tvos/R$id;->status:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-nez p5, :cond_0

    const-string p3, ""

    goto :goto_0

    :cond_0
    move-object p3, p5

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p5, :cond_1

    const/16 p3, 0x8

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    new-instance p2, Lt/h;

    const/4 p3, 0x7

    invoke-direct {p2, p6, p3}, Lt/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x3f866666    # 1.05f

    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->ccFocusLift(Landroid/view/View;F)V

    return-void
.end method

.method private ccRound(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p1

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/sid/tvos/R$drawable;->cc_glass_round:I

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v6, Lcom/sid/tvos/R$drawable;->pill_text:I

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 2
    new-instance v9, Le/j;

    invoke-direct {v9, v7, v8}, Le/j;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 3
    sget-object v10, Le/k;->c:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    sget-object v0, Le/k;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v9}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    const/4 v11, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-lez v12, :cond_1

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le/i;

    if-eqz v12, :cond_1

    iget-object v13, v12, Le/i;->b:Landroid/content/res/Configuration;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v13

    if-eqz v13, :cond_0

    iget-object v0, v12, Le/i;->a:Landroid/content/res/ColorStateList;

    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v11

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    sget-object v0, Le/k;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/TypedValue;

    if-nez v10, :cond_3

    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 5
    :cond_3
    invoke-virtual {v7, v6, v10, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v0, v10, Landroid/util/TypedValue;->type:I

    const/16 v10, 0x1c

    if-lt v0, v10, :cond_4

    const/16 v10, 0x1f

    if-gt v0, v10, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    :try_start_1
    invoke-static {v7, v0, v8}, Le/c;->a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v10, v0

    const-string v0, "ResourcesCompat"

    const-string v12, "Failed to inflate ColorStateList, leaving it to the framework"

    invoke-static {v0, v12, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz v11, :cond_5

    .line 7
    invoke-static {v9, v6, v11}, Le/k;->a(Le/j;ILandroid/content/res/ColorStateList;)V

    move-object v0, v11

    goto :goto_2

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-lt v0, v9, :cond_6

    invoke-static {v7, v6, v8}, Le/h;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 8
    :goto_2
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, v1, Lcom/sid/tvos/MainActivity;->density:F

    const/high16 v7, 0x41b00000    # 22.0f

    mul-float v6, v6, v7

    float-to-int v6, v6

    const/16 v7, 0x11

    invoke-direct {v0, v6, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x42480000    # 50.0f

    iget v5, v1, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v5, v5, v0

    float-to-int v0, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_7

    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lt/B;

    const/4 v2, 0x2

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    invoke-direct {v0, p0, v4, v5, v2}, Lt/B;-><init>(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;Ljava/lang/Runnable;I)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x3f8f5c29    # 1.12f

    invoke-direct {p0, v3, v0}, Lcom/sid/tvos/MainActivity;->ccFocusLift(Landroid/view/View;F)V

    return-object v3

    .line 9
    :goto_3
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private centreRecent(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->recentsScroll:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lt/i;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lt/i;-><init>(Lcom/sid/tvos/MainActivity;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private chooseLauncherAction(I)V
    .locals 13

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/widget/PopupWindow;

    invoke-direct {p0, v0, v1}, Lcom/sid/tvos/MainActivity;->showCenteredPanel(Z[Landroid/widget/PopupWindow;)Landroid/widget/LinearLayout;

    move-result-object v10

    sget v5, Lcom/sid/tvos/R$drawable;->ic_remote:I

    sget v2, Lcom/sid/tvos/R$string;->remap_choose:I

    invoke-static {p1}, Lcom/sid/tvos/Remaps;->keyName(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v4, v11

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v10

    invoke-direct/range {v2 .. v9}, Lcom/sid/tvos/MainActivity;->addMenuRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/view/View;->setFocusable(Z)V

    const/4 v12, 0x0

    :goto_0
    sget-object v2, Lcom/sid/tvos/LauncherActions;->IDS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v12, v3, :cond_0

    aget-object v2, v2, v12

    aget-object v4, v1, v11

    sget-object v3, Lcom/sid/tvos/LauncherActions;->ICONS:[I

    aget v5, v3, v12

    invoke-static {p0, v2}, Lcom/sid/tvos/LauncherActions;->name(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lt/I;

    const/4 v3, 0x3

    invoke-direct {v9, p0, p1, v2, v3}, Lt/I;-><init>(Lcom/sid/tvos/MainActivity;ILjava/io/Serializable;I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, v10

    invoke-direct/range {v2 .. v9}, Lcom/sid/tvos/MainActivity;->addMenuRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/view/View;

    add-int/2addr v12, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private chooseRemapAction(I)V
    .locals 23

    move-object/from16 v8, p0

    move/from16 v9, p1

    const/4 v10, 0x1

    new-array v11, v10, [Landroid/widget/PopupWindow;

    invoke-direct {v8, v10, v11}, Lcom/sid/tvos/MainActivity;->showCenteredPanel(Z[Landroid/widget/PopupWindow;)Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Lcom/sid/tvos/Remaps;->keyName(I)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/sid/tvos/R$drawable;->ic_remote:I

    sget v1, Lcom/sid/tvos/R$string;->remap_choose:I

    new-array v2, v10, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v0, v2, v13

    invoke-virtual {v8, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct/range {v0 .. v7}, Lcom/sid/tvos/MainActivity;->addMenuRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/View;->setFocusable(Z)V

    const/4 v14, 0x0

    const/4 v15, 0x7

    new-array v7, v15, [[Ljava/lang/String;

    const-string v0, "recents"

    filled-new-array {v0, v14}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v13

    const-string v0, "home"

    filled-new-array {v0, v14}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v10

    const-string v0, "back"

    filled-new-array {v0, v14}, [Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x2

    aput-object v0, v7, v6

    const-string v0, "playpause"

    filled-new-array {v0, v14}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v7, v1

    const-string v0, "mute"

    filled-new-array {v0, v14}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v7, v1

    const-string v0, "settings"

    filled-new-array {v0, v14}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, v7, v1

    const-string v0, "none"

    filled-new-array {v0, v14}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, v7, v1

    sget v16, Lcom/sid/tvos/R$drawable;->ic_recents:I

    sget v17, Lcom/sid/tvos/R$drawable;->ic_apps:I

    sget v18, Lcom/sid/tvos/R$drawable;->ic_folder_out:I

    sget v19, Lcom/sid/tvos/R$drawable;->ic_power:I

    sget v20, Lcom/sid/tvos/R$drawable;->ic_sound:I

    sget v21, Lcom/sid/tvos/R$drawable;->ic_settings:I

    sget v22, Lcom/sid/tvos/R$drawable;->ic_delete:I

    filled-new-array/range {v16 .. v22}, [I

    move-result-object v16

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v15, :cond_0

    aget-object v0, v7, v5

    aget-object v0, v0, v13

    aget-object v2, v11, v13

    aget v3, v16, v5

    invoke-static {v8, v0}, Lcom/sid/tvos/Remaps;->actionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lt/I;

    invoke-direct {v1, v8, v9, v0, v10}, Lt/I;-><init>(Lcom/sid/tvos/MainActivity;ILjava/io/Serializable;I)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v19, v1

    move-object v1, v12

    move/from16 v20, v5

    move-object/from16 v5, v17

    const/4 v15, 0x2

    move/from16 v6, v18

    move-object/from16 v18, v7

    move-object/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Lcom/sid/tvos/MainActivity;->addMenuRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/view/View;

    add-int/lit8 v5, v20, 0x1

    move-object/from16 v7, v18

    const/4 v6, 0x2

    const/4 v15, 0x7

    goto :goto_0

    :cond_0
    const/4 v15, 0x2

    aget-object v2, v11, v13

    sget v3, Lcom/sid/tvos/R$drawable;->ic_palette:I

    sget v0, Lcom/sid/tvos/R$string;->remap_launcher_setting:I

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lt/w;

    invoke-direct {v7, v8, v9, v10}, Lt/w;-><init>(Lcom/sid/tvos/MainActivity;II)V

    const-string v5, "\u203a"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct/range {v0 .. v7}, Lcom/sid/tvos/MainActivity;->addMenuRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v7, v0, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lt/m;

    invoke-direct {v1, v7, v10}, Lt/m;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    aget-object v2, v11, v13

    sget v3, Lcom/sid/tvos/R$drawable;->ic_apps:I

    sget v1, Lcom/sid/tvos/R$string;->remap_open_app:I

    invoke-virtual {v6, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v4, v5, v13

    invoke-virtual {v8, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lt/I;

    invoke-direct {v5, v8, v9, v0, v15}, Lt/I;-><init>(Lcom/sid/tvos/MainActivity;ILjava/io/Serializable;I)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v19, v5

    move-object/from16 v5, v17

    move-object v10, v6

    move/from16 v6, v18

    move-object v13, v7

    move-object/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Lcom/sid/tvos/MainActivity;->addMenuRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/sid/tvos/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v10, v13}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v7, v13

    const/4 v10, 0x1

    const/4 v13, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method

.method private closeAllButton()Landroid/view/View;
    .locals 10

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const/high16 v2, 0x42a80000    # 84.0f

    iget v3, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v3, v3, v2

    float-to-int v2, v3

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const v1, 0x33ffffff

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/sid/tvos/MainActivity;->density:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    const v5, 0x59ffffff

    invoke-virtual {v4, v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/sid/tvos/R$drawable;->ic_delete:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v5, -0x1

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, p0, Lcom/sid/tvos/MainActivity;->density:F

    const/high16 v8, 0x42000000    # 32.0f

    mul-float v9, v7, v8

    float-to-int v9, v9

    mul-float v7, v7, v8

    float-to-int v7, v7

    const/16 v8, 0x11

    invoke-direct {v6, v9, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/sid/tvos/R$string;->clear_all:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    sget v3, Lcom/sid/tvos/R$font;->inter_semibold:I

    invoke-static {p0, v3}, Le/k;->b(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x41400000    # 12.0f

    iget v7, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v7, v7, v6

    float-to-int v6, v7

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x42180000    # 38.0f

    iget v5, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v5, v5, v3

    float-to-int v3, v5

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->recentCardPx()[I

    move-result-object v3

    const/4 v5, 0x0

    aget v3, v3, v5

    int-to-float v3, v3

    const v5, 0x3ee66666    # 0.45f

    mul-float v3, v3, v5

    float-to-int v3, v3

    const/high16 v5, 0x42200000    # 40.0f

    iget v6, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v6, v6, v5

    float-to-int v5, v6

    add-int/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x3f333333    # 0.7f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    new-instance v2, Lt/Y;

    invoke-direct {v2, p0, v4, v1}, Lt/Y;-><init>(Lcom/sid/tvos/MainActivity;Landroid/graphics/drawable/GradientDrawable;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v1, Lt/Z;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v1, Lt/h;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lt/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private closeFolder()V
    .locals 5

    const/4 v0, 0x0

    sput-object v0, Lcom/sid/tvos/MainActivity;->openFolderName:Ljava/lang/String;

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->folderOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Lt/P;

    const/16 v4, 0xb

    invoke-direct {v3, p0, v4}, Lt/P;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->folderPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v3, 0x3f6b851f    # 0.92f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->setHomeFocusable(Z)V

    sget v0, Lcom/sid/tvos/MainActivity;->lastFocused:I

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->focusTile(I)V

    return-void
.end method

.method private closeRecentApp(Landroid/view/View;Z)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->recentsRow:Landroid/widget/LinearLayout;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/sid/tvos/AppAdapter$Entry;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sid/tvos/AppAdapter$Entry;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->recentsRow:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const v3, 0x3f19999a    # 0.6f

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x140

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const v3, 0x3fb33333    # 1.4f

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v8, Lt/j;

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v7}, Lt/j;-><init>(Lcom/sid/tvos/MainActivity;Ljava/lang/Object;ZII)V

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, v0, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sid/tvos/Recents;->dismiss(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    const-string p1, "activity"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-eqz p1, :cond_1

    iget-object p2, v0, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance p2, Lt/c;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    const-wide/16 v0, 0x384

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private closeRecents()V
    .locals 3

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->recentsOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lt/P;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lt/P;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->setHomeFocusable(Z)V

    sget v0, Lcom/sid/tvos/MainActivity;->lastFocused:I

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->focusTile(I)V

    return-void
.end method

.method private closeRecentsNow()V
    .locals 2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->recentsOverlay:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->topBar:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->setHomeFocusable(Z)V

    return-void
.end method

.method private cwBackdrop(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->backdrop(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->cwBlur(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->cwBlurLevel(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sid/tvos/Blur;->soften(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    move-object v0, v1

    :cond_1
    if-ne v0, p1, :cond_2

    invoke-static {}, Lcom/sid/tvos/Gpu;->enabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lk/s;->b()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/sid/tvos/Gpu;->upload(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_3
    :goto_0
    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, p1

    :goto_1
    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->cwArt:Ljava/util/Set;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->cwArt:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private cwBackdropNow(I)Landroid/graphics/Bitmap;
    .locals 2

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->cwItemsFor(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/sid/tvos/MainActivity;->cwPosition:I

    if-ne p1, v1, :cond_1

    iget p1, p0, Lcom/sid/tvos/MainActivity;->cwSelected:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->cwBackdrops:Landroid/util/LruCache;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sid/tvos/WatchNext$Item;

    iget-object p1, p1, Lcom/sid/tvos/WatchNext$Item;->art:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private cwBgChoice(Lcom/sid/tvos/MainActivity$SettingsPanel;II[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/sid/tvos/q;

    const/4 p3, 0x2

    invoke-direct {v5, p3, p0, p5}, Lcom/sid/tvos/q;-><init>(ILcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v0, p1

    move v1, p2

    move-object v3, p4

    move v4, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sid/tvos/MainActivity$SettingsPanel;->choices(ILjava/lang/String;[Ljava/lang/String;ILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;)V

    return-void
.end method

.method private cwCardPx()[I
    .locals 8

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    iget v1, p0, Lcom/sid/tvos/MainActivity;->density:F

    const/high16 v2, 0x41c00000    # 24.0f

    mul-float v2, v2, v1

    int-to-float v0, v0

    const/high16 v3, 0x42dc0000    # 110.0f

    mul-float v3, v3, v1

    sub-float/2addr v0, v3

    const v3, 0x3f0ccccd    # 0.55f

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    const v2, 0x3fc66666    # 1.55f

    div-float/2addr v0, v2

    const/high16 v2, 0x41100000    # 9.0f

    mul-float v0, v0, v2

    const/high16 v3, 0x41800000    # 16.0f

    div-float/2addr v0, v3

    iget v4, p0, Lcom/sid/tvos/MainActivity;->dockTopPx:I

    if-lez v4, :cond_1

    int-to-float v4, v4

    const/high16 v5, 0x42a00000    # 80.0f

    mul-float v5, v5, v1

    sub-float/2addr v4, v5

    const/high16 v5, 0x42480000    # 50.0f

    mul-float v5, v5, v1

    sub-float/2addr v4, v5

    const v5, 0x3f866666    # 1.05f

    div-float/2addr v4, v5

    const/high16 v5, 0x42700000    # 60.0f

    mul-float v1, v1, v5

    cmpl-float v1, v4, v1

    if-lez v1, :cond_1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_1
    const-string v1, "cw_size"

    invoke-static {p0, v1}, Lcom/sid/tvos/Appearance;->step(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x2

    int-to-double v4, v1

    const-wide v6, 0x3ff2147ae147ae14L    # 1.13

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v1, v4

    div-float/2addr v0, v1

    mul-float v3, v3, v0

    div-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    filled-new-array {v1, v0}, [I

    move-result-object v0

    return-object v0
.end method

.method private cwColourRows(Lcom/sid/tvos/MainActivity$SettingsPanel;II)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    sget v5, Lcom/sid/tvos/R$array;->cw_colours:I

    .line 12
    .line 13
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    array-length v5, v4

    .line 18
    const/4 v6, 0x1

    .line 19
    add-int/2addr v5, v6

    .line 20
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    move-object v10, v5

    .line 25
    check-cast v10, [Ljava/lang/String;

    .line 26
    .line 27
    array-length v4, v4

    .line 28
    sget v5, Lcom/sid/tvos/R$string;->cw_custom:I

    .line 29
    .line 30
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    aput-object v5, v10, v4

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/sid/tvos/CwBackground;->choice(Landroid/content/Context;I)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    sget v8, Lcom/sid/tvos/R$drawable;->ic_palette:I

    .line 41
    .line 42
    move/from16 v5, p3

    .line 43
    .line 44
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    new-instance v12, Lcom/sid/tvos/B;

    .line 49
    .line 50
    invoke-direct {v12, v0, v1}, Lcom/sid/tvos/B;-><init>(Lcom/sid/tvos/MainActivity;I)V

    .line 51
    .line 52
    .line 53
    const/4 v13, 0x0

    .line 54
    move-object/from16 v7, p1

    .line 55
    .line 56
    move v11, v4

    .line 57
    invoke-virtual/range {v7 .. v13}, Lcom/sid/tvos/MainActivity$SettingsPanel;->choices(ILjava/lang/String;[Ljava/lang/String;ILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;)V

    .line 58
    .line 59
    .line 60
    sget v5, Lcom/sid/tvos/CwBackground;->CUSTOM:I

    .line 61
    .line 62
    if-eq v4, v5, :cond_0

    .line 63
    .line 64
    return-void

    .line 65
    :cond_0
    invoke-static {v0, v1}, Lcom/sid/tvos/CwBackground;->custom(Landroid/content/Context;I)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    sget v5, Lf/a;->a:I

    .line 70
    .line 71
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    int-to-float v5, v5

    .line 84
    const/high16 v8, 0x437f0000    # 255.0f

    .line 85
    .line 86
    div-float/2addr v5, v8

    .line 87
    int-to-float v7, v7

    .line 88
    div-float/2addr v7, v8

    .line 89
    int-to-float v4, v4

    .line 90
    div-float/2addr v4, v8

    .line 91
    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    sub-float v10, v8, v9

    .line 108
    .line 109
    add-float v11, v8, v9

    .line 110
    .line 111
    const/high16 v12, 0x40000000    # 2.0f

    .line 112
    .line 113
    div-float/2addr v11, v12

    .line 114
    const/4 v13, 0x0

    .line 115
    const/high16 v14, 0x3f800000    # 1.0f

    .line 116
    .line 117
    cmpl-float v9, v8, v9

    .line 118
    .line 119
    if-nez v9, :cond_1

    .line 120
    .line 121
    const/4 v7, 0x0

    .line 122
    const/4 v10, 0x0

    .line 123
    goto :goto_1

    .line 124
    :cond_1
    cmpl-float v9, v8, v5

    .line 125
    .line 126
    if-nez v9, :cond_2

    .line 127
    .line 128
    sub-float/2addr v7, v4

    .line 129
    div-float/2addr v7, v10

    .line 130
    const/high16 v4, 0x40c00000    # 6.0f

    .line 131
    .line 132
    rem-float/2addr v7, v4

    .line 133
    goto :goto_0

    .line 134
    :cond_2
    cmpl-float v8, v8, v7

    .line 135
    .line 136
    if-nez v8, :cond_3

    .line 137
    .line 138
    sub-float/2addr v4, v5

    .line 139
    div-float/2addr v4, v10

    .line 140
    add-float v7, v4, v12

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_3
    sub-float/2addr v5, v7

    .line 144
    div-float/2addr v5, v10

    .line 145
    const/high16 v4, 0x40800000    # 4.0f

    .line 146
    .line 147
    add-float v7, v5, v4

    .line 148
    .line 149
    :goto_0
    mul-float v12, v12, v11

    .line 150
    .line 151
    sub-float/2addr v12, v14

    .line 152
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    sub-float v4, v14, v4

    .line 157
    .line 158
    div-float/2addr v10, v4

    .line 159
    :goto_1
    const/high16 v4, 0x42700000    # 60.0f

    .line 160
    .line 161
    mul-float v7, v7, v4

    .line 162
    .line 163
    const/high16 v4, 0x43b40000    # 360.0f

    .line 164
    .line 165
    rem-float/2addr v7, v4

    .line 166
    cmpg-float v5, v7, v13

    .line 167
    .line 168
    if-gez v5, :cond_4

    .line 169
    .line 170
    add-float/2addr v7, v4

    .line 171
    :cond_4
    cmpg-float v5, v7, v13

    .line 172
    .line 173
    if-gez v5, :cond_5

    .line 174
    .line 175
    const/4 v4, 0x0

    .line 176
    goto :goto_2

    .line 177
    :cond_5
    cmpl-float v5, v7, v4

    .line 178
    .line 179
    if-lez v5, :cond_6

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_6
    move v4, v7

    .line 183
    :goto_2
    cmpg-float v5, v10, v13

    .line 184
    .line 185
    if-gez v5, :cond_7

    .line 186
    .line 187
    const/4 v10, 0x0

    .line 188
    goto :goto_3

    .line 189
    :cond_7
    cmpl-float v5, v10, v14

    .line 190
    .line 191
    if-lez v5, :cond_8

    .line 192
    .line 193
    const/high16 v10, 0x3f800000    # 1.0f

    .line 194
    .line 195
    :cond_8
    :goto_3
    cmpg-float v5, v11, v13

    .line 196
    .line 197
    if-gez v5, :cond_9

    .line 198
    .line 199
    const/4 v11, 0x0

    .line 200
    goto :goto_4

    .line 201
    :cond_9
    cmpl-float v5, v11, v14

    .line 202
    .line 203
    if-lez v5, :cond_a

    .line 204
    .line 205
    const/high16 v11, 0x3f800000    # 1.0f

    .line 206
    .line 207
    :cond_a
    :goto_4
    const/4 v5, 0x3

    .line 208
    new-array v5, v5, [F

    .line 209
    .line 210
    aput v4, v5, v3

    .line 211
    .line 212
    aput v10, v5, v6

    .line 213
    .line 214
    aput v11, v5, v2

    .line 215
    .line 216
    new-instance v4, Lt/I;

    .line 217
    .line 218
    const/4 v7, 0x4

    .line 219
    invoke-direct {v4, v0, v1, v5, v7}, Lt/I;-><init>(Lcom/sid/tvos/MainActivity;ILjava/io/Serializable;I)V

    .line 220
    .line 221
    .line 222
    sget v9, Lcom/sid/tvos/R$drawable;->ic_palette:I

    .line 223
    .line 224
    sget v1, Lcom/sid/tvos/R$string;->cw_hue:I

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v10

    .line 230
    aget v1, v5, v3

    .line 231
    .line 232
    const/high16 v7, 0x40a00000    # 5.0f

    .line 233
    .line 234
    div-float/2addr v1, v7

    .line 235
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 236
    .line 237
    .line 238
    move-result v11

    .line 239
    new-instance v13, Lcom/sid/tvos/D;

    .line 240
    .line 241
    invoke-direct {v13, v5, v4, v3}, Lcom/sid/tvos/D;-><init>([FLt/I;I)V

    .line 242
    .line 243
    .line 244
    new-instance v15, Lcom/sid/tvos/E;

    .line 245
    .line 246
    invoke-direct {v15, v3}, Lcom/sid/tvos/E;-><init>(I)V

    .line 247
    .line 248
    .line 249
    new-instance v1, Lcom/sid/tvos/C;

    .line 250
    .line 251
    invoke-direct {v1, v6, v5}, Lcom/sid/tvos/C;-><init>(I[F)V

    .line 252
    .line 253
    .line 254
    const/16 v12, 0x48

    .line 255
    .line 256
    const/4 v14, 0x0

    .line 257
    move-object/from16 v8, p1

    .line 258
    .line 259
    move-object/from16 v16, v1

    .line 260
    .line 261
    invoke-virtual/range {v8 .. v16}, Lcom/sid/tvos/MainActivity$SettingsPanel;->slider(ILjava/lang/String;IILcom/sid/tvos/MainActivity$IntChoice;Ljava/lang/Runnable;Lcom/sid/tvos/MainActivity$IntLabel;Lcom/sid/tvos/MainActivity$TrackColours;)V

    .line 262
    .line 263
    .line 264
    sget v17, Lcom/sid/tvos/R$drawable;->ic_palette:I

    .line 265
    .line 266
    sget v1, Lcom/sid/tvos/R$string;->cw_saturation:I

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v18

    .line 272
    aget v1, v5, v6

    .line 273
    .line 274
    const/high16 v7, 0x41a00000    # 20.0f

    .line 275
    .line 276
    mul-float v1, v1, v7

    .line 277
    .line 278
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 279
    .line 280
    .line 281
    move-result v19

    .line 282
    new-instance v1, Lcom/sid/tvos/D;

    .line 283
    .line 284
    invoke-direct {v1, v5, v4, v6}, Lcom/sid/tvos/D;-><init>([FLt/I;I)V

    .line 285
    .line 286
    .line 287
    new-instance v8, Lcom/sid/tvos/E;

    .line 288
    .line 289
    invoke-direct {v8, v6}, Lcom/sid/tvos/E;-><init>(I)V

    .line 290
    .line 291
    .line 292
    new-instance v6, Lcom/sid/tvos/C;

    .line 293
    .line 294
    invoke-direct {v6, v2, v5}, Lcom/sid/tvos/C;-><init>(I[F)V

    .line 295
    .line 296
    .line 297
    const/16 v20, 0x14

    .line 298
    .line 299
    const/16 v22, 0x0

    .line 300
    .line 301
    move-object/from16 v16, p1

    .line 302
    .line 303
    move-object/from16 v21, v1

    .line 304
    .line 305
    move-object/from16 v23, v8

    .line 306
    .line 307
    move-object/from16 v24, v6

    .line 308
    .line 309
    invoke-virtual/range {v16 .. v24}, Lcom/sid/tvos/MainActivity$SettingsPanel;->slider(ILjava/lang/String;IILcom/sid/tvos/MainActivity$IntChoice;Ljava/lang/Runnable;Lcom/sid/tvos/MainActivity$IntLabel;Lcom/sid/tvos/MainActivity$TrackColours;)V

    .line 310
    .line 311
    .line 312
    sget v24, Lcom/sid/tvos/R$drawable;->ic_palette:I

    .line 313
    .line 314
    sget v1, Lcom/sid/tvos/R$string;->cw_lightness:I

    .line 315
    .line 316
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v25

    .line 320
    aget v1, v5, v2

    .line 321
    .line 322
    mul-float v1, v1, v7

    .line 323
    .line 324
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 325
    .line 326
    .line 327
    move-result v26

    .line 328
    new-instance v1, Lcom/sid/tvos/D;

    .line 329
    .line 330
    invoke-direct {v1, v5, v4, v2}, Lcom/sid/tvos/D;-><init>([FLt/I;I)V

    .line 331
    .line 332
    .line 333
    new-instance v4, Lcom/sid/tvos/E;

    .line 334
    .line 335
    invoke-direct {v4, v2}, Lcom/sid/tvos/E;-><init>(I)V

    .line 336
    .line 337
    .line 338
    new-instance v2, Lcom/sid/tvos/C;

    .line 339
    .line 340
    invoke-direct {v2, v3, v5}, Lcom/sid/tvos/C;-><init>(I[F)V

    .line 341
    .line 342
    .line 343
    const/16 v27, 0x14

    .line 344
    .line 345
    const/16 v29, 0x0

    .line 346
    .line 347
    move-object/from16 v23, p1

    .line 348
    .line 349
    move-object/from16 v28, v1

    .line 350
    .line 351
    move-object/from16 v30, v4

    .line 352
    .line 353
    move-object/from16 v31, v2

    .line 354
    .line 355
    invoke-virtual/range {v23 .. v31}, Lcom/sid/tvos/MainActivity$SettingsPanel;->slider(ILjava/lang/String;IILcom/sid/tvos/MainActivity$IntChoice;Ljava/lang/Runnable;Lcom/sid/tvos/MainActivity$IntLabel;Lcom/sid/tvos/MainActivity$TrackColours;)V

    .line 356
    .line 357
    .line 358
    return-void
.end method

.method private cwItemsFor(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sid/tvos/WatchNext$Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {v0, p1}, Lcom/sid/tvos/AppAdapter;->entryAt(I)Lcom/sid/tvos/AppAdapter$Entry;

    move-result-object p1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwData:Ljava/util/Map;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sid/tvos/AppAdapter$Entry;->isFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwData:Ljava/util/Map;

    iget-object p1, p1, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private cwTopDp()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public static synthetic d(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$onResume$4()V

    return-void
.end method

.method public static synthetic d0(Lcom/sid/tvos/MainActivity;Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$frostShelf$41(Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic d1(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$closeAllButton$216(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d2(Lcom/sid/tvos/MainActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$closeRecentApp$221(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d3(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildCwArtRows$151(Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void
.end method

.method public static bridge synthetic d4(Lcom/sid/tvos/MainActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private static darkTile(Landroid/graphics/Canvas;I)V
    .locals 13

    int-to-float p1, p1

    const v0, 0x3e6b851f    # 0.23f

    mul-float v8, p1, v0

    new-instance v9, Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-direct {v9, v0, v0, p1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v10, Landroid/graphics/Paint;

    const/4 v0, 0x5

    invoke-direct {v10, v0}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v11, Landroid/graphics/LinearGradient;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v5, -0xc5c5c4

    const v6, -0xededec

    move-object v0, v11

    move v4, p1

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-static {v0, v9, v8}, Lcom/sid/tvos/Corners;->squircle(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p0, v0, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v11, Landroid/graphics/LinearGradient;

    const v5, 0x40ffffff    # 7.9999995f

    const v6, 0xaffffff

    move-object v0, v11

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x42200000    # 40.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v10, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v10}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    invoke-virtual {v10}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float/2addr v1, v0

    invoke-virtual {v9, p1, v1}, Landroid/graphics/RectF;->inset(FF)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    invoke-static {p1, v9, v8}, Lcom/sid/tvos/Corners;->squircle(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {p0, p1, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private downFromStatusBar()V
    .locals 4

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sid/tvos/MainActivity;->cwPosition:I

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/sid/tvos/MainActivity;->shelfShown:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/sid/tvos/MainActivity;->setCwFocusable(Z)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/sid/tvos/MainActivity;->cwSelected:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_0
    sget v0, Lcom/sid/tvos/MainActivity;->lastFocused:I

    sget v2, Lcom/sid/tvos/MainActivity;->COLUMNS:I

    rem-int/2addr v0, v2

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {v2}, Lcom/sid/tvos/AppAdapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->focusTile(I)V

    return-void
.end method

.method public static synthetic e(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Lcom/sid/tvos/MainActivity;->lambda$setUpStatusPill$78(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic e0(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildSettingsPage$90(Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void
.end method

.method public static synthetic e1(Lcom/sid/tvos/MainActivity;IILandroid/graphics/Bitmap;Lcom/sid/tvos/WatchNext$Item;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sid/tvos/MainActivity;->lambda$selectCw$59(IILandroid/graphics/Bitmap;Lcom/sid/tvos/WatchNext$Item;)V

    return-void
.end method

.method public static synthetic e2([FLt/I;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$cwColourRows$128([FLjava/lang/Runnable;I)V

    return-void
.end method

.method public static synthetic e3(Lcom/sid/tvos/MainActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildDefaultLauncherPage$100(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic e4(Lcom/sid/tvos/MainActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sid/tvos/MainActivity;->movingKey:Ljava/lang/String;

    return-object p0
.end method

.method private endBlurPreview()V
    .locals 0

    return-void
.end method

.method private enterFullScreen()V
    .locals 10

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/sid/tvos/MainActivity;->fullScreen:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/sid/tvos/MainActivity;->shelfShown:Z

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    iput-boolean v2, p0, Lcom/sid/tvos/MainActivity;->fullScreen:Z

    iget-object v3, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/sid/tvos/MainActivity;->cwInfo:Landroid/view/View;

    iget-object v5, p0, Lcom/sid/tvos/MainActivity;->cwScroll:Landroid/widget/HorizontalScrollView;

    iget-object v6, p0, Lcom/sid/tvos/MainActivity;->topBar:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/sid/tvos/MainActivity;->glass:Lcom/sid/tvos/GlassView;

    sget v8, Lcom/sid/tvos/R$id;->fullHint:I

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-array v9, v0, [Landroid/view/View;

    aput-object v3, v9, v1

    aput-object v4, v9, v2

    const/4 v3, 0x2

    aput-object v5, v9, v3

    const/4 v3, 0x3

    aput-object v6, v9, v3

    const/4 v3, 0x4

    aput-object v7, v9, v3

    const/4 v3, 0x5

    aput-object v8, v9, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, v9, v3

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x17c

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v5, Lcom/sid/tvos/MainActivity;->CALM:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/2addr v3, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x42700000    # 60.0f

    iget v3, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1a4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v4, Lcom/sid/tvos/MainActivity;->CALM:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->shelfScrim:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v4, 0x3eb33333    # 0.35f

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sid/tvos/MainActivity;->fullFrosted:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->cwArt(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->frostedSet:Ljava/util/Set;

    iget-object v4, p0, Lcom/sid/tvos/MainActivity;->shelfBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->frostSource:Ljava/util/Map;

    iget-object v4, p0, Lcom/sid/tvos/MainActivity;->shelfBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/sid/tvos/MainActivity;->shelfBitmap:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/sid/tvos/MainActivity;->fullFrosted:Landroid/graphics/Bitmap;

    iput-wide v2, p0, Lcom/sid/tvos/MainActivity;->stepFadeMs:J

    invoke-direct {p0, v0, v1}, Lcom/sid/tvos/MainActivity;->setShelf(Landroid/graphics/Bitmap;I)V

    :cond_2
    sget v0, Lcom/sid/tvos/R$id;->fullCatcher:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lt/e;

    invoke-direct {v2, p0, v1}, Lt/e;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_3
    :goto_1
    return-void
.end method

.method private exitFullScreen(Z)V
    .locals 8

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/sid/tvos/MainActivity;->fullScreen:Z

    if-nez v3, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/sid/tvos/MainActivity;->fullScreen:Z

    iget-object v3, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/sid/tvos/MainActivity;->cwInfo:Landroid/view/View;

    iget-object v5, p0, Lcom/sid/tvos/MainActivity;->cwScroll:Landroid/widget/HorizontalScrollView;

    iget-object v6, p0, Lcom/sid/tvos/MainActivity;->topBar:Landroid/view/ViewGroup;

    new-array v7, v0, [Landroid/view/View;

    aput-object v3, v7, v1

    aput-object v4, v7, v2

    const/4 v3, 0x2

    aput-object v5, v7, v3

    const/4 v3, 0x3

    aput-object v6, v7, v3

    const/4 v3, 0x0

    :goto_0
    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v3, v0, :cond_1

    aget-object v5, v7, v3

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x17c

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v5, Lcom/sid/tvos/MainActivity;->CALM:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/2addr v3, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v5, 0x1a4

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lcom/sid/tvos/MainActivity;->CALM:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->shelfScrim:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->fullFrosted:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->frostSource:Ljava/util/Map;

    iget-object v3, p0, Lcom/sid/tvos/MainActivity;->fullFrosted:Landroid/graphics/Bitmap;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lcom/sid/tvos/MainActivity;->shelfBitmap:Landroid/graphics/Bitmap;

    if-ne v0, v3, :cond_2

    iput-wide v5, p0, Lcom/sid/tvos/MainActivity;->stepFadeMs:J

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->fullFrosted:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1}, Lcom/sid/tvos/MainActivity;->setShelf(Landroid/graphics/Bitmap;I)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sid/tvos/MainActivity;->fullFrosted:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/sid/tvos/MainActivity;->fullFromCard:I

    const/4 v3, -0x1

    iput v3, p0, Lcom/sid/tvos/MainActivity;->fullFromCard:I

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->focusStatusBar()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    if-ltz v0, :cond_4

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v0, p1, :cond_4

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0, v2}, Lcom/sid/tvos/MainActivity;->setCwFocusable(Z)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_4
    sget p1, Lcom/sid/tvos/MainActivity;->lastFocused:I

    sget v0, Lcom/sid/tvos/MainActivity;->COLUMNS:I

    rem-int/2addr p1, v0

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {v0}, Lcom/sid/tvos/AppAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->focusTile(I)V

    return-void
.end method

.method public static synthetic f(Lcom/sid/tvos/MainActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$scrollCwTo$45(I)V

    return-void
.end method

.method public static synthetic f0(Lcom/sid/tvos/MainActivity;ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sid/tvos/MainActivity;->lambda$layoutChoice$118(ILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic f1(ILcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p2, p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildProfilePage$135(ILcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void
.end method

.method public static synthetic f2(Lcom/sid/tvos/MainActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$closeAllButton$217(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f3(Lcom/sid/tvos/MainActivity;ZLcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$buildProfilePage$136(ZLcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void
.end method

.method public static bridge synthetic f4(Lcom/sid/tvos/MainActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sid/tvos/MainActivity;->recentsOverlay:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private fadeOutThen(Landroid/widget/PopupWindow;Ljava/lang/Runnable;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f7851ec    # 0.97f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lt/o;

    const/4 v2, 0x2

    invoke-direct {v1, p1, p2, v2}, Lt/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method private finishMove()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sid/tvos/MainActivity;->movingKey:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->stopWiggle()V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->moveHint:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private static focusFirst(Landroid/widget/LinearLayout;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private focusStatusBar()Z
    .locals 3

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->shownStatusButtons()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    const/4 v0, 0x1

    return v0
.end method

.method private focusTile(I)V
    .locals 0
    invoke-static {p0, p1}, Lcom/sid/tvos/FeatureBridge;->focusTile(Landroid/app/Activity;I)V
    return-void
.end method

.method private frostMs()J
    .locals 2

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->isLowRam()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x28a

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3b6

    :goto_0
    return-wide v0
.end method

.method private frostShelf()V
    .locals 5

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->shelfBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->frostedSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->frostSteps:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/sid/tvos/MainActivity;->playFrostSteps(Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/sid/tvos/Appearance;->blur(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Lcom/sid/tvos/MainActivity;->FROST:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lt/F;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v0, v1, v4}, Lt/F;-><init>(Lcom/sid/tvos/MainActivity;Landroid/graphics/Bitmap;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic g(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$onTileLongPress$20(Lcom/sid/tvos/AppAdapter$Entry;)V

    return-void
.end method

.method public static synthetic g0(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/WatchNext$Item;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$makeCwCard$51(Lcom/sid/tvos/WatchNext$Item;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g1(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->showProfileMenu()V

    return-void
.end method

.method public static synthetic g2(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->buildDefaultLauncherPage(Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void
.end method

.method public static synthetic g3(ILcom/sid/tvos/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p1, p0, p2}, Lcom/sid/tvos/MainActivity;->lambda$chooseRemapAction$170(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic g4(Lcom/sid/tvos/MainActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private static gb(J)Ljava/lang/String;
    .locals 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    long-to-double p0, p0

    const-wide/high16 v1, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    const-string p0, "%.1f GB"

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private glassBackdrop(F)Landroid/graphics/Bitmap;
    .locals 4

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->liquid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/sid/tvos/MainActivity;->blurDiv(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sid/tvos/MainActivity;->blurPx(I)I

    move-result v2

    const v3, 0x3e3851ec    # 0.18f

    add-float/2addr p1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :goto_0
    invoke-static {v0, v1, v2, p1}, Lcom/sid/tvos/Blur;->snapshot(Landroid/view/View;IIF)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/sid/tvos/MainActivity;->blurDiv(I)I

    move-result v1

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/sid/tvos/MainActivity;->blurPx(I)I

    move-result v2

    goto :goto_0

    :goto_1
    return-object p1
.end method

.method private glideGlass(Landroid/view/View;FF)V
    .locals 10

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sid/tvos/MainActivity;->glassGlide:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lcom/sid/tvos/MainActivity;->glideMs:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->glassGlide:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->glideCurve:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->glass:Lcom/sid/tvos/GlassView;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-direct {p0, p1, v3, p2}, Lcom/sid/tvos/MainActivity;->tileX(Landroid/view/View;Landroid/graphics/Rect;F)F

    move-result v1

    sub-float v6, v0, v1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->glass:Lcom/sid/tvos/GlassView;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-direct {p0, p1, v3, p3}, Lcom/sid/tvos/MainActivity;->tileY(Landroid/view/View;Landroid/graphics/Rect;F)F

    move-result v1

    sub-float v7, v0, v1

    iget-object v8, p0, Lcom/sid/tvos/MainActivity;->glassGlide:Landroid/animation/ValueAnimator;

    new-instance v9, Lt/Q;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lt/Q;-><init>(Lcom/sid/tvos/MainActivity;Landroid/view/View;Landroid/graphics/Rect;FFFF)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->glassGlide:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic h(Landroid/graphics/Bitmap;Lcom/sid/tvos/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p1, p2, p0}, Lcom/sid/tvos/MainActivity;->lambda$new$53(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic h0(ILcom/sid/tvos/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p1, p0, p2}, Lcom/sid/tvos/MainActivity;->lambda$chooseRemapAction$174(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic h1(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$showControlCenter$187()V

    return-void
.end method

.method public static synthetic h2(Landroid/view/View;Landroid/view/View;Lcom/sid/tvos/WatchNext$Item;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$makeCwCard$47(Landroid/view/View;Landroid/view/View;Lcom/sid/tvos/WatchNext$Item;)V

    return-void
.end method

.method public static synthetic h3(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$onTileLongPress$18(Lcom/sid/tvos/AppAdapter$Entry;)V

    return-void
.end method

.method public static bridge synthetic h4(Lcom/sid/tvos/MainActivity;)Lcom/sid/tvos/MainActivity$SettingsPanel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sid/tvos/MainActivity;->settingsPanel:Lcom/sid/tvos/MainActivity$SettingsPanel;

    return-object p0
.end method

.method private hasAirPlay()Z
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.tcl.airplay2"

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->isInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.mediatek.AirplayAPK"

    const-string v4, "com.mediatek.activity.TVActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "airplay"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "airscreen"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "airreceiver"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_3
    return v2

    :cond_4
    return v3
.end method

.method private hideCw()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sid/tvos/MainActivity;->cwPosition:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->setCwFocusable(Z)V

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->showCwViews(Z)V

    return-void
.end method

.method private hideGlass()V
    .locals 3

    iget-boolean v0, p0, Lcom/sid/tvos/MainActivity;->glassShown:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sid/tvos/MainActivity;->glassShown:Z

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->glass:Lcom/sid/tvos/GlassView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private hideShelf()V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->showFullHint(Z)V

    iget-boolean v1, p0, Lcom/sid/tvos/MainActivity;->shelfShown:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->shelfGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {v1}, Lcom/sid/tvos/AppAdapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->shelfBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {v1, v0}, Lcom/sid/tvos/AppAdapter;->shelfAt(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/sid/tvos/MainActivity;->setShelf(Landroid/graphics/Bitmap;I)V

    :cond_0
    iput v0, p0, Lcom/sid/tvos/MainActivity;->shelfPosition:I

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->shelfScrim:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->shelfGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->shelfGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x17c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->frostShelf()V

    :cond_1
    return-void

    :cond_2
    iput-boolean v0, p0, Lcom/sid/tvos/MainActivity;->shelfShown:Z

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->hideCw()V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->frostLater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->shelfBack:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->frostLater:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->isLowRam()Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x118

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0xaa

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic i(Lcom/sid/tvos/MainActivity;ILjava/util/List;ZLjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sid/tvos/MainActivity;->lambda$applyDark$161(ILjava/util/List;ZLjava/util/List;)V

    return-void
.end method

.method public static synthetic i0(Lcom/sid/tvos/MainActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildAppearancePage$114(I)V

    return-void
.end method

.method public static synthetic i1(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sid/tvos/MainActivity;->lambda$addMenuRow$83(Landroid/widget/PopupWindow;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i2(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$new$40()V

    return-void
.end method

.method public static synthetic i3(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$showRemapMenu$165()V

    return-void
.end method

.method public static bridge synthetic i4(Lcom/sid/tvos/MainActivity;)Lp/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sid/tvos/MainActivity;->springY:Lp/f;

    return-object p0
.end method

.method private static isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    :try_start_0
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "isConnected"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private isCwApp(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {v0, p1}, Lcom/sid/tvos/AppAdapter;->entryAt(I)Lcom/sid/tvos/AppAdapter$Entry;

    move-result-object v0

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->cwOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/sid/tvos/MainActivity;->COLUMNS:I

    if-ge p1, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sid/tvos/AppAdapter$Entry;->isFolder()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isCwArt(Landroid/graphics/Bitmap;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->cwArt:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->cwArt:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->cwArt:Ljava/util/Set;

    iget-object v3, p0, Lcom/sid/tvos/MainActivity;->frostSource:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :cond_2
    monitor-exit v1

    return v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static isEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method private static isInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method private isLowRam()Z
    .locals 1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->lowRam:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sid/tvos/MainActivity;->lowRam:Ljava/lang/Boolean;

    :cond_1
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->lowRam:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static synthetic j(Lcom/sid/tvos/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$reloadKeepingFocus$30(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic j0(Lcom/sid/tvos/MainActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sid/tvos/MainActivity;->lambda$enterFullScreen$204(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j1(Lcom/sid/tvos/MainActivity;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$onActivityResult$133(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic j2(Lcom/sid/tvos/MainActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$setUpTopBar$71(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j3(Lcom/sid/tvos/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$onNewIntent$228(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic j4(Lcom/sid/tvos/MainActivity;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sid/tvos/MainActivity;->folderGlassShown:Z

    return-void
.end method

.method public static synthetic k(Lcom/sid/tvos/MainActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildAppearancePage$111(I)V

    return-void
.end method

.method public static synthetic k0([Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildProfilePage$139([Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic k1(Landroid/widget/EditText;Lcom/sid/tvos/MainActivity$NameCallback;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/sid/tvos/MainActivity;->lambda$askName$29(Landroid/widget/EditText;Lcom/sid/tvos/MainActivity$NameCallback;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic k2(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->openAirPlay()V

    return-void
.end method

.method public static synthetic k3(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$captureRemapKey$168()V

    return-void
.end method

.method public static bridge synthetic k4(Lcom/sid/tvos/MainActivity;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sid/tvos/MainActivity;->glassTargetY:F

    return-void
.end method

.method private keepFrostSteps(Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V
    .locals 4

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    iget-object v3, p0, Lcom/sid/tvos/MainActivity;->frostedSet:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sid/tvos/MainActivity;->frostSource:Ljava/util/Map;

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->frosted:Landroid/util/LruCache;

    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p2, v1

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->frostSteps:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic l(Lcom/sid/tvos/MainActivity;Landroid/graphics/Bitmap;ZILandroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sid/tvos/MainActivity;->lambda$refreshBackdrop$13(Landroid/graphics/Bitmap;ZILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic l0(Lcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p1, p2, p0}, Lcom/sid/tvos/MainActivity;->lambda$buildWeatherRows$145(Ljava/lang/String;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void
.end method

.method public static synthetic l1(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildSettingsPage$97(Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void
.end method

.method public static synthetic l2(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$onTileLongPress$16()V

    return-void
.end method

.method public static synthetic l3(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->showAppearanceMenu()V

    return-void
.end method

.method public static bridge synthetic l4(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->settingsPanel:Lcom/sid/tvos/MainActivity$SettingsPanel;

    return-void
.end method

.method private synthetic lambda$addInputRow$202(Landroid/widget/PopupWindow;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->fadeOutThen(Landroid/widget/PopupWindow;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$addMenuRow$83(Landroid/widget/PopupWindow;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->fadeOutThen(Landroid/widget/PopupWindow;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$applyDark$159(ZLjava/util/List;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sid/tvos/MainActivity;->darkPending:Z

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->dark(Landroid/content/Context;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/g;->notifyItemRangeChanged(II)V

    iget p1, p0, Lcom/sid/tvos/MainActivity;->shelfPosition:I

    iget-boolean p2, p0, Lcom/sid/tvos/MainActivity;->shelfShown:Z

    if-eqz p2, :cond_1

    if-ltz p1, :cond_1

    const/4 p2, -0x1

    iput p2, p0, Lcom/sid/tvos/MainActivity;->shelfPosition:I

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->showShelf(I)V

    :cond_1
    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->controlCenter:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->shelf:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->shelf:Landroid/widget/ImageView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->shelf2:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->shelf2:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance p2, Lt/c;

    const/4 v0, 0x4

    invoke-direct {p2, p0, v0}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    const-wide/16 v0, 0x3c

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$applyDark$160(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sid/tvos/MainActivity;->darkApplying:Z

    iget-boolean v0, p0, Lcom/sid/tvos/MainActivity;->darkPending:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->dark(Landroid/content/Context;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/g;->notifyDataSetChanged()V

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyDark()V

    return-void
.end method

.method private synthetic lambda$applyDark$161(ILjava/util/List;ZLjava/util/List;)V
    .locals 2

    invoke-static {}, Lcom/sid/tvos/IconPack;->clearCache()V

    invoke-static {}, Lcom/sid/tvos/Stage;->clear()V

    if-ltz p1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sid/tvos/AppAdapter$Entry;

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->renderStage(Lcom/sid/tvos/AppAdapter$Entry;)V

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sid/tvos/AppAdapter$Entry;

    invoke-virtual {v0}, Lcom/sid/tvos/AppAdapter$Entry;->isPlaceholder()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0, v0}, Lcom/sid/tvos/IconPack;->tile(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;)Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lt/b0;

    invoke-direct {v0, p0, p3, p2}, Lt/b0;-><init>(Lcom/sid/tvos/MainActivity;ZLjava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/sid/tvos/AppAdapter$Entry;

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->dark(Landroid/content/Context;)Z

    move-result v0

    if-eq v0, p3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p4}, Lcom/sid/tvos/AppAdapter$Entry;->isPlaceholder()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0, p4}, Lcom/sid/tvos/IconPack;->tile(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;)Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_5
    :goto_2
    const/4 p1, 0x0

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    if-ge p1, p4, :cond_6

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->dark(Landroid/content/Context;)Z

    move-result p4

    if-ne p4, p3, :cond_6

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/sid/tvos/AppAdapter$Entry;

    invoke-direct {p0, p4}, Lcom/sid/tvos/MainActivity;->renderStage(Lcom/sid/tvos/AppAdapter$Entry;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance p2, Lt/z;

    const/4 p4, 0x7

    invoke-direct {p2, p0, p3, p4}, Lt/z;-><init>(Lcom/sid/tvos/MainActivity;ZI)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$applyStatusItems$75()V
    .locals 1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->shelfBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->updateStatusGlass(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static synthetic lambda$askName$29(Landroid/widget/EditText;Lcom/sid/tvos/MainActivity$NameCallback;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p1, p0}, Lcom/sid/tvos/MainActivity$NameCallback;->onName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$askText$162(Landroid/widget/EditText;Lcom/sid/tvos/MainActivity$TextCallback;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p1, p0}, Lcom/sid/tvos/MainActivity$TextCallback;->onText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$blurBackdrop$10(ILandroid/graphics/Bitmap;)V
    .locals 2

    iget v0, p0, Lcom/sid/tvos/MainActivity;->backdropGen:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->dim:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->dim:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x104

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$blurBackdrop$11(Landroid/graphics/Bitmap;ZI)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->blurPx(I)I

    move-result v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :goto_1
    if-eqz p2, :cond_1

    const p2, 0x3f4ccccd    # 0.8f

    goto :goto_2

    :cond_1
    const p2, 0x3f1eb852    # 0.62f

    :goto_2
    invoke-static {p1, v0, p2}, Lcom/sid/tvos/Blur;->soften(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lt/F;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p3, p1, v1}, Lt/F;-><init>(Lcom/sid/tvos/MainActivity;ILandroid/graphics/Bitmap;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$buildAppearancePage$102(I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->applyGlass(Z)V

    return-void
.end method

.method private synthetic lambda$buildAppearancePage$103(Ljava/util/List;I)V
    .locals 0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-static {p0, p1}, Lcom/sid/tvos/IconPack;->set(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {p1}, Lcom/sid/tvos/AppAdapter;->reload()V

    return-void
.end method

.method private synthetic lambda$buildAppearancePage$104(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/sid/tvos/Appearance;->setDark(Landroid/content/Context;Z)V

    invoke-static {p0}, Lcom/sid/tvos/DarkSchedule;->holdManual(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyDark()V

    return-void
.end method

.method private synthetic lambda$buildAppearancePage$105(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sid/tvos/DarkSchedule;->setMode(Landroid/content/Context;I)V

    invoke-static {p0}, Lcom/sid/tvos/DarkSchedule;->apply(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyDark()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$buildAppearancePage$106(I)V
    .locals 1

    mul-int/lit8 p1, p1, 0x1e

    invoke-static {p0}, Lcom/sid/tvos/DarkSchedule;->customOff(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/sid/tvos/DarkSchedule;->setCustom(Landroid/content/Context;II)V

    invoke-static {p0}, Lcom/sid/tvos/DarkSchedule;->apply(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyDark()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$buildAppearancePage$107(I)V
    .locals 1

    invoke-static {p0}, Lcom/sid/tvos/DarkSchedule;->customOn(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 p1, p1, 0x1e

    invoke-static {p0, v0, p1}, Lcom/sid/tvos/DarkSchedule;->setCustom(Landroid/content/Context;II)V

    invoke-static {p0}, Lcom/sid/tvos/DarkSchedule;->apply(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyDark()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$buildAppearancePage$108(I)V
    .locals 1

    const-string v0, "standby_layout"

    invoke-static {p0, v0, p1}, Lcom/sid/tvos/Appearance;->setStandBy(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$buildAppearancePage$109(I)V
    .locals 1

    const-string v0, "standby_left"

    invoke-static {p0, v0, p1}, Lcom/sid/tvos/Appearance;->setStandBy(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$buildAppearancePage$110(I)V
    .locals 1

    const-string v0, "standby_right"

    invoke-static {p0, v0, p1}, Lcom/sid/tvos/Appearance;->setStandBy(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$buildAppearancePage$111(I)V
    .locals 1

    const-string v0, "standby_colour"

    invoke-static {p0, v0, p1}, Lcom/sid/tvos/Appearance;->setStandBy(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$buildAppearancePage$112(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sid/tvos/MainActivity;->fromStandByPreview:Z

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->standByReturnFocus:Landroid/view/View;

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/sid/tvos/StandByActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$buildAppearancePage$113()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DREAM_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->open(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$buildAppearancePage$114(I)V
    .locals 1

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->recentRam(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/sid/tvos/Appearance;->setRecent(Landroid/content/Context;IZ)V

    return-void
.end method

.method private synthetic lambda$buildAppearancePage$115(Z)V
    .locals 1

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->recentSize(Landroid/content/Context;)I

    move-result v0

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, v0, p1}, Lcom/sid/tvos/Appearance;->setRecent(Landroid/content/Context;IZ)V

    return-void
.end method

.method private synthetic lambda$buildAppearancePage$116(I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/sid/tvos/Appearance;->setStatusMinimal(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyStatusItems()V

    return-void
.end method

.method private synthetic lambda$buildAppearancePage$117(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/sid/tvos/Appearance;->setCwOn(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyCwOn()V

    return-void
.end method

.method private synthetic lambda$buildCwArtRows$147(I)V
    .locals 1

    const-string v0, "cw_bg"

    invoke-static {p0, v0, p1}, Lcom/sid/tvos/CwBackground;->set(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyCwBackground()V

    return-void
.end method

.method private synthetic lambda$buildCwArtRows$148([Ljava/lang/String;I)V
    .locals 0

    array-length p1, p1

    if-ge p2, p1, :cond_0

    invoke-static {p0, p2}, Lcom/sid/tvos/CwBackground;->setPreset(Landroid/content/Context;I)V

    :cond_0
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyCwBackground()V

    return-void
.end method

.method private synthetic lambda$buildCwArtRows$149(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->pickCwPicture(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$buildCwArtRows$150(Z)V
    .locals 2

    if-eqz p1, :cond_0

    sget v0, Lcom/sid/tvos/R$string;->cw_picture_set:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/sid/tvos/R$string;->cw_picture_failed:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->cwUploadUrl:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyCwBackground()V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->settingsPanel:Lcom/sid/tvos/MainActivity$SettingsPanel;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->refresh()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$buildCwArtRows$151(Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 2

    new-instance v0, Lcom/sid/tvos/p;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lcom/sid/tvos/p;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-static {p0, v0}, Lcom/sid/tvos/PhoneUpload;->start(Landroid/content/Context;Lcom/sid/tvos/PhoneUpload$Callback;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sid/tvos/MainActivity;->cwUploadUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->refresh()V

    return-void
.end method

.method private synthetic lambda$buildCwArtRows$152(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyCwBackground()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$buildCwArtRows$153(Landroid/net/Uri;)V
    .locals 3

    invoke-static {p0, p1}, Lcom/sid/tvos/CwBackground;->setPicture(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lt/z;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p1, v2}, Lt/z;-><init>(Lcom/sid/tvos/MainActivity;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$buildCwArtRows$154(Landroid/net/Uri;)V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lt/G;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lt/G;-><init>(Lcom/sid/tvos/MainActivity;Landroid/net/Uri;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static synthetic lambda$buildCwArtRows$155([Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$buildCwArtRows$156(Landroid/net/Uri;I[Landroid/widget/ImageView;)V
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/sid/tvos/Profile;->thumb(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lt/H;

    const/4 v1, 0x1

    invoke-direct {v0, p3, p1, v1}, Lt/H;-><init>([Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$buildCwArtRows$157(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/sid/tvos/Appearance;->setCwBlur(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyCwBlur()V

    return-void
.end method

.method private synthetic lambda$buildCwArtRows$158(Lcom/sid/tvos/MainActivity$SettingsPanel;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-static {p0, p2}, Lcom/sid/tvos/Appearance;->setCwBlur(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyCwBlur()V

    invoke-virtual {p1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->refresh()V

    return-void

    :cond_0
    invoke-static {p0, p2}, Lcom/sid/tvos/Appearance;->setCwBlurLevel(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyCwBlur()V

    return-void
.end method

.method private synthetic lambda$buildDefaultLauncherPage$100(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sid/tvos/MainActivity;->fromStandByPreview:Z

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->standByReturnFocus:Landroid/view/View;

    const/16 p1, 0x2a

    invoke-static {p0, p1}, Lcom/sid/tvos/DefaultHome;->request(Landroid/app/Activity;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sid/tvos/MainActivity;->fromStandByPreview:Z

    sget p1, Lcom/sid/tvos/R$string;->dl_cannot:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$buildDefaultLauncherPage$101(Z)V
    .locals 1

    const-string v0, "android.settings.ACCESSIBILITY_SETTINGS"

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->open(Landroid/content/Intent;)V

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/sid/tvos/Remaps;->enableService(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private synthetic lambda$buildProfilePage$135(ILcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sid/tvos/Profile;->setEmoji(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyStatusItems()V

    invoke-virtual {p2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->refresh()V

    return-void
.end method

.method private synthetic lambda$buildProfilePage$136(ZLcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyStatusItems()V

    invoke-virtual {p2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->refresh()V

    return-void
.end method

.method private synthetic lambda$buildProfilePage$137(Landroid/net/Uri;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/sid/tvos/Profile;->setPhoto(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/sid/tvos/A;

    invoke-direct {v1, p0, p1, p2}, Lcom/sid/tvos/A;-><init>(Lcom/sid/tvos/MainActivity;ZLcom/sid/tvos/MainActivity$SettingsPanel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$buildProfilePage$138(Landroid/net/Uri;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sid/tvos/v;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/sid/tvos/v;-><init>(Lcom/sid/tvos/MainActivity;Landroid/net/Uri;Lcom/sid/tvos/MainActivity$SettingsPanel;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static synthetic lambda$buildProfilePage$139([Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$buildProfilePage$140(Landroid/net/Uri;I[Landroid/widget/ImageView;)V
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/sid/tvos/Profile;->thumb(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lt/H;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p1, v1}, Lt/H;-><init>([Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$buildProfilePage$141(Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p2}, Lcom/sid/tvos/Profile;->setName(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->refresh()V

    return-void
.end method

.method private synthetic lambda$buildProfilePage$142(Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 4

    sget v0, Lcom/sid/tvos/R$string;->profile_name:I

    invoke-static {p0}, Lcom/sid/tvos/Profile;->name(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sid/tvos/x;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1, p0}, Lcom/sid/tvos/x;-><init>(ILcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/sid/tvos/MainActivity;->askText(ILjava/lang/String;Lcom/sid/tvos/MainActivity$TextCallback;)V

    return-void
.end method

.method private synthetic lambda$buildSettingsPage$88(Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 2

    new-instance v0, Lt/c;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {p1, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->closeThen(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$buildSettingsPage$89()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->open(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$buildSettingsPage$90(Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 2

    new-instance v0, Lt/c;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {p1, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->closeThen(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$buildSettingsPage$91()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SOUND_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->open(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$buildSettingsPage$92(Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 2

    new-instance v0, Lt/c;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {p1, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->closeThen(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$buildSettingsPage$93(Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 2

    new-instance v0, Lt/P;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lt/P;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {p1, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->closeThen(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$buildSettingsPage$94()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->open(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$buildSettingsPage$95(Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 2

    new-instance v0, Lt/c;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {p1, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->closeThen(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$buildSettingsPage$96()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->open(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$buildSettingsPage$97(Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 2

    new-instance v0, Lt/c;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {p1, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->closeThen(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$buildSettingsPage$98()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DEVICE_INFO_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->open(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$buildSettingsPage$99(Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 2

    new-instance v0, Lt/c;

    const/16 v1, 0x12

    invoke-direct {v0, p0, v1}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {p1, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->closeThen(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$buildWeatherRows$143(Ljava/lang/String;Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    if-nez p3, :cond_0

    sget p2, Lcom/sid/tvos/R$string;->place_not_found:I

    new-array p3, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p3, v1

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance p1, Lcom/sid/tvos/p;

    const/16 p3, 0xf

    invoke-direct {p1, p0, p3}, Lcom/sid/tvos/p;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-static {p0, p1}, Lcom/sid/tvos/Weather;->load(Landroid/content/Context;Lcom/sid/tvos/Weather$Callback;)V

    invoke-virtual {p2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->refresh()V

    return-void
.end method

.method private synthetic lambda$buildWeatherRows$144(Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/sid/tvos/F;

    invoke-direct {v0, p1, p0, p2}, Lcom/sid/tvos/F;-><init>(Lcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    invoke-static {p0, p2, v0}, Lcom/sid/tvos/Weather;->setManual(Landroid/content/Context;Ljava/lang/String;Lcom/sid/tvos/Weather$PlaceCallback;)V

    return-void
.end method

.method private synthetic lambda$buildWeatherRows$145(Ljava/lang/String;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 3

    sget v0, Lcom/sid/tvos/R$string;->enter_city:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    new-instance v1, Lcom/sid/tvos/x;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p2, p0}, Lcom/sid/tvos/x;-><init>(ILcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/sid/tvos/MainActivity;->askText(ILjava/lang/String;Lcom/sid/tvos/MainActivity$TextCallback;)V

    return-void
.end method

.method private synthetic lambda$buildWeatherRows$146(Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 2

    invoke-static {p0}, Lcom/sid/tvos/Weather;->setAutomatic(Landroid/content/Context;)V

    new-instance v0, Lcom/sid/tvos/p;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lcom/sid/tvos/p;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-static {p0, v0}, Lcom/sid/tvos/Weather;->load(Landroid/content/Context;Lcom/sid/tvos/Weather$Callback;)V

    invoke-virtual {p1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->refresh()V

    return-void
.end method

.method private synthetic lambda$captureRemapKey$167([Landroid/widget/PopupWindow;I)V
    .locals 2

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-direct {p0, p2}, Lcom/sid/tvos/MainActivity;->chooseRemapAction(I)V

    return-void
.end method

.method private synthetic lambda$captureRemapKey$168()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sid/tvos/Remaps;->capturing:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/sid/tvos/Remaps;->onCaptured:Lcom/sid/tvos/Remaps$CaptureListener;

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->dim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$captureRemapKey$169([Landroid/widget/PopupWindow;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 p4, 0x1

    if-eqz p2, :cond_0

    return p4

    :cond_0
    const/4 p2, 0x4

    const/4 v0, 0x0

    if-ne p3, p2, :cond_1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return p4

    :cond_1
    invoke-static {p3}, Lcom/sid/tvos/Remaps;->reserved(I)Z

    move-result p2

    if-eqz p2, :cond_2

    sget p1, Lcom/sid/tvos/R$string;->remap_reserved:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return p4

    :cond_2
    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-direct {p0, p3}, Lcom/sid/tvos/MainActivity;->chooseRemapAction(I)V

    return p4
.end method

.method private synthetic lambda$ccFocusLift$195(FLandroid/view/View;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/sid/tvos/MainActivity;->ccOpening:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    if-eqz p3, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p3, :cond_4

    move v0, p1

    goto :goto_2

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p3, :cond_5

    goto :goto_3

    :cond_5
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p3, :cond_6

    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    const p3, 0x3fa66666    # 1.3f

    invoke-direct {p2, p3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    goto :goto_4

    :cond_6
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p3, 0x40000000    # 2.0f

    invoke-direct {p2, p3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    :goto_4
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private static synthetic lambda$ccPill$193(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$ccRound$194(Landroid/widget/PopupWindow;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->fadeOutThen(Landroid/widget/PopupWindow;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$centreRecent$220(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->recentsScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->recentsScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->recentsScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    filled-new-array {v1, p1}, [I

    move-result-object p1

    const-string v1, "scrollX"

    invoke-static {v0, v1, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x168

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/sid/tvos/MainActivity;->CALM:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$chooseLauncherAction$175(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "launcher:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->saveRemap(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$chooseRemapAction$170(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->saveRemap(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$chooseRemapAction$171(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->chooseLauncherAction(I)V

    return-void
.end method

.method private synthetic lambda$chooseRemapAction$172(I)V
    .locals 4

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lt/w;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lt/w;-><init>(Lcom/sid/tvos/MainActivity;II)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static synthetic lambda$chooseRemapAction$173(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 0

    invoke-virtual {p1, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$chooseRemapAction$174(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "app:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->saveRemap(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$closeAllButton$215(Landroid/graphics/drawable/GradientDrawable;Landroid/widget/ImageView;Landroid/view/View;Z)V
    .locals 4

    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f8f5c29    # 1.12f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p4, :cond_0

    const v3, 0x3f8f5c29    # 1.12f

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    const v2, 0x3f333333    # 0.7f

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    if-eqz p4, :cond_3

    const v0, -0xd000001

    goto :goto_3

    :cond_3
    const v0, 0x33ffffff

    :goto_3
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    if-eqz p4, :cond_4

    const p1, -0xe3e3e2

    goto :goto_4

    :cond_4
    const/4 p1, -0x1

    :goto_4
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p4, :cond_5

    invoke-direct {p0, p3}, Lcom/sid/tvos/MainActivity;->centreRecent(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method private static synthetic lambda$closeAllButton$216(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x13

    if-eq p1, p0, :cond_0

    const/16 p0, 0x14

    if-eq p1, p0, :cond_0

    const/16 p0, 0x16

    if-ne p1, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$closeAllButton$217(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sid/tvos/MainActivity;->closeRecentApp(Landroid/view/View;Z)V

    return-void
.end method

.method private synthetic lambda$closeAllButton$218()V
    .locals 1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->recentsOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->closeRecents()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$closeAllButton$219(Landroid/view/View;)V
    .locals 9

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->recentsRow:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    add-int/lit8 v0, p1, -0x2

    move v1, v0

    :goto_0
    const-wide/16 v2, 0x46

    if-ltz v1, :cond_0

    iget-object v4, p0, Lcom/sid/tvos/MainActivity;->recentsRow:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v6, Lt/i;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v4, v7}, Lt/i;-><init>(Lcom/sid/tvos/MainActivity;Landroid/view/View;I)V

    sub-int v4, v0, v1

    int-to-long v7, v4

    mul-long v7, v7, v2

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lt/c;

    const/4 v4, 0x1

    invoke-direct {v1, p0, v4}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    add-int/lit8 p1, p1, -0x1

    int-to-long v4, p1

    mul-long v4, v4, v2

    const-wide/16 v2, 0x1a4

    add-long/2addr v4, v2

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$closeFolder$15()V
    .locals 2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->folderOverlay:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->folderBackdrop:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$closeRecentApp$221(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->centreRecent(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$closeRecentApp$222(Landroid/view/View;ZI)V
    .locals 3

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->recentsRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->recentsRow:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->recentsRow:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/sid/tvos/AppAdapter$Entry;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->closeRecents()V

    :cond_2
    return-void

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->recentsRow:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->recentsRow:Landroid/widget/LinearLayout;

    new-instance p3, Lt/i;

    const/4 v0, 0x3

    invoke-direct {p3, p0, p1, v0}, Lt/i;-><init>(Lcom/sid/tvos/MainActivity;Landroid/view/View;I)V

    const-wide/16 v0, 0x140

    invoke-virtual {p2, p3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method private synthetic lambda$closeRecents$225()V
    .locals 3

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->recentsOverlay:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->topBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    sget v0, Lcom/sid/tvos/R$id;->recentsBackdrop:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->recentsRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method private synthetic lambda$cwBgChoice$134(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sid/tvos/CwBackground;->set(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyCwBackground()V

    return-void
.end method

.method private synthetic lambda$cwColourRows$120(II)V
    .locals 1

    sget v0, Lcom/sid/tvos/CwBackground;->CUSTOM:I

    if-ne p2, v0, :cond_0

    invoke-static {p0, p1}, Lcom/sid/tvos/CwBackground;->colour(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/sid/tvos/CwBackground;->setCustom(Landroid/content/Context;II)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "cw_bg_c1"

    goto :goto_0

    :cond_1
    const-string p1, "cw_bg_c2"

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/sid/tvos/CwBackground;->set(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyCwBackground()V

    return-void
.end method

.method private synthetic lambda$cwColourRows$121(I[F)V
    .locals 2

    invoke-static {p2}, Lf/a;->a([F)I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/sid/tvos/CwBackground;->setCustom(Landroid/content/Context;II)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->cwColourApply:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->cwColourApply:Ljava/lang/Runnable;

    const-wide/16 v0, 0x5a

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static synthetic lambda$cwColourRows$122([FLjava/lang/Runnable;I)V
    .locals 1

    int-to-float p2, p2

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float p2, p2, v0

    const v0, 0x43b3f333    # 359.9f

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 v0, 0x0

    aput p2, p0, v0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$cwColourRows$123(I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 p0, p0, 0x5

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u00b0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$cwColourRows$124([F)[I
    .locals 9

    const/4 v0, 0x1

    const/16 v1, 0xd

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    int-to-float v5, v4

    const/high16 v6, 0x41f00000    # 30.0f

    mul-float v5, v5, v6

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float/2addr v5, v6

    aget v6, p0, v0

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const/4 v8, 0x3

    new-array v8, v8, [F

    aput v5, v8, v3

    aput v6, v8, v0

    const/4 v5, 0x2

    aput v7, v8, v5

    invoke-static {v8}, Lf/a;->a([F)I

    move-result v5

    aput v5, v2, v4

    add-int/2addr v4, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static synthetic lambda$cwColourRows$125([FLjava/lang/Runnable;I)V
    .locals 1

    int-to-float p2, p2

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p2, v0

    const/4 v0, 0x1

    aput p2, p0, v0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$cwColourRows$126(I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 p0, p0, 0x5

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "%"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$cwColourRows$127([F)[I
    .locals 7

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x2

    aget v3, p0, v2

    const/4 v4, 0x3

    new-array v5, v4, [F

    aput v1, v5, v0

    const/4 v1, 0x0

    const/4 v6, 0x1

    aput v1, v5, v6

    aput v3, v5, v2

    invoke-static {v5}, Lf/a;->a([F)I

    move-result v1

    aget v3, p0, v0

    aget p0, p0, v2

    new-array v4, v4, [F

    aput v3, v4, v0

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v4, v6

    aput p0, v4, v2

    invoke-static {v4}, Lf/a;->a([F)I

    move-result p0

    filled-new-array {v1, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$cwColourRows$128([FLjava/lang/Runnable;I)V
    .locals 1

    int-to-float p2, p2

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p2, v0

    const/4 v0, 0x2

    aput p2, p0, v0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$cwColourRows$129(I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 p0, p0, 0x5

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "%"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$cwColourRows$130([F)[I
    .locals 4

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget p0, p0, v2

    const/4 v3, 0x3

    new-array v3, v3, [F

    aput v1, v3, v0

    aput p0, v3, v2

    const/high16 p0, 0x3f000000    # 0.5f

    const/4 v0, 0x2

    aput p0, v3, v0

    invoke-static {v3}, Lf/a;->a([F)I

    move-result p0

    const/4 v0, -0x1

    const/high16 v1, -0x1000000

    filled-new-array {v1, p0, v0}, [I

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$enterFullScreen$204(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/4 p1, 0x4

    if-eq p2, p1, :cond_2

    const/16 p1, 0x17

    if-eq p2, p1, :cond_2

    const/16 p1, 0x42

    if-eq p2, p1, :cond_2

    const/16 p1, 0x13

    if-eq p2, p1, :cond_1

    const/16 p1, 0x14

    if-eq p2, p1, :cond_2

    return p3

    :cond_1
    invoke-direct {p0, p3}, Lcom/sid/tvos/MainActivity;->exitFullScreen(Z)V

    return p3

    :cond_2
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->exitFullScreen(Z)V

    return p3
.end method

.method private static synthetic lambda$fadeOutThen$203(Landroid/widget/PopupWindow;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$frostShelf$41(Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->keepFrostSteps(Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V

    iget-boolean v0, p0, Lcom/sid/tvos/MainActivity;->shelfShown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->shelfBitmap:Landroid/graphics/Bitmap;

    if-ne v0, p1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->playFrostSteps(Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$frostShelf$42(Landroid/graphics/Bitmap;I)V
    .locals 3

    invoke-static {p1, p2}, Lcom/sid/tvos/MainActivity;->makeFrostSteps(Landroid/graphics/Bitmap;I)[Landroid/graphics/Bitmap;

    move-result-object p2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lt/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lt/b;-><init>(Lcom/sid/tvos/MainActivity;Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$glideGlass$31(Landroid/view/View;Landroid/graphics/Rect;FFFFLandroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p7}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Float;

    invoke-virtual {p7}, Ljava/lang/Float;->floatValue()F

    move-result p7

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p7

    invoke-direct {p0, p1, p2, p3}, Lcom/sid/tvos/MainActivity;->tileX(Landroid/view/View;Landroid/graphics/Rect;F)F

    move-result p3

    invoke-direct {p0, p1, p2, p4}, Lcom/sid/tvos/MainActivity;->tileY(Landroid/view/View;Landroid/graphics/Rect;F)F

    move-result p1

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->glass:Lcom/sid/tvos/GlassView;

    mul-float p5, p5, v0

    add-float/2addr p5, p3

    invoke-virtual {p2, p5}, Landroid/view/View;->setTranslationX(F)V

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->glass:Lcom/sid/tvos/GlassView;

    mul-float p6, p6, v0

    add-float/2addr p6, p1

    invoke-virtual {p2, p6}, Landroid/view/View;->setTranslationY(F)V

    iput p3, p0, Lcom/sid/tvos/MainActivity;->glassTargetX:F

    iput p1, p0, Lcom/sid/tvos/MainActivity;->glassTargetY:F

    return-void
.end method

.method private synthetic lambda$layoutChoice$118(ILjava/lang/String;I)V
    .locals 0

    if-ne p3, p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p2, p3}, Lcom/sid/tvos/Appearance;->setStep(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p1, 0x1

    sput-boolean p1, Lcom/sid/tvos/MainActivity;->reopenAppearance:Z

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method private synthetic lambda$layoutChoice$119(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sid/tvos/Appearance;->setStep(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyLayout()V

    return-void
.end method

.method private static synthetic lambda$makeCwCard$47(Landroid/view/View;Landroid/view/View;Lcom/sid/tvos/WatchNext$Item;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget p2, p2, Lcom/sid/tvos/WatchNext$Item;->progress:F

    mul-float p1, p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static synthetic lambda$makeCwCard$48(Landroid/widget/ImageView;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->prepareToDraw()V

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$makeCwCard$49(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v2, 0x42dc0000    # 110.0f

    iget v3, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v3, v3, v2

    float-to-int v2, v3

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->cwScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    add-int v3, v2, v0

    if-le p1, v3, :cond_0

    sub-int v1, p1, v0

    goto :goto_0

    :cond_0
    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-ne v1, v2, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->cwScroll:Landroid/widget/HorizontalScrollView;

    const-string v0, "scrollX"

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1cc

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/sid/tvos/MainActivity;->CALM:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$makeCwCard$50(ILandroid/view/View;Z)V
    .locals 4

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f866666    # 1.05f

    if-eqz p3, :cond_0

    const v3, 0x3f866666    # 1.05f

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p3, :cond_1

    const v1, 0x3f866666    # 1.05f

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xf0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    if-eqz p3, :cond_2

    iget-boolean p3, p0, Lcom/sid/tvos/MainActivity;->cwReleasing:Z

    if-nez p3, :cond_2

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->selectCw(I)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->cwScroll:Landroid/widget/HorizontalScrollView;

    new-instance p3, Lt/i;

    const/4 v0, 0x4

    invoke-direct {p3, p0, p2, v0}, Lt/i;-><init>(Lcom/sid/tvos/MainActivity;Landroid/view/View;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private synthetic lambda$makeCwCard$51(Lcom/sid/tvos/WatchNext$Item;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->openCw(Lcom/sid/tvos/WatchNext$Item;)V

    return-void
.end method

.method private static synthetic lambda$new$32()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$new$40()V
    .locals 2

    iget-boolean v0, p0, Lcom/sid/tvos/MainActivity;->shelfShown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->shelfGroup:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sid/tvos/MainActivity;->frostFade:Z

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->frostShelf()V

    return-void
.end method

.method private synthetic lambda$new$46()V
    .locals 2

    iget v0, p0, Lcom/sid/tvos/MainActivity;->cwPosition:I

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/sid/tvos/MainActivity;->shelfPosition:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sid/tvos/MainActivity;->shelfShown:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->renderCw()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$53(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwBackdrops:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwBackdrops:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$54(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->cwBackdrop(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lt/p;

    invoke-direct {v1, v0, p0, p2}, Lt/p;-><init>(Landroid/graphics/Bitmap;Lcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$new$55(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwBackdrops:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sid/tvos/MainActivity;->FROST:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lt/p;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, p1, v2}, Lt/p;-><init>(Lcom/sid/tvos/MainActivity;Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$56(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/sid/tvos/WatchNext;->bestArt(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v1}, Lcom/sid/tvos/Stage;->cap(I)I

    move-result v1

    new-instance v2, Lcom/sid/tvos/q;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, p1}, Lcom/sid/tvos/q;-><init>(ILcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    invoke-static {p0, v0, v1, v2}, Lcom/sid/tvos/Images;->loadFirst(Landroid/content/Context;[Ljava/lang/String;ILcom/sid/tvos/Images$Callback;)V

    return-void
.end method

.method private synthetic lambda$new$57()V
    .locals 11

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->cwOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->cwArt(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwBackdrops:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->maxSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    sget v4, Lcom/sid/tvos/MainActivity;->COLUMNS:I

    if-ge v2, v4, :cond_4

    if-ge v3, v0, :cond_4

    invoke-direct {p0, v2}, Lcom/sid/tvos/MainActivity;->cwItemsFor(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sid/tvos/WatchNext$Item;

    iget-object v4, v4, Lcom/sid/tvos/WatchNext$Item;->art:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    iget-object v5, p0, Lcom/sid/tvos/MainActivity;->cwBackdrops:Landroid/util/LruCache;

    invoke-virtual {v5, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v6, Lt/n;

    const/4 v7, 0x4

    invoke-direct {v6, v7, p0, v4}, Lt/n;-><init>(ILcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    int-to-long v7, v3

    const-wide/16 v9, 0x12c

    mul-long v7, v7, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private static synthetic lambda$new$62()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$new$65(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->launchArt:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/sid/tvos/MainActivity;->launchArtKey:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$new$66(Lcom/sid/tvos/AppAdapter$Entry;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->launchArt(Lcom/sid/tvos/AppAdapter$Entry;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lt/p;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lt/p;-><init>(Lcom/sid/tvos/MainActivity;Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$new$67()V
    .locals 5

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    sget v1, Lcom/sid/tvos/MainActivity;->lastFocused:I

    invoke-virtual {v0, v1}, Lcom/sid/tvos/AppAdapter;->entryAt(I)Lcom/sid/tvos/AppAdapter$Entry;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sid/tvos/AppAdapter$Entry;->isFolder()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/sid/tvos/AppAdapter$Entry;->isPlaceholder()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->launchArtFor(Lcom/sid/tvos/AppAdapter$Entry;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->launchArtKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    sget-object v2, Lcom/sid/tvos/MainActivity;->LAUNCH:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/sid/tvos/o;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v0, v1, v4}, Lcom/sid/tvos/o;-><init>(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$onActivityResult$131()V
    .locals 2

    invoke-static {p0}, Lcom/sid/tvos/DefaultHome;->isHome(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/sid/tvos/R$string;->dl_is_home:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/sid/tvos/R$string;->dl_not_set:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->settingsPanel:Lcom/sid/tvos/MainActivity$SettingsPanel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->refresh()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onActivityResult$132(Z)V
    .locals 2

    if-eqz p1, :cond_0

    sget v0, Lcom/sid/tvos/R$string;->cw_picture_set:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/sid/tvos/R$string;->cw_picture_failed:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyCwBackground()V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->settingsPanel:Lcom/sid/tvos/MainActivity$SettingsPanel;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->refresh()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$onActivityResult$133(Landroid/net/Uri;)V
    .locals 3

    invoke-static {p0, p1}, Lcom/sid/tvos/CwBackground;->setPicture(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lt/z;

    const/4 v2, 0x6

    invoke-direct {v1, p0, p1, v2}, Lt/z;-><init>(Lcom/sid/tvos/MainActivity;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onCreate$0()Z
    .locals 6

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->shelfGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->shelfGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    const v2, 0x3f7fbe77    # 0.999f

    cmpl-float v3, v0, v2

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/sid/tvos/MainActivity;->shelfBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sid/tvos/MainActivity;->shelf:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-boolean v3, p0, Lcom/sid/tvos/MainActivity;->rootCovered:Z

    if-eq v2, v3, :cond_3

    iput-boolean v2, p0, Lcom/sid/tvos/MainActivity;->rootCovered:Z

    iget-object v3, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v4, -0x1000000

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->statusGlass:Lcom/sid/tvos/LiquidGlassDrawable;

    invoke-virtual {v2, v0}, Lcom/sid/tvos/LiquidGlassDrawable;->setBackdropOpacity(F)V

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->weatherGlass:Lcom/sid/tvos/LiquidGlassDrawable;

    invoke-virtual {v2, v0}, Lcom/sid/tvos/LiquidGlassDrawable;->setBackdropOpacity(F)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->statusGlass:Lcom/sid/tvos/LiquidGlassDrawable;

    invoke-virtual {v0}, Lcom/sid/tvos/LiquidGlassDrawable;->isLive()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->shelfSignature()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sid/tvos/MainActivity;->lastShelfSig:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    iput-wide v2, p0, Lcom/sid/tvos/MainActivity;->lastShelfSig:J

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->weatherPill:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->weatherPill:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_4
    return v1
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p5, p3

    invoke-direct {p0, p5}, Lcom/sid/tvos/MainActivity;->updateGridPadding(I)V

    return-void
.end method

.method private synthetic lambda$onCreate$2(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget p2, Lcom/sid/tvos/R$id;->card:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->hideGlass()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onLaunch$64(Lcom/sid/tvos/AppAdapter$Entry;)V
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p1, Lcom/sid/tvos/AppAdapter$Entry;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10a0000

    :try_start_0
    invoke-static {p0, v2, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sid/tvos/MainActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->launchCard:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->dim:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sid/tvos/MainActivity;->launchKey:Ljava/lang/String;

    sget v1, Lcom/sid/tvos/R$string;->cant_open:I

    iget-object p1, p1, Lcom/sid/tvos/AppAdapter$Entry;->label:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onNewIntent$228(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->showControlCenter()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->showSettingsMenu(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onResume$3(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sid/tvos/MainActivity;->applyLauncherSetting(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onResume$4()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sid/tvos/MainActivity;->fromStandByPreview:Z

    return-void
.end method

.method private synthetic lambda$onResume$5()V
    .locals 0

    invoke-static {p0}, Lcom/sid/tvos/Remaps;->kickIfStuck(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onResume$6()V
    .locals 9

    iget-boolean v0, p0, Lcom/sid/tvos/MainActivity;->resumed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->badgeCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_1

    :cond_0
    sget v1, Lcom/sid/tvos/R$drawable;->ic_palette:I

    sget v2, Lcom/sid/tvos/R$drawable;->ic_remote:I

    sget v3, Lcom/sid/tvos/R$drawable;->ic_display:I

    sget v4, Lcom/sid/tvos/R$drawable;->ic_sound:I

    sget v5, Lcom/sid/tvos/R$drawable;->ic_input:I

    sget v6, Lcom/sid/tvos/R$drawable;->ic_apps:I

    sget v7, Lcom/sid/tvos/R$drawable;->ic_tune:I

    sget v8, Lcom/sid/tvos/R$drawable;->ic_info:I

    filled-new-array/range {v1 .. v8}, [I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    aget v2, v0, v1

    invoke-direct {p0, v2}, Lcom/sid/tvos/MainActivity;->settingBadge(I)Landroid/graphics/drawable/Drawable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private synthetic lambda$onResume$7(Lcom/sid/tvos/AppAdapter$Entry;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sid/tvos/MainActivity;->openFolder(Lcom/sid/tvos/AppAdapter$Entry;Z)V

    return-void
.end method

.method private synthetic lambda$onResume$8(Ljava/lang/String;ZILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {v0, p1}, Lcom/sid/tvos/AppAdapter;->positionOf(Ljava/lang/String;)I

    move-result p1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->standByReturnFocus:Landroid/view/View;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->standByReturnFocus:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_0
    if-ltz p1, :cond_1

    move p3, p1

    :cond_1
    invoke-direct {p0, p3}, Lcom/sid/tvos/MainActivity;->focusTile(I)V

    if-eqz p4, :cond_3

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    const-string p2, "folder:"

    invoke-virtual {p2, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sid/tvos/AppAdapter;->positionOf(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {p2, p1}, Lcom/sid/tvos/AppAdapter;->entryAt(I)Lcom/sid/tvos/AppAdapter$Entry;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sid/tvos/AppAdapter$Entry;->isFolder()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/sid/tvos/l;

    const/16 p4, 0x9

    invoke-direct {p3, p0, p1, p4}, Lcom/sid/tvos/l;-><init>(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;I)V

    const-wide/16 v0, 0x78

    invoke-virtual {p2, p3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    sput-object p1, Lcom/sid/tvos/MainActivity;->openFolderName:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$onTileLongPress$16()V
    .locals 3

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->dim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$onTileLongPress$17(Lcom/sid/tvos/AppAdapter$Entry;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/sid/tvos/MainActivity;->openFolderName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sput-object p2, Lcom/sid/tvos/MainActivity;->openFolderName:Ljava/lang/String;

    :cond_0
    iget-object p1, p1, Lcom/sid/tvos/AppAdapter$Entry;->label:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/sid/tvos/Folders;->rename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->reloadKeepingFocus()V

    return-void
.end method

.method private synthetic lambda$onTileLongPress$18(Lcom/sid/tvos/AppAdapter$Entry;)V
    .locals 3

    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Entry;->label:Ljava/lang/String;

    new-instance v1, Lcom/sid/tvos/s;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/sid/tvos/s;-><init>(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;I)V

    invoke-direct {p0, v0, v1}, Lcom/sid/tvos/MainActivity;->askName(Ljava/lang/String;Lcom/sid/tvos/MainActivity$NameCallback;)V

    return-void
.end method

.method private synthetic lambda$onTileLongPress$19(Lcom/sid/tvos/AppAdapter$Entry;)V
    .locals 0

    iget-object p1, p1, Lcom/sid/tvos/AppAdapter$Entry;->label:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sid/tvos/Folders;->delete(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->reloadKeepingFocus()V

    return-void
.end method

.method private synthetic lambda$onTileLongPress$20(Lcom/sid/tvos/AppAdapter$Entry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->startMove(Lcom/sid/tvos/AppAdapter$Entry;)V

    return-void
.end method

.method private synthetic lambda$onTileLongPress$21(Lcom/sid/tvos/AppAdapter$Entry;)V
    .locals 0

    iget-object p1, p1, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sid/tvos/Favorites;->remove(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->reloadKeepingFocus()V

    return-void
.end method

.method private synthetic lambda$onTileLongPress$22(Lcom/sid/tvos/AppAdapter$Entry;)V
    .locals 4

    const/4 v0, 0x1

    iget-object p1, p1, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    const/16 v1, 0x1e

    invoke-static {p0, p1, v1}, Lcom/sid/tvos/Favorites;->add(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    sget p1, Lcom/sid/tvos/R$string;->favourites_full:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->folderOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->closeFolder()V

    :cond_1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->reloadKeepingFocus()V

    return-void
.end method

.method private synthetic lambda$onTileLongPress$23(Lcom/sid/tvos/AppAdapter$Entry;)V
    .locals 0

    iget-object p1, p1, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sid/tvos/Folders;->removeApp(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->folderOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->closeFolder()V

    :cond_0
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->reloadKeepingFocus()V

    return-void
.end method

.method private synthetic lambda$onTileLongPress$24(Lcom/sid/tvos/AppAdapter$Entry;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p1, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/sid/tvos/Folders;->moveTo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->folderOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->closeFolder()V

    :cond_0
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->reloadKeepingFocus()V

    return-void
.end method

.method private synthetic lambda$onTileLongPress$25(Lcom/sid/tvos/AppAdapter$Entry;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p1, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/sid/tvos/Folders;->moveTo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->folderOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->closeFolder()V

    :cond_0
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->reloadKeepingFocus()V

    return-void
.end method

.method private synthetic lambda$onTileLongPress$26(Lcom/sid/tvos/AppAdapter$Entry;)V
    .locals 2

    new-instance v0, Lcom/sid/tvos/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sid/tvos/s;-><init>(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;I)V

    const-string p1, ""

    invoke-direct {p0, p1, v0}, Lcom/sid/tvos/MainActivity;->askName(Ljava/lang/String;Lcom/sid/tvos/MainActivity$NameCallback;)V

    return-void
.end method

.method private synthetic lambda$onTileLongPress$27(Lcom/sid/tvos/AppAdapter$Entry;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->open(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$openFolder$14()V
    .locals 2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->folderGridView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/o;->itemView:Landroid/view/View;

    sget v1, Lcom/sid/tvos/R$id;->card:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$ownBlur$33(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .locals 1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->frosted:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->frostedSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->frostSource:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p0, Lcom/sid/tvos/MainActivity;->shelfShown:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/sid/tvos/MainActivity;->shelfPosition:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/sid/tvos/MainActivity;->setShelf(Landroid/graphics/Bitmap;I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$ownBlur$34(Landroid/graphics/Bitmap;II)V
    .locals 2

    invoke-static {p1, p2}, Lcom/sid/tvos/Blur;->frost(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->prepareToDraw()V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lt/f;

    invoke-direct {v1, p0, p1, p2, p3}, Lt/f;-><init>(Lcom/sid/tvos/MainActivity;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$paceKeys$226(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    const/16 p1, 0x13

    const/4 v0, 0x0

    if-eq p2, p1, :cond_0

    const/16 p1, 0x14

    if-eq p2, p1, :cond_0

    const/16 p1, 0x15

    if-eq p2, p1, :cond_0

    const/16 p1, 0x16

    if-ne p2, p1, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    return v0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    sub-long v1, p1, v1

    const-wide/16 v3, 0x78

    cmp-long p3, v1, v3

    if-gtz p3, :cond_3

    iget-wide v1, p0, Lcom/sid/tvos/MainActivity;->lastMoveAt:J

    sub-long v1, p1, v1

    const-wide/16 v3, 0x5f

    cmp-long p3, v1, v3

    if-gez p3, :cond_4

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    iput-wide p1, p0, Lcom/sid/tvos/MainActivity;->lastMoveAt:J

    return v0
.end method

.method private synthetic lambda$playCloseAnimation$69()V
    .locals 2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->launchCard:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->launchCard:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$playCloseAnimation$70()V
    .locals 3

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->launchCard:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x8c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lt/c;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$playFrostSteps$39(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;J)V
    .locals 2

    iget-boolean v0, p0, Lcom/sid/tvos/MainActivity;->shelfShown:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->frostSource:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/sid/tvos/MainActivity;->frostFade:Z

    const-wide/16 v0, 0x3c

    add-long/2addr p3, v0

    iput-wide p3, p0, Lcom/sid/tvos/MainActivity;->stepFadeMs:J

    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->setShelf(Landroid/graphics/Bitmap;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$prefrost$37(Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->keepFrostSteps(Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$prefrost$38(Landroid/graphics/Bitmap;I)V
    .locals 3

    invoke-static {p1, p2}, Lcom/sid/tvos/MainActivity;->makeFrostSteps(Landroid/graphics/Bitmap;I)[Landroid/graphics/Bitmap;

    move-result-object p2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lt/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lt/b;-><init>(Lcom/sid/tvos/MainActivity;Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic lambda$recentCard$206(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$recentCard$207(Lcom/sid/tvos/AppAdapter$Entry;IILandroid/widget/ImageView;)V
    .locals 1

    iget-object p1, p1, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lcom/sid/tvos/Stage;->brandArt(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance p3, Lt/d;

    const/4 v0, 0x0

    invoke-direct {p3, p4, p1, v0}, Lt/d;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$recentCard$208(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$recentCard$209(Lcom/sid/tvos/AppAdapter$Entry;IILandroid/widget/ImageView;)V
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/sid/tvos/IconPack;->tile(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance p3, Lt/d;

    const/4 v0, 0x2

    invoke-direct {p3, p4, p1, v0}, Lt/d;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$recentCard$210(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$recentCard$211(Lcom/sid/tvos/AppAdapter$Entry;IILandroid/widget/ImageView;)V
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/sid/tvos/Stage;->iconArt(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance p3, Lt/d;

    const/4 v0, 0x1

    invoke-direct {p3, p4, p1, v0}, Lt/d;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$recentCard$212(Landroid/view/View;Z)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f5c28f6    # 0.86f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v3, 0x3f5c28f6    # 0.86f

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p2, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x168

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/sid/tvos/MainActivity;->CALM:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->recentsRow:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/sid/tvos/MainActivity;->restackRecents(I)V

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->centreRecent(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$recentCard$213(Lcom/sid/tvos/AppAdapter$Entry;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->closeRecentsNow()V

    invoke-virtual {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->onLaunch(Lcom/sid/tvos/AppAdapter$Entry;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$recentCard$214(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    return v0

    :cond_0
    iget-object p3, p0, Lcom/sid/tvos/MainActivity;->recentsRow:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p3

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    return v0

    :pswitch_0
    if-nez p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :pswitch_1
    return v1

    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/sid/tvos/MainActivity;->closeRecentApp(Landroid/view/View;Z)V

    return v1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$refreshBackdrop$12(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/sid/tvos/MainActivity;->backdropGen:I

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->dim:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    new-instance p1, Landroid/graphics/drawable/TransitionDrawable;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p3, 0x2

    new-array p3, p3, [Landroid/graphics/drawable/Drawable;

    aput-object p2, p3, v0

    const/4 p2, 0x1

    aput-object v1, p3, p2

    invoke-direct {p1, p3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->dim:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p2, 0x168

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    return-void
.end method

.method private synthetic lambda$refreshBackdrop$13(Landroid/graphics/Bitmap;ZILandroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->blurPx(I)I

    move-result v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :goto_1
    if-eqz p2, :cond_1

    const p2, 0x3f4ccccd    # 0.8f

    goto :goto_2

    :cond_1
    const p2, 0x3f1eb852    # 0.62f

    :goto_2
    invoke-static {p1, v0, p2}, Lcom/sid/tvos/Blur;->soften(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lt/f;

    invoke-direct {v0, p0, p3, p4, p1}, Lt/f;-><init>(Lcom/sid/tvos/MainActivity;ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$reloadKeepingFocus$30(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {v0, p1}, Lcom/sid/tvos/AppAdapter;->positionOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Lcom/sid/tvos/MainActivity;->lastFocused:I

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {v0}, Lcom/sid/tvos/AppAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->focusTile(I)V

    return-void
.end method

.method private synthetic lambda$renderCw$44(ILjava/util/List;II[II)V
    .locals 1

    iget v0, p0, Lcom/sid/tvos/MainActivity;->cwGen:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sid/tvos/MainActivity;->makeCwCard(Ljava/util/List;II[I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 p4, 0x0

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->isFocusable()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p4, 0x1

    :cond_1
    invoke-virtual {p1, p4}, Landroid/view/View;->setFocusable(Z)V

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-ne p3, p6, :cond_2

    invoke-direct {p0, p6}, Lcom/sid/tvos/MainActivity;->scrollCwTo(I)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$saveRemap$176()V
    .locals 0

    invoke-static {p0}, Lcom/sid/tvos/Remaps;->kickIfStuck(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$scrollCwTo$45(I)V
    .locals 3

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$selectCw$58(Lcom/sid/tvos/WatchNext$Item;Landroid/graphics/Bitmap;II)V
    .locals 1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwBackdrops:Landroid/util/LruCache;

    iget-object p1, p1, Lcom/sid/tvos/WatchNext$Item;->art:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/sid/tvos/MainActivity;->cwSelected:I

    if-ne p1, p3, :cond_1

    iget p1, p0, Lcom/sid/tvos/MainActivity;->cwPosition:I

    if-ne p1, p4, :cond_1

    iget p3, p0, Lcom/sid/tvos/MainActivity;->shelfPosition:I

    if-ne p1, p3, :cond_1

    iget-boolean p1, p0, Lcom/sid/tvos/MainActivity;->shelfShown:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/sid/tvos/MainActivity;->setShelf(Landroid/graphics/Bitmap;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$selectCw$59(IILandroid/graphics/Bitmap;Lcom/sid/tvos/WatchNext$Item;)V
    .locals 7

    iget v0, p0, Lcom/sid/tvos/MainActivity;->cwSelected:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/sid/tvos/MainActivity;->cwPosition:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3}, Lcom/sid/tvos/MainActivity;->cwBackdrop(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eq v4, p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->prepareToDraw()V

    iget-object p3, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/sid/tvos/w;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sid/tvos/w;-><init>(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/WatchNext$Item;Landroid/graphics/Bitmap;II)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$selectCw$60(IILcom/sid/tvos/WatchNext$Item;Landroid/graphics/Bitmap;)V
    .locals 8

    if-eqz p4, :cond_0

    sget-object v0, Lcom/sid/tvos/MainActivity;->FROST:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/sid/tvos/w;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sid/tvos/w;-><init>(Lcom/sid/tvos/MainActivity;IILandroid/graphics/Bitmap;Lcom/sid/tvos/WatchNext$Item;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$selectCw$61(IILcom/sid/tvos/WatchNext$Item;)V
    .locals 3

    iget v0, p0, Lcom/sid/tvos/MainActivity;->cwSelected:I

    if-ne v0, p1, :cond_3

    iget v0, p0, Lcom/sid/tvos/MainActivity;->cwPosition:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwBackdrops:Landroid/util/LruCache;

    iget-object v1, p3, Lcom/sid/tvos/WatchNext$Item;->art:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget p1, p0, Lcom/sid/tvos/MainActivity;->cwPosition:I

    iget p2, p0, Lcom/sid/tvos/MainActivity;->shelfPosition:I

    if-ne p1, p2, :cond_1

    iget-boolean p1, p0, Lcom/sid/tvos/MainActivity;->shelfShown:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sid/tvos/MainActivity;->setShelf(Landroid/graphics/Bitmap;I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p3, Lcom/sid/tvos/WatchNext$Item;->art:Ljava/lang/String;

    invoke-static {v0}, Lcom/sid/tvos/WatchNext;->bestArt(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v1}, Lcom/sid/tvos/Stage;->cap(I)I

    move-result v1

    new-instance v2, Lcom/sid/tvos/r;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/sid/tvos/r;-><init>(Lcom/sid/tvos/MainActivity;IILcom/sid/tvos/WatchNext$Item;)V

    invoke-static {p0, v0, v1, v2}, Lcom/sid/tvos/Images;->loadFirst(Landroid/content/Context;[Ljava/lang/String;ILcom/sid/tvos/Images$Callback;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$setUpStatusPill$76([FLandroid/graphics/drawable/GradientDrawable;Landroid/widget/TextClock;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    const/4 v0, 0x0

    aput p4, p1, v0

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float p1, p1, p4

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const v0, -0xe3e3e2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p4, p2, v0}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setUpStatusPill$77([Landroid/animation/ValueAnimator;[FLandroid/graphics/drawable/GradientDrawable;Landroid/widget/TextClock;Landroid/view/View;Z)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p5

    const v1, 0x3f8a3d71    # 1.08f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p6, :cond_0

    const v3, 0x3f8a3d71    # 1.08f

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p5, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p5

    if-eqz p6, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p5, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p5

    const-wide/16 v3, 0xf0

    invoke-virtual {p5, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p5

    if-eqz p6, :cond_2

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v3, 0x3f99999a    # 1.2f

    invoke-direct {v1, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    goto :goto_2

    :cond_2
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    :goto_2
    invoke-virtual {p5, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/ViewPropertyAnimator;->start()V

    aget-object p5, p1, v0

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    aget p5, p2, v0

    if-eqz p6, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    const/4 p6, 0x2

    new-array p6, p6, [F

    aput p5, p6, v0

    const/4 p5, 0x1

    aput v2, p6, p5

    invoke-static {p6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p5

    const-wide/16 v1, 0xc8

    invoke-virtual {p5, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p6, Lt/r;

    invoke-direct {p6, p0, p2, p3, p4}, Lt/r;-><init>(Lcom/sid/tvos/MainActivity;[FLandroid/graphics/drawable/GradientDrawable;Landroid/widget/TextClock;)V

    invoke-virtual {p5, p6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    aput-object p5, p1, v0

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static synthetic lambda$setUpStatusPill$78(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method private synthetic lambda$setUpStatusPill$79(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->showControlCenter()V

    return-void
.end method

.method private synthetic lambda$setUpStatusPill$80(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/4 p1, 0x1

    packed-switch p2, :pswitch_data_0

    return p3

    :pswitch_0
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->downFromStatusBar()V

    :pswitch_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private synthetic lambda$setUpTopBar$71(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->openAssistant()V

    return-void
.end method

.method private synthetic lambda$setUpTopBar$72(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->shownStatusButtons()Ljava/util/List;

    move-result-object p3

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :pswitch_1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :pswitch_2
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->downFromStatusBar()V

    :pswitch_3
    return v1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$setUpTopBar$73(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private static synthetic lambda$setUpTopBar$74(Landroid/widget/ImageView;Landroid/view/View;Z)V
    .locals 4

    const/4 p1, 0x1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    if-eqz p2, :cond_0

    const p2, -0xeeeeef

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    aput-object p2, v2, p1

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lt/q;

    invoke-direct {v0, p0, p1}, Lt/q;-><init>(Landroid/view/View;I)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$showBackdrop$9(IIZLandroid/graphics/Bitmap;I)V
    .locals 0

    if-eqz p5, :cond_1

    iget p4, p0, Lcom/sid/tvos/MainActivity;->backdropGen:I

    if-ne p1, p4, :cond_0

    iget-object p4, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-static {p4, p2}, Lcom/sid/tvos/Blur;->capture(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p0, p2, p3, p1}, Lcom/sid/tvos/MainActivity;->blurBackdrop(Landroid/graphics/Bitmap;ZI)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p4, p3, p1}, Lcom/sid/tvos/MainActivity;->blurBackdrop(Landroid/graphics/Bitmap;ZI)V

    return-void
.end method

.method private static synthetic lambda$showBluetoothMenu$86(ZLandroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :goto_0
    return-void
.end method

.method private static synthetic lambda$showBluetoothMenu$87(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    invoke-static {p0}, Lcom/sid/tvos/MainActivity;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    invoke-static {p1}, Lcom/sid/tvos/MainActivity;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$showCenteredPanel$163()V
    .locals 3

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->dim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$showCenteredPanel$164(Landroid/view/View;Landroid/widget/PopupWindow;Landroid/widget/LinearLayout;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x3f733333    # 0.95f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xdc

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const v0, 0x3fe66666    # 1.8f

    invoke-direct {p2, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->showBackdrop()V

    invoke-static {p3}, Lcom/sid/tvos/MainActivity;->focusFirst(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private synthetic lambda$showControlCenter$177()V
    .locals 4

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->dim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sid/tvos/MainActivity;->controlCenter:Landroid/widget/PopupWindow;

    return-void
.end method

.method private synthetic lambda$showControlCenter$178(Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 1

    new-instance p2, Lt/P;

    const/16 v0, 0xc

    invoke-direct {p2, p0, v0}, Lt/P;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->fadeOutThen(Landroid/widget/PopupWindow;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$showControlCenter$179(Landroid/view/View;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f933333    # 1.15f

    if-eqz p1, :cond_0

    const v2, 0x3f933333    # 1.15f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p1, :cond_1

    const v0, 0x3f933333    # 1.15f

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xb4

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$showControlCenter$180()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sid/tvos/StandByActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$showControlCenter$181(Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 1

    new-instance p2, Lt/c;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->fadeOutThen(Landroid/widget/PopupWindow;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showControlCenter$182()V
    .locals 1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->showWifiMenu(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$showControlCenter$183(Landroid/widget/PopupWindow;)V
    .locals 2

    new-instance v0, Lt/P;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lt/P;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-direct {p0, p1, v0}, Lcom/sid/tvos/MainActivity;->fadeOutThen(Landroid/widget/PopupWindow;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showControlCenter$184()V
    .locals 1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->showBluetoothMenu(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$showControlCenter$185(Landroid/widget/PopupWindow;)V
    .locals 2

    new-instance v0, Lt/P;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lt/P;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-direct {p0, p1, v0}, Lcom/sid/tvos/MainActivity;->fadeOutThen(Landroid/widget/PopupWindow;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showControlCenter$186(Landroid/widget/PopupWindow;)V
    .locals 2

    new-instance v0, Lt/P;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lt/P;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-direct {p0, p1, v0}, Lcom/sid/tvos/MainActivity;->fadeOutThen(Landroid/widget/PopupWindow;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showControlCenter$187()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->showSettingsMenu(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$showControlCenter$188(Landroid/widget/PopupWindow;)V
    .locals 2

    new-instance v0, Lt/P;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lt/P;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-direct {p0, p1, v0}, Lcom/sid/tvos/MainActivity;->fadeOutThen(Landroid/widget/PopupWindow;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showControlCenter$189(Landroid/view/View;)V
    .locals 1

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->dark(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/sid/tvos/Appearance;->setDark(Landroid/content/Context;Z)V

    invoke-static {p0}, Lcom/sid/tvos/DarkSchedule;->holdManual(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyDark()V

    return-void
.end method

.method private synthetic lambda$showControlCenter$190(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->open(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$showControlCenter$191()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->open(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic lambda$showControlCenter$192(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private static synthetic lambda$showCwViews$63(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$showInputs$198()V
    .locals 3

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->dim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$showInputs$199(Landroid/media/tv/TvInputInfo;Landroid/media/tv/TvInputInfo;)I
    .locals 5

    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x3ef

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getType()I

    move-result v4

    if-ne v4, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v2, -0x1

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p1, p0}, Landroid/media/tv/TvInputInfo;->loadLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0}, Landroid/media/tv/TvInputInfo;->loadLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$showInputs$200(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/media/tv/TvContract;->buildChannelUriForPassthroughInput(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "vnd.android.cursor.item/channel"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->open(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$showInputs$201(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->open(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$showRecents$205()V
    .locals 2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->recentsRow:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private synthetic lambda$showRemapMenu$165()V
    .locals 2

    invoke-static {p0}, Lcom/sid/tvos/Remaps;->enableService(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/sid/tvos/R$string;->remap_turned_on:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->open(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$showRemapMenu$166(ILjava/lang/String;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/sid/tvos/Remaps;->remove(Landroid/content/Context;I)V

    sget p1, Lcom/sid/tvos/R$string;->remap_removed:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$showShelf$35(IZZILandroid/graphics/Bitmap;)V
    .locals 1

    iget v0, p0, Lcom/sid/tvos/MainActivity;->shelfPosition:I

    if-ne v0, p1, :cond_2

    iget-boolean v0, p0, Lcom/sid/tvos/MainActivity;->shelfShown:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/sid/tvos/MainActivity;->cwPosition:I

    if-ne p2, p1, :cond_0

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->cwItems:Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p5, p1, p4}, Lcom/sid/tvos/MainActivity;->ownBlur(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p5

    :cond_1
    invoke-direct {p0, p5, p4}, Lcom/sid/tvos/MainActivity;->setShelf(Landroid/graphics/Bitmap;I)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$showShelf$36(ILandroid/graphics/Bitmap;)V
    .locals 4

    iget-boolean v0, p0, Lcom/sid/tvos/MainActivity;->shelfShown:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/sid/tvos/MainActivity;->shelfPosition:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/sid/tvos/MainActivity;->setShelf(Landroid/graphics/Bitmap;I)V

    :cond_1
    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->shelfGroup:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1c2

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->shelfScrim:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$showStatusMenu$81()V
    .locals 3

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->dim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$showStatusMenu$82(Landroid/view/View;ILandroid/view/View;Landroid/widget/PopupWindow;Landroid/widget/LinearLayout;)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    new-array v0, v0, [I

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget v3, p0, Lcom/sid/tvos/MainActivity;->density:F

    const/high16 v4, 0x41800000    # 16.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    const/4 v5, 0x0

    aget v1, v1, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v1

    sub-int/2addr p1, p2

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, p2

    iget p2, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float p2, p2, v4

    float-to-int p2, p2

    sub-int/2addr v1, p2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x1

    aget p2, v0, p2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, p2

    const/high16 p2, 0x41200000    # 10.0f

    iget v1, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v1, v1, p2

    float-to-int p2, v1

    add-int/2addr v0, p2

    const/4 p2, 0x0

    invoke-virtual {p3, p2}, Landroid/view/View;->setAlpha(F)V

    const/high16 v1, -0x3f000000    # -8.0f

    iget v2, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v2, v2, v1

    invoke-virtual {p3, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    const v2, 0x800033

    invoke-virtual {p4, v1, v2, p1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0xdc

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const p3, 0x3fe66666    # 1.8f

    invoke-direct {p2, p3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->showBackdrop()V

    invoke-static {p5}, Lcom/sid/tvos/MainActivity;->focusFirst(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private static synthetic lambda$showWifiMenu$84(Landroid/net/wifi/WifiManager;Z)V
    .locals 0

    if-eqz p0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$showWifiMenu$85()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->open(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$startMove$28()V
    .locals 2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->movingKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sid/tvos/AppAdapter;->positionOf(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->focusTile(I)V

    return-void
.end method

.method private synthetic lambda$track$227(Landroid/widget/PopupWindow;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->paceKeys(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$updateContinueWatching$43(Ljava/util/Map;)V
    .locals 3

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->cwData:Ljava/util/Map;

    iget p1, p0, Lcom/sid/tvos/MainActivity;->cwPosition:I

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/sid/tvos/MainActivity;->shelfPosition:I

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/sid/tvos/MainActivity;->shelfShown:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->cwItemsFor(I)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwItems:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/sid/tvos/MainActivity;->sameItems(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->renderCw()V

    :cond_0
    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->prewarmCw:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->prewarmCw:Ljava/lang/Runnable;

    const-wide/16 v1, 0x4b0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static synthetic lambda$updateRam$223(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private static synthetic lambda$updateRam$224(Landroid/view/View;JLandroid/app/ActivityManager$MemoryInfo;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-long v0, p0

    mul-long v0, v0, p1

    long-to-double p0, v0

    const-wide/16 v0, 0x1

    iget-wide p2, p3, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    long-to-double p2, p2

    div-double/2addr p0, p2

    double-to-int p0, p0

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p1

    filled-new-array {p1, p0}, [I

    move-result-object p0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p0

    const-wide/16 p1, 0x1f4

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p1, Lt/q;

    const/4 p2, 0x0

    invoke-direct {p1, p4, p2}, Lt/q;-><init>(Landroid/view/View;I)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$wireCwKeys$52(IILandroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    const/4 p5, 0x0

    if-eqz p3, :cond_0

    return p5

    :cond_0
    const/4 p3, 0x1

    packed-switch p4, :pswitch_data_0

    return p5

    :pswitch_0
    sub-int/2addr p2, p3

    if-ne p1, p2, :cond_1

    const/4 p5, 0x1

    :cond_1
    return p5

    :pswitch_1
    if-nez p1, :cond_2

    const/4 p5, 0x1

    :cond_2
    return p5

    :pswitch_2
    iget p1, p0, Lcom/sid/tvos/MainActivity;->cwPosition:I

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->focusTile(I)V

    :goto_0
    invoke-direct {p0, p5}, Lcom/sid/tvos/MainActivity;->setCwFocusable(Z)V

    return p3

    :pswitch_3
    iput p1, p0, Lcom/sid/tvos/MainActivity;->fullFromCard:I

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->enterFullScreen()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$zoom$68(Landroid/graphics/Rect;FF[FFLandroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Float;

    invoke-virtual {p6}, Ljava/lang/Float;->floatValue()F

    move-result p6

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p2, v1

    mul-float v1, v1, p6

    add-float/2addr v1, v0

    div-float/2addr v1, p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p3, v0

    mul-float v0, v0, p6

    add-float/2addr v0, p2

    div-float/2addr v0, p3

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->launchCard:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->launchCard:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->launchCard:Landroid/widget/ImageView;

    iget p3, p1, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p6

    mul-float p3, p3, v2

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->launchCard:Landroid/widget/ImageView;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    mul-float p1, p1, v2

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    mul-float p5, p5, v2

    const p1, 0x3c23d70a    # 0.01f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr p5, p1

    const/4 p1, 0x0

    aput p5, p4, p1

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->launchCard:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method

.method private launchArt(Lcom/sid/tvos/AppAdapter$Entry;)Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {v0}, Lcom/sid/tvos/Stage;->cap(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    iget-object v3, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v2, v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lcom/sid/tvos/IconPack;->tile(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;II)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {p0, p1, v0, v1}, Lcom/sid/tvos/Stage;->iconArt(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {v2}, Lcom/sid/tvos/Gpu;->upload(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private launchArtFor(Lcom/sid/tvos/AppAdapter$Entry;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sid/tvos/AppAdapter$Entry;->key()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->dark(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "|dark"

    goto :goto_0

    :cond_0
    const-string p1, "|light"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sid/tvos/IconPack;->current(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private layoutChoice(Lcom/sid/tvos/MainActivity$SettingsPanel;IILjava/lang/String;I)V
    .locals 7

    invoke-static {p0, p4}, Lcom/sid/tvos/Appearance;->step(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const-string v0, "row_icons"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_0

    new-instance v6, Lcom/sid/tvos/y;

    invoke-direct {v6, v4, p0, p4}, Lcom/sid/tvos/y;-><init>(ILcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sid/tvos/MainActivity$SettingsPanel;->choices(ILjava/lang/String;[Ljava/lang/String;ILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;)V

    return-void

    :cond_0
    new-instance v5, Lcom/sid/tvos/q;

    const/4 p3, 0x1

    invoke-direct {v5, p3, p0, p4}, Lcom/sid/tvos/q;-><init>(ILcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v0, p1

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sid/tvos/MainActivity$SettingsPanel;->choices(ILjava/lang/String;[Ljava/lang/String;ILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;)V

    return-void
.end method

.method private layoutCw()V
    .locals 8

    iget v0, p0, Lcom/sid/tvos/MainActivity;->dockTopPx:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->cwCardPx()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->cwTopDp()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/high16 v3, 0x42180000    # 38.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    sget-object v3, Lcom/sid/tvos/Appearance;->CW_OFFSET_DP:[I

    const-string v4, "cw_pos"

    invoke-static {p0, v4}, Lcom/sid/tvos/Appearance;->step(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    aget v3, v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    const/high16 v5, 0x42300000    # 44.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/sid/tvos/MainActivity;->dockTopPx:I

    add-int/2addr v5, v1

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    add-int v4, v2, v0

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v5, v4

    add-int/2addr v5, v3

    add-int/2addr v1, v2

    int-to-float v3, v0

    const v4, 0x3d4cccc0    # 0.049999952f

    mul-float v3, v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v5, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int v3, v1, v0

    iput v3, p0, Lcom/sid/tvos/MainActivity;->cwBottomPx:I

    iget-object v3, p0, Lcom/sid/tvos/MainActivity;->cwScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x41600000    # 14.0f

    iget v5, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v5, v5, v4

    float-to-int v4, v5

    sub-int v4, v1, v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v7, 0x30

    if-ne v6, v4, :cond_1

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v6, v7, :cond_2

    :cond_1
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v4, p0, Lcom/sid/tvos/MainActivity;->cwScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v3, p0, Lcom/sid/tvos/MainActivity;->cwInfo:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr v1, v2

    iget v2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v2, v1, :cond_3

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->cwInfo:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v0, :cond_4

    iget v0, p0, Lcom/sid/tvos/MainActivity;->cwPosition:I

    if-ltz v0, :cond_4

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->renderCw()V

    :cond_4
    return-void
.end method

.method private liveTvIntent()Landroid/content/Intent;
    .locals 3

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->liveTvPkg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->liveTvPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->tunerInputId()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/media/tv/TvContract;->buildChannelUriForPassthroughInput(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "vnd.android.cursor.item/channel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->liveTvPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static synthetic m(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$showBluetoothMenu$87(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public static synthetic m0(ILcom/sid/tvos/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p1, p2, p0}, Lcom/sid/tvos/MainActivity;->lambda$layoutChoice$119(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic m1(Lcom/sid/tvos/MainActivity;[Landroid/widget/PopupWindow;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sid/tvos/MainActivity;->lambda$captureRemapKey$169([Landroid/widget/PopupWindow;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m2(Lcom/sid/tvos/MainActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->showBluetoothMenu(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m3(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$buildSettingsPage$96()V

    return-void
.end method

.method public static bridge synthetic m4(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyDark()V

    return-void
.end method

.method private makeCwCard(Ljava/util/List;II[I)Landroid/view/View;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sid/tvos/WatchNext$Item;",
            ">;II[I)",
            "Landroid/view/View;"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sid/tvos/WatchNext$Item;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/sid/tvos/R$layout;->item_cw:I

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    aget v2, p4, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v2, 0x1

    aget p4, p4, v2

    iput p4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/high16 p4, 0x41c00000    # 24.0f

    iget v4, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v4, v4, p4

    float-to-int p4, v4

    invoke-virtual {v1, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget p4, Lcom/sid/tvos/R$id;->cwCardTitle:I

    invoke-virtual {v0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/sid/tvos/WatchNext$Item;->title:Ljava/lang/String;

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p4, Lcom/sid/tvos/R$id;->cwCardSub:I

    invoke-virtual {v0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/sid/tvos/WatchNext$Item;->subtitle:Ljava/lang/String;

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/sid/tvos/WatchNext$Item;->subtitle:Ljava/lang/String;

    const/16 v4, 0x8

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 p4, 0x41800000    # 16.0f

    iget v1, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v1, v1, p4

    new-instance p4, Lcom/sid/tvos/MainActivity$9;

    invoke-direct {p4, p0, v1}, Lcom/sid/tvos/MainActivity$9;-><init>(Lcom/sid/tvos/MainActivity;F)V

    invoke-virtual {v0, p4}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt p4, v1, :cond_2

    invoke-static {v0}, Ll/b;->c(Landroid/view/View;)V

    :cond_2
    sget p4, Lcom/sid/tvos/R$id;->cwImage:I

    invoke-virtual {v0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    sget v1, Lcom/sid/tvos/R$id;->cwCardProgress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/sid/tvos/R$id;->cwCardTrack:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v5, p1, Lcom/sid/tvos/WatchNext$Item;->progress:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    new-instance v4, Lcom/sid/tvos/m;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v2, p1, v5}, Lcom/sid/tvos/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_2
    iget-object v1, p1, Lcom/sid/tvos/WatchNext$Item;->art:Ljava/lang/String;

    const/high16 v2, 0x44070000    # 540.0f

    iget v4, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v4, v4, v2

    float-to-int v2, v4

    const/16 v4, 0x3c0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-instance v4, Lcom/sid/tvos/g;

    const/4 v5, 0x1

    invoke-direct {v4, p4, v0, v5}, Lcom/sid/tvos/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p0, v1, v2, v4}, Lcom/sid/tvos/Images;->load(Landroid/content/Context;Ljava/lang/String;ILcom/sid/tvos/Images$Callback;)V

    new-instance p4, Lt/g;

    invoke-direct {p4, p0, p2}, Lt/g;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {v0, p4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance p4, Lcom/sid/tvos/b;

    const/4 v1, 0x2

    invoke-direct {p4, p0, p1, v1}, Lcom/sid/tvos/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/sid/tvos/MainActivity;->wireCwKeys(Landroid/view/View;II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    return-object v0
.end method

.method private static makeFrostSteps(Landroid/graphics/Bitmap;I)[Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-gt p1, v3, :cond_0

    invoke-static {p0, p1}, Lcom/sid/tvos/Blur;->frost(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/sid/tvos/Gpu;->upload(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-array p1, v3, [Landroid/graphics/Bitmap;

    aput-object p0, p1, v1

    return-object p1

    :cond_0
    div-int/lit8 v4, p1, 0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {p0, v4}, Lcom/sid/tvos/Blur;->frost(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/sid/tvos/Gpu;->upload(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    mul-int/lit8 v5, p1, 0x2

    div-int/2addr v5, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {p0, v5}, Lcom/sid/tvos/Blur;->frost(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Lcom/sid/tvos/Gpu;->upload(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {p0, p1}, Lcom/sid/tvos/Blur;->frost(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/sid/tvos/Gpu;->upload(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-array p1, v2, [Landroid/graphics/Bitmap;

    aput-object v4, p1, v1

    aput-object v5, p1, v3

    aput-object p0, p1, v0

    return-object p1
.end method

.method private moveFavourite(II)V
    .locals 2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {v0, p1}, Lcom/sid/tvos/AppAdapter;->entryAt(I)Lcom/sid/tvos/AppAdapter$Entry;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, v0, p2}, Lcom/sid/tvos/Favorites;->move(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {v1, p1}, Lcom/sid/tvos/AppAdapter;->favouriteIndexAt(I)I

    move-result v1

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {v1}, Lcom/sid/tvos/AppAdapter;->reload()V

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {v1, v0}, Lcom/sid/tvos/AppAdapter;->showFavourite(I)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sid/tvos/MainActivity$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/sid/tvos/MainActivity$8;-><init>(Lcom/sid/tvos/MainActivity;II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic n(Lcom/sid/tvos/MainActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$onActivityResult$132(Z)V

    return-void
.end method

.method public static synthetic n0(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sid/tvos/MainActivity;->lambda$cwColourRows$123(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n1(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sid/tvos/MainActivity;->lambda$addInputRow$202(Landroid/widget/PopupWindow;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n2(Lcom/sid/tvos/MainActivity;ZLjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$applyDark$159(ZLjava/util/List;)V

    return-void
.end method

.method public static synthetic n3(Landroid/widget/PopupWindow;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$fadeOutThen$203(Landroid/widget/PopupWindow;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic n4(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyStatusItems()V

    return-void
.end method

.method public static synthetic o(Lcom/sid/tvos/MainActivity;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$recentCard$212(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic o0(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$onLaunch$64(Lcom/sid/tvos/AppAdapter$Entry;)V

    return-void
.end method

.method public static synthetic o1(ILcom/sid/tvos/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p1, p2, p0}, Lcom/sid/tvos/MainActivity;->lambda$cwBgChoice$134(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic o2(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$onTileLongPress$22(Lcom/sid/tvos/AppAdapter$Entry;)V

    return-void
.end method

.method public static synthetic o3(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$onTileLongPress$23(Lcom/sid/tvos/AppAdapter$Entry;)V

    return-void
.end method

.method public static bridge synthetic o4(Lcom/sid/tvos/MainActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->avatarBadge()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private open(Landroid/content/Intent;)V
    .locals 2

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    sget v0, Lcom/sid/tvos/R$anim;->fade_in_soft:I

    sget v1, Lcom/sid/tvos/R$anim;->fade_out_soft:I

    invoke-static {p0, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sid/tvos/MainActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget p1, Lcom/sid/tvos/R$string;->not_available:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private openAirPlay()V
    .locals 11

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.tcl.airplay2"

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->isInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const-string v2, "com.tcl.tv"

    invoke-static {v0, v2}, Lcom/sid/tvos/MainActivity;->isEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget v0, Lcom/sid/tvos/R$string;->airplay_needs_tv_app:I

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "Show.Home.AirplayAPK"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.mediatek.AirplayAPK"

    const-string v4, "com.mediatek.activity.TVActivity"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v1}, Lcom/sid/tvos/MainActivity;->open(Landroid/content/Intent;)V

    return-void

    :cond_2
    const-string v1, "android.intent.category.LEANBACK_LAUNCHER"

    const-string v4, "android.intent.category.LAUNCHER"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v4, v5, :cond_6

    aget-object v5, v1, v4

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v0, v6, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "airplay"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "airscreen"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "airreceiver"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->open(Landroid/content/Intent;)V

    return-void

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    sget v0, Lcom/sid/tvos/R$string;->no_airplay:I

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private openAssistant()V
    .locals 7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VOICE_ASSIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.action.WEB_SEARCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x4

    new-array v5, v4, [Landroid/content/Intent;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v1, 0x2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    aput-object v3, v5, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v5, v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/sid/tvos/MainActivity;->open(Landroid/content/Intent;)V

    return-void

    :cond_1
    sget v0, Lcom/sid/tvos/R$string;->not_available:I

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private openBluetooth()V
    .locals 7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.intent.action.CONNECT_INPUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    new-array v4, v3, [Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v1, 0x2

    aput-object v2, v4, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v4, v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v2}, Lcom/sid/tvos/MainActivity;->open(Landroid/content/Intent;)V

    return-void

    :cond_0
    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    sget v0, Lcom/sid/tvos/R$string;->not_available:I

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private openCast()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.settings.CAST_RECEIVER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->open(Landroid/content/Intent;)V

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method private openCw(Lcom/sid/tvos/WatchNext$Item;)V
    .locals 2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    iget v1, p0, Lcom/sid/tvos/MainActivity;->cwPosition:I

    invoke-virtual {v0, v1}, Lcom/sid/tvos/AppAdapter;->entryAt(I)Lcom/sid/tvos/AppAdapter$Entry;

    move-result-object v0

    iget-object v1, p1, Lcom/sid/tvos/WatchNext$Item;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object p1, p1, Lcom/sid/tvos/WatchNext$Item;->intent:Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sid/tvos/AppAdapter$Entry;->isFolder()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, v0, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->open(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private openFolder(Lcom/sid/tvos/AppAdapter$Entry;Z)V
    .locals 6

    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Entry;->label:Ljava/lang/String;

    sput-object v0, Lcom/sid/tvos/MainActivity;->openFolderName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->folderName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->folderPanel:Landroid/view/View;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-direct {p0, v0, v1}, Lcom/sid/tvos/MainActivity;->applyPanelGlass(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->folderAdapter:Lcom/sid/tvos/AppAdapter;

    iget-object v2, p1, Lcom/sid/tvos/AppAdapter$Entry;->children:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/sid/tvos/AppAdapter;->setEntries(Ljava/util/List;)V

    iget-object p1, p1, Lcom/sid/tvos/AppAdapter$Entry;->children:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x4

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->folderGridView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p0}, Lcom/sid/tvos/AppAdapter;->itemDp(Landroid/content/Context;)F

    move-result v4

    mul-float v4, v4, v3

    iget v3, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v4, v4, v3

    const/4 v5, 0x0

    if-le p1, v2, :cond_0

    mul-float v3, v3, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-float/2addr v4, v3

    float-to-int p1, v4

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x42b40000    # 90.0f

    iget v2, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v2, v2, v1

    sub-float/2addr p1, v2

    sget v1, Lcom/sid/tvos/MainActivity;->COLUMNS:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->folderGridView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->folderPanel:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->folderPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->folderPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v0, 0x31

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->folderPanel:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->folderGridView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->folderBackdrop:Landroid/widget/ImageView;

    const v1, 0x3f333333    # 0.7f

    invoke-direct {p0, v1}, Lcom/sid/tvos/MainActivity;->glassBackdrop(F)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->setHomeFocusable(Z)V

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->hideGlass()V

    iput-boolean v0, p0, Lcom/sid/tvos/MainActivity;->folderGlassShown:Z

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->folderGlass:Lcom/sid/tvos/GlassView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->folderOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->folderOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->folderPanel:Landroid/view/View;

    const v0, 0x3f666666    # 0.9f

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->folderPanel:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->folderName:Landroid/widget/TextView;

    const/high16 v0, -0x3ec00000    # -12.0f

    iget v1, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v1, v1, v0

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->folderOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0xdc

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->folderPanel:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {p2, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->folderName:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->folderOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->folderGridView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lt/c;

    const/4 v0, 0x6

    invoke-direct {p2, p0, v0}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private ownBlur(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2

    iget-object p3, p0, Lcom/sid/tvos/MainActivity;->frosted:Landroid/util/LruCache;

    invoke-virtual {p3, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    if-eqz p3, :cond_0

    return-object p3

    :cond_0
    sget-object p3, Lcom/sid/tvos/MainActivity;->FROST:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lt/F;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, p2, v1}, Lt/F;-><init>(Lcom/sid/tvos/MainActivity;Landroid/graphics/Bitmap;II)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p1
.end method

.method public static synthetic p(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$onTileLongPress$21(Lcom/sid/tvos/AppAdapter$Entry;)V

    return-void
.end method

.method public static synthetic p0(Lcom/sid/tvos/MainActivity;FLandroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sid/tvos/MainActivity;->lambda$ccFocusLift$195(FLandroid/view/View;Z)V

    return-void
.end method

.method public static synthetic p1(Lcom/sid/tvos/MainActivity;IILcom/sid/tvos/WatchNext$Item;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sid/tvos/MainActivity;->lambda$selectCw$61(IILcom/sid/tvos/WatchNext$Item;)V

    return-void
.end method

.method public static synthetic p2(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$buildSettingsPage$91()V

    return-void
.end method

.method public static synthetic p3(Lcom/sid/tvos/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$showInputs$200(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic p4(Lcom/sid/tvos/MainActivity;)I
    .locals 1

    .line 1
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->blurDiv(I)I

    move-result p0

    return p0
.end method

.method private paceKeys(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/sid/tvos/R$id;->selected:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lt/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lt/e;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sid/tvos/MainActivity;->paceKeys(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private pickCwPicture(Landroid/view/View;)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    move-object v4, v3

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "frameworkpackagestubs"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    new-instance v7, Landroid/content/ComponentName;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "providers.media"

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v4, v7

    goto :goto_0

    :cond_2
    if-nez v3, :cond_0

    move-object v3, v7

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, v4

    :goto_1
    const/4 v1, 0x1

    if-nez v3, :cond_5

    sget p1, Lcom/sid/tvos/R$string;->cw_no_picker:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_5
    iput-boolean v1, p0, Lcom/sid/tvos/MainActivity;->fromStandByPreview:Z

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->standByReturnFocus:Landroid/view/View;

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x29

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    iput-boolean v2, p0, Lcom/sid/tvos/MainActivity;->fromStandByPreview:Z

    sget p1, Lcom/sid/tvos/R$string;->cw_no_picker:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method

.method private playCloseAnimation()V
    .locals 8

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->launchKey:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->launchFrom:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->launchCard:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sid/tvos/MainActivity;->launchKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->launchCard:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->launchCard:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->dim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->dim:Landroid/widget/ImageView;

    const v2, 0x3f0ccccd    # 0.55f

    invoke-direct {p0, v2}, Lcom/sid/tvos/MainActivity;->glassBackdrop(F)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->dim:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->dim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1cc

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x40200000    # 2.5f

    invoke-direct {v6, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v7, Lt/P;

    const/16 v0, 0xe

    invoke-direct {v7, p0, v0}, Lt/P;-><init>(Lcom/sid/tvos/MainActivity;I)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-wide/16 v4, 0x1cc

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/sid/tvos/MainActivity;->zoom(FFJLandroid/animation/TimeInterpolator;Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->launchCard:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private playFrostSteps(Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V
    .locals 10

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->isLowRam()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x104

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/sid/tvos/MainActivity;->glideMs:J

    const-wide/16 v2, 0xaa

    sub-long/2addr v0, v2

    array-length v2, p2

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x5a

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_1
    array-length v2, p2

    if-ge v8, v2, :cond_2

    aget-object v4, p2, v8

    new-instance v9, Lt/S;

    move-object v2, v9

    move-object v3, p0

    move-object v5, p1

    move-wide v6, v0

    invoke-direct/range {v2 .. v7}, Lt/S;-><init>(Lcom/sid/tvos/MainActivity;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;J)V

    if-nez v8, :cond_1

    invoke-virtual {v9}, Lt/S;->run()V

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    int-to-long v3, v8

    mul-long v3, v3, v0

    invoke-virtual {v2, v9, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private popIn(Landroid/view/View;ZZ)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const v0, 0x3f628c76

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p3, :cond_1

    const-wide/16 v0, 0x17c

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x12c

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p3, :cond_2

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p3, 0x40000000    # 2.0f

    invoke-direct {p2, p3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto :goto_1

    :cond_2
    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    const p3, 0x3fb33333    # 1.4f

    invoke-direct {p2, p3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private prefrost(Landroid/graphics/Bitmap;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->frostedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->frosted:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sid/tvos/Appearance;->blur(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/sid/tvos/MainActivity;->FROST:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lt/F;

    const/4 v3, 0x3

    invoke-direct {v2, p0, p1, v0, v3}, Lt/F;-><init>(Lcom/sid/tvos/MainActivity;Landroid/graphics/Bitmap;II)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private previewBlur(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sid/tvos/Appearance;->setBlur(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->frostSteps:Landroid/util/LruCache;

    invoke-virtual {p1}, Landroid/util/LruCache;->evictAll()V

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->blurScale(Landroid/content/Context;)F

    move-result p1

    sput p1, Lcom/sid/tvos/LiquidGlassDrawable;->blurScale:F

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->settingsPanel:Lcom/sid/tvos/MainActivity$SettingsPanel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->glassSoon()V

    :cond_0
    return-void
.end method

.method public static synthetic q(Lcom/sid/tvos/MainActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildAppearancePage$105(I)V

    return-void
.end method

.method public static synthetic q0([F)[I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sid/tvos/MainActivity;->lambda$cwColourRows$124([F)[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q1()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/sid/tvos/MainActivity;->lambda$new$32()V

    return-void
.end method

.method public static synthetic q2(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$ccPill$193(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q3(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->showRecents()V

    return-void
.end method

.method public static bridge synthetic q4(Lcom/sid/tvos/MainActivity;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->blurPx(I)I

    move-result p0

    return p0
.end method

.method public static synthetic r(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$new$57()V

    return-void
.end method

.method public static synthetic r0(ILcom/sid/tvos/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p1, p0, p2}, Lcom/sid/tvos/MainActivity;->lambda$showRemapMenu$166(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic r1()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/sid/tvos/MainActivity;->lambda$new$62()V

    return-void
.end method

.method public static synthetic r2(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildSettingsPage$99(Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void
.end method

.method public static synthetic r3(Lcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p1, p0, p2}, Lcom/sid/tvos/MainActivity;->lambda$buildProfilePage$141(Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic r4(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->closeRecentsNow()V

    return-void
.end method

.method private recentCard(Lcom/sid/tvos/AppAdapter$Entry;II)Landroid/view/View;
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v4, p3

    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setClickable(Z)V

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v10, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget v5, v7, Lcom/sid/tvos/MainActivity;->density:F

    const/high16 v6, 0x42200000    # 40.0f

    mul-float v6, v6, v5

    float-to-int v6, v6

    const/high16 v11, 0x41c00000    # 24.0f

    mul-float v5, v5, v11

    float-to-int v5, v5

    invoke-static/range {p0 .. p1}, Lcom/sid/tvos/IconPack;->tile(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;)Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-object v12, v8, Lcom/sid/tvos/AppAdapter$Entry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_1

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v13, 0x40c00000    # 6.0f

    iget v14, v7, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v14, v14, v13

    invoke-direct {p0, v3, v14}, Lcom/sid/tvos/MainActivity;->roundCorners(Landroid/view/View;F)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v5, v8, Lcom/sid/tvos/AppAdapter$Entry;->label:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    sget v0, Lcom/sid/tvos/R$font;->inter_semibold:I

    invoke-static {p0, v0}, Le/k;->b(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sub-int v6, v9, v6

    iget v13, v7, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v13, v13, v5

    float-to-int v5, v13

    sub-int/2addr v6, v5

    const/4 v13, -0x2

    invoke-direct {v0, v6, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x41200000    # 10.0f

    iget v6, v7, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v6, v6, v5

    float-to-int v5, v6

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v3, v7, Lcom/sid/tvos/MainActivity;->density:F

    const/high16 v5, 0x41400000    # 12.0f

    mul-float v5, v5, v3

    float-to-int v5, v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/high16 v5, 0x40800000    # 4.0f

    mul-float v3, v3, v5

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v10, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->shadowPad()I

    move-result v1

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v9, v4}, Lcom/sid/tvos/MainActivity;->recentShadow(II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v5, v1, 0x2

    add-int v6, v9, v5

    add-int/2addr v5, v4

    invoke-direct {v3, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    neg-int v1, v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v14, Landroid/widget/ImageView;

    invoke-direct {v14, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v1, 0x41b00000    # 22.0f

    iget v2, v7, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v2, v2, v1

    invoke-direct {p0, v14, v2}, Lcom/sid/tvos/MainActivity;->roundCorners(Landroid/view/View;F)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v9, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v14, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sid/tvos/Stage;->brandBackground(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v11, Ljava/lang/Thread;

    new-instance v12, Lcom/sid/tvos/H;

    const/4 v6, 0x0

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/sid/tvos/H;-><init>(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;IILandroid/widget/ImageView;I)V

    invoke-direct {v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    :goto_1
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :cond_2
    if-eqz v11, :cond_3

    invoke-virtual {v14, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v11, Ljava/lang/Thread;

    new-instance v12, Lcom/sid/tvos/H;

    const/4 v6, 0x1

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/sid/tvos/H;-><init>(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;IILandroid/widget/ImageView;I)V

    invoke-direct {v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    new-instance v11, Ljava/lang/Thread;

    new-instance v12, Lcom/sid/tvos/H;

    const/4 v6, 0x2

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/sid/tvos/H;-><init>(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;IILandroid/widget/ImageView;I)V

    invoke-direct {v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    goto :goto_1

    :goto_2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    int-to-float v1, v9

    const v2, 0x3ee66666    # 0.45f

    mul-float v1, v1, v2

    float-to-int v1, v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x3f5c28f6    # 0.86f

    invoke-virtual {v10, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setScaleY(F)V

    new-instance v0, Lt/T;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lt/T;-><init>(Landroid/view/KeyEvent$Callback;I)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Lcom/sid/tvos/I;

    invoke-direct {v0, p0, v8, v14}, Lcom/sid/tvos/I;-><init>(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;Landroid/widget/ImageView;)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lt/e;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lt/e;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-object v10
.end method

.method private recentCardPx()[I
    .locals 3

    sget-object v0, Lcom/sid/tvos/Appearance;->RECENT_WIDTH:[F

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->recentSize(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    aget v0, v0, v1

    mul-float v2, v2, v0

    float-to-int v0, v2

    mul-int/lit8 v1, v0, 0x9

    div-int/lit8 v1, v1, 0x10

    filled-new-array {v0, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method private recentShadow(II)Landroid/graphics/Bitmap;
    .locals 13

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->shadowPad()I

    move-result v0

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->recentShadowBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    add-int v4, p1, v3

    if-ne v2, v4, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v3, p2

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    add-int v2, p1, v1

    add-int/2addr v1, p2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-direct {v3, v12}, Landroid/graphics/Paint;-><init>(I)V

    int-to-float v4, v0

    const v5, 0x3f0ccccd    # 0.55f

    mul-float v5, v5, v4

    const/high16 v6, 0x66000000

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v6, Landroid/graphics/BlurMaskFilter;

    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v6, v5, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const v5, 0x3e6147ae    # 0.22f

    mul-float v5, v5, v4

    const v6, 0x3dcccccd    # 0.1f

    mul-float v6, v6, v4

    new-instance v7, Landroid/graphics/RectF;

    add-float v8, v4, v6

    add-float/2addr v4, v5

    add-int/2addr p1, v0

    int-to-float p1, p1

    sub-float/2addr p1, v6

    add-int/2addr v0, p2

    int-to-float p2, v0

    add-float/2addr p2, v5

    invoke-direct {v7, v8, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p1, p0, Lcom/sid/tvos/MainActivity;->density:F

    const/high16 p2, 0x41b00000    # 22.0f

    mul-float v0, p1, p2

    mul-float p1, p1, p2

    invoke-virtual {v2, v7, v0, p1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    mul-int p2, p2, p1

    new-array p1, p2, [I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, p1

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    new-instance v0, Ljava/util/Random;

    const-wide/16 v2, 0x7

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_3

    aget v4, p1, v3

    ushr-int/lit8 v4, v4, 0x18

    if-eqz v4, :cond_2

    const/16 v5, 0xff

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v6, v4

    sub-int/2addr v6, v12

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    shl-int/lit8 v4, v4, 0x18

    aput v4, p1, v3

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, p1

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    iput-object v1, p0, Lcom/sid/tvos/MainActivity;->recentShadowBmp:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method private refreshBackdrop()V
    .locals 9

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->controlCenter:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/sid/tvos/Appearance;->liquid(Landroid/content/Context;)Z

    move-result v4

    iget v0, p0, Lcom/sid/tvos/MainActivity;->backdropGen:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lcom/sid/tvos/MainActivity;->backdropGen:I

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->dim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->dim:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-direct {p0, v1}, Lcom/sid/tvos/MainActivity;->blurDiv(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sid/tvos/Blur;->capture(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->dim:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/sid/tvos/MainActivity;->FROST:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lt/x;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lt/x;-><init>(Lcom/sid/tvos/MainActivity;Ljava/lang/Object;ZILjava/lang/Object;I)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private reloadKeepingFocus()V
    .locals 4

    sget-object v0, Lcom/sid/tvos/MainActivity;->lastFocusedKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {v1}, Lcom/sid/tvos/AppAdapter;->reload()V

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lt/n;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0, v0}, Lt/n;-><init>(ILcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private renderCw()V
    .locals 18

    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, v8, Lcom/sid/tvos/MainActivity;->cwScroll:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    iget v0, v8, Lcom/sid/tvos/MainActivity;->cwPosition:I

    invoke-direct {v8, v0}, Lcom/sid/tvos/MainActivity;->cwItemsFor(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, v8, Lcom/sid/tvos/MainActivity;->cwItems:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, v8, Lcom/sid/tvos/MainActivity;->cwItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xf

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget-object v0, v8, Lcom/sid/tvos/MainActivity;->cwItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sid/tvos/WatchNext$Item;

    iget-object v0, v0, Lcom/sid/tvos/WatchNext$Item;->section:Ljava/lang/String;

    sget v2, Lcom/sid/tvos/R$id;->cwKicker:I

    invoke-virtual {v8, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget v0, Lcom/sid/tvos/R$string;->cw_title:I

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/sid/tvos/MainActivity;->cwCardPx()[I

    move-result-object v10

    iget v0, v8, Lcom/sid/tvos/MainActivity;->cwGen:I

    const/4 v11, 0x1

    add-int/lit8 v12, v0, 0x1

    iput v12, v8, Lcom/sid/tvos/MainActivity;->cwGen:I

    iget-object v13, v8, Lcom/sid/tvos/MainActivity;->cwItems:Ljava/util/List;

    const/4 v0, 0x4

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    iget v0, v8, Lcom/sid/tvos/MainActivity;->cwSelected:I

    add-int/lit8 v2, v9, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v15

    :goto_1
    if-ge v1, v14, :cond_2

    iget-object v0, v8, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    invoke-direct {v8, v13, v1, v9, v10}, Lcom/sid/tvos/MainActivity;->makeCwCard(Ljava/util/List;II[I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v7, v14

    :goto_2
    if-ge v7, v9, :cond_3

    iget-object v6, v8, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v5, Lt/U;

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v12

    move-object v3, v13

    move v4, v7

    move-object v11, v5

    move v5, v9

    move/from16 v16, v9

    move-object v9, v6

    move-object v6, v10

    move/from16 v17, v7

    move v7, v15

    invoke-direct/range {v0 .. v7}, Lt/U;-><init>(Lcom/sid/tvos/MainActivity;ILjava/util/List;II[II)V

    sub-int v7, v17, v14

    int-to-long v0, v7

    const-wide/16 v2, 0x22

    mul-long v0, v0, v2

    const-wide/16 v2, 0x1c2

    add-long/2addr v0, v2

    invoke-virtual {v9, v11, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v7, v17, 0x1

    move/from16 v9, v16

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    invoke-direct {v8, v15}, Lcom/sid/tvos/MainActivity;->selectCw(I)V

    if-lez v15, :cond_4

    if-ge v15, v14, :cond_4

    invoke-direct {v8, v15}, Lcom/sid/tvos/MainActivity;->scrollCwTo(I)V

    :cond_4
    const/4 v0, 0x1

    invoke-direct {v8, v0}, Lcom/sid/tvos/MainActivity;->showCwViews(Z)V

    return-void

    :cond_5
    :goto_3
    invoke-direct {v8, v1}, Lcom/sid/tvos/MainActivity;->showCwViews(Z)V

    return-void
.end method

.method private renderStage(Lcom/sid/tvos/AppAdapter$Entry;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sid/tvos/AppAdapter$Entry;->isPlaceholder()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sid/tvos/AppAdapter$Entry;->isFolder()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/sid/tvos/AppAdapter;->colorOf(Lcom/sid/tvos/AppAdapter$Entry;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/sid/tvos/Stage;->render(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;I)Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private restackRecents(I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->recentsRow:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->recentsRow:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sub-int v2, v0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x13

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    rsub-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    iget v3, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v2, v2, v3

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x168

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/sid/tvos/MainActivity;->CALM:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private roundCorners(Landroid/view/View;F)V
    .locals 1

    new-instance v0, Lcom/sid/tvos/MainActivity$15;

    invoke-direct {v0, p0, p2}, Lcom/sid/tvos/MainActivity$15;-><init>(Lcom/sid/tvos/MainActivity;F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method public static synthetic s(Lcom/sid/tvos/MainActivity;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sid/tvos/MainActivity;->lambda$playFrostSteps$39(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;J)V

    return-void
.end method

.method public static synthetic s0(Landroid/net/wifi/WifiManager;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$showWifiMenu$84(Landroid/net/wifi/WifiManager;Z)V

    return-void
.end method

.method public static synthetic s1(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildSettingsPage$88(Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void
.end method

.method public static synthetic s2(Lcom/sid/tvos/MainActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->showWifiMenu(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s3(Lcom/sid/tvos/MainActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildCwArtRows$150(Z)V

    return-void
.end method

.method public static bridge synthetic s4(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->endBlurPreview()V

    return-void
.end method

.method private static sameItems(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sid/tvos/WatchNext$Item;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sid/tvos/WatchNext$Item;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sid/tvos/WatchNext$Item;

    iget-object v3, v3, Lcom/sid/tvos/WatchNext$Item;->art:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sid/tvos/WatchNext$Item;

    iget-object v4, v4, Lcom/sid/tvos/WatchNext$Item;->art:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sid/tvos/WatchNext$Item;

    iget v3, v3, Lcom/sid/tvos/WatchNext$Item;->progress:F

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sid/tvos/WatchNext$Item;

    iget v4, v4, Lcom/sid/tvos/WatchNext$Item;->progress:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    :cond_4
    return v0

    :cond_5
    :goto_2
    return v1
.end method

.method private saveRemap(ILjava/lang/String;)V
    .locals 4

    invoke-static {p0, p1, p2}, Lcom/sid/tvos/Remaps;->set(Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {p0}, Lcom/sid/tvos/Remaps;->ensureServiceEnabled(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lt/c;

    const/16 v2, 0x17

    invoke-direct {v1, p0, v2}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget v0, Lcom/sid/tvos/R$string;->remap_saved:I

    invoke-static {p1}, Lcom/sid/tvos/Remaps;->keyName(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2}, Lcom/sid/tvos/Remaps;->actionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private scrollCwTo(I)V
    .locals 3

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    new-instance v1, Lt/w;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lt/w;-><init>(Lcom/sid/tvos/MainActivity;II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private selectCw(I)V
    .locals 4

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwItems:Ljava/util/List;

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/sid/tvos/MainActivity;->cwSelected:I

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sid/tvos/WatchNext$Item;

    iget-object v1, v0, Lcom/sid/tvos/WatchNext$Item;->title:Ljava/lang/String;

    iget-object v2, v0, Lcom/sid/tvos/WatchNext$Item;->subtitle:Ljava/lang/String;

    iget v3, v0, Lcom/sid/tvos/WatchNext$Item;->progress:F

    invoke-direct {p0, v1, v2, v3}, Lcom/sid/tvos/MainActivity;->setCwInfo(Ljava/lang/String;Ljava/lang/String;F)V

    iget v1, p0, Lcom/sid/tvos/MainActivity;->cwPosition:I

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->cwArt(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sid/tvos/MainActivity;->cwBackdropRun:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v2, Lcom/sid/tvos/n;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/sid/tvos/n;-><init>(Lcom/sid/tvos/MainActivity;IILcom/sid/tvos/WatchNext$Item;)V

    iput-object v2, p0, Lcom/sid/tvos/MainActivity;->cwBackdropRun:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwBackdropRun:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1e0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->cwBackdropRun:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_0
    return-void
.end method

.method private setCwFocusable(Z)V
    .locals 3

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/sid/tvos/MainActivity;->cwReleasing:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/sid/tvos/MainActivity;->cwReleasing:Z

    return-void
.end method

.method private setCwInfo(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->cwTitle:Landroid/widget/TextView;

    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  \u00b7  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->cwSubtitle:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-ltz p1, :cond_3

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->cwProgress:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/high16 p2, 0x43340000    # 180.0f

    iget v0, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v0, v0, p2

    mul-float v0, v0, p3

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr v0, p2

    float-to-int p2, v0

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->cwProgress:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private setHomeFocusable(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 p1, 0x40000

    goto :goto_0

    :cond_0
    const/high16 p1, 0x60000

    :goto_0
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->topBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    return-void
.end method

.method private setShelf(Landroid/graphics/Bitmap;I)V
    .locals 11

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->shelfBitmap:Landroid/graphics/Bitmap;

    if-ne p1, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->shelf2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->shelf:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->isCwArt(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/sid/tvos/CwScrim;

    invoke-direct {v2}, Lcom/sid/tvos/CwScrim;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lg/a;->f(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->shelfBitmap:Landroid/graphics/Bitmap;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-nez v2, :cond_3

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    const-wide/16 v2, 0x1c2

    goto/16 :goto_3

    :cond_3
    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    if-nez p2, :cond_7

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-boolean p2, p0, Lcom/sid/tvos/MainActivity;->frostFade:Z

    if-eqz p2, :cond_4

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->frostMs()J

    move-result-wide v9

    goto :goto_1

    :cond_4
    iget-wide v9, p0, Lcom/sid/tvos/MainActivity;->stepFadeMs:J

    cmp-long p2, v9, v7

    if-lez p2, :cond_5

    goto :goto_1

    :cond_5
    const-wide/16 v9, 0x140

    :goto_1
    iput-wide v7, p0, Lcom/sid/tvos/MainActivity;->stepFadeMs:J

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget-boolean v2, p0, Lcom/sid/tvos/MainActivity;->frostFade:Z

    if-eqz v2, :cond_6

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_2

    :cond_6
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const v3, 0x3fb33333    # 1.4f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    :goto_2
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-boolean p2, p0, Lcom/sid/tvos/MainActivity;->frostFade:Z

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v9, v10}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/sid/tvos/MainActivity;->frostFade:Z

    move-wide v2, v9

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v7, 0x1a4

    invoke-virtual {p2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    move-wide v2, v7

    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iput-object v0, p0, Lcom/sid/tvos/MainActivity;->shelf:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sid/tvos/MainActivity;->shelf2:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->shelfBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->updateLabelColor(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, v2, v3}, Lcom/sid/tvos/MainActivity;->updateStatusGlass(Landroid/graphics/Bitmap;J)V

    iget-boolean p2, p0, Lcom/sid/tvos/MainActivity;->shelfShown:Z

    if-eqz p2, :cond_8

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->prefrost(Landroid/graphics/Bitmap;)V

    :cond_8
    :goto_4
    return-void
.end method

.method private setUpRecents()V
    .locals 3

    sget v0, Lcom/sid/tvos/R$id;->recentsOverlay:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sid/tvos/MainActivity;->recentsOverlay:Landroid/widget/FrameLayout;

    sget v0, Lcom/sid/tvos/R$id;->recentsScroll:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/sid/tvos/MainActivity;->recentsScroll:Landroid/widget/HorizontalScrollView;

    sget v0, Lcom/sid/tvos/R$id;->recentsRow:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sid/tvos/MainActivity;->recentsRow:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->recentsRow:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method private setUpStatusPill()V
    .locals 10

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v1, 0x42c80000    # 100.0f

    iget v2, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v2, v2, v1

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v1, -0x8000001

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    iget-object v5, p0, Lcom/sid/tvos/MainActivity;->statusGlass:Lcom/sid/tvos/LiquidGlassDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v5, v6, v0

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-direct {v3, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->topBar:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->topBar:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->topBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget-object v5, p0, Lcom/sid/tvos/MainActivity;->topBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/sid/tvos/MainActivity;->topBar:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    const/high16 v8, 0x41800000    # 16.0f

    iget v9, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v9, v9, v8

    float-to-int v8, v9

    invoke-virtual {v1, v3, v5, v6, v8}, Landroid/view/View;->setPadding(IIII)V

    sget v1, Lcom/sid/tvos/R$id;->clock:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextClock;

    new-array v3, v7, [F

    const/4 v1, 0x0

    aput v1, v3, v0

    new-array v6, v7, [Landroid/animation/ValueAnimator;

    aput-object v2, v6, v0

    iget-object v8, p0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    new-instance v9, Lt/W;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lt/W;-><init>(Lcom/sid/tvos/MainActivity;[Landroid/animation/ValueAnimator;[FLandroid/graphics/drawable/GradientDrawable;Landroid/widget/TextClock;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    new-instance v1, Lt/X;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    new-instance v1, Lt/h;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lt/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    new-instance v1, Lt/e;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lt/e;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->statusAvatar:Landroid/widget/ImageView;

    new-instance v1, Lcom/sid/tvos/MainActivity$12;

    invoke-direct {v1, p0}, Lcom/sid/tvos/MainActivity$12;-><init>(Lcom/sid/tvos/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->statusAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method private setUpTopBar()V
    .locals 11

    sget v0, Lcom/sid/tvos/R$id;->btnWifi:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/sid/tvos/R$id;->btnBluetooth:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/sid/tvos/R$id;->btnAssistant:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lt/h;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lt/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lt/h;

    const/4 v5, 0x2

    invoke-direct {v3, p0, v5}, Lt/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lt/h;

    const/4 v6, 0x3

    invoke-direct {v3, p0, v6}, Lt/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v3, Lcom/sid/tvos/R$id;->btnSettings:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v7, Lt/h;

    const/4 v8, 0x4

    invoke-direct {v7, p0, v8}, Lt/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lt/e;

    invoke-direct {v7, p0, v5}, Lt/e;-><init>(Lcom/sid/tvos/MainActivity;I)V

    new-array v9, v8, [Landroid/view/View;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    aput-object v1, v9, v4

    aput-object v2, v9, v5

    aput-object v3, v9, v6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_0

    aget-object v1, v9, v0

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, -0x1

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    new-instance v3, Lt/T;

    invoke-direct {v3, v2, v10}, Lt/T;-><init>(Landroid/view/KeyEvent$Callback;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    add-int/2addr v0, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method private settingBadge(I)Landroid/graphics/drawable/Drawable;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/sid/tvos/MainActivity;->badgeCache:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Landroid/graphics/Bitmap;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-direct {v1, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 22
    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_0
    const/high16 v2, 0x41e00000    # 28.0f

    .line 26
    .line 27
    iget v3, v0, Lcom/sid/tvos/MainActivity;->density:F

    .line 28
    .line 29
    mul-float v3, v3, v2

    .line 30
    .line 31
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-static/range {p1 .. p1}, Lcom/sid/tvos/MainActivity;->badgeColor(I)I

    .line 36
    .line 37
    .line 38
    move-result v9

    .line 39
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 40
    .line 41
    invoke-static {v2, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 42
    .line 43
    .line 44
    move-result-object v11

    .line 45
    new-instance v12, Landroid/graphics/Canvas;

    .line 46
    .line 47
    invoke-direct {v12, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v12, v2}, Lcom/sid/tvos/MainActivity;->darkTile(Landroid/graphics/Canvas;I)V

    .line 51
    .line 52
    .line 53
    const/high16 v4, 0x40b00000    # 5.5f

    .line 54
    .line 55
    iget v5, v0, Lcom/sid/tvos/MainActivity;->density:F

    .line 56
    .line 57
    mul-float v5, v5, v4

    .line 58
    .line 59
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-static {v2, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 64
    .line 65
    .line 66
    move-result-object v13

    .line 67
    new-instance v14, Landroid/graphics/Canvas;

    .line 68
    .line 69
    invoke-direct {v14, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 70
    .line 71
    .line 72
    invoke-static/range {p0 .. p1}, Ld/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    sub-int v5, v2, v4

    .line 81
    .line 82
    invoke-virtual {v3, v4, v4, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 86
    .line 87
    .line 88
    const/4 v3, 0x3

    .line 89
    new-array v3, v3, [F

    .line 90
    .line 91
    invoke-static {v9, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 92
    .line 93
    .line 94
    const/4 v6, 0x1

    .line 95
    aget v7, v3, v6

    .line 96
    .line 97
    const v8, 0x3f0ccccd    # 0.55f

    .line 98
    .line 99
    .line 100
    mul-float v7, v7, v8

    .line 101
    .line 102
    aput v7, v3, v6

    .line 103
    .line 104
    const/4 v7, 0x2

    .line 105
    const/high16 v8, 0x3f800000    # 1.0f

    .line 106
    .line 107
    aput v8, v3, v7

    .line 108
    .line 109
    new-instance v15, Landroid/graphics/Paint;

    .line 110
    .line 111
    invoke-direct {v15, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 112
    .line 113
    .line 114
    new-instance v10, Landroid/graphics/LinearGradient;

    .line 115
    .line 116
    int-to-float v6, v4

    .line 117
    int-to-float v7, v5

    .line 118
    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 123
    .line 124
    const/4 v4, 0x0

    .line 125
    const/16 v17, 0x0

    .line 126
    .line 127
    move-object v3, v10

    .line 128
    move v5, v6

    .line 129
    move/from16 v6, v17

    .line 130
    .line 131
    move-object v1, v10

    .line 132
    move-object/from16 v10, v16

    .line 133
    .line 134
    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v15, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 138
    .line 139
    .line 140
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 141
    .line 142
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 143
    .line 144
    invoke-direct {v1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v15, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 148
    .line 149
    .line 150
    const/16 v16, 0x0

    .line 151
    .line 152
    int-to-float v1, v2

    .line 153
    const/4 v2, 0x0

    .line 154
    move-object v3, v15

    .line 155
    move v15, v2

    .line 156
    move/from16 v17, v1

    .line 157
    .line 158
    move/from16 v18, v1

    .line 159
    .line 160
    move-object/from16 v19, v3

    .line 161
    .line 162
    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 163
    .line 164
    .line 165
    const/4 v1, 0x0

    .line 166
    invoke-virtual {v12, v13, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 170
    .line 171
    .line 172
    iget-object v1, v0, Lcom/sid/tvos/MainActivity;->badgeCache:Landroid/util/SparseArray;

    .line 173
    .line 174
    move/from16 v2, p1

    .line 175
    .line 176
    invoke-virtual {v1, v2, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 180
    .line 181
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-direct {v1, v2, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 186
    .line 187
    .line 188
    return-object v1
.end method

.method private shadowPad()I
    .locals 2

    const/high16 v0, 0x42300000    # 44.0f

    iget v1, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v1, v1, v0

    float-to-int v0, v1

    return v0
.end method

.method private shelfSignature()J
    .locals 11

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->shelf:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->shelf2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->shelfGroup:Landroid/widget/FrameLayout;

    const/4 v3, 0x3

    new-array v4, v3, [Landroid/view/View;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v1, 0x2

    aput-object v2, v4, v1

    const-wide/16 v1, 0x11

    :goto_0
    const-wide/16 v6, 0x1f

    if-ge v5, v3, :cond_0

    aget-object v8, v4, v5

    mul-long v1, v1, v6

    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v1, v9

    mul-long v1, v1, v6

    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v1, v9

    mul-long v1, v1, v6

    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v1, v9

    mul-long v1, v1, v6

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v1, v6

    add-int/2addr v5, v0

    goto :goto_0

    :cond_0
    mul-long v1, v1, v6

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->shelf:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    mul-long v1, v1, v6

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->shelf2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    return-wide v1
.end method

.method private showAppearanceMenu()V
    .locals 4

    new-instance v0, Lcom/sid/tvos/MainActivity$SettingsPanel;

    invoke-direct {v0, p0}, Lcom/sid/tvos/MainActivity$SettingsPanel;-><init>(Lcom/sid/tvos/MainActivity;)V

    sget v1, Lcom/sid/tvos/R$string;->appearance:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sid/tvos/p;

    const/16 v3, 0x10

    invoke-direct {v2, p0, v3}, Lcom/sid/tvos/p;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {v0, v1, v2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->open(Ljava/lang/String;Lcom/sid/tvos/MainActivity$PageBuilder;)V

    return-void
.end method

.method private showBackdrop()V
    .locals 13

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->liquid(Landroid/content/Context;)Z

    move-result v6

    iget v0, p0, Lcom/sid/tvos/MainActivity;->backdropGen:I

    const/4 v1, 0x1

    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Lcom/sid/tvos/MainActivity;->backdropGen:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/16 v8, 0x8

    const/4 v9, 0x4

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz v6, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->blurDiv(I)I

    move-result v3

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    new-instance v12, Lt/V;

    move-object v0, v12

    move-object v1, p0

    move v2, v7

    move v4, v6

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lt/V;-><init>(Lcom/sid/tvos/MainActivity;IIZLandroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    invoke-static {v11, v10, v12, v0}, Lk/s;->j(Landroid/view/Window;Landroid/graphics/Bitmap;Lt/V;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    :cond_1
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_2

    const/4 v8, 0x4

    :cond_2
    invoke-direct {p0, v8}, Lcom/sid/tvos/MainActivity;->blurDiv(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sid/tvos/Blur;->capture(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, v6, v7}, Lcom/sid/tvos/MainActivity;->blurBackdrop(Landroid/graphics/Bitmap;ZI)V

    return-void
.end method

.method private showBluetoothMenu(Landroid/view/View;)V
    .locals 12

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/widget/PopupWindow;

    invoke-direct {p0, p1, v0}, Lcom/sid/tvos/MainActivity;->showStatusMenu(Landroid/view/View;[Landroid/widget/PopupWindow;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v9, :cond_0

    aget-object v3, v0, v10

    sget v4, Lcom/sid/tvos/R$drawable;->ic_bluetooth:I

    sget v0, Lcom/sid/tvos/R$string;->not_available:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/sid/tvos/MainActivity;->addMenuRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/view/View;

    return-void

    :cond_0
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v11

    aget-object v3, v0, v10

    sget v4, Lcom/sid/tvos/R$drawable;->ic_power:I

    sget v1, Lcom/sid/tvos/R$string;->bluetooth:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v11, :cond_1

    sget v1, Lcom/sid/tvos/R$string;->state_on:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/sid/tvos/R$string;->state_off:I

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lt/t;

    invoke-direct {v8, v11, v9}, Lt/t;-><init>(ZLandroid/bluetooth/BluetoothAdapter;)V

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/sid/tvos/MainActivity;->addMenuRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/view/View;

    if-eqz v11, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lt/u;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1}, Lcom/sid/tvos/MainActivity;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v7

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object v5, v1

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :goto_3
    aget-object v3, v0, v10

    sget v4, Lcom/sid/tvos/R$drawable;->ic_bluetooth:I

    if-eqz v7, :cond_3

    sget v1, Lcom/sid/tvos/R$string;->connected:I

    goto :goto_4

    :cond_3
    sget v1, Lcom/sid/tvos/R$string;->paired:I

    :goto_4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/sid/tvos/MainActivity;->addMenuRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/view/View;

    goto :goto_1

    :cond_4
    aget-object v3, v0, v10

    sget v4, Lcom/sid/tvos/R$drawable;->ic_add:I

    sget v0, Lcom/sid/tvos/R$string;->pair_new_device:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lt/c;

    const/16 v0, 0x8

    invoke-direct {v8, p0, v0}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/sid/tvos/MainActivity;->addMenuRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/view/View;

    :cond_5
    return-void
.end method

.method private showCenteredPanel(Z[Landroid/widget/PopupWindow;)Landroid/widget/LinearLayout;
    .locals 6

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    if-eqz p1, :cond_0

    sget p1, Lcom/sid/tvos/R$layout;->popup_list:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/sid/tvos/R$layout;->popup_inputs:I

    :goto_0
    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x41b00000    # 22.0f

    invoke-direct {p0, p1, v0}, Lcom/sid/tvos/MainActivity;->applyPanelGlass(Landroid/view/View;F)V

    sget v0, Lcom/sid/tvos/R$id;->rows:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/PopupWindow;

    const/high16 v3, 0x43be0000    # 380.0f

    iget v4, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v4, v4, v3

    float-to-int v3, v4

    const/4 v4, -0x2

    const/4 v5, 0x1

    invoke-direct {v1, p1, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    invoke-direct {p0, v1}, Lcom/sid/tvos/MainActivity;->track(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    new-instance v3, Lt/l;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lt/l;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    aput-object v1, p2, v2

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lt/J;

    invoke-direct {v2, p0, p1, v1, v0}, Lt/J;-><init>(Lcom/sid/tvos/MainActivity;Landroid/view/View;Landroid/widget/PopupWindow;Landroid/widget/LinearLayout;)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method private showControlCenter()V
    .locals 12

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->controlCenter:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/sid/tvos/R$layout;->control_center:I

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x43830000    # 262.0f

    iget v2, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    const/4 v11, 0x1

    invoke-direct {v2, v0, v1, v4, v11}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    invoke-direct {p0, v2}, Lcom/sid/tvos/MainActivity;->track(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v2

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v11}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    new-instance v4, Lt/l;

    const/4 v5, 0x5

    invoke-direct {v4, p0, v5}, Lt/l;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    sget v4, Lcom/sid/tvos/R$id;->ccAvatar:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const/high16 v5, 0x41f00000    # 30.0f

    iget v6, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v6, v6, v5

    float-to-int v5, v6

    invoke-static {p0, v5}, Lcom/sid/tvos/Profile;->avatar(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v5, Lt/v;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v2, v6}, Lt/v;-><init>(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lt/y;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget v4, Lcom/sid/tvos/R$id;->ccSleep:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lt/v;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v2, v6}, Lt/v;-><init>(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v4, Lcom/sid/tvos/R$id;->ccSleep:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x3f866666    # 1.05f

    invoke-direct {p0, v4, v5}, Lcom/sid/tvos/MainActivity;->ccFocusLift(Landroid/view/View;F)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    sget v6, Lcom/sid/tvos/R$id;->ccWifi:I

    sget v7, Lcom/sid/tvos/R$drawable;->ic_wifi:I

    sget v5, Lcom/sid/tvos/R$string;->wifi:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sid/tvos/MainActivity;->wifiLabel:Ljava/lang/String;

    :goto_1
    move-object v9, v4

    goto :goto_2

    :cond_2
    sget v4, Lcom/sid/tvos/R$string;->state_off:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :goto_2
    new-instance v10, Lt/C;

    const/4 v4, 0x0

    invoke-direct {v10, p0, v2, v4}, Lt/C;-><init>(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;I)V

    move-object v4, p0

    move-object v5, v0

    invoke-direct/range {v4 .. v10}, Lcom/sid/tvos/MainActivity;->ccPill(Landroid/view/View;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    sget v6, Lcom/sid/tvos/R$id;->ccBluetooth:I

    sget v7, Lcom/sid/tvos/R$drawable;->ic_bluetooth:I

    sget v5, Lcom/sid/tvos/R$string;->bluetooth:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    sget v4, Lcom/sid/tvos/R$string;->state_on:I

    goto :goto_3

    :cond_3
    sget v4, Lcom/sid/tvos/R$string;->state_off:I

    :goto_3
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lt/C;

    const/4 v4, 0x1

    invoke-direct {v10, p0, v2, v4}, Lt/C;-><init>(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;I)V

    move-object v4, p0

    move-object v5, v0

    invoke-direct/range {v4 .. v10}, Lcom/sid/tvos/MainActivity;->ccPill(Landroid/view/View;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    sget v6, Lcom/sid/tvos/R$id;->ccInputs:I

    sget v7, Lcom/sid/tvos/R$drawable;->ic_input:I

    sget v4, Lcom/sid/tvos/R$string;->inputs:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lt/C;

    const/4 v4, 0x2

    invoke-direct {v10, p0, v2, v4}, Lt/C;-><init>(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;I)V

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/sid/tvos/MainActivity;->ccPill(Landroid/view/View;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    sget v6, Lcom/sid/tvos/R$id;->ccSettings:I

    sget v7, Lcom/sid/tvos/R$drawable;->ic_settings:I

    sget v4, Lcom/sid/tvos/R$string;->settings:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lt/C;

    const/4 v4, 0x3

    invoke-direct {v10, p0, v2, v4}, Lt/C;-><init>(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;I)V

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/sid/tvos/MainActivity;->ccPill(Landroid/view/View;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    sget v4, Lcom/sid/tvos/R$id;->ccSleep:I

    sget v5, Lcom/sid/tvos/R$id;->ccWifi:I

    sget v6, Lcom/sid/tvos/R$id;->ccBluetooth:I

    sget v7, Lcom/sid/tvos/R$id;->ccInputs:I

    sget v8, Lcom/sid/tvos/R$id;->ccSettings:I

    filled-new-array {v4, v5, v6, v7, v8}, [I

    move-result-object v4

    const/4 v5, 0x0

    :goto_4
    const/4 v6, 0x5

    if-ge v5, v6, :cond_5

    aget v6, v4, v5

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_4

    const/high16 v7, 0x41d00000    # 26.0f

    iget v8, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v8, v8, v7

    invoke-static {v6, v8}, Lcom/sid/tvos/Corners;->clip(Landroid/view/View;F)V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    sget v4, Lcom/sid/tvos/R$id;->ccRound:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    sget v8, Lcom/sid/tvos/R$drawable;->ic_assistant:I

    sget v5, Lcom/sid/tvos/R$string;->assistant:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lt/c;

    const/16 v5, 0x11

    invoke-direct {v10, p0, v5}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    move-object v5, p0

    move-object v6, v4

    move-object v7, v2

    invoke-direct/range {v5 .. v10}, Lcom/sid/tvos/MainActivity;->ccRound(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->hasAirPlay()Z

    move-result v5

    if-eqz v5, :cond_6

    sget v8, Lcom/sid/tvos/R$drawable;->ic_airplay:I

    sget v5, Lcom/sid/tvos/R$string;->airplay:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lt/c;

    const/16 v5, 0x15

    invoke-direct {v10, p0, v5}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    :goto_5
    move-object v5, p0

    move-object v6, v4

    move-object v7, v2

    invoke-direct/range {v5 .. v10}, Lcom/sid/tvos/MainActivity;->ccRound(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;

    goto :goto_6

    :cond_6
    sget v8, Lcom/sid/tvos/R$drawable;->ic_cast:I

    sget v5, Lcom/sid/tvos/R$string;->cast:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lt/P;

    const/16 v5, 0xf

    invoke-direct {v10, p0, v5}, Lt/P;-><init>(Lcom/sid/tvos/MainActivity;I)V

    goto :goto_5

    :goto_6
    sget v8, Lcom/sid/tvos/R$drawable;->ic_darkmode:I

    sget v5, Lcom/sid/tvos/R$string;->dark_mode:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, v4

    move-object v7, v2

    invoke-direct/range {v5 .. v10}, Lcom/sid/tvos/MainActivity;->ccRound(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v5

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->dark(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    new-instance v6, Lt/h;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lt/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->liveTvIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_7

    sget v8, Lcom/sid/tvos/R$drawable;->ic_livetv:I

    sget v6, Lcom/sid/tvos/R$string;->live_tv:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lt/o;

    const/4 v6, 0x0

    invoke-direct {v10, p0, v5, v6}, Lt/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    :goto_7
    move-object v5, p0

    move-object v6, v4

    move-object v7, v2

    invoke-direct/range {v5 .. v10}, Lcom/sid/tvos/MainActivity;->ccRound(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;

    goto :goto_8

    :cond_7
    sget v8, Lcom/sid/tvos/R$drawable;->ic_display:I

    sget v5, Lcom/sid/tvos/R$string;->display:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lt/c;

    const/4 v5, 0x5

    invoke-direct {v10, p0, v5}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    goto :goto_7

    :goto_8
    iget v4, p0, Lcom/sid/tvos/MainActivity;->density:F

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float v5, v5, v4

    float-to-int v5, v5

    const/high16 v6, 0x42340000    # 45.0f

    mul-float v6, v6, v4

    float-to-int v6, v6

    sub-int/2addr v6, v5

    const/high16 v7, 0x41c00000    # 24.0f

    mul-float v4, v4, v7

    float-to-int v4, v4

    sub-int/2addr v4, v5

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    const v5, 0x3f5c28f6    # 0.86f

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v5, 0x2

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    const v7, 0x800035

    invoke-virtual {v2, v5, v7, v6, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const v6, 0x400ccccd    # 2.2f

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lt/s;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lt/s;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v4, p0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v4, p0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->showBackdrop()V

    iput-boolean v11, p0, Lcom/sid/tvos/MainActivity;->ccOpening:Z

    sget v1, Lcom/sid/tvos/R$id;->ccSleep:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iput-boolean v3, p0, Lcom/sid/tvos/MainActivity;->ccOpening:Z

    iput-object v2, p0, Lcom/sid/tvos/MainActivity;->controlCenter:Landroid/widget/PopupWindow;

    return-void
.end method

.method private showCwViews(Z)V
    .locals 11

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwInfo:Landroid/view/View;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget-wide v6, p0, Lcom/sid/tvos/MainActivity;->cwFadeDelay:J

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    :goto_1
    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v7, p0, Lcom/sid/tvos/MainActivity;->glideDy:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-wide v7, p0, Lcom/sid/tvos/MainActivity;->glideMs:J

    const-wide/16 v9, 0xdc

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/sid/tvos/MainActivity;->glideCurve:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lt/s;

    invoke-direct {v7, v5, v0}, Lt/s;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    goto :goto_1

    :cond_1
    :goto_2
    add-int/2addr v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private showFullHint(Z)V
    .locals 7

    sget v0, Lcom/sid/tvos/R$id;->fullHint:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/sid/tvos/MainActivity;->fullScreen:Z

    if-nez p1, :cond_3

    iget p1, p0, Lcom/sid/tvos/MainActivity;->dockTopPx:I

    if-lez p1, :cond_3

    int-to-float p1, p1

    const/high16 v2, 0x41400000    # 12.0f

    iget v3, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v3, v3, v2

    sub-float/2addr p1, v3

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->cwScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, p0, Lcom/sid/tvos/MainActivity;->cwBottomPx:I

    int-to-float v2, v2

    goto :goto_0

    :cond_0
    const/high16 v2, 0x42700000    # 60.0f

    iget v3, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v3, v3, v2

    sub-float v2, p1, v3

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    goto :goto_1

    :cond_1
    const/high16 v3, 0x41c00000    # 24.0f

    iget v4, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v4, v4, v3

    float-to-int v3, v4

    :goto_1
    sub-float v4, p1, v2

    int-to-float v3, v3

    iget v5, p0, Lcom/sid/tvos/MainActivity;->density:F

    const/high16 v6, 0x40800000    # 4.0f

    mul-float v6, v6, v5

    add-float/2addr v6, v3

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_2
    const/high16 v1, 0x40c00000    # 6.0f

    mul-float v1, v1, v5

    add-float/2addr v1, v2

    sub-float/2addr p1, v3

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v5, v5, v2

    sub-float/2addr p1, v5

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    :goto_2
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xb4

    goto :goto_2

    :goto_3
    return-void
.end method

.method private showInputs()V
    .locals 19

    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/sid/tvos/R$layout;->popup_inputs:I

    iget-object v2, v7, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    const/high16 v0, 0x41b00000    # 22.0f

    invoke-direct {v7, v9, v0}, Lcom/sid/tvos/MainActivity;->applyPanelGlass(Landroid/view/View;F)V

    sget v0, Lcom/sid/tvos/R$id;->rows:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/LinearLayout;

    const/high16 v0, 0x43960000    # 300.0f

    iget v1, v7, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v1, v1, v0

    float-to-int v0, v1

    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    const/4 v11, 0x1

    invoke-direct {v1, v9, v0, v2, v11}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    invoke-direct {v7, v1}, Lcom/sid/tvos/MainActivity;->track(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v12

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v12, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v12, v11}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {v12, v8}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/PopupWindow;->setElevation(F)V

    new-instance v0, Lt/l;

    const/4 v1, 0x0

    invoke-direct {v0, v7, v1}, Lt/l;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {v12, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const-string v0, "tv_input"

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/media/tv/TvInputManager;

    if-eqz v14, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v14}, Landroid/media/tv/TvInputManager;->getTvInputList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lt/m;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v2}, Lt/m;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v15, 0x3ef

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/tv/TvInputInfo;

    invoke-virtual {v4}, Landroid/media/tv/TvInputInfo;->isPassthroughInput()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/media/tv/TvInputInfo;->getType()I

    move-result v5

    if-eq v5, v15, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/media/tv/TvInputManager;->getInputState(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-le v2, v11, :cond_3

    if-ne v3, v2, :cond_3

    const/16 v16, 0x1

    goto :goto_1

    :cond_3
    const/16 v16, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    const/4 v0, 0x0

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputInfo;

    invoke-virtual {v1}, Landroid/media/tv/TvInputInfo;->isPassthroughInput()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v7}, Landroid/media/tv/TvInputInfo;->loadLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v1}, Landroid/media/tv/TvInputInfo;->getType()I

    move-result v3

    if-ne v3, v15, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HDMI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "HDMI "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_7
    move-object v4, v2

    invoke-virtual {v1}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_8

    if-eqz v16, :cond_8

    const/4 v2, -0x1

    const/4 v5, -0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v14, v1}, Landroid/media/tv/TvInputManager;->getInputState(Ljava/lang/String;)I

    move-result v2

    move v5, v2

    :goto_5
    if-nez v3, :cond_9

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_9

    if-nez v0, :cond_9

    invoke-direct {v7, v10}, Lcom/sid/tvos/MainActivity;->addSeparator(Landroid/widget/LinearLayout;)V

    :cond_9
    if-nez v3, :cond_a

    const/16 v18, 0x1

    goto :goto_6

    :cond_a
    move/from16 v18, v0

    :goto_6
    if-eqz v3, :cond_b

    sget v0, Lcom/sid/tvos/R$drawable;->ic_input:I

    :goto_7
    move v3, v0

    goto :goto_8

    :cond_b
    sget v0, Lcom/sid/tvos/R$drawable;->ic_av:I

    goto :goto_7

    :goto_8
    new-instance v6, Lt/n;

    const/4 v0, 0x0

    invoke-direct {v6, v0, v7, v1}, Lt/n;-><init>(ILcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v12

    invoke-direct/range {v0 .. v6}, Lcom/sid/tvos/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    move/from16 v0, v18

    goto :goto_2

    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/sid/tvos/MainActivity;->liveTvIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_d

    invoke-direct {v7, v10}, Lcom/sid/tvos/MainActivity;->addSeparator(Landroid/widget/LinearLayout;)V

    :cond_d
    sget v3, Lcom/sid/tvos/R$drawable;->ic_livetv:I

    sget v1, Lcom/sid/tvos/R$string;->live_tv:I

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lt/o;

    const/4 v1, 0x1

    invoke-direct {v6, v7, v0, v1}, Lt/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v12

    invoke-direct/range {v0 .. v6}, Lcom/sid/tvos/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    :cond_e
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_f

    sget v0, Lcom/sid/tvos/R$string;->no_inputs:I

    invoke-static {v7, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_f
    invoke-virtual {v9, v13}, Landroid/view/View;->setAlpha(F)V

    const/high16 v0, 0x42400000    # 48.0f

    iget v1, v7, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v1, v1, v0

    invoke-virtual {v9, v1}, Landroid/view/View;->setTranslationX(F)V

    iget v0, v7, Lcom/sid/tvos/MainActivity;->density:F

    const/high16 v1, 0x42340000    # 45.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    const/high16 v2, 0x42a80000    # 84.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    iget-object v2, v7, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    const v3, 0x800035

    invoke-virtual {v12, v2, v3, v1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x104

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3fe66666    # 1.8f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-direct/range {p0 .. p0}, Lcom/sid/tvos/MainActivity;->showBackdrop()V

    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private showProfileMenu()V
    .locals 4

    new-instance v0, Lcom/sid/tvos/MainActivity$SettingsPanel;

    invoke-direct {v0, p0}, Lcom/sid/tvos/MainActivity$SettingsPanel;-><init>(Lcom/sid/tvos/MainActivity;)V

    sget v1, Lcom/sid/tvos/R$string;->profile:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sid/tvos/p;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sid/tvos/p;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {v0, v1, v2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->open(Ljava/lang/String;Lcom/sid/tvos/MainActivity$PageBuilder;)V

    return-void
.end method

.method private showRecents()V
    .locals 9

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->recentsOverlay:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->setUpRecents()V

    :cond_0
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->settingsPanel:Lcom/sid/tvos/MainActivity$SettingsPanel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->closeNow()V

    :cond_1
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->recentsRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xc

    invoke-static {p0, v1}, Lcom/sid/tvos/Recents;->list(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/sid/tvos/AppAdapter;->entryFor(Landroid/content/Context;Ljava/lang/String;)Lcom/sid/tvos/AppAdapter$Entry;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->recentCardPx()[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sid/tvos/AppAdapter$Entry;

    iget-object v5, p0, Lcom/sid/tvos/MainActivity;->recentsRow:Landroid/widget/LinearLayout;

    aget v4, v1, v4

    const/4 v6, 0x1

    aget v6, v1, v6

    invoke-direct {p0, v3, v4, v6}, Lcom/sid/tvos/MainActivity;->recentCard(Lcom/sid/tvos/AppAdapter$Entry;II)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->recentsRow:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->closeAllButton()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    aget v1, v1, v4

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->recentsScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v2, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->recentsRow:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->shadowPad()I

    move-result v2

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->shadowPad()I

    move-result v3

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    sget v1, Lcom/sid/tvos/R$id;->recentsEmpty:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    sget v1, Lcom/sid/tvos/R$id;->recentsHint:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->recentRam(Landroid/content/Context;)Z

    move-result v0

    sget v1, Lcom/sid/tvos/R$id;->recentsRam:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_8

    const/4 v3, 0x0

    :cond_8
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->updateRam()V

    :cond_9
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->shelfBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->frostSource:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->frostSource:Ljava/util/Map;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->shelfBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->shelfBitmap:Landroid/graphics/Bitmap;

    :goto_4
    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {v0, v4}, Lcom/sid/tvos/AppAdapter;->shelfAt(I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_b
    sget v1, Lcom/sid/tvos/R$id;->recentsBackdrop:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->blur(Landroid/content/Context;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/sid/tvos/Blur;->frost(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget v0, Lcom/sid/tvos/R$id;->recentsBackdrop:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct {p0, v4}, Lcom/sid/tvos/MainActivity;->setHomeFocusable(Z)V

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->hideGlass()V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->recentsOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->topBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->recentsOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->recentsOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x104

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x0

    :goto_6
    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->recentsRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_d

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->recentsRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x428c0000    # 70.0f

    iget v5, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v5, v5, v3

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-long v5, v0

    const-wide/16 v7, 0x23

    mul-long v5, v5, v7

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v5, 0x1a4

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/sid/tvos/MainActivity;->CALM:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->recentsScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v4, v4}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->recentsRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->recentsRow:Landroid/widget/LinearLayout;

    new-instance v1, Lt/c;

    const/16 v2, 0x1d

    invoke-direct {v1, p0, v2}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method private showRemapMenu()V
    .locals 13

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/sid/tvos/MainActivity;->showCenteredPanel(Z[Landroid/widget/PopupWindow;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-static {p0}, Lcom/sid/tvos/Remaps;->serviceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v4, v0, v1

    sget v5, Lcom/sid/tvos/R$drawable;->ic_power:I

    sget v2, Lcom/sid/tvos/R$string;->remap_turn_on:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v2, Lcom/sid/tvos/R$string;->remap_turn_on_hint:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lt/c;

    const/16 v2, 0x13

    invoke-direct {v9, p0, v2}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, v10

    invoke-direct/range {v2 .. v9}, Lcom/sid/tvos/MainActivity;->addMenuRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/view/View;

    :cond_0
    invoke-static {p0}, Lcom/sid/tvos/Remaps;->all(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/sid/tvos/Remaps;->keyName(I)Ljava/lang/String;

    move-result-object v4

    aget-object v5, v0, v1

    sget v6, Lcom/sid/tvos/R$drawable;->ic_remote:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  \u2192  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/sid/tvos/Remaps;->actionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v2, Lcom/sid/tvos/R$string;->remap_tap_to_remove:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lt/I;

    const/4 v2, 0x0

    invoke-direct {v9, p0, v3, v4, v2}, Lt/I;-><init>(Lcom/sid/tvos/MainActivity;ILjava/io/Serializable;I)V

    const/4 v12, 0x0

    move-object v2, p0

    move-object v3, v10

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v12

    invoke-direct/range {v2 .. v9}, Lcom/sid/tvos/MainActivity;->addMenuRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/view/View;

    goto :goto_0

    :cond_1
    aget-object v4, v0, v1

    sget v5, Lcom/sid/tvos/R$drawable;->ic_add:I

    sget v0, Lcom/sid/tvos/R$string;->remap_add:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lt/c;

    const/16 v0, 0x14

    invoke-direct {v9, p0, v0}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, v10

    invoke-direct/range {v2 .. v9}, Lcom/sid/tvos/MainActivity;->addMenuRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/view/View;

    return-void
.end method

.method private showSettingsMenu(Landroid/view/View;)V
    .locals 3

    new-instance p1, Lcom/sid/tvos/MainActivity$SettingsPanel;

    invoke-direct {p1, p0}, Lcom/sid/tvos/MainActivity$SettingsPanel;-><init>(Lcom/sid/tvos/MainActivity;)V

    sget v0, Lcom/sid/tvos/R$string;->settings:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sid/tvos/p;

    const/16 v2, 0x12

    invoke-direct {v1, p0, v2}, Lcom/sid/tvos/p;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {p1, v0, v1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->open(Ljava/lang/String;Lcom/sid/tvos/MainActivity$PageBuilder;)V

    return-void
.end method

.method private showShelf(I)V
    .locals 12

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->showFullHint(Z)V

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->cwArt(Landroid/content/Context;)Z

    move-result v4

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->isCwApp(I)Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->cwItemsFor(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->cwItemsFor(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0}, Lcom/sid/tvos/CwBackground;->mode(Landroid/content/Context;)I

    move-result v2

    if-nez v4, :cond_1

    if-eqz v1, :cond_1

    if-ne v2, v0, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-lt v2, v1, :cond_2

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v1}, Lcom/sid/tvos/Stage;->cap(I)I

    move-result v1

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v5, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v5}, Lcom/sid/tvos/Stage;->cap(I)I

    move-result v5

    mul-int v2, v2, v5

    int-to-float v2, v2

    iget-object v5, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/sid/tvos/CwBackground;->get(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    if-eqz v1, :cond_3

    move-object v3, v1

    goto :goto_3

    :cond_3
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->isCwApp(I)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->cwBackdropNow(I)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_4
    :goto_3
    iget v1, p0, Lcom/sid/tvos/MainActivity;->shelfPosition:I

    invoke-static {p1, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v9

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    iget-object v10, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    new-instance v11, Lcom/sid/tvos/G;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move v5, v8

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/sid/tvos/G;-><init>(Lcom/sid/tvos/MainActivity;IZZI)V

    invoke-virtual {v10, p1, v11}, Lcom/sid/tvos/AppAdapter;->shelfReady(ILcom/sid/tvos/Stage$Callback;)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_4
    if-eqz v8, :cond_6

    if-eqz v3, :cond_6

    invoke-direct {p0, v3, p1, v9}, Lcom/sid/tvos/MainActivity;->ownBlur(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_6
    iput p1, p0, Lcom/sid/tvos/MainActivity;->shelfPosition:I

    iget-boolean v1, p0, Lcom/sid/tvos/MainActivity;->shelfShown:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->shelfGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const v2, 0x3d4ccccd    # 0.05f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->isLowRam()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v7, 0x1

    :cond_7
    const-wide/16 v1, 0x0

    const-wide/16 v4, 0xc8

    if-eqz v7, :cond_8

    move-wide v10, v4

    goto :goto_5

    :cond_8
    move-wide v10, v1

    :goto_5
    iput-wide v10, p0, Lcom/sid/tvos/MainActivity;->cwFadeDelay:J

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->updateContinueWatching(I)V

    iput-wide v1, p0, Lcom/sid/tvos/MainActivity;->cwFadeDelay:J

    iget-boolean v1, p0, Lcom/sid/tvos/MainActivity;->shelfShown:Z

    if-nez v1, :cond_a

    iput-boolean v0, p0, Lcom/sid/tvos/MainActivity;->shelfShown:Z

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->shelfBack:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v0, Lt/F;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v3, v1}, Lt/F;-><init>(Lcom/sid/tvos/MainActivity;ILandroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/sid/tvos/MainActivity;->shelfBack:Ljava/lang/Runnable;

    if-eqz v7, :cond_9

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    :cond_9
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    :cond_a
    invoke-direct {p0, v3, v9}, Lcom/sid/tvos/MainActivity;->setShelf(Landroid/graphics/Bitmap;I)V

    :goto_6
    return-void
.end method

.method private showStatusMenu(Landroid/view/View;[Landroid/widget/PopupWindow;)Landroid/widget/LinearLayout;
    .locals 11

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/sid/tvos/R$layout;->popup_inputs:I

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    const/high16 v0, 0x41b00000    # 22.0f

    invoke-direct {p0, v8, v0}, Lcom/sid/tvos/MainActivity;->applyPanelGlass(Landroid/view/View;F)V

    sget v0, Lcom/sid/tvos/R$id;->rows:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/high16 v1, 0x43910000    # 290.0f

    iget v2, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v2, v2, v1

    float-to-int v7, v2

    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    const/4 v4, 0x1

    invoke-direct {v1, v8, v7, v2, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    invoke-direct {p0, v1}, Lcom/sid/tvos/MainActivity;->track(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v9

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v9, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {v9, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    new-instance v1, Lt/l;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lt/l;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {v9, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    aput-object v9, p2, v3

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lt/D;

    move-object v4, v1

    move-object v5, p0

    move-object v6, p1

    move-object v10, v0

    invoke-direct/range {v4 .. v10}, Lt/D;-><init>(Lcom/sid/tvos/MainActivity;Landroid/view/View;ILandroid/view/View;Landroid/widget/PopupWindow;Landroid/widget/LinearLayout;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method private showWeather(IIZLjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/sid/tvos/MainActivity;->weatherTemp:I

    iput-object p4, p0, Lcom/sid/tvos/MainActivity;->weatherCity:Ljava/lang/String;

    sget p1, Lcom/sid/tvos/R$id;->weatherIcon:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p2, p3}, Lcom/sid/tvos/Weather;->icon(IZ)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    sget p1, Lcom/sid/tvos/R$id;->weatherPillIcon:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p2, p3}, Lcom/sid/tvos/Weather;->icon(IZ)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sid/tvos/MainActivity;->weatherLoaded:Z

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyStatusItems()V

    return-void
.end method

.method private showWifiMenu(Landroid/view/View;)V
    .locals 12

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/widget/PopupWindow;

    invoke-direct {p0, p1, v1}, Lcom/sid/tvos/MainActivity;->showStatusMenu(Landroid/view/View;[Landroid/widget/PopupWindow;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/net/wifi/WifiManager;

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    aget-object v4, v1, v11

    sget v5, Lcom/sid/tvos/R$drawable;->ic_wifi:I

    iget-object v6, p0, Lcom/sid/tvos/MainActivity;->wifiLabel:Ljava/lang/String;

    sget v2, Lcom/sid/tvos/R$string;->connected:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/sid/tvos/MainActivity;->addMenuRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/view/View;

    :cond_1
    aget-object v4, v1, v11

    sget v5, Lcom/sid/tvos/R$drawable;->ic_power:I

    sget v2, Lcom/sid/tvos/R$string;->wifi:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_2

    sget v2, Lcom/sid/tvos/R$string;->state_on:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/sid/tvos/R$string;->state_off:I

    :goto_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lt/t;

    invoke-direct {v9, v10, v0}, Lt/t;-><init>(Landroid/net/wifi/WifiManager;Z)V

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/sid/tvos/MainActivity;->addMenuRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/view/View;

    aget-object v4, v1, v11

    sget v5, Lcom/sid/tvos/R$drawable;->ic_settings:I

    sget v0, Lcom/sid/tvos/R$string;->wifi_settings:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lt/c;

    const/4 v0, 0x7

    invoke-direct {v9, p0, v0}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/sid/tvos/MainActivity;->addMenuRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/view/View;

    return-void
.end method

.method private shownStatusButtons()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->topBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/sid/tvos/Appearance;->statusMinimal(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    sget-object v1, Lcom/sid/tvos/MainActivity;->STATUS_BUTTONS:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget v4, v1, v3

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private slideDock(II)V
    .locals 2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sid/tvos/MainActivity$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/sid/tvos/MainActivity$13;-><init>(Lcom/sid/tvos/MainActivity;II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method private slideDockNow(II)V
    .locals 7

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/sid/tvos/MainActivity;->COLUMNS:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget v3, Lcom/sid/tvos/MainActivity;->COLUMNS:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/o;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, v3, Landroidx/recyclerview/widget/o;->itemView:Landroid/view/View;

    int-to-float v6, p2

    mul-float v6, v6, v0

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    iget-object v3, v3, Landroidx/recyclerview/widget/o;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x17c

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v4, Lcom/sid/tvos/MainActivity;->CALM:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    sget p2, Lcom/sid/tvos/MainActivity;->COLUMNS:I

    if-ge v1, p2, :cond_4

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/o;

    move-result-object p2

    if-eqz p2, :cond_3

    if-ne v1, p1, :cond_2

    goto :goto_3

    :cond_2
    iget-object v0, p2, Landroidx/recyclerview/widget/o;->itemView:Landroid/view/View;

    sget v2, Lcom/sid/tvos/R$id;->card:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object p2, p2, Landroidx/recyclerview/widget/o;->itemView:Landroid/view/View;

    sget v0, Lcom/sid/tvos/R$id;->name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/o;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p2, Landroidx/recyclerview/widget/o;->itemView:Landroid/view/View;

    sget v0, Lcom/sid/tvos/R$id;->card:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->onTileFocused(ILandroid/view/View;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    :cond_6
    :goto_4
    return-void
.end method

.method private slideFrom(IF)V
    .locals 2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/o;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/o;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p1, Landroidx/recyclerview/widget/o;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x104

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/sid/tvos/MainActivity;->CALM:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private startMove(Lcom/sid/tvos/AppAdapter$Entry;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sid/tvos/AppAdapter$Entry;->key()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sid/tvos/MainActivity;->movingKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->moveHint:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sid/tvos/MainActivity;->moveHint:Landroid/widget/TextView;

    const v1, -0xe3e3e2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->moveHint:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->moveHint:Landroid/widget/TextView;

    sget v1, Lcom/sid/tvos/R$font;->inter_semibold:I

    invoke-static {p0, v1}, Le/k;->b(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v1, 0x42c80000    # 100.0f

    iget v2, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v1, -0xd000001

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->moveHint:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Lcom/sid/tvos/MainActivity;->density:F

    const/high16 v1, 0x41900000    # 18.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    const/high16 v2, 0x41100000    # 9.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->moveHint:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->moveHint:Landroid/widget/TextView;

    const/high16 v1, 0x41200000    # 10.0f

    iget v2, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setElevation(F)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x31

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v1, 0x41e00000    # 28.0f

    iget v2, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->moveHint:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->moveHint:Landroid/widget/TextView;

    sget v1, Lcom/sid/tvos/R$string;->moving_hint:I

    iget-object p1, p1, Lcom/sid/tvos/AppAdapter$Entry;->label:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->moveHint:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->moveHint:Landroid/widget/TextView;

    const/high16 v1, -0x3ec00000    # -12.0f

    iget v2, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->moveHint:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x104

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lt/c;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startWiggle(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->wiggling:Landroid/view/View;

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->stopWiggle()V

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->wiggling:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x82

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    sget v0, Lcom/sid/tvos/R$id;->selected:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x40333333    # -1.6f
        0x3fcccccd    # 1.6f
    .end array-data
.end method

.method private stopWiggle()V
    .locals 3

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->wiggling:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/sid/tvos/R$id;->selected:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/animation/Animator;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->wiggling:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->wiggling:Landroid/view/View;

    sget v1, Lcom/sid/tvos/R$id;->selected:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iput-object v2, p0, Lcom/sid/tvos/MainActivity;->wiggling:Landroid/view/View;

    return-void
.end method

.method public static synthetic t(Lcom/sid/tvos/MainActivity;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$buildAppearancePage$103(Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic t0(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$onActivityResult$131()V

    return-void
.end method

.method public static synthetic t1(Lcom/sid/tvos/MainActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sid/tvos/MainActivity;->lambda$recentCard$214(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic t2(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$onTileLongPress$17(Lcom/sid/tvos/AppAdapter$Entry;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic t3(Lcom/sid/tvos/MainActivity;Landroid/graphics/Rect;FF[FFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/sid/tvos/MainActivity;->lambda$zoom$68(Landroid/graphics/Rect;FF[FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static bridge synthetic t4(Lcom/sid/tvos/MainActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->focusTile(I)V

    return-void
.end method

.method private tileX(Landroid/view/View;Landroid/graphics/Rect;F)F
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p3, p2

    sub-float/2addr p1, p3

    return p1
.end method

.method private tileY(Landroid/view/View;Landroid/graphics/Rect;F)F
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p3, p2

    sub-float/2addr p1, p3

    return p1
.end method

.method private timeLabel(I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    div-int/lit8 v1, p1, 0x3c

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    rem-int/lit8 p1, p1, 0x3c

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private track(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 4

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->popups:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lt/C;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, v2}, Lt/C;-><init>(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;I)V

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p1
.end method

.method private tunerInputId()Ljava/lang/String;
    .locals 4

    const-string v0, "tv_input"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/tv/TvInputManager;->getTvInputList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvInputInfo;

    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getType()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    :cond_2
    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static synthetic u(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->refreshBackdrop()V

    return-void
.end method

.method public static synthetic u0(Lcom/sid/tvos/MainActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildAppearancePage$106(I)V

    return-void
.end method

.method public static synthetic u1(Lcom/sid/tvos/MainActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$closeAllButton$219(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u2(Lcom/sid/tvos/MainActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sid/tvos/MainActivity;->lambda$setUpTopBar$72(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic u3(ILandroid/graphics/Bitmap;Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p2, p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$showShelf$36(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static bridge synthetic u4(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->hideGlass()V

    return-void
.end method

.method private updateContinueWatching(I)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->isCwApp(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->hideCw()V

    return-void

    :cond_0
    iget v0, p0, Lcom/sid/tvos/MainActivity;->cwPosition:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/sid/tvos/MainActivity;->cwPosition:I

    if-eq p1, v3, :cond_2

    iput v1, p0, Lcom/sid/tvos/MainActivity;->cwSelected:I

    :cond_2
    iput p1, p0, Lcom/sid/tvos/MainActivity;->cwPosition:I

    new-instance v3, Lcom/sid/tvos/p;

    const/16 v4, 0x11

    invoke-direct {v3, p0, v4}, Lcom/sid/tvos/p;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-static {p0, v3}, Lcom/sid/tvos/WatchNext;->load(Landroid/content/Context;Lcom/sid/tvos/WatchNext$Callback;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/sid/tvos/MainActivity;->cwData:Ljava/util/Map;

    if-eq v3, v4, :cond_3

    iput-object v3, p0, Lcom/sid/tvos/MainActivity;->cwData:Ljava/util/Map;

    iget-object v3, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sid/tvos/MainActivity;->prewarmCw:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sid/tvos/MainActivity;->prewarmCw:Ljava/lang/Runnable;

    const-wide/16 v5, 0x4b0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->cwItemsFor(I)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwItems:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/sid/tvos/MainActivity;->sameItems(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0, v2}, Lcom/sid/tvos/MainActivity;->showCwViews(Z)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwRenderLater:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean p1, p0, Lcom/sid/tvos/MainActivity;->shelfShown:Z

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->isLowRam()Z

    move-result p1

    if-nez p1, :cond_5

    iget p1, p0, Lcom/sid/tvos/MainActivity;->cwGen:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/sid/tvos/MainActivity;->cwGen:I

    invoke-direct {p0, v1}, Lcom/sid/tvos/MainActivity;->showCwViews(Z)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwRenderLater:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1ae

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->renderCw()V

    return-void
.end method

.method private updateGridPadding(I)V
    .locals 4

    if-gtz p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/sid/tvos/AppAdapter;->itemDp(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    sget-object v1, Lcom/sid/tvos/Appearance;->FAV_OFFSET_DP:[I

    const-string v2, "fav_pos"

    invoke-static {p0, v2}, Lcom/sid/tvos/Appearance;->step(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    aget v1, v1, v2

    sub-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x8

    int-to-float v0, v1

    iget v1, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    add-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sget-object v0, Lcom/sid/tvos/Appearance;->ROW_GAP_DP:[I

    const-string v1, "row_gap"

    invoke-static {p0, v1}, Lcom/sid/tvos/Appearance;->step(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x6

    int-to-float v0, v0

    iget v1, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sid/tvos/MainActivity;->dockTopPx:I

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lt/P;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Lt/P;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method private updateLabelColor(Landroid/graphics/Bitmap;)V
    .locals 12

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->isCwArt(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->labelColors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Rect;

    div-int/lit8 v6, v0, 0xa

    mul-int/lit8 v7, v4, 0x52

    div-int/lit8 v7, v7, 0x64

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v4, v4, 0x62

    div-int/lit8 v4, v4, 0x64

    invoke-direct {v5, v6, v7, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v0, 0x10

    invoke-static {p1, v5, v0, v1}, Lcom/sid/tvos/Gpu;->region(Landroid/graphics/Bitmap;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_4

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v0, :cond_3

    invoke-virtual {v4, v7, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    shr-int/lit8 v9, v8, 0x10

    and-int/lit16 v9, v9, 0xff

    int-to-float v9, v9

    const v10, 0x3e59b3d0    # 0.2126f

    mul-float v9, v9, v10

    shr-int/lit8 v10, v8, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-float v10, v10

    const v11, 0x3f371759    # 0.7152f

    mul-float v10, v10, v11

    add-float/2addr v10, v9

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    const v9, 0x3d93dd98    # 0.0722f

    mul-float v8, v8, v9

    add-float/2addr v8, v10

    add-float/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    const/high16 v0, 0x42800000    # 64.0f

    div-float/2addr v5, v0

    const/high16 v0, 0x432a0000    # 170.0f

    cmpl-float v0, v5, v0

    if-lez v0, :cond_5

    const v2, -0xe3e3e2

    :cond_5
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->labelColors:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p1, v2

    :goto_3
    sget v0, Lcom/sid/tvos/AppAdapter;->labelColor:I

    if-ne p1, v0, :cond_6

    return-void

    :cond_6
    sput p1, Lcom/sid/tvos/AppAdapter;->labelColor:I

    :goto_4
    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v3, p1, :cond_8

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/sid/tvos/R$id;->name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_7

    invoke-static {p1}, Lcom/sid/tvos/AppAdapter;->styleLabel(Landroid/widget/TextView;)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    return-void
.end method

.method private updateRam()V
    .locals 9

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->recentsOverlay:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v6, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v6}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v6, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iget-wide v2, v6, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long v4, v0, v2

    sget v0, Lcom/sid/tvos/R$id;->recentsRamText:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/sid/tvos/R$string;->ram_usage:I

    invoke-static {v4, v5}, Lcom/sid/tvos/MainActivity;->gb(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v7, v6, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v7, v8}, Lcom/sid/tvos/MainActivity;->gb(J)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    aput-object v3, v7, v2

    invoke-virtual {p0, v1, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/sid/tvos/R$id;->recentsRamTrack:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/sid/tvos/R$id;->recentsRamFill:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v1, Lt/S;

    move-object v2, v1

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lt/S;-><init>(Landroid/view/View;JLandroid/app/ActivityManager$MemoryInfo;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateStatusGlass(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sid/tvos/MainActivity;->updateStatusGlass(Landroid/graphics/Bitmap;J)V

    return-void
.end method

.method private updateStatusGlass(Landroid/graphics/Bitmap;J)V
    .locals 21

    .line 2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget-object v4, v0, Lcom/sid/tvos/MainActivity;->statusGlass:Lcom/sid/tvos/LiquidGlassDrawable;

    invoke-virtual {v4}, Lcom/sid/tvos/LiquidGlassDrawable;->isLive()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v1, v0, Lcom/sid/tvos/MainActivity;->statusGlass:Lcom/sid/tvos/LiquidGlassDrawable;

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/Appearance;->liquid(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sid/tvos/LiquidGlassDrawable;->setLiquid(Z)V

    iget-object v1, v0, Lcom/sid/tvos/MainActivity;->weatherGlass:Lcom/sid/tvos/LiquidGlassDrawable;

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/Appearance;->liquid(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sid/tvos/LiquidGlassDrawable;->setLiquid(Z)V

    return-void

    :cond_0
    if-eqz v1, :cond_6

    iget-object v4, v0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, v0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v5, v0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    iget-object v6, v0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    invoke-virtual {v5, v6, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v8, v0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    iget v8, v4, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    mul-float v8, v8, v5

    float-to-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v9, v4, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float v9, v9, v6

    float-to-int v9, v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    iget v11, v4, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    mul-float v11, v11, v5

    float-to-int v5, v11

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    mul-float v4, v4, v6

    float-to-int v4, v4

    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v6, v5, v8

    const/4 v10, 0x4

    if-lt v6, v10, :cond_6

    sub-int v11, v4, v9

    if-ge v11, v10, :cond_2

    goto/16 :goto_2

    :cond_2
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v8, v9, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/Appearance;->liquid(Landroid/content/Context;)Z

    move-result v4

    iget-object v5, v0, Lcom/sid/tvos/MainActivity;->statusGlass:Lcom/sid/tvos/LiquidGlassDrawable;

    invoke-virtual {v5, v4}, Lcom/sid/tvos/LiquidGlassDrawable;->setLiquid(Z)V

    iget-object v5, v0, Lcom/sid/tvos/MainActivity;->weatherGlass:Lcom/sid/tvos/LiquidGlassDrawable;

    invoke-virtual {v5, v4}, Lcom/sid/tvos/LiquidGlassDrawable;->setLiquid(Z)V

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/sid/tvos/MainActivity;->statusGlass:Lcom/sid/tvos/LiquidGlassDrawable;

    invoke-static {v1, v12, v6, v11}, Lcom/sid/tvos/Gpu;->region(Landroid/graphics/Bitmap;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v4, v1, v2, v3}, Lcom/sid/tvos/LiquidGlassDrawable;->setBackdrop(Landroid/graphics/Bitmap;J)V

    return-void

    :cond_3
    div-int/2addr v6, v10

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int/2addr v11, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v1, v12, v4, v5}, Lcom/sid/tvos/Gpu;->region(Landroid/graphics/Bitmap;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object v1

    mul-int v6, v4, v5

    new-array v8, v6, [I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x0

    move-object v13, v1

    move-object v14, v8

    move/from16 v16, v4

    move/from16 v19, v4

    move/from16 v20, v5

    invoke-virtual/range {v13 .. v20}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x3

    if-ge v9, v10, :cond_4

    invoke-static {v8, v4, v5, v10}, Lcom/sid/tvos/Blur;->boxBlur([IIII)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    new-array v9, v10, [F

    :goto_1
    if-ge v7, v6, :cond_5

    aget v10, v8, v7

    invoke-static {v10, v9}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v10, 0x1

    aget v11, v9, v10

    const/high16 v12, 0x3fa00000    # 1.25f

    mul-float v11, v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v12, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    aput v11, v9, v10

    const/4 v10, 0x2

    aget v11, v9, v10

    const v13, 0x3f59999a    # 0.85f

    mul-float v11, v11, v13

    const v13, 0x3df5c28f    # 0.12f

    add-float/2addr v11, v13

    invoke-static {v12, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    aput v11, v9, v10

    invoke-static {v9}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v10

    aput v10, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x0

    move-object v13, v1

    move-object v14, v8

    move/from16 v16, v4

    move/from16 v19, v4

    move/from16 v20, v5

    invoke-virtual/range {v13 .. v20}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    iget-object v4, v0, Lcom/sid/tvos/MainActivity;->statusGlass:Lcom/sid/tvos/LiquidGlassDrawable;

    invoke-virtual {v4, v1, v2, v3}, Lcom/sid/tvos/LiquidGlassDrawable;->setBackdrop(Landroid/graphics/Bitmap;J)V

    :cond_6
    :goto_2
    return-void
.end method

.method private updateWifiLabel()V
    .locals 11

    sget v0, Lcom/sid/tvos/R$string;->wifi:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    invoke-static {v1}, Lg/a;->b(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move-object v6, v2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_2

    aget-object v8, v4, v7

    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v9

    if-eqz v3, :cond_1

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    if-ne v9, v10, :cond_1

    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    move-object v1, v6

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_4

    sget v1, Lcom/sid/tvos/R$string;->offline:I

    :goto_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-eqz v3, :cond_5

    sget v1, Lcom/sid/tvos/R$string;->ethernet:I

    goto :goto_2

    :cond_5
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "wifi"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    goto :goto_3

    :cond_6
    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    :cond_7
    if-eqz v2, :cond_8

    const-string v1, "\""

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_8

    move-object v0, v1

    :catch_0
    :cond_8
    :goto_4
    iput-object v0, p0, Lcom/sid/tvos/MainActivity;->wifiLabel:Ljava/lang/String;

    return-void
.end method

.method public static synthetic v(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;IILandroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sid/tvos/MainActivity;->lambda$recentCard$209(Lcom/sid/tvos/AppAdapter$Entry;IILandroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic v0(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->captureRemapKey()V

    return-void
.end method

.method public static synthetic v1(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$showControlCenter$181(Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v2(ZLandroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$showBluetoothMenu$86(ZLandroid/bluetooth/BluetoothAdapter;)V

    return-void
.end method

.method public static synthetic v3(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$showControlCenter$188(Landroid/widget/PopupWindow;)V

    return-void
.end method

.method public static bridge synthetic v4(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/GlassView;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sid/tvos/MainActivity;->popIn(Landroid/view/View;ZZ)V

    return-void
.end method

.method public static synthetic w(Lcom/sid/tvos/MainActivity;ILjava/util/List;II[II)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/sid/tvos/MainActivity;->lambda$renderCw$44(ILjava/util/List;II[II)V

    return-void
.end method

.method public static synthetic w0(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$applyStatusItems$75()V

    return-void
.end method

.method public static synthetic w1(Lcom/sid/tvos/MainActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildDefaultLauncherPage$101(Z)V

    return-void
.end method

.method public static synthetic w2(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$showControlCenter$184()V

    return-void
.end method

.method public static synthetic w3(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;IILandroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sid/tvos/MainActivity;->lambda$recentCard$207(Lcom/sid/tvos/AppAdapter$Entry;IILandroid/widget/ImageView;)V

    return-void
.end method

.method public static bridge synthetic w4(Lcom/sid/tvos/MainActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->setHomeFocusable(Z)V

    return-void
.end method

.method private wireCwKeys(Landroid/view/View;II)V
    .locals 1

    new-instance v0, Lt/A;

    invoke-direct {v0, p0, p2, p3}, Lt/A;-><init>(Lcom/sid/tvos/MainActivity;II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public static synthetic x(Lcom/sid/tvos/MainActivity;Landroid/widget/PopupWindow;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$showControlCenter$185(Landroid/widget/PopupWindow;)V

    return-void
.end method

.method public static synthetic x0(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$showRecents$205()V

    return-void
.end method

.method public static synthetic x1(Lcom/sid/tvos/MainActivity;IILandroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/sid/tvos/MainActivity;->lambda$wireCwKeys$52(IILandroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic x2(Lcom/sid/tvos/MainActivity;[Landroid/widget/PopupWindow;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$captureRemapKey$167([Landroid/widget/PopupWindow;I)V

    return-void
.end method

.method public static synthetic x3(Lcom/sid/tvos/MainActivity;Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$prefrost$37(Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static bridge synthetic x4(Lcom/sid/tvos/MainActivity;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->settingBadge(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->buildAppearancePage(Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void
.end method

.method public static synthetic y0(Lcom/sid/tvos/MainActivity;I[F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->lambda$cwColourRows$121(I[F)V

    return-void
.end method

.method public static synthetic y1(Lcom/sid/tvos/MainActivity;[FLandroid/graphics/drawable/GradientDrawable;Landroid/widget/TextClock;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sid/tvos/MainActivity;->lambda$setUpStatusPill$76([FLandroid/graphics/drawable/GradientDrawable;Landroid/widget/TextClock;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic y2(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$closeAllButton$218()V

    return-void
.end method

.method public static synthetic y3(Lcom/sid/tvos/MainActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->showSettingsMenu(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic y4(Lcom/sid/tvos/MainActivity;IIZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sid/tvos/MainActivity;->showWeather(IIZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic z(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$buildProfilePage$142(Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void
.end method

.method public static synthetic z0(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$recentCard$206(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic z1(Lcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p1, p0, p2}, Lcom/sid/tvos/MainActivity;->lambda$buildWeatherRows$144(Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic z2(Lcom/sid/tvos/MainActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->lambda$makeCwCard$49(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z3(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->lambda$new$67()V

    return-void
.end method

.method public static bridge synthetic z4(Lcom/sid/tvos/MainActivity;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity;->slideDockNow(II)V

    return-void
.end method

.method private zoom(FFJLandroid/animation/TimeInterpolator;Ljava/lang/Runnable;)V
    .locals 9

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->launchFrom:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/high16 v0, 0x41800000    # 16.0f

    iget v1, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v6, v1, v0

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->launchCard:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->launchCard:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    const/4 v0, 0x1

    new-array v5, v0, [F

    const/4 v1, 0x0

    aput v6, v5, v1

    iget-object v7, p0, Lcom/sid/tvos/MainActivity;->launchCard:Landroid/widget/ImageView;

    new-instance v8, Lcom/sid/tvos/MainActivity$10;

    invoke-direct {v8, p0, v5}, Lcom/sid/tvos/MainActivity$10;-><init>(Lcom/sid/tvos/MainActivity;[F)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v7, p0, Lcom/sid/tvos/MainActivity;->launchCard:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/view/View;->setClipToOutline(Z)V

    const/4 v7, 0x2

    new-array v7, v7, [F

    aput p1, v7, v1

    aput p2, v7, v0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lt/k;

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lt/k;-><init>(Lcom/sid/tvos/MainActivity;Landroid/graphics/Rect;FF[FF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lcom/sid/tvos/MainActivity$11;

    invoke-direct {p2, p0, p6}, Lcom/sid/tvos/MainActivity$11;-><init>(Lcom/sid/tvos/MainActivity;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public applyLauncherSetting(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v1, "icons"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "glass"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "dark"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "cw"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "status"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_5
    const-string v1, "cw_art"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {p1}, Lcom/sid/tvos/AppAdapter;->reload()V

    goto :goto_2

    :pswitch_1
    invoke-static {p0}, Lcom/sid/tvos/Appearance;->liquid(Landroid/content/Context;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->applyGlass(Z)V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyDark()V

    goto :goto_2

    :pswitch_3
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyCwOn()V

    goto :goto_2

    :pswitch_4
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyStatusItems()V

    goto :goto_2

    :pswitch_5
    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->cwBackdrops:Landroid/util/LruCache;

    invoke-virtual {p1}, Landroid/util/LruCache;->evictAll()V

    iget p1, p0, Lcom/sid/tvos/MainActivity;->shelfPosition:I

    iget-boolean v1, p0, Lcom/sid/tvos/MainActivity;->shelfShown:Z

    if-eqz v1, :cond_6

    if-ltz p1, :cond_6

    iput v0, p0, Lcom/sid/tvos/MainActivity;->shelfPosition:I

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->showShelf(I)V

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->settingsPanel:Lcom/sid/tvos/MainActivity$SettingsPanel;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->refresh()V

    :cond_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5056a3e8 -> :sswitch_5
        -0x3532300e -> :sswitch_4
        0xc74 -> :sswitch_3
        0x2eef76 -> :sswitch_2
        0x5de077c -> :sswitch_1
        0x5f6531a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sget-boolean v1, Lcom/sid/tvos/Remaps;->capturing:Z

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/sid/tvos/Remaps;->reserved(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lcom/sid/tvos/Remaps;->get(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x1

    if-eqz v1, :cond_7

    const-string v3, "launcher:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "recents"

    if-nez v4, :cond_2

    const-string v4, "app:"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x9

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sid/tvos/LauncherActions;->run(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->showRecents()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    :cond_5
    if-eqz p1, :cond_6

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->open(Landroid/content/Intent;)V

    :cond_6
    :goto_2
    return v2

    :cond_7
    const/16 v1, 0x13

    if-eq v0, v1, :cond_8

    const/16 v1, 0x14

    if-eq v0, v1, :cond_8

    const/16 v1, 0x15

    if-eq v0, v1, :cond_8

    const/16 v1, 0x16

    if-ne v0, v1, :cond_b

    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    sub-long v3, v0, v3

    const-wide/16 v5, 0x78

    cmp-long v7, v3, v5

    if-gtz v7, :cond_9

    iget-wide v3, p0, Lcom/sid/tvos/MainActivity;->lastMoveAt:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x5f

    cmp-long v7, v3, v5

    if-gez v7, :cond_a

    :cond_9
    return v2

    :cond_a
    iput-wide v0, p0, Lcom/sid/tvos/MainActivity;->lastMoveAt:J

    :cond_b
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public isFront()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sid/tvos/MainActivity;->resumed:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance p2, Lt/c;

    const/16 p3, 0x16

    invoke-direct {p2, p0, p3}, Lt/c;-><init>(Lcom/sid/tvos/MainActivity;I)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const/16 v0, 0x29

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lt/G;

    const/4 v0, 0x2

    invoke-direct {p3, p0, p1, v0}, Lt/G;-><init>(Lcom/sid/tvos/MainActivity;Landroid/net/Uri;I)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->settingsPanel:Lcom/sid/tvos/MainActivity$SettingsPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->back()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->movingKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->finishMove()V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sid/tvos/MainActivity;->fullScreen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/sid/tvos/MainActivity;->exitFullScreen(Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->recentsOverlay:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->closeRecents()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->folderOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->closeFolder()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v1}, Lcom/sid/tvos/MainActivity;->setCwFocusable(Z)V

    iget v0, p0, Lcom/sid/tvos/MainActivity;->cwPosition:I

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->focusTile(I)V

    return-void

    :cond_5
    sget v0, Lcom/sid/tvos/MainActivity;->lastFocused:I

    sget v1, Lcom/sid/tvos/MainActivity;->COLUMNS:I

    if-lt v0, v1, :cond_6

    rem-int/2addr v0, v1

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {v1}, Lcom/sid/tvos/AppAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->focusTile(I)V

    :cond_6
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/FeatureBridge;->initialize(Landroid/content/Context;)V

    sget p1, Lcom/sid/tvos/R$layout;->activity_main:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/sid/tvos/MainActivity;->density:F

    sget-object p1, Lcom/sid/tvos/Appearance;->ROW_ICON_COUNT:[I

    const-string v3, "row_icons"

    invoke-static {p0, v3}, Lcom/sid/tvos/Appearance;->step(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    aget p1, p1, v3

    sput p1, Lcom/sid/tvos/MainActivity;->COLUMNS:I

    sget p1, Lcom/sid/tvos/R$string;->live_tv_package:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->liveTvPkg:Ljava/lang/String;

    sget p1, Lcom/sid/tvos/R$id;->root:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    sget p1, Lcom/sid/tvos/R$id;->glass:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sid/tvos/GlassView;

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->glass:Lcom/sid/tvos/GlassView;

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    sget p1, Lcom/sid/tvos/R$id;->shelf:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->shelf:Landroid/widget/ImageView;

    sget p1, Lcom/sid/tvos/R$id;->shelfScrim:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->shelfScrim:Landroid/view/View;

    sget p1, Lcom/sid/tvos/R$id;->dim:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->dim:Landroid/widget/ImageView;

    sget p1, Lcom/sid/tvos/R$id;->shelfGroup:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->shelfGroup:Landroid/widget/FrameLayout;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_0

    invoke-static {p1}, Ll/b;->d(Landroid/widget/FrameLayout;)V

    :cond_0
    sget p1, Lcom/sid/tvos/R$id;->shelf2:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->shelf2:Landroid/widget/ImageView;

    sget p1, Lcom/sid/tvos/R$id;->launchCard:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->launchCard:Landroid/widget/ImageView;

    sget p1, Lcom/sid/tvos/R$id;->cwInfo:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->cwInfo:Landroid/view/View;

    sget p1, Lcom/sid/tvos/R$id;->cwRow:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    sget p1, Lcom/sid/tvos/R$id;->cwScroll:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/HorizontalScrollView;

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->cwScroll:Landroid/widget/HorizontalScrollView;

    if-lt v4, v5, :cond_1

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    invoke-static {p1}, Ll/b;->e(Landroid/widget/LinearLayout;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->cwInfo:Landroid/view/View;

    invoke-static {p1}, Ll/b;->c(Landroid/view/View;)V

    :cond_1
    sget p1, Lcom/sid/tvos/R$id;->cwTitle:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->cwTitle:Landroid/widget/TextView;

    sget p1, Lcom/sid/tvos/R$id;->cwSubtitle:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->cwSubtitle:Landroid/widget/TextView;

    sget p1, Lcom/sid/tvos/R$id;->cwProgress:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->cwProgress:Landroid/view/View;

    sget p1, Lcom/sid/tvos/R$id;->topBar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->topBar:Landroid/view/ViewGroup;

    sget p1, Lcom/sid/tvos/R$id;->statusPill:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    sget p1, Lcom/sid/tvos/R$id;->statusAvatar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->statusAvatar:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->isLowRam()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Landroid/util/LruCache;

    const/4 v4, 0x5

    invoke-direct {p1, v4}, Landroid/util/LruCache;-><init>(I)V

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->cwBackdrops:Landroid/util/LruCache;

    :cond_2
    invoke-static {p0}, Lcom/sid/tvos/Appearance;->blurScale(Landroid/content/Context;)F

    move-result p1

    sput p1, Lcom/sid/tvos/LiquidGlassDrawable;->blurScale:F

    new-instance p1, Lcom/sid/tvos/LiquidGlassDrawable;

    iget v4, p0, Lcom/sid/tvos/MainActivity;->density:F

    invoke-direct {p1, v4}, Lcom/sid/tvos/LiquidGlassDrawable;-><init>(F)V

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->statusGlass:Lcom/sid/tvos/LiquidGlassDrawable;

    iget-object v4, p0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->statusGlass:Lcom/sid/tvos/LiquidGlassDrawable;

    iget-object v4, p0, Lcom/sid/tvos/MainActivity;->shelfGroup:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    invoke-virtual {p1, v4, v6}, Lcom/sid/tvos/LiquidGlassDrawable;->setLiveSource(Landroid/view/View;Landroid/view/View;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->statusGlass:Lcom/sid/tvos/LiquidGlassDrawable;

    invoke-virtual {p1}, Lcom/sid/tvos/LiquidGlassDrawable;->isLive()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    invoke-virtual {p1, v3, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_3
    sget p1, Lcom/sid/tvos/R$id;->weatherPill:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->weatherPill:Landroid/widget/LinearLayout;

    new-instance p1, Lcom/sid/tvos/LiquidGlassDrawable;

    iget v4, p0, Lcom/sid/tvos/MainActivity;->density:F

    invoke-direct {p1, v4}, Lcom/sid/tvos/LiquidGlassDrawable;-><init>(F)V

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->weatherGlass:Lcom/sid/tvos/LiquidGlassDrawable;

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->liquid(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {p1, v4}, Lcom/sid/tvos/LiquidGlassDrawable;->setLiquid(Z)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->weatherPill:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sid/tvos/MainActivity;->weatherGlass:Lcom/sid/tvos/LiquidGlassDrawable;

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->weatherGlass:Lcom/sid/tvos/LiquidGlassDrawable;

    iget-object v4, p0, Lcom/sid/tvos/MainActivity;->shelfGroup:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/sid/tvos/MainActivity;->weatherPill:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4, v6}, Lcom/sid/tvos/LiquidGlassDrawable;->setLiveSource(Landroid/view/View;Landroid/view/View;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->weatherGlass:Lcom/sid/tvos/LiquidGlassDrawable;

    invoke-virtual {p1}, Lcom/sid/tvos/LiquidGlassDrawable;->isLive()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->weatherPill:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_4
    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    new-instance v4, Lcom/sid/tvos/MainActivity$3;

    invoke-direct {v4, p0}, Lcom/sid/tvos/MainActivity$3;-><init>(Lcom/sid/tvos/MainActivity;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->statusPill:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setElevation(F)V

    sget p1, Lcom/sid/tvos/R$id;->folderOverlay:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->folderOverlay:Landroid/widget/FrameLayout;

    sget p1, Lcom/sid/tvos/R$id;->folderBackdrop:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->folderBackdrop:Landroid/widget/ImageView;

    sget p1, Lcom/sid/tvos/R$id;->folderName:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->folderName:Landroid/widget/TextView;

    sget p1, Lcom/sid/tvos/R$id;->folderPanel:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->folderPanel:Landroid/view/View;

    sget p1, Lcom/sid/tvos/R$id;->folderGlass:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sid/tvos/GlassView;

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->folderGlass:Lcom/sid/tvos/GlassView;

    sget p1, Lcom/sid/tvos/R$id;->folderGridView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->folderGridView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v6, 0x4

    invoke-direct {v4, v6}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/j;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->folderGridView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/i;)V

    new-instance p1, Lcom/sid/tvos/AppAdapter;

    iget-object v4, p0, Lcom/sid/tvos/MainActivity;->folderTiles:Lcom/sid/tvos/AppAdapter$TileListener;

    invoke-direct {p1, p0, v4}, Lcom/sid/tvos/AppAdapter;-><init>(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$TileListener;)V

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->folderAdapter:Lcom/sid/tvos/AppAdapter;

    iget-object v4, p0, Lcom/sid/tvos/MainActivity;->folderGridView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/g;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->folderGridView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/sid/tvos/MainActivity$4;

    invoke-direct {v4, p0}, Lcom/sid/tvos/MainActivity$4;-><init>(Lcom/sid/tvos/MainActivity;)V

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Lr/Q;)V

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->setUpTopBar()V

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->setUpStatusPill()V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v4, Lt/M;

    invoke-direct {v4, p0}, Lt/M;-><init>(Lcom/sid/tvos/MainActivity;)V

    invoke-virtual {p1, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    sget p1, Lcom/sid/tvos/R$id;->grid:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/sid/tvos/MainActivity$5;

    sget v7, Lcom/sid/tvos/MainActivity;->COLUMNS:I

    invoke-direct {v4, p0, p0, v7}, Lcom/sid/tvos/MainActivity$5;-><init>(Lcom/sid/tvos/MainActivity;Landroid/content/Context;I)V

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/j;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    sget v4, Lcom/sid/tvos/MainActivity;->COLUMNS:I

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->isLowRam()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    check-cast p1, Lcom/sid/tvos/HomeGrid;

    const/high16 v4, 0x43160000    # 150.0f

    iget v6, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v6, v6, v4

    float-to-int v4, v6

    invoke-virtual {p1, v4}, Lcom/sid/tvos/HomeGrid;->setTopFade(I)V

    :cond_5
    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->topBar:Landroid/view/ViewGroup;

    const/high16 v4, 0x40000000    # 2.0f

    iget v6, p0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v6, v6, v4

    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationZ(F)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/i;)V

    new-instance p1, Lcom/sid/tvos/DockDecoration;

    sget v2, Lcom/sid/tvos/MainActivity;->COLUMNS:I

    iget v4, p0, Lcom/sid/tvos/MainActivity;->density:F

    invoke-direct {p1, v2, v4}, Lcom/sid/tvos/DockDecoration;-><init>(IF)V

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->dockBand:Lcom/sid/tvos/DockDecoration;

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->liquid(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sid/tvos/DockDecoration;->setLiquid(Z)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->dockBand:Lcom/sid/tvos/DockDecoration;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Lr/J;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroid/view/animation/LayoutAnimationController;

    sget v4, Lcom/sid/tvos/R$anim;->tile_enter:I

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    const v6, 0x3d23d70a    # 0.04f

    invoke-direct {v2, v4, v6}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    new-instance p1, Lcom/sid/tvos/AppAdapter;

    invoke-direct {p1, p0, p0}, Lcom/sid/tvos/AppAdapter;-><init>(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$TileListener;)V

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/g;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lt/N;

    invoke-direct {v2, p0}, Lt/N;-><init>(Lcom/sid/tvos/MainActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/sid/tvos/MainActivity$6;

    invoke-direct {v2, p0}, Lcom/sid/tvos/MainActivity$6;-><init>(Lcom/sid/tvos/MainActivity;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Lr/Q;)V

    new-instance p1, Lp/f;

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->glass:Lcom/sid/tvos/GlassView;

    sget-object v4, Lp/f;->l:Lp/d;

    invoke-direct {p1, v2, v4}, Lp/f;-><init>(Ljava/lang/Object;Ly/a;)V

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->springX:Lp/f;

    new-instance p1, Lp/f;

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->glass:Lcom/sid/tvos/GlassView;

    sget-object v4, Lp/f;->m:Lp/d;

    invoke-direct {p1, v2, v4}, Lp/f;-><init>(Ljava/lang/Object;Ly/a;)V

    iput-object p1, p0, Lcom/sid/tvos/MainActivity;->springY:Lp/f;

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->springX:Lp/f;

    new-array v4, v3, [Lp/f;

    aput-object v2, v4, v0

    aput-object p1, v4, v1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v3, :cond_6

    aget-object v2, v4, p1

    new-instance v6, Lp/g;

    invoke-direct {v6}, Lp/g;-><init>()V

    const/high16 v7, 0x43700000    # 240.0f

    float-to-double v7, v7

    .line 1
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    iput-wide v7, v6, Lp/g;->a:D

    const/high16 v7, 0x3f800000    # 1.0f

    float-to-double v7, v7

    .line 2
    iput-wide v7, v6, Lp/g;->b:D

    iput-boolean v0, v6, Lp/g;->c:Z

    .line 3
    iput-object v6, v2, Lp/f;->j:Lp/g;

    add-int/2addr p1, v1

    goto :goto_0

    .line 4
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lt/O;

    invoke-direct {v0, p0}, Lt/O;-><init>(Lcom/sid/tvos/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    const-string p1, "connectivity"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_7

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-static {p1, v0}, Ll/b;->b(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_1

    :cond_7
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    sget-object v0, Lcom/sid/tvos/MainActivity;->live:Lcom/sid/tvos/MainActivity;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/sid/tvos/MainActivity;->live:Lcom/sid/tvos/MainActivity;

    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_1
    return-void
.end method

.method public onFolderOpen(Lcom/sid/tvos/AppAdapter$Entry;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sid/tvos/MainActivity;->openFolder(Lcom/sid/tvos/AppAdapter$Entry;Z)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->showControlCenter()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLaunch(Lcom/sid/tvos/AppAdapter$Entry;Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->movingKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->finishMove()V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sid/tvos/Recents;->record(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sid/tvos/MainActivity;->launchFrom:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/sid/tvos/AppAdapter$Entry;->key()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sid/tvos/MainActivity;->launchKey:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->launchArtFor(Lcom/sid/tvos/AppAdapter$Entry;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->launchArtKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->launchArt:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_0
    if-nez p2, :cond_2

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->launchArt(Lcom/sid/tvos/AppAdapter$Entry;)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_2
    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->launchCard:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sid/tvos/MainActivity;->launchArt:Landroid/graphics/Bitmap;

    const-string p2, ""

    iput-object p2, p0, Lcom/sid/tvos/MainActivity;->launchArtKey:Ljava/lang/String;

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->launchCard:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->launchCard:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->dim:Landroid/widget/ImageView;

    const v1, 0x3f0ccccd    # 0.55f

    invoke-direct {p0, v1}, Lcom/sid/tvos/MainActivity;->glassBackdrop(F)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->dim:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->dim:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x1a4

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p2, 0x40200000    # 2.5f

    invoke-direct {v5, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v6, Lcom/sid/tvos/l;

    const/4 p2, 0x0

    invoke-direct {v6, p0, p1, p2}, Lcom/sid/tvos/l;-><init>(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;I)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v3, 0x1a4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sid/tvos/MainActivity;->zoom(FFJLandroid/animation/TimeInterpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "show_recents"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lt/P;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lt/P;-><init>(Lcom/sid/tvos/MainActivity;I)V

    const-wide/16 v1, 0x96

    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "launcher_action"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lt/n;

    const/4 v2, 0x3

    invoke-direct {v0, v2, p0, v1}, Lt/n;-><init>(ILcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    const-wide/16 v1, 0xc8

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_b

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-boolean p1, p0, Lcom/sid/tvos/MainActivity;->resumed:Z

    const/4 v1, 0x1

    if-nez p1, :cond_4

    iput-boolean v1, p0, Lcom/sid/tvos/MainActivity;->homeToFavourites:Z

    :cond_4
    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->settingsPanel:Lcom/sid/tvos/MainActivity$SettingsPanel;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->closeNow()V

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->movingKey:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->finishMove()V

    :cond_6
    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->recentsOverlay:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->closeRecents()V

    const/4 p1, 0x1

    :cond_7
    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->popups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/PopupWindow;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 p1, 0x1

    goto :goto_3

    :cond_9
    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->popups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->folderOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_a

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->closeFolder()V

    const/4 p1, 0x1

    :cond_a
    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->setCwFocusable(Z)V

    if-nez p1, :cond_b

    sget p1, Lcom/sid/tvos/MainActivity;->lastFocused:I

    sget v2, Lcom/sid/tvos/MainActivity;->COLUMNS:I

    rem-int/2addr p1, v2

    iget-object v2, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {v2}, Lcom/sid/tvos/AppAdapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->focusTile(I)V

    :cond_b
    :goto_4
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sid/tvos/MainActivity;->resumed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sid/tvos/MainActivity;->wasPaused:Z

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->minuteTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/sid/tvos/NotifListener;->onChange:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->controlCenter:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/FeatureBridge;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume()V
    .locals 13

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sid/tvos/MainActivity;->resumed:Z

    sput-object p0, Lcom/sid/tvos/MainActivity;->live:Lcom/sid/tvos/MainActivity;

    sget-object v1, Lcom/sid/tvos/LauncherActions;->pending:Ljava/util/Set;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v1, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v3, v4

    iget-object v6, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v7, Lt/n;

    const/4 v8, 0x2

    invoke-direct {v7, v8, p0, v5}, Lt/n;-><init>(ILcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->settingsPanel:Lcom/sid/tvos/MainActivity$SettingsPanel;

    if-eqz v1, :cond_1

    iget-boolean v3, p0, Lcom/sid/tvos/MainActivity;->fromStandByPreview:Z

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->closeNow()V

    :cond_1
    iget-boolean v1, p0, Lcom/sid/tvos/MainActivity;->fromStandByPreview:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lt/P;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lt/P;-><init>(Lcom/sid/tvos/MainActivity;I)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->standByReturnFocus:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v4, Lt/s;

    const/4 v5, 0x2

    invoke-direct {v4, v1, v5}, Lt/s;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v5, 0x96

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-boolean v1, p0, Lcom/sid/tvos/MainActivity;->fullScreen:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, v2}, Lcom/sid/tvos/MainActivity;->exitFullScreen(Z)V

    :cond_3
    iput-boolean v2, p0, Lcom/sid/tvos/MainActivity;->glassShown:Z

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->glass:Lcom/sid/tvos/GlassView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iput-boolean v2, p0, Lcom/sid/tvos/MainActivity;->shelfShown:Z

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->shelfGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->shelfGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/sid/tvos/MainActivity;->shelfPosition:I

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->shelfScrim:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    new-instance v1, Lcom/sid/tvos/p;

    const/16 v3, 0xf

    invoke-direct {v1, p0, v3}, Lcom/sid/tvos/p;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-static {p0, v1}, Lcom/sid/tvos/Weather;->load(Landroid/content/Context;Lcom/sid/tvos/Weather$Callback;)V

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyStatusItems()V

    invoke-static {p0}, Lcom/sid/tvos/Remaps;->ensureServiceEnabled(Landroid/content/Context;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "show_recents"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "show_recents"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lt/P;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lt/P;-><init>(Lcom/sid/tvos/MainActivity;I)V

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    sget-boolean v1, Lcom/sid/tvos/MainActivity;->reopenAppearance:Z

    if-eqz v1, :cond_5

    sput-boolean v2, Lcom/sid/tvos/MainActivity;->reopenAppearance:Z

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lt/P;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lt/P;-><init>(Lcom/sid/tvos/MainActivity;I)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lt/P;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Lt/P;-><init>(Lcom/sid/tvos/MainActivity;I)V

    const-wide/16 v4, 0xfa0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-boolean v1, p0, Lcom/sid/tvos/MainActivity;->homeToFavourites:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/sid/tvos/MainActivity;->wasPaused:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/sid/tvos/MainActivity;->leftForApp:Z

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v1, 0x1

    :goto_2
    iput-boolean v2, p0, Lcom/sid/tvos/MainActivity;->leftForApp:Z

    iput-boolean v2, p0, Lcom/sid/tvos/MainActivity;->homeToFavourites:Z

    if-eqz v1, :cond_8

    const/4 v3, 0x0

    :goto_3
    move-object v8, v3

    goto :goto_4

    :cond_8
    sget-object v3, Lcom/sid/tvos/MainActivity;->lastFocusedKey:Ljava/lang/String;

    goto :goto_3

    :goto_4
    if-eqz v1, :cond_9

    sget v1, Lcom/sid/tvos/MainActivity;->lastFocused:I

    sget v3, Lcom/sid/tvos/MainActivity;->COLUMNS:I

    rem-int/2addr v1, v3

    :goto_5
    move v10, v1

    goto :goto_6

    :cond_9
    sget v1, Lcom/sid/tvos/MainActivity;->lastFocused:I

    goto :goto_5

    :goto_6
    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {v1}, Lcom/sid/tvos/AppAdapter;->reload()V

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    sget v3, Lcom/sid/tvos/MainActivity;->COLUMNS:I

    invoke-virtual {v1, v3}, Lcom/sid/tvos/AppAdapter;->prewarmShelves(I)V

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lt/P;

    const/4 v6, 0x5

    invoke-direct {v3, p0, v6}, Lt/P;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->scheduleLayoutAnimation()V

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->updateWifiLabel()V

    invoke-static {p0}, Lcom/sid/tvos/DarkSchedule;->apply(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->applyDark()V

    :cond_a
    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sid/tvos/MainActivity;->minuteTick:Ljava/lang/Runnable;

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/sid/tvos/WatchNext;->invalidate()V

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->playCloseAnimation()V

    sget-object v11, Lcom/sid/tvos/MainActivity;->openFolderName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->folderOverlay:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity;->setHomeFocusable(Z)V

    iget-boolean v1, p0, Lcom/sid/tvos/MainActivity;->fromStandByPreview:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->settingsPanel:Lcom/sid/tvos/MainActivity$SettingsPanel;

    if-eqz v1, :cond_b

    const/4 v9, 0x1

    goto :goto_7

    :cond_b
    const/4 v9, 0x0

    :goto_7
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lt/x;

    const/4 v12, 0x2

    move-object v6, v1

    move-object v7, p0

    invoke-direct/range {v6 .. v12}, Lt/x;-><init>(Lcom/sid/tvos/MainActivity;Ljava/lang/Object;ZILjava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/FeatureBridge;->onResume(Landroid/app/Activity;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onTileFocused(ILandroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    sput v1, Lcom/sid/tvos/MainActivity;->lastFocused:I

    iget-object v3, v0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {v3, v1}, Lcom/sid/tvos/AppAdapter;->keyAt(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sid/tvos/MainActivity;->lastFocusedKey:Ljava/lang/String;

    iget-object v3, v0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    iget-object v4, v0, Lcom/sid/tvos/MainActivity;->prepareLaunch:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, v0, Lcom/sid/tvos/MainActivity;->handler:Landroid/os/Handler;

    iget-object v4, v0, Lcom/sid/tvos/MainActivity;->prepareLaunch:Ljava/lang/Runnable;

    const-wide/16 v5, 0xfa

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v3, v0, Lcom/sid/tvos/MainActivity;->movingKey:Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/sid/tvos/MainActivity;->lastFocusedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {v0, v2}, Lcom/sid/tvos/MainActivity;->startWiggle(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sid/tvos/MainActivity;->stopWiggle()V

    :cond_1
    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, v0, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    const/high16 v4, 0x41f00000    # 30.0f

    iget v5, v0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v5, v5, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const v7, 0x3f90a3d7    # 1.13f

    mul-float v4, v4, v7

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v5, v5, v8

    add-float/2addr v4, v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v7

    add-float/2addr v9, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    div-float v10, v4, v8

    sub-float/2addr v5, v10

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    div-float v8, v9, v8

    sub-float/2addr v3, v8

    iget-object v8, v0, Lcom/sid/tvos/MainActivity;->glass:Lcom/sid/tvos/GlassView;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v10, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    float-to-int v11, v4

    if-ne v10, v11, :cond_2

    iget v10, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    float-to-int v12, v9

    if-eq v10, v12, :cond_3

    :cond_2
    iput v11, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    float-to-int v10, v9

    iput v10, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v10, v0, Lcom/sid/tvos/MainActivity;->glass:Lcom/sid/tvos/GlassView;

    invoke-virtual {v10, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, v0, Lcom/sid/tvos/MainActivity;->glass:Lcom/sid/tvos/GlassView;

    const/high16 v10, 0x41800000    # 16.0f

    iget v11, v0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v11, v11, v10

    mul-float v11, v11, v7

    invoke-virtual {v8, v11}, Lcom/sid/tvos/GlassView;->setRadius(F)V

    :cond_3
    iput v5, v0, Lcom/sid/tvos/MainActivity;->glassTargetX:F

    iput v3, v0, Lcom/sid/tvos/MainActivity;->glassTargetY:F

    iget-boolean v7, v0, Lcom/sid/tvos/MainActivity;->glassShown:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_4

    sget-boolean v7, Lcom/sid/tvos/AppAdapter;->calmFocusInProgress:Z

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    iget-object v10, v0, Lcom/sid/tvos/MainActivity;->glassGlide:Landroid/animation/ValueAnimator;

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    if-eqz v7, :cond_6

    iget-object v3, v0, Lcom/sid/tvos/MainActivity;->glass:Lcom/sid/tvos/GlassView;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v3, v0, Lcom/sid/tvos/MainActivity;->springX:Lp/f;

    invoke-virtual {v3}, Lp/f;->a()V

    iget-object v3, v0, Lcom/sid/tvos/MainActivity;->springY:Lp/f;

    invoke-virtual {v3}, Lp/f;->a()V

    iget-object v3, v0, Lcom/sid/tvos/MainActivity;->glass:Lcom/sid/tvos/GlassView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleX(F)V

    iget-object v3, v0, Lcom/sid/tvos/MainActivity;->glass:Lcom/sid/tvos/GlassView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleY(F)V

    iget-object v3, v0, Lcom/sid/tvos/MainActivity;->glass:Lcom/sid/tvos/GlassView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :cond_6
    iget-object v10, v0, Lcom/sid/tvos/MainActivity;->springX:Lp/f;

    invoke-virtual {v10}, Lp/f;->a()V

    iget-object v10, v0, Lcom/sid/tvos/MainActivity;->springY:Lp/f;

    invoke-virtual {v10}, Lp/f;->a()V

    iget-object v10, v0, Lcom/sid/tvos/MainActivity;->glass:Lcom/sid/tvos/GlassView;

    invoke-virtual {v10, v5}, Landroid/view/View;->setTranslationX(F)V

    iget-object v5, v0, Lcom/sid/tvos/MainActivity;->glass:Lcom/sid/tvos/GlassView;

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v3, v0, Lcom/sid/tvos/MainActivity;->glass:Lcom/sid/tvos/GlassView;

    iget-boolean v5, v0, Lcom/sid/tvos/MainActivity;->glassShown:Z

    xor-int/2addr v5, v8

    invoke-direct {v0, v3, v5, v6}, Lcom/sid/tvos/MainActivity;->popIn(Landroid/view/View;ZZ)V

    :goto_2
    iput-boolean v8, v0, Lcom/sid/tvos/MainActivity;->glassShown:Z

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    sget v5, Lcom/sid/tvos/MainActivity;->COLUMNS:I

    const v12, 0x3fa66666    # 1.3f

    const-wide/16 v13, 0x154

    if-ge v1, v5, :cond_b

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    const/high16 v15, 0x40c00000    # 6.0f

    iget v10, v0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v10, v10, v15

    float-to-int v10, v10

    sub-int/2addr v5, v10

    iget-object v10, v0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    sub-int/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v12

    cmpl-float v3, v10, v3

    if-lez v3, :cond_7

    const-wide/16 v10, 0x1e0

    goto :goto_3

    :cond_7
    move-wide v10, v13

    :goto_3
    iput-wide v10, v0, Lcom/sid/tvos/MainActivity;->glideMs:J

    cmp-long v3, v10, v13

    if-lez v3, :cond_8

    sget-object v3, Lcom/sid/tvos/MainActivity;->PAGE:Landroid/view/animation/Interpolator;

    goto :goto_4

    :cond_8
    sget-object v3, Lcom/sid/tvos/MainActivity;->CALM:Landroid/view/animation/Interpolator;

    :goto_4
    iput-object v3, v0, Lcom/sid/tvos/MainActivity;->glideCurve:Landroid/view/animation/Interpolator;

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v8, :cond_9

    iget-object v3, v0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v8, v0, Lcom/sid/tvos/MainActivity;->glideCurve:Landroid/view/animation/Interpolator;

    iget-wide v10, v0, Lcom/sid/tvos/MainActivity;->glideMs:J

    long-to-int v11, v10

    invoke-virtual {v3, v6, v5, v8, v11}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    :cond_9
    if-eqz v7, :cond_a

    invoke-direct {v0, v2, v4, v9}, Lcom/sid/tvos/MainActivity;->glideGlass(Landroid/view/View;FF)V

    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/sid/tvos/MainActivity;->showShelf(I)V

    goto :goto_7

    :cond_b
    const/high16 v1, 0x42ec0000    # 118.0f

    iget v5, v0, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v5, v5, v1

    float-to-int v1, v5

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v12

    cmpl-float v1, v1, v3

    if-lez v1, :cond_c

    const-wide/16 v10, 0x1e0

    goto :goto_5

    :cond_c
    move-wide v10, v13

    :goto_5
    iput-wide v10, v0, Lcom/sid/tvos/MainActivity;->glideMs:J

    cmp-long v1, v10, v13

    if-lez v1, :cond_d

    sget-object v1, Lcom/sid/tvos/MainActivity;->PAGE:Landroid/view/animation/Interpolator;

    goto :goto_6

    :cond_d
    sget-object v1, Lcom/sid/tvos/MainActivity;->CALM:Landroid/view/animation/Interpolator;

    :goto_6
    iput-object v1, v0, Lcom/sid/tvos/MainActivity;->glideCurve:Landroid/view/animation/Interpolator;

    iput v5, v0, Lcom/sid/tvos/MainActivity;->glideDy:I

    invoke-direct/range {p0 .. p0}, Lcom/sid/tvos/MainActivity;->hideShelf()V

    iput v6, v0, Lcom/sid/tvos/MainActivity;->glideDy:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v8, :cond_e

    iget-object v1, v0, Lcom/sid/tvos/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v0, Lcom/sid/tvos/MainActivity;->glideCurve:Landroid/view/animation/Interpolator;

    iget-wide v10, v0, Lcom/sid/tvos/MainActivity;->glideMs:J

    long-to-int v8, v10

    invoke-virtual {v1, v6, v5, v3, v8}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    :cond_e
    if-eqz v7, :cond_f

    invoke-direct {v0, v2, v4, v9}, Lcom/sid/tvos/MainActivity;->glideGlass(Landroid/view/View;FF)V

    :cond_f
    :goto_7
    return-void
.end method

.method public onTileHorizontalKey(II)Z
    .locals 5

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->movingKey:Ljava/lang/String;

    const/4 v1, -0x1

    const/16 v2, 0x16

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    sget v4, Lcom/sid/tvos/MainActivity;->COLUMNS:I

    if-ge p1, v4, :cond_1

    iget-object v4, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {v4, p1}, Lcom/sid/tvos/AppAdapter;->keyAt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p2, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/sid/tvos/MainActivity;->moveFavourite(II)V

    :cond_1
    return v3

    :cond_2
    sget v0, Lcom/sid/tvos/MainActivity;->COLUMNS:I

    if-ge p1, v0, :cond_7

    if-ne p2, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {p2}, Lcom/sid/tvos/AppAdapter;->dockShown()I

    move-result p2

    sub-int/2addr p2, v3

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lez v1, :cond_4

    if-lt p1, p2, :cond_6

    goto :goto_0

    :cond_4
    if-nez p1, :cond_6

    :goto_0
    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {p2, v1}, Lcom/sid/tvos/AppAdapter;->shiftDock(I)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-direct {p0, p1, v1}, Lcom/sid/tvos/MainActivity;->slideDock(II)V

    :cond_5
    return v3

    :cond_6
    return v0

    :cond_7
    iget-object v1, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {v1}, Lcom/sid/tvos/AppAdapter;->getItemCount()I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcom/sid/tvos/MainActivity;->atRowEnd(IIII)Z

    move-result p1

    return p1
.end method

.method public onTileLongPress(Lcom/sid/tvos/AppAdapter$Entry;Landroid/view/View;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    iget-object v0, v7, Lcom/sid/tvos/MainActivity;->movingKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/sid/tvos/R$layout;->popup_inputs:I

    iget-object v2, v7, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    const/high16 v0, 0x41b00000    # 22.0f

    invoke-direct {v7, v12, v0}, Lcom/sid/tvos/MainActivity;->applyPanelGlass(Landroid/view/View;F)V

    sget v0, Lcom/sid/tvos/R$id;->rows:I

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/PopupWindow;

    iget v1, v7, Lcom/sid/tvos/MainActivity;->density:F

    const/high16 v14, 0x438c0000    # 280.0f

    mul-float v1, v1, v14

    float-to-int v1, v1

    const/4 v2, -0x2

    invoke-direct {v0, v12, v1, v2, v11}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    invoke-direct {v7, v0}, Lcom/sid/tvos/MainActivity;->track(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v15

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v15, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v15, v11}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {v15, v10}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    new-instance v0, Lt/l;

    invoke-direct {v0, v7, v11}, Lt/l;-><init>(Lcom/sid/tvos/MainActivity;I)V

    invoke-virtual {v15, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sid/tvos/AppAdapter$Entry;->isFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v3, Lcom/sid/tvos/R$drawable;->ic_edit:I

    sget v0, Lcom/sid/tvos/R$string;->rename_folder:I

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/sid/tvos/l;

    invoke-direct {v6, v7, v8, v11}, Lcom/sid/tvos/l;-><init>(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;I)V

    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v15

    invoke-direct/range {v0 .. v6}, Lcom/sid/tvos/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    sget v3, Lcom/sid/tvos/R$drawable;->ic_delete:I

    sget v0, Lcom/sid/tvos/R$string;->delete_folder:I

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/sid/tvos/l;

    invoke-direct {v6, v7, v8, v9}, Lcom/sid/tvos/l;-><init>(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;I)V

    :goto_0
    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sid/tvos/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    goto/16 :goto_5

    :cond_1
    iget-object v0, v7, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    iget-object v1, v8, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sid/tvos/AppAdapter;->isFavorite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v3, Lcom/sid/tvos/R$drawable;->ic_apps:I

    sget v0, Lcom/sid/tvos/R$string;->move_in_favourites:I

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/sid/tvos/l;

    const/4 v0, 0x3

    invoke-direct {v6, v7, v8, v0}, Lcom/sid/tvos/l;-><init>(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;I)V

    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v15

    invoke-direct/range {v0 .. v6}, Lcom/sid/tvos/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    sget v3, Lcom/sid/tvos/R$drawable;->ic_star_off:I

    sget v0, Lcom/sid/tvos/R$string;->remove_from_favourites:I

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/sid/tvos/l;

    const/4 v0, 0x4

    invoke-direct {v6, v7, v8, v0}, Lcom/sid/tvos/l;-><init>(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;I)V

    move-object/from16 v0, p0

    :goto_1
    invoke-direct/range {v0 .. v6}, Lcom/sid/tvos/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    sget v3, Lcom/sid/tvos/R$drawable;->ic_star:I

    sget v0, Lcom/sid/tvos/R$string;->add_to_favourites:I

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/sid/tvos/l;

    const/4 v0, 0x5

    invoke-direct {v6, v7, v8, v0}, Lcom/sid/tvos/l;-><init>(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;I)V

    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v15

    goto :goto_1

    :goto_2
    iget-object v0, v7, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    iget-object v1, v8, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sid/tvos/AppAdapter;->folderOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    sget v3, Lcom/sid/tvos/R$drawable;->ic_folder_out:I

    sget v0, Lcom/sid/tvos/R$string;->remove_from_folder:I

    new-array v1, v11, [Ljava/lang/Object;

    aput-object v6, v1, v10

    invoke-virtual {v7, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/sid/tvos/l;

    const/4 v0, 0x6

    invoke-direct {v5, v7, v8, v0}, Lcom/sid/tvos/l;-><init>(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;I)V

    const/16 v16, -0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v15

    move-object/from16 v17, v5

    move/from16 v5, v16

    move-object v14, v6

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/sid/tvos/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    goto :goto_3

    :cond_3
    move-object v14, v6

    :goto_3
    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/Folders;->load(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    sget v3, Lcom/sid/tvos/R$drawable;->ic_folder:I

    sget v1, Lcom/sid/tvos/R$string;->move_to_folder:I

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v0, v2, v10

    invoke-virtual {v7, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/sid/tvos/o;

    invoke-direct {v6, v7, v8, v0, v10}, Lcom/sid/tvos/o;-><init>(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;Ljava/lang/String;I)V

    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v15

    invoke-direct/range {v0 .. v6}, Lcom/sid/tvos/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    goto :goto_4

    :cond_5
    sget v3, Lcom/sid/tvos/R$drawable;->ic_folder_new:I

    sget v0, Lcom/sid/tvos/R$string;->new_folder:I

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/sid/tvos/l;

    const/4 v0, 0x7

    invoke-direct {v6, v7, v8, v0}, Lcom/sid/tvos/l;-><init>(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;I)V

    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v15

    invoke-direct/range {v0 .. v6}, Lcom/sid/tvos/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    sget v3, Lcom/sid/tvos/R$drawable;->ic_info:I

    sget v0, Lcom/sid/tvos/R$string;->app_info:I

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/sid/tvos/l;

    const/16 v0, 0x8

    invoke-direct {v6, v7, v8, v0}, Lcom/sid/tvos/l;-><init>(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;I)V

    goto/16 :goto_0

    :goto_5
    new-array v0, v9, [I

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget v2, v7, Lcom/sid/tvos/MainActivity;->density:F

    const/high16 v3, 0x438c0000    # 280.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v12, v2, v10}, Landroid/view/View;->measure(II)V

    const/high16 v2, 0x41c00000    # 24.0f

    iget v3, v7, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v3, v3, v2

    float-to-int v2, v3

    aget v3, v0, v10

    iget-object v4, v7, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    const/high16 v5, 0x43980000    # 304.0f

    iget v6, v7, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v6, v6, v5

    float-to-int v5, v6

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aget v3, v0, v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v3

    iget v3, v7, Lcom/sid/tvos/MainActivity;->density:F

    const/high16 v4, 0x41600000    # 14.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v1, v3

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v3, v3

    iget-object v5, v7, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v7, Lcom/sid/tvos/MainActivity;->density:F

    const/high16 v8, 0x41800000    # 16.0f

    mul-float v9, v6, v8

    sub-float/2addr v5, v9

    cmpl-float v3, v3, v5

    if-lez v3, :cond_6

    mul-float v6, v6, v8

    float-to-int v1, v6

    aget v0, v0, v11

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, v7, Lcom/sid/tvos/MainActivity;->density:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x3f70a3d7    # 0.94f

    invoke-virtual {v12, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v12, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, v7, Lcom/sid/tvos/MainActivity;->root:Landroid/widget/FrameLayout;

    const v3, 0x800033

    invoke-virtual {v15, v0, v3, v2, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {v12}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3fe66666    # 1.8f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-direct/range {p0 .. p0}, Lcom/sid/tvos/MainActivity;->showBackdrop()V

    invoke-virtual {v13, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public onTileVerticalKey(II)Z
    .locals 3

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->movingKey:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {v0}, Lcom/sid/tvos/AppAdapter;->getItemCount()I

    move-result v0

    const/16 v2, 0x13

    if-ne p2, v2, :cond_3

    sget p2, Lcom/sid/tvos/MainActivity;->COLUMNS:I

    if-ge p1, p2, :cond_2

    iget p2, p0, Lcom/sid/tvos/MainActivity;->cwPosition:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_1

    invoke-direct {p0, v1}, Lcom/sid/tvos/MainActivity;->setCwFocusable(Z)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->cwRow:Landroid/widget/LinearLayout;

    iget p2, p0, Lcom/sid/tvos/MainActivity;->cwSelected:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v1

    :cond_1
    const/4 p1, -0x1

    iput p1, p0, Lcom/sid/tvos/MainActivity;->fullFromCard:I

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity;->enterFullScreen()V

    return v1

    :cond_2
    sub-int/2addr p1, p2

    if-ge p1, p2, :cond_5

    iget-object p2, p0, Lcom/sid/tvos/MainActivity;->adapter:Lcom/sid/tvos/AppAdapter;

    invoke-virtual {p2}, Lcom/sid/tvos/AppAdapter;->dockShown()I

    move-result p2

    sub-int/2addr p2, v1

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_3
    sub-int/2addr v0, v1

    sget p2, Lcom/sid/tvos/MainActivity;->COLUMNS:I

    div-int v2, v0, p2

    mul-int v2, v2, p2

    if-lt p1, v2, :cond_4

    return v1

    :cond_4
    add-int/2addr p1, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_5
    :goto_0
    sput-boolean v1, Lcom/sid/tvos/AppAdapter;->calmNextFocus:Z

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity;->focusTile(I)V

    return v1
.end method

.method public onTrimMemory(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    const/16 v0, 0x14

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->cwBackdrops:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->frosted:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity;->frostSteps:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    invoke-static {}, Lcom/sid/tvos/Images;->clear()V

    const/16 v0, 0x28

    if-lt p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    invoke-static {p1}, Lcom/sid/tvos/Stage;->trimTo(I)V

    iget-boolean p1, p0, Lcom/sid/tvos/MainActivity;->resumed:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sid/tvos/MainActivity;->shelf2:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sid/tvos/MainActivity;->leftForApp:Z

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
