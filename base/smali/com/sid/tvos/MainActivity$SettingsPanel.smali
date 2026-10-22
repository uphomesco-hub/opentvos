.class final Lcom/sid/tvos/MainActivity$SettingsPanel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sid/tvos/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SettingsPanel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sid/tvos/MainActivity$SettingsPanel$Page;
    }
.end annotation


# instance fields
.field private closing:Z

.field private fadedIn:Z

.field private glassBg:Lcom/sid/tvos/LiquidGlassDrawable;

.field private final glassRun:Ljava/lang/Runnable;

.field private panel:Landroid/widget/FrameLayout;

.field private pendingFadeIn:Ljava/lang/Runnable;

.field private rows:Landroid/widget/LinearLayout;

.field private scroll:Landroid/widget/ScrollView;

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sid/tvos/MainActivity$SettingsPanel$Page;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sid/tvos/MainActivity;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/sid/tvos/MainActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->stack:Ljava/util/List;

    new-instance p1, Lcom/sid/tvos/S;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/sid/tvos/S;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->glassRun:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic A(Lcom/sid/tvos/MainActivity$SettingsPanel;ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sid/tvos/MainActivity$SettingsPanel;->row(ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic B(Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sid/tvos/MainActivity$SettingsPanel;->wire(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/String;I[Ljava/lang/String;Lcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/sid/tvos/MainActivity$SettingsPanel;->lambda$choices$18(Ljava/lang/String;I[Ljava/lang/String;Lcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;)V

    return-void
.end method

.method public static synthetic b(Lcom/sid/tvos/MainActivity$TrackColours;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;Ljava/lang/Runnable;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/sid/tvos/MainActivity$SettingsPanel;->lambda$slider$20(Lcom/sid/tvos/MainActivity$TrackColours;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;Ljava/lang/Runnable;Landroid/view/View;Z)V

    return-void
.end method

.method private build()V
    .locals 10

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->panel:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/sid/tvos/LiquidGlassDrawable;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v1}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v1

    iget-object v2, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v2}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v2

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/sid/tvos/LiquidGlassDrawable;-><init>(FF)V

    iput-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->glassBg:Lcom/sid/tvos/LiquidGlassDrawable;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v1}, Lcom/sid/tvos/Appearance;->liquid(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sid/tvos/LiquidGlassDrawable;->setLiquid(Z)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->panel:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->glassBg:Lcom/sid/tvos/LiquidGlassDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->panel:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v1}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v1

    const/high16 v2, 0x41c00000    # 24.0f

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->panel:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/sid/tvos/MainActivity$SettingsPanel$1;

    invoke-direct {v1, p0}, Lcom/sid/tvos/MainActivity$SettingsPanel$1;-><init>(Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->panel:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->panel:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/sid/tvos/b0;

    invoke-direct {v3, p0}, Lcom/sid/tvos/b0;-><init>(Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v0

    const/high16 v3, 0x43dc0000    # 440.0f

    mul-float v0, v0, v3

    iget-object v3, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v3}, Lcom/sid/tvos/MainActivity;->g4(Lcom/sid/tvos/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3eeb851f    # 0.46f

    mul-float v3, v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const v4, 0x800005

    const/4 v5, -0x1

    invoke-direct {v3, v0, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->titleView:Landroid/widget/TextView;

    const/high16 v6, 0x41b00000    # 22.0f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->titleView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->titleView:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->titleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    sget v7, Lcom/sid/tvos/R$font;->inter_semibold:I

    invoke-static {v6, v7}, Le/k;->b(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->titleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v6}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v6

    const/high16 v7, 0x41d00000    # 26.0f

    mul-float v6, v6, v7

    float-to-int v6, v6

    iget-object v7, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v7}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v7

    const/high16 v8, 0x41600000    # 14.0f

    mul-float v7, v7, v8

    float-to-int v7, v7

    invoke-virtual {v4, v0, v6, v0, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-direct {v0, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->scroll:Landroid/widget/ScrollView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->scroll:Landroid/widget/ScrollView;

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/view/View;->setOverScrollMode(I)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->scroll:Landroid/widget/ScrollView;

    iget-object v6, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v6}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v6

    mul-float v6, v6, v8

    float-to-int v6, v6

    iget-object v7, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v7}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v7

    mul-float v7, v7, v8

    float-to-int v7, v7

    iget-object v8, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v8}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v8

    const/high16 v9, 0x41a00000    # 20.0f

    mul-float v8, v8, v9

    float-to-int v8, v8

    invoke-virtual {v0, v6, v4, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->rows:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->scroll:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->rows:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->scroll:Landroid/widget/ScrollView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->panel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->g4(Lcom/sid/tvos/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->panel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic c(Lcom/sid/tvos/MainActivity$SettingsPanel;I[Ljava/lang/String;Lcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/sid/tvos/MainActivity$SettingsPanel;->lambda$choices$17(I[Ljava/lang/String;Lcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void
.end method

.method public static synthetic d(Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/widget/LinearLayout;I[ILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/K;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/sid/tvos/MainActivity$SettingsPanel;->lambda$slider$21(Landroid/widget/LinearLayout;I[ILcom/sid/tvos/MainActivity$IntChoice;Ljava/lang/Runnable;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Landroid/graphics/drawable/GradientDrawable;IZLandroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sid/tvos/MainActivity$SettingsPanel;->lambda$avatarView$22(Landroid/graphics/drawable/GradientDrawable;IZLandroid/view/View;Z)V

    return-void
.end method

.method public static synthetic f(Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->lambda$build$4()V

    return-void
.end method

.method private fadeIn()V
    .locals 3

    iget-boolean v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->fadedIn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->closing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->panel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->fadedIn:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->pendingFadeIn:Ljava/lang/Runnable;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x118

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private firstFocusable(Landroid/view/View;)Landroid/view/View;
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x82

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v3, Lcom/sid/tvos/R$id;->selected:I

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private firstFocusableRow(II)Landroid/view/View;
    .locals 1

    :goto_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->rows:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->rows:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->firstFocusable(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    add-int/2addr p1, p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private focusedIndex()I
    .locals 3

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->rows:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->rows:Landroid/widget/LinearLayout;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->rows:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    :goto_1
    return v0
.end method

.method public static synthetic g(Lcom/sid/tvos/MainActivity$SettingsPanel;[Ljava/lang/Runnable;[ZLcom/sid/tvos/MainActivity$IntChoice;[IILcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/sid/tvos/MainActivity$SettingsPanel;->lambda$choices$16([Ljava/lang/Runnable;[ZLcom/sid/tvos/MainActivity$IntChoice;[IILcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void
.end method

.method public static synthetic h(Lcom/sid/tvos/MainActivity$SettingsPanel;[II[Ljava/lang/Runnable;Lcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/sid/tvos/MainActivity$SettingsPanel;->lambda$choices$15([II[Ljava/lang/Runnable;Lcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic i(Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->lambda$closeThen$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->lambda$switchRow$11(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic k(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->lambda$avatarView$23(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/sid/tvos/MainActivity$SettingsPanel;->lambda$build$5(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private static synthetic lambda$avatarView$22(Landroid/graphics/drawable/GradientDrawable;IZLandroid/view/View;Z)V
    .locals 3

    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f933333    # 1.15f

    if-eqz p4, :cond_0

    const v2, 0x3f933333    # 1.15f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p3, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    if-eqz p4, :cond_1

    const v0, 0x3f933333    # 1.15f

    :cond_1
    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    const-wide/16 v0, 0xc8

    invoke-virtual {p3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    if-eqz p4, :cond_2

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const v1, 0x3fb33333    # 1.4f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    :goto_1
    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->start()V

    if-eqz p4, :cond_3

    const/4 p2, -0x1

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    const p2, -0x4c000001

    goto :goto_2

    :cond_4
    const p2, 0xffffff

    :goto_2
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-void
.end method

.method private static synthetic lambda$avatarView$23(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$build$4()V
    .locals 1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->pendingFadeIn:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->refreshGlass(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$build$5(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-ne p4, p8, :cond_0

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    if-eq p5, p9, :cond_1

    :cond_0
    new-instance p2, Lcom/sid/tvos/S;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lcom/sid/tvos/S;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private synthetic lambda$choices$13([Z[Ljava/lang/Runnable;Lcom/sid/tvos/MainActivity$IntChoice;[IILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-boolean v0, p1, v1

    aget-object p1, p2, v1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {p1}, Lcom/sid/tvos/MainActivity;->d4(Lcom/sid/tvos/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    aget-object p2, p2, v1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p3, :cond_1

    aget p1, p4, v1

    if-eq p1, p5, :cond_1

    invoke-interface {p3, p5}, Lcom/sid/tvos/MainActivity$IntChoice;->pick(I)V

    :cond_1
    if-eqz p6, :cond_2

    invoke-interface {p6, p5}, Lcom/sid/tvos/MainActivity$IntChoice;->pick(I)V

    :cond_2
    invoke-virtual {p7}, Lcom/sid/tvos/MainActivity$SettingsPanel;->back()V

    return-void
.end method

.method private static synthetic lambda$choices$14([IILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 1

    const/4 v0, 0x0

    aput p1, p0, v0

    invoke-interface {p2, p1}, Lcom/sid/tvos/MainActivity$IntChoice;->pick(I)V

    invoke-virtual {p3}, Lcom/sid/tvos/MainActivity$SettingsPanel;->glassSoon()V

    return-void
.end method

.method private synthetic lambda$choices$15([II[Ljava/lang/Runnable;Lcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/view/View;Z)V
    .locals 1

    if-eqz p7, :cond_2

    const/4 p6, 0x0

    aget p7, p1, p6

    if-ne p7, p2, :cond_0

    goto :goto_0

    :cond_0
    aget-object p7, p3, p6

    if-eqz p7, :cond_1

    iget-object p7, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {p7}, Lcom/sid/tvos/MainActivity;->d4(Lcom/sid/tvos/MainActivity;)Landroid/os/Handler;

    move-result-object p7

    aget-object v0, p3, p6

    invoke-virtual {p7, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    new-instance p7, Lcom/sid/tvos/Y;

    invoke-direct {p7, p1, p2, p4, p5}, Lcom/sid/tvos/Y;-><init>([IILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    aput-object p7, p3, p6

    iget-object p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {p1}, Lcom/sid/tvos/MainActivity;->d4(Lcom/sid/tvos/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    aget-object p2, p3, p6

    const-wide/16 p3, 0x8c

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$choices$16([Ljava/lang/Runnable;[ZLcom/sid/tvos/MainActivity$IntChoice;[IILcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 2

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v1}, Lcom/sid/tvos/MainActivity;->d4(Lcom/sid/tvos/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    aget-object p1, p1, v0

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    aget-boolean p1, p2, v0

    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    aget p1, p4, v0

    if-eq p1, p5, :cond_1

    invoke-interface {p3, p5}, Lcom/sid/tvos/MainActivity$IntChoice;->pick(I)V

    invoke-virtual {p6}, Lcom/sid/tvos/MainActivity$SettingsPanel;->glassSoon()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$choices$17(I[Ljava/lang/String;Lcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 19

    move/from16 v6, p1

    move-object/from16 v0, p2

    move-object/from16 v5, p5

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v3, v2, [Z

    aput-boolean v1, v3, v1

    filled-new-array/range {p1 .. p1}, [I

    move-result-object v16

    const/4 v4, 0x0

    new-array v15, v2, [Ljava/lang/Runnable;

    aput-object v4, v15, v1

    const/4 v14, 0x0

    :goto_0
    array-length v7, v0

    if-ge v14, v7, :cond_2

    aget-object v7, v0, v14

    if-ne v14, v6, :cond_0

    const-string v8, "\u2713"

    goto :goto_1

    :cond_0
    move-object v8, v4

    :goto_1
    invoke-direct {v5, v1, v7, v8, v1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->row(ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v13

    new-instance v12, Lcom/sid/tvos/V;

    move-object v7, v12

    move-object/from16 v8, p0

    move-object v9, v3

    move-object v10, v15

    move-object/from16 v11, p3

    move-object v1, v12

    move-object/from16 v12, v16

    move-object v4, v13

    move v13, v14

    move/from16 v17, v14

    move-object/from16 v14, p4

    move-object/from16 v18, v15

    move-object/from16 v15, p5

    invoke-direct/range {v7 .. v15}, Lcom/sid/tvos/V;-><init>(Lcom/sid/tvos/MainActivity$SettingsPanel;[Z[Ljava/lang/Runnable;Lcom/sid/tvos/MainActivity$IntChoice;[IILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    invoke-direct {v5, v4, v4, v1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->wire(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    if-eqz p3, :cond_1

    new-instance v1, Lcom/sid/tvos/W;

    move-object v7, v1

    move-object/from16 v8, p0

    move-object/from16 v9, v16

    move/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    invoke-direct/range {v7 .. v13}, Lcom/sid/tvos/W;-><init>(Lcom/sid/tvos/MainActivity$SettingsPanel;[II[Ljava/lang/Runnable;Lcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_1
    add-int/lit8 v14, v17, 0x1

    move-object/from16 v15, v18

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v18, v15

    invoke-direct/range {p5 .. p5}, Lcom/sid/tvos/MainActivity$SettingsPanel;->top()Lcom/sid/tvos/MainActivity$SettingsPanel$Page;

    move-result-object v8

    iput v6, v8, Lcom/sid/tvos/MainActivity$SettingsPanel$Page;->focus:I

    new-instance v9, Lcom/sid/tvos/X;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v4, p3

    move-object/from16 v5, v16

    move/from16 v6, p1

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/sid/tvos/X;-><init>(Lcom/sid/tvos/MainActivity$SettingsPanel;[Ljava/lang/Runnable;[ZLcom/sid/tvos/MainActivity$IntChoice;[IILcom/sid/tvos/MainActivity$SettingsPanel;)V

    iput-object v9, v8, Lcom/sid/tvos/MainActivity$SettingsPanel$Page;->onBack:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$choices$18(Ljava/lang/String;I[Ljava/lang/String;Lcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;)V
    .locals 7

    new-instance v6, Lcom/sid/tvos/U;

    move-object v0, v6

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/sid/tvos/U;-><init>(I[Ljava/lang/String;Lcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    invoke-virtual {p0, p1, v6}, Lcom/sid/tvos/MainActivity$SettingsPanel;->push(Ljava/lang/String;Lcom/sid/tvos/MainActivity$PageBuilder;)V

    return-void
.end method

.method private synthetic lambda$closeThen$6(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->g4(Lcom/sid/tvos/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$nav$10(Ljava/lang/String;Lcom/sid/tvos/MainActivity$PageBuilder;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->push(Ljava/lang/String;Lcom/sid/tvos/MainActivity$PageBuilder;)V

    return-void
.end method

.method private synthetic lambda$refreshGlass$0(Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V
    .locals 3

    iget-boolean v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->closing:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->h4(Lcom/sid/tvos/MainActivity;)Lcom/sid/tvos/MainActivity$SettingsPanel;

    move-result-object v0

    if-eq v0, p0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->glassBg:Lcom/sid/tvos/LiquidGlassDrawable;

    if-eqz p2, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x104

    :goto_0
    invoke-virtual {v0, p1, v1, v2}, Lcom/sid/tvos/LiquidGlassDrawable;->setBackdrop(Landroid/graphics/Bitmap;J)V

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$refreshGlass$1(Landroid/graphics/Bitmap;IFIIIIILjava/lang/Runnable;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/sid/tvos/Blur;->soften(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object p1

    div-int/2addr p4, p5

    const/4 p2, 0x0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    div-int/2addr p6, p5

    invoke-static {p2, p6}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    sub-int/2addr p4, p3

    div-int/2addr p7, p5

    const/4 p6, 0x1

    invoke-static {p6, p7}, Ljava/lang/Math;->max(II)I

    move-result p7

    invoke-static {p4, p7}, Ljava/lang/Math;->min(II)I

    move-result p4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p7

    sub-int/2addr p7, p2

    div-int/2addr p8, p5

    invoke-static {p6, p8}, Ljava/lang/Math;->max(II)I

    move-result p5

    invoke-static {p7, p5}, Ljava/lang/Math;->min(II)I

    move-result p5

    if-lez p4, :cond_0

    if-lez p5, :cond_0

    invoke-static {p1, p3, p2, p4, p5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    :cond_1
    iget-object p2, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {p2}, Lcom/sid/tvos/MainActivity;->d4(Lcom/sid/tvos/MainActivity;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/sid/tvos/m;

    const/4 p4, 0x3

    invoke-direct {p3, p0, p1, p9, p4}, Lcom/sid/tvos/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$refreshGlass$2(IFIIIIILjava/lang/Runnable;Landroid/graphics/Bitmap;)V
    .locals 13

    invoke-static {}, Lcom/sid/tvos/MainActivity;->C4()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v12, Lcom/sid/tvos/P;

    move-object v1, v12

    move v2, p2

    move v3, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p9

    move-object v10, p0

    move-object/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lcom/sid/tvos/P;-><init>(FIIIIIILandroid/graphics/Bitmap;Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/Runnable;)V

    invoke-interface {v0, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$refreshGlass$3(Lcom/sid/tvos/Images$Callback;Landroid/graphics/Bitmap;II)V
    .locals 0

    if-nez p4, :cond_0

    :goto_0
    invoke-interface {p1, p2}, Lcom/sid/tvos/Images$Callback;->onImage(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {p2}, Lcom/sid/tvos/MainActivity;->g4(Lcom/sid/tvos/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/sid/tvos/Blur;->capture(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :goto_1
    return-void
.end method

.method private synthetic lambda$render$7(II)V
    .locals 2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->scroll:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/ScrollView;->scrollTo(II)V

    if-ltz p2, :cond_0

    iget-object p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->rows:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge p2, p1, :cond_0

    iget-object p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->rows:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->firstFocusable(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->firstFocusableRow(II)Landroid/view/View;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_2
    return-void
.end method

.method private synthetic lambda$slider$19(Landroid/widget/TextView;Lcom/sid/tvos/MainActivity$IntLabel;[ILcom/sid/tvos/MainActivity$TrackColours;Landroid/graphics/drawable/GradientDrawable;Landroid/view/View;Landroid/widget/FrameLayout;II)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    aget v1, p3, v0

    invoke-interface {p2, v1}, Lcom/sid/tvos/MainActivity$IntLabel;->text(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    aget p2, p3, v0

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    sget v1, Lcom/sid/tvos/R$string;->state_off:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_2

    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {p5, p1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    invoke-interface {p4}, Lcom/sid/tvos/MainActivity$TrackColours;->colours()[I

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    invoke-virtual {p7}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr p1, p8

    aget p2, p3, v0

    mul-int p1, p1, p2

    int-to-float p1, p1

    int-to-float p2, p9

    div-float/2addr p1, p2

    invoke-virtual {p6, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    :cond_2
    invoke-virtual {p6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p7}, Landroid/view/View;->getWidth()I

    move-result p2

    aget p3, p3, v0

    mul-int p2, p2, p3

    int-to-float p2, p2

    int-to-float p3, p9

    div-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p6}, Landroid/view/View;->requestLayout()V

    :goto_1
    return-void
.end method

.method private static synthetic lambda$slider$20(Lcom/sid/tvos/MainActivity$TrackColours;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;Ljava/lang/Runnable;Landroid/view/View;Z)V
    .locals 0

    if-nez p0, :cond_2

    if-eqz p5, :cond_0

    const/high16 p0, 0x33000000

    goto :goto_0

    :cond_0
    const p0, 0x40ffffff    # 7.9999995f

    :goto_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    if-eqz p5, :cond_1

    const p0, -0xe3e3e2

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    :goto_1
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_2
    if-nez p5, :cond_3

    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$slider$21(Landroid/widget/LinearLayout;I[ILcom/sid/tvos/MainActivity$IntChoice;Ljava/lang/Runnable;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-direct {p0, p1, p7, p8}, Lcom/sid/tvos/MainActivity$SettingsPanel;->onRowKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    const/4 p6, 0x1

    if-eqz p1, :cond_0

    return p6

    :cond_0
    const/16 p1, 0x15

    const/16 v0, 0x16

    const/4 v1, 0x0

    if-eq p7, p1, :cond_1

    if-eq p7, v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p8}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3

    aget p1, p3, v1

    if-ne p7, v0, :cond_2

    const/4 p7, 0x1

    goto :goto_0

    :cond_2
    const/4 p7, -0x1

    :goto_0
    add-int/2addr p1, p7

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    aget p2, p3, v1

    if-eq p1, p2, :cond_3

    aput p1, p3, v1

    invoke-interface {p4, p1}, Lcom/sid/tvos/MainActivity$IntChoice;->pick(I)V

    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->glassSoon()V

    :cond_3
    return p6
.end method

.method private synthetic lambda$strip$24(Landroid/widget/HorizontalScrollView;ILjava/util/List;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p5, p6}, Lcom/sid/tvos/MainActivity$SettingsPanel;->onRowKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    const/4 p4, 0x1

    if-eqz p1, :cond_0

    return p4

    :cond_0
    invoke-virtual {p6}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p6, 0x0

    if-eqz p1, :cond_1

    return p6

    :cond_1
    const/16 p1, 0x15

    if-ne p5, p1, :cond_2

    if-eqz p2, :cond_4

    :cond_2
    const/16 p1, 0x16

    if-ne p5, p1, :cond_3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, p4

    if-ne p2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p4, 0x0

    :cond_4
    :goto_0
    return p4
.end method

.method private synthetic lambda$switchRow$11(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->glassSoon()V

    invoke-virtual {p0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->refresh()V

    return-void
.end method

.method private synthetic lambda$toggle$12(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    xor-int/lit8 p2, p2, 0x1

    invoke-static {v0, p1, p2}, Lcom/sid/tvos/Appearance;->setShow(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->glassSoon()V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {p1}, Lcom/sid/tvos/MainActivity;->n4(Lcom/sid/tvos/MainActivity;)V

    invoke-virtual {p0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->refresh()V

    return-void
.end method

.method private synthetic lambda$wire$8(Landroid/view/View;Landroid/view/View;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p4, p5}, Lcom/sid/tvos/MainActivity$SettingsPanel;->onRowKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p3

    const/4 p5, 0x1

    if-eqz p3, :cond_0

    return p5

    :cond_0
    if-ne p2, p1, :cond_1

    const/16 p1, 0x15

    if-eq p4, p1, :cond_2

    const/16 p1, 0x16

    if-ne p4, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p5, 0x0

    :cond_2
    :goto_0
    return p5
.end method

.method private static synthetic lambda$wire$9(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic m(Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->lambda$refreshGlass$0(Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic n(Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->lambda$toggle$12(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic o([IILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/sid/tvos/MainActivity$SettingsPanel;->lambda$choices$14([IILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void
.end method

.method private onRowKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    const/4 v0, 0x0

    const/16 v1, 0x13

    const/4 v2, 0x1

    const/16 v3, 0x14

    if-eqz p3, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    const/16 p1, 0x17

    if-eq p2, p1, :cond_1

    const/16 p1, 0x42

    if-eq p2, p1, :cond_1

    if-eq p2, v1, :cond_0

    if-ne p2, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    if-eq p2, v1, :cond_4

    if-ne p2, v3, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    if-ne p2, v3, :cond_5

    const/4 p2, 0x1

    goto :goto_1

    :cond_5
    const/4 p2, -0x1

    :goto_1
    iget-object p3, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->rows:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, p2

    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->firstFocusableRow(II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_6
    return v2
.end method

.method public static synthetic p(Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->fadeIn()V

    return-void
.end method

.method public static synthetic q(Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/widget/HorizontalScrollView;ILjava/util/List;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/sid/tvos/MainActivity$SettingsPanel;->lambda$strip$24(Landroid/widget/HorizontalScrollView;ILjava/util/List;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r(Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/view/View;Landroid/view/View;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/sid/tvos/MainActivity$SettingsPanel;->lambda$wire$8(Landroid/view/View;Landroid/view/View;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private render(I)V
    .locals 6

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->top()Lcom/sid/tvos/MainActivity$SettingsPanel$Page;

    move-result-object v0

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->rows:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->titleView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/sid/tvos/MainActivity$SettingsPanel$Page;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sid/tvos/MainActivity$SettingsPanel$Page;->onBack:Ljava/lang/Runnable;

    iget-object v1, v0, Lcom/sid/tvos/MainActivity$SettingsPanel$Page;->builder:Lcom/sid/tvos/MainActivity$PageBuilder;

    invoke-interface {v1, p0}, Lcom/sid/tvos/MainActivity$PageBuilder;->build(Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    iget v1, v0, Lcom/sid/tvos/MainActivity$SettingsPanel$Page;->focus:I

    iget v0, v0, Lcom/sid/tvos/MainActivity$SettingsPanel$Page;->scrollY:I

    iget-object v2, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->rows:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/sid/tvos/Z;

    invoke-direct {v3, p0, v0, v1}, Lcom/sid/tvos/Z;-><init>(Lcom/sid/tvos/MainActivity$SettingsPanel;II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->rows:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->rows:Landroid/widget/LinearLayout;

    mul-int/lit8 p1, p1, 0x24

    int-to-float p1, p1

    iget-object v2, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v2}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v2

    mul-float v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->rows:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0x104

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private row(ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/sid/tvos/R$layout;->item_input:I

    iget-object v2, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->rows:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v1}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v1

    const/high16 v2, 0x41500000    # 13.0f

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Lcom/sid/tvos/Corners;->clip(Landroid/view/View;F)V

    sget v1, Lcom/sid/tvos/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/high16 v7, 0x41e00000    # 28.0f

    if-ne p1, v4, :cond_0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {p1}, Lcom/sid/tvos/MainActivity;->o4(Lcom/sid/tvos/MainActivity;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v4, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v4}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v4

    mul-float v4, v4, v7

    float-to-int v4, v4

    iput v4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v1}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v1

    mul-float v1, v1, v7

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v4, p1}, Lcom/sid/tvos/MainActivity;->x4(Lcom/sid/tvos/MainActivity;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    sget p1, Lcom/sid/tvos/R$id;->title:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lcom/sid/tvos/R$id;->status:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p3, :cond_2

    const-string p3, ""

    :cond_2
    if-eqz p4, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "\u203a"

    :goto_2
    move-object p3, p2

    goto :goto_3

    :cond_3
    const-string p2, "   \u203a"

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    const/16 v3, 0x8

    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    sget p1, Lcom/sid/tvos/R$id;->dot:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {p2}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result p2

    const/high16 p3, 0x42480000    # 50.0f

    mul-float p2, p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->rows:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static synthetic s(FIIIIIILandroid/graphics/Bitmap;Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/Runnable;)V
    .locals 10

    .line 1
    move-object/from16 v0, p8

    move-object/from16 v1, p7

    move v2, p1

    move v3, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/sid/tvos/MainActivity$SettingsPanel;->lambda$refreshGlass$1(Landroid/graphics/Bitmap;IFIIIIILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic t(Lcom/sid/tvos/MainActivity$SettingsPanel;[Z[Ljava/lang/Runnable;Lcom/sid/tvos/MainActivity$IntChoice;[IILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/sid/tvos/MainActivity$SettingsPanel;->lambda$choices$13([Z[Ljava/lang/Runnable;Lcom/sid/tvos/MainActivity$IntChoice;[IILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void
.end method

.method private top()Lcom/sid/tvos/MainActivity$SettingsPanel$Page;
    .locals 2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sid/tvos/MainActivity$SettingsPanel$Page;

    :goto_0
    return-object v0
.end method

.method public static synthetic u(Lcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/c0;Landroid/graphics/Bitmap;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sid/tvos/MainActivity$SettingsPanel;->lambda$refreshGlass$3(Lcom/sid/tvos/Images$Callback;Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method public static synthetic v(Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/String;Lcom/sid/tvos/MainActivity$PageBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->lambda$nav$10(Ljava/lang/String;Lcom/sid/tvos/MainActivity$PageBuilder;)V

    return-void
.end method

.method public static synthetic w(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->lambda$wire$9(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method private wire(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Lcom/sid/tvos/N;

    invoke-direct {v0, p0, p1, p2}, Lcom/sid/tvos/N;-><init>(Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-eqz p3, :cond_0

    new-instance p1, Lcom/sid/tvos/O;

    const/4 v0, 0x0

    invoke-direct {p1, p3, v0}, Lcom/sid/tvos/O;-><init>(Ljava/lang/Runnable;I)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic x(Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/widget/TextView;Lcom/sid/tvos/MainActivity$IntLabel;[ILcom/sid/tvos/MainActivity$TrackColours;Landroid/graphics/drawable/GradientDrawable;Landroid/view/View;Landroid/widget/FrameLayout;II)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/sid/tvos/MainActivity$SettingsPanel;->lambda$slider$19(Landroid/widget/TextView;Lcom/sid/tvos/MainActivity$IntLabel;[ILcom/sid/tvos/MainActivity$TrackColours;Landroid/graphics/drawable/GradientDrawable;Landroid/view/View;Landroid/widget/FrameLayout;II)V

    return-void
.end method

.method public static synthetic y(Lcom/sid/tvos/MainActivity$SettingsPanel;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->lambda$render$7(II)V

    return-void
.end method

.method public static synthetic z(FIIIIIILandroid/graphics/Bitmap;Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/Runnable;)V
    .locals 10

    .line 1
    move-object/from16 v0, p8

    move v1, p1

    move v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p9

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/sid/tvos/MainActivity$SettingsPanel;->lambda$refreshGlass$2(IFIIIIILjava/lang/Runnable;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public action(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->row(ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p1, p4}, Lcom/sid/tvos/MainActivity$SettingsPanel;->wire(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public avatarView(Landroid/graphics/Bitmap;ZLjava/lang/Runnable;)Landroid/view/View;
    .locals 8

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v1}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v1

    const/high16 v2, 0x42800000    # 64.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v2}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p1, Lcom/sid/tvos/MainActivity$SettingsPanel$2;

    invoke-direct {p1, p0}, Lcom/sid/tvos/MainActivity$SettingsPanel$2;-><init>(Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    invoke-virtual {v3, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    invoke-virtual {v3, p1}, Landroid/view/View;->setClipToOutline(Z)V

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const v5, 0x26ffffff

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x11

    invoke-direct {v4, v1, v1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    if-eqz p2, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    const v3, 0xffffff

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v3}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v3, v2

    iget-object v5, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v5}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v5

    mul-float v5, v5, v4

    float-to-int v5, v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v6}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v6

    mul-float v6, v6, v4

    float-to-int v6, v6

    add-int/2addr v6, v2

    iget-object v7, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v7}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v7

    mul-float v7, v7, v4

    float-to-int v4, v7

    add-int/2addr v4, v2

    invoke-virtual {v0, v3, v5, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    sget p1, Lcom/sid/tvos/R$id;->selected:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance p1, Lcom/sid/tvos/Q;

    invoke-direct {p1, v1, v2, p2}, Lcom/sid/tvos/Q;-><init>(Landroid/graphics/drawable/GradientDrawable;IZ)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance p1, Lcom/sid/tvos/O;

    const/4 p2, 0x1

    invoke-direct {p1, p3, p2}, Lcom/sid/tvos/O;-><init>(Ljava/lang/Runnable;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public back()V
    .locals 3

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->top()Lcom/sid/tvos/MainActivity$SettingsPanel$Page;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sid/tvos/MainActivity$SettingsPanel$Page;->onBack:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->close()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->render(I)V

    return-void
.end method

.method public choices(ILjava/lang/String;[Ljava/lang/String;ILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;)V
    .locals 8

    array-length v0, p3

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget-object v0, p3, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->row(ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object p1

    new-instance v7, Lcom/sid/tvos/T;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move v3, p4

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sid/tvos/T;-><init>(Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/String;I[Ljava/lang/String;Lcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/MainActivity$IntChoice;)V

    invoke-direct {p0, p1, p1, v7}, Lcom/sid/tvos/MainActivity$SettingsPanel;->wire(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->closeThen(Ljava/lang/Runnable;)V

    return-void
.end method

.method public closeNow()V
    .locals 3

    iget-boolean v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->closing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->closing:Z

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v1}, Lcom/sid/tvos/MainActivity;->s4(Lcom/sid/tvos/MainActivity;)V

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v1}, Lcom/sid/tvos/MainActivity;->g4(Lcom/sid/tvos/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->panel:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v1}, Lcom/sid/tvos/MainActivity;->h4(Lcom/sid/tvos/MainActivity;)Lcom/sid/tvos/MainActivity$SettingsPanel;

    move-result-object v1

    if-ne v1, p0, :cond_1

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sid/tvos/MainActivity;->l4(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    :cond_1
    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v1, v0}, Lcom/sid/tvos/MainActivity;->w4(Lcom/sid/tvos/MainActivity;Z)V

    return-void
.end method

.method public closeThen(Ljava/lang/Runnable;)V
    .locals 5

    iget-boolean v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->closing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->closing:Z

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->top()Lcom/sid/tvos/MainActivity$SettingsPanel$Page;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/sid/tvos/MainActivity$SettingsPanel$Page;->onBack:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v1}, Lcom/sid/tvos/MainActivity;->s4(Lcom/sid/tvos/MainActivity;)V

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->panel:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v3}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v3

    const/high16 v4, 0x42700000    # 60.0f

    mul-float v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0xdc

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/sid/tvos/a0;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Lcom/sid/tvos/a0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v1}, Lcom/sid/tvos/MainActivity;->h4(Lcom/sid/tvos/MainActivity;)Lcom/sid/tvos/MainActivity$SettingsPanel;

    move-result-object v1

    if-ne v1, p0, :cond_2

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sid/tvos/MainActivity;->l4(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    :cond_2
    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v1, v0}, Lcom/sid/tvos/MainActivity;->w4(Lcom/sid/tvos/MainActivity;Z)V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {}, Lcom/sid/tvos/MainActivity;->D4()I

    move-result v1

    iget-object v2, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v2}, Lcom/sid/tvos/MainActivity;->R3(Lcom/sid/tvos/MainActivity;)Lcom/sid/tvos/AppAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sid/tvos/AppAdapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Lcom/sid/tvos/MainActivity;->t4(Lcom/sid/tvos/MainActivity;I)V

    :goto_0
    return-void
.end method

.method public disabled(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->row(ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public glassSoon()V
    .locals 4

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->d4(Lcom/sid/tvos/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->glassRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->d4(Lcom/sid/tvos/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->glassRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0x208

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public header(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41400000    # 12.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const p1, -0x73000001

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    sget v1, Lcom/sid/tvos/R$font;->inter_semibold:I

    invoke-static {p1, v1}, Le/k;->b(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {p1}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result p1

    const/high16 v1, 0x41600000    # 14.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->rows:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v1}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    :goto_0
    mul-float v1, v1, v2

    float-to-int v1, v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v1}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v1

    const/high16 v2, 0x41900000    # 18.0f

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v2}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v2

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, p1, v1, p1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->rows:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public nav(ILjava/lang/String;Ljava/lang/String;Lcom/sid/tvos/MainActivity$PageBuilder;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->row(ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/sid/tvos/m;

    const/4 v0, 0x2

    invoke-direct {p3, p0, p2, p4, v0}, Lcom/sid/tvos/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {p0, p1, p1, p3}, Lcom/sid/tvos/MainActivity$SettingsPanel;->wire(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public note(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41500000    # 13.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const p1, -0x66000001

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    sget v1, Lcom/sid/tvos/R$font;->inter_regular:I

    invoke-static {p1, v1}, Le/k;->b(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {p1}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result p1

    const/high16 v1, 0x41600000    # 14.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v1}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->rows:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public open(Ljava/lang/String;Lcom/sid/tvos/MainActivity$PageBuilder;)V
    .locals 2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->h4(Lcom/sid/tvos/MainActivity;)Lcom/sid/tvos/MainActivity$SettingsPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->h4(Lcom/sid/tvos/MainActivity;)Lcom/sid/tvos/MainActivity$SettingsPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->closeNow()V

    :cond_0
    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->f4(Lcom/sid/tvos/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->f4(Lcom/sid/tvos/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->r4(Lcom/sid/tvos/MainActivity;)V

    :cond_1
    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p0}, Lcom/sid/tvos/MainActivity;->l4(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    new-instance v0, Lcom/sid/tvos/S;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sid/tvos/S;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->pendingFadeIn:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->build()V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->panel:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->stack:Ljava/util/List;

    new-instance v1, Lcom/sid/tvos/MainActivity$SettingsPanel$Page;

    invoke-direct {v1, p0, p1, p2}, Lcom/sid/tvos/MainActivity$SettingsPanel$Page;-><init>(Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/String;Lcom/sid/tvos/MainActivity$PageBuilder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->render(I)V

    iget-object p2, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {p2, p1}, Lcom/sid/tvos/MainActivity;->w4(Lcom/sid/tvos/MainActivity;Z)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {p1}, Lcom/sid/tvos/MainActivity;->u4(Lcom/sid/tvos/MainActivity;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {p1}, Lcom/sid/tvos/MainActivity;->d4(Lcom/sid/tvos/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/sid/tvos/S;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sid/tvos/S;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public push(Ljava/lang/String;Lcom/sid/tvos/MainActivity$PageBuilder;)V
    .locals 2

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->top()Lcom/sid/tvos/MainActivity$SettingsPanel$Page;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->focusedIndex()I

    move-result v1

    iput v1, v0, Lcom/sid/tvos/MainActivity$SettingsPanel$Page;->focus:I

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    iput v1, v0, Lcom/sid/tvos/MainActivity$SettingsPanel$Page;->scrollY:I

    :cond_0
    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->stack:Ljava/util/List;

    new-instance v1, Lcom/sid/tvos/MainActivity$SettingsPanel$Page;

    invoke-direct {v1, p0, p1, p2}, Lcom/sid/tvos/MainActivity$SettingsPanel$Page;-><init>(Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/String;Lcom/sid/tvos/MainActivity$PageBuilder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->render(I)V

    return-void
.end method

.method public refresh()V
    .locals 2

    invoke-direct {p0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->top()Lcom/sid/tvos/MainActivity$SettingsPanel$Page;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->focusedIndex()I

    move-result v1

    iput v1, v0, Lcom/sid/tvos/MainActivity$SettingsPanel$Page;->focus:I

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    iput v1, v0, Lcom/sid/tvos/MainActivity$SettingsPanel$Page;->scrollY:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->render(I)V

    return-void
.end method

.method public refreshGlass()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->refreshGlass(Ljava/lang/Runnable;)V

    return-void
.end method

.method public refreshGlass(Ljava/lang/Runnable;)V
    .locals 12

    .line 2
    iget-boolean v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->closing:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->panel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->g4(Lcom/sid/tvos/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/Appearance;->liquid(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->glassBg:Lcom/sid/tvos/LiquidGlassDrawable;

    invoke-virtual {v1, v0}, Lcom/sid/tvos/LiquidGlassDrawable;->setLiquid(Z)V

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v1}, Lcom/sid/tvos/MainActivity;->p4(Lcom/sid/tvos/MainActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    :goto_0
    invoke-static {v2, v3}, Lcom/sid/tvos/MainActivity;->q4(Lcom/sid/tvos/MainActivity;I)I

    move-result v2

    move v4, v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_2

    const v0, 0x3f051eb8    # 0.52f

    const v5, 0x3f051eb8    # 0.52f

    goto :goto_2

    :cond_2
    const v0, 0x3ed70a3d    # 0.42f

    const v5, 0x3ed70a3d    # 0.42f

    :goto_2
    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->panel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->panel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->panel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->panel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v10

    new-instance v0, Lcom/sid/tvos/c0;

    move-object v2, v0

    move-object v3, p0

    move v7, v1

    move-object v11, p1

    invoke-direct/range {v2 .. v11}, Lcom/sid/tvos/c0;-><init>(Lcom/sid/tvos/MainActivity$SettingsPanel;IFIIIIILjava/lang/Runnable;)V

    if-eqz p1, :cond_3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p1, v2, :cond_3

    iget-object p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {p1}, Lcom/sid/tvos/MainActivity;->g4(Lcom/sid/tvos/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v1

    const/4 v2, 0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v3, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v3}, Lcom/sid/tvos/MainActivity;->g4(Lcom/sid/tvos/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    :try_start_0
    iget-object v2, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Lcom/sid/tvos/d0;

    invoke-direct {v3, p0, v0, p1, v1}, Lcom/sid/tvos/d0;-><init>(Lcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/c0;Landroid/graphics/Bitmap;I)V

    iget-object v4, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v4}, Lcom/sid/tvos/MainActivity;->d4(Lcom/sid/tvos/MainActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v2, p1, v3, v4}, Lk/s;->i(Landroid/view/Window;Landroid/graphics/Bitmap;Lcom/sid/tvos/d0;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_3
    iget-object p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->panel:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    iget-object v2, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->panel:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v2}, Lcom/sid/tvos/MainActivity;->g4(Lcom/sid/tvos/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sid/tvos/Blur;->capture(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->panel:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v1}, Lcom/sid/tvos/c0;->onImage(Landroid/graphics/Bitmap;)V

    return-void

    :cond_4
    :goto_3
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method

.method public slider(ILjava/lang/String;IILcom/sid/tvos/MainActivity$IntChoice;Ljava/lang/Runnable;)V
    .locals 9

    .line 1
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/sid/tvos/MainActivity$SettingsPanel;->slider(ILjava/lang/String;IILcom/sid/tvos/MainActivity$IntChoice;Ljava/lang/Runnable;Lcom/sid/tvos/MainActivity$IntLabel;Lcom/sid/tvos/MainActivity$TrackColours;)V

    return-void
.end method

.method public slider(ILjava/lang/String;IILcom/sid/tvos/MainActivity$IntChoice;Ljava/lang/Runnable;Lcom/sid/tvos/MainActivity$IntLabel;Lcom/sid/tvos/MainActivity$TrackColours;)V
    .locals 18

    .line 2
    move-object/from16 v11, p0

    move-object/from16 v12, p8

    new-instance v13, Landroid/widget/LinearLayout;

    iget-object v0, v11, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget v1, Lcom/sid/tvos/R$drawable;->input_row_bg:I

    invoke-virtual {v13, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v13, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, v11, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v1}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iget-object v3, v11, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v3}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    iget-object v4, v11, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v4}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v4

    mul-float v4, v4, v2

    float-to-int v2, v4

    invoke-virtual {v13, v1, v3, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct {v11, v3, v4, v1, v2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->row(ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v1

    iget-object v3, v11, Lcom/sid/tvos/MainActivity$SettingsPanel;->rows:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object v3, v11, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v3}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v3

    const/high16 v4, 0x41500000    # 13.0f

    mul-float v3, v3, v4

    invoke-static {v13, v3}, Lcom/sid/tvos/Corners;->clip(Landroid/view/View;F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v3, v11, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v3}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v3

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v13, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v14, Landroid/widget/FrameLayout;

    iget-object v0, v11, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-direct {v14, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v15, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v15}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget-object v0, v11, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v0

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v0, v0, v3

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v0, 0x40ffffff    # 7.9999995f

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Landroid/view/View;

    iget-object v0, v11, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-direct {v7, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget-object v0, v11, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v0

    mul-float v0, v0, v3

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v0, -0x1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    if-eqz v12, :cond_0

    iget-object v3, v11, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v3}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v3

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float v3, v3, v4

    float-to-int v3, v3

    const v4, -0xe3e3e2

    invoke-virtual {v10, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_0
    invoke-virtual {v7, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v11, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v3}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    mul-float v3, v3, v4

    float-to-int v9, v3

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v12, :cond_1

    move v5, v9

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v12, :cond_2

    iget-object v6, v11, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v6}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v6

    const/high16 v8, 0x41600000    # 14.0f

    mul-float v6, v6, v8

    float-to-int v6, v6

    goto :goto_1

    :cond_2
    const/4 v6, -0x1

    :goto_1
    const/16 v8, 0x10

    invoke-direct {v3, v5, v6, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v14, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v12, :cond_3

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_3
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v12, :cond_4

    const/16 v3, 0xa

    goto :goto_2

    :cond_4
    const/4 v3, 0x6

    :goto_2
    int-to-float v3, v3

    iget-object v5, v11, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v5}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v5

    mul-float v5, v5, v3

    float-to-int v3, v5

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, v11, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v13, v14, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v11, Lcom/sid/tvos/MainActivity$SettingsPanel;->rows:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget v0, Lcom/sid/tvos/R$id;->status:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    filled-new-array/range {p3 .. p3}, [I

    move-result-object v16

    new-instance v8, Lcom/sid/tvos/K;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v3, p7

    move-object/from16 v4, v16

    move-object/from16 v5, p8

    move-object v6, v15

    move-object v11, v8

    move-object v8, v14

    move-object/from16 v17, v13

    move-object v13, v10

    move/from16 v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/sid/tvos/K;-><init>(Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/widget/TextView;Lcom/sid/tvos/MainActivity$IntLabel;[ILcom/sid/tvos/MainActivity$TrackColours;Landroid/graphics/drawable/GradientDrawable;Landroid/view/View;Landroid/widget/FrameLayout;II)V

    invoke-virtual {v14, v11}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Lcom/sid/tvos/L;

    move-object/from16 v1, p6

    invoke-direct {v0, v12, v15, v13, v1}, Lcom/sid/tvos/L;-><init>(Lcom/sid/tvos/MainActivity$TrackColours;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;Ljava/lang/Runnable;)V

    move-object/from16 v7, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v8, Lcom/sid/tvos/M;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v7

    move/from16 v3, p4

    move-object/from16 v5, p5

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/sid/tvos/M;-><init>(Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/widget/LinearLayout;I[ILcom/sid/tvos/MainActivity$IntChoice;Lcom/sid/tvos/K;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public strip(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-direct {v0, v1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/View;->setOverScrollMode(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v2, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v2}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iget-object v4, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v4}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v4

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    iget-object v6, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v6}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v6

    mul-float v6, v6, v3

    float-to-int v3, v6

    iget-object v6, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v6}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v6

    mul-float v6, v6, v5

    float-to-int v5, v6

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    new-instance v4, Lcom/sid/tvos/J;

    invoke-direct {v4, p0, v0, v1, p1}, Lcom/sid/tvos/J;-><init>(Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/widget/HorizontalScrollView;ILjava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->rows:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public switchRow(ILjava/lang/String;ZLjava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    if-eqz p3, :cond_0

    sget v1, Lcom/sid/tvos/R$string;->state_on:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/sid/tvos/R$string;->state_off:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->row(ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/sid/tvos/R$id;->dot:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance p2, Lcom/sid/tvos/a0;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p4, p3}, Lcom/sid/tvos/a0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {p0, p1, p1, p2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->wire(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public toggle(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p3}, Lcom/sid/tvos/Appearance;->show(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$SettingsPanel;->this$0:Lcom/sid/tvos/MainActivity;

    if-eqz v0, :cond_0

    sget v2, Lcom/sid/tvos/R$string;->state_on:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/sid/tvos/R$string;->state_off:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->row(ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/sid/tvos/R$id;->dot:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance p2, Lcom/sid/tvos/A;

    invoke-direct {p2, p0, p3, v0}, Lcom/sid/tvos/A;-><init>(Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/String;Z)V

    invoke-direct {p0, p1, p1, p2}, Lcom/sid/tvos/MainActivity$SettingsPanel;->wire(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method
