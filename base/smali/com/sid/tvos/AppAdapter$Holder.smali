.class final Lcom/sid/tvos/AppAdapter$Holder;
.super Landroidx/recyclerview/widget/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sid/tvos/AppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Holder"
.end annotation


# instance fields
.field final banner:Landroid/widget/ImageView;

.field final card:Landroid/view/View;

.field final folderGrid:Landroid/view/View;

.field final icon:Landroid/widget/ImageView;

.field final label:Landroid/widget/TextView;

.field final minis:[Landroid/widget/ImageView;

.field final name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sid/tvos/AppAdapter$TileListener;)V
    .locals 9

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/o;-><init>(Landroid/view/View;)V

    const/4 v0, 0x6

    new-array v1, v0, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sid/tvos/AppAdapter$Holder;->minis:[Landroid/widget/ImageView;

    sget v1, Lcom/sid/tvos/R$id;->card:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sid/tvos/AppAdapter$Holder;->card:Landroid/view/View;

    sget v2, Lcom/sid/tvos/R$id;->banner:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sid/tvos/AppAdapter$Holder;->banner:Landroid/widget/ImageView;

    sget v2, Lcom/sid/tvos/R$id;->icon:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sid/tvos/AppAdapter$Holder;->icon:Landroid/widget/ImageView;

    sget v2, Lcom/sid/tvos/R$id;->label:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sid/tvos/AppAdapter$Holder;->label:Landroid/widget/TextView;

    sget v2, Lcom/sid/tvos/R$id;->name:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sid/tvos/AppAdapter$Holder;->name:Landroid/widget/TextView;

    sget v2, Lcom/sid/tvos/R$id;->folderGrid:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sid/tvos/AppAdapter$Holder;->folderGrid:Landroid/view/View;

    sget v3, Lcom/sid/tvos/R$id;->mini0:I

    sget v4, Lcom/sid/tvos/R$id;->mini1:I

    sget v5, Lcom/sid/tvos/R$id;->mini2:I

    sget v6, Lcom/sid/tvos/R$id;->mini3:I

    sget v7, Lcom/sid/tvos/R$id;->mini4:I

    sget v8, Lcom/sid/tvos/R$id;->mini5:I

    filled-new-array/range {v3 .. v8}, [I

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41800000    # 16.0f

    mul-float v4, v4, v3

    new-instance v5, Lcom/sid/tvos/AppAdapter$Holder$1;

    invoke-direct {v5, p0, v4}, Lcom/sid/tvos/AppAdapter$Holder$1;-><init>(Lcom/sid/tvos/AppAdapter$Holder;F)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/View;->setClipToOutline(Z)V

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v1, v1, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    iget-object v6, p0, Lcom/sid/tvos/AppAdapter$Holder;->minis:[Landroid/widget/ImageView;

    aget v7, v2, v5

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    aput-object v7, v6, v5

    iget-object v6, p0, Lcom/sid/tvos/AppAdapter$Holder;->minis:[Landroid/widget/ImageView;

    aget-object v6, v6, v5

    new-instance v7, Lcom/sid/tvos/AppAdapter$Holder$2;

    invoke-direct {v7, p0, v1}, Lcom/sid/tvos/AppAdapter$Holder$2;-><init>(Lcom/sid/tvos/AppAdapter$Holder;F)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v6, p0, Lcom/sid/tvos/AppAdapter$Holder;->minis:[Landroid/widget/ImageView;

    aget-object v6, v6, v5

    invoke-virtual {v6, v4}, Landroid/view/View;->setClipToOutline(Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sid/tvos/AppAdapter$Holder;->card:Landroid/view/View;

    new-instance v0, Lcom/sid/tvos/d;

    invoke-direct {v0, p0, p2}, Lcom/sid/tvos/d;-><init>(Lcom/sid/tvos/AppAdapter$Holder;Lcom/sid/tvos/AppAdapter$TileListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p1, p0, Lcom/sid/tvos/AppAdapter$Holder;->card:Landroid/view/View;

    new-instance v0, Lcom/sid/tvos/e;

    invoke-direct {v0, p0, v3, p2}, Lcom/sid/tvos/e;-><init>(Lcom/sid/tvos/AppAdapter$Holder;FLcom/sid/tvos/AppAdapter$TileListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/sid/tvos/AppAdapter$Holder;Lcom/sid/tvos/AppAdapter$TileListener;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sid/tvos/AppAdapter$Holder;->lambda$new$0(Lcom/sid/tvos/AppAdapter$TileListener;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/sid/tvos/AppAdapter$Holder;FLcom/sid/tvos/AppAdapter$TileListener;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sid/tvos/AppAdapter$Holder;->lambda$new$1(FLcom/sid/tvos/AppAdapter$TileListener;Landroid/view/View;Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/sid/tvos/AppAdapter$TileListener;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    return p4

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/o;->getBindingAdapterPosition()I

    move-result p2

    if-eqz p1, :cond_6

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    goto :goto_2

    :cond_1
    const/16 v0, 0x13

    if-eq p3, v0, :cond_5

    const/16 v0, 0x14

    if-ne p3, v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x15

    if-eq p3, v0, :cond_4

    const/16 v0, 0x16

    if-ne p3, v0, :cond_3

    goto :goto_0

    :cond_3
    return p4

    :cond_4
    :goto_0
    invoke-interface {p1, p2, p3}, Lcom/sid/tvos/AppAdapter$TileListener;->onTileHorizontalKey(II)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    invoke-interface {p1, p2, p3}, Lcom/sid/tvos/AppAdapter$TileListener;->onTileVerticalKey(II)Z

    move-result p1

    return p1

    :cond_6
    :goto_2
    return p4
.end method

.method private synthetic lambda$new$1(FLcom/sid/tvos/AppAdapter$TileListener;Landroid/view/View;Z)V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p4, :cond_0

    const v1, 0x3f90a3d7    # 1.13f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    sget-boolean v2, Lcom/sid/tvos/AppAdapter;->calmNextFocus:Z

    const/4 v3, 0x0

    if-eqz p4, :cond_1

    sput-boolean v3, Lcom/sid/tvos/AppAdapter;->calmNextFocus:Z

    :cond_1
    if-eqz p4, :cond_2

    const v4, 0x460ca000    # 9000.0f

    mul-float v4, v4, p1

    invoke-virtual {p3, v4}, Landroid/view/View;->setCameraDistance(F)V

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-virtual {p3, v4}, Landroid/view/View;->setRotationX(F)V

    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p4, :cond_4

    if-eqz v2, :cond_3

    const-wide/16 v5, 0x17c

    goto :goto_1

    :cond_3
    const-wide/16 v5, 0x12c

    goto :goto_1

    :cond_4
    const-wide/16 v5, 0xb4

    :goto_1
    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p4, :cond_5

    if-nez v2, :cond_5

    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    const v6, 0x3fb33333    # 1.4f

    invoke-direct {v5, v6}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    goto :goto_2

    :cond_5
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    :goto_2
    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, p0, Lcom/sid/tvos/AppAdapter$Holder;->name:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p4, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p4, :cond_7

    const/high16 v1, 0x40800000    # 4.0f

    :goto_4
    mul-float p1, p1, v1

    goto :goto_5

    :cond_7
    neg-float p1, p1

    const/high16 v1, 0x40c00000    # 6.0f

    goto :goto_4

    :goto_5
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xdc

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/o;->getBindingAdapterPosition()I

    move-result p1

    if-eqz p4, :cond_8

    if-eqz p2, :cond_8

    const/4 p4, -0x1

    if-eq p1, p4, :cond_8

    sput-boolean v2, Lcom/sid/tvos/AppAdapter;->calmFocusInProgress:Z

    invoke-interface {p2, p1, p3}, Lcom/sid/tvos/AppAdapter$TileListener;->onTileFocused(ILandroid/view/View;)V

    sput-boolean v3, Lcom/sid/tvos/AppAdapter;->calmFocusInProgress:Z

    :cond_8
    return-void
.end method
