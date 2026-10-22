.class public Lcom/sid/tvos/AppAdapter;
.super Landroidx/recyclerview/widget/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sid/tvos/AppAdapter$TileListener;,
        Lcom/sid/tvos/AppAdapter$Entry;,
        Lcom/sid/tvos/AppAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/g;"
    }
.end annotation


# static fields
.field static calmFocusInProgress:Z = false

.field static calmNextFocus:Z = false

.field static labelColor:I = -0x1


# instance fields
.field private final ctx:Landroid/content/Context;

.field private dockOffset:I

.field private final dockSlots:I

.field private final favEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sid/tvos/AppAdapter$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private favourites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final folderOf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final hidden:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sid/tvos/AppAdapter$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/sid/tvos/AppAdapter$TileListener;

.field private final rest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sid/tvos/AppAdapter$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$TileListener;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/g;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sid/tvos/AppAdapter;->items:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sid/tvos/AppAdapter;->favEntries:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sid/tvos/AppAdapter;->rest:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sid/tvos/AppAdapter;->folderOf:Ljava/util/Map;

    iput-object p1, p0, Lcom/sid/tvos/AppAdapter;->ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/sid/tvos/AppAdapter;->listener:Lcom/sid/tvos/AppAdapter$TileListener;

    sget p2, Lcom/sid/tvos/MainActivity;->COLUMNS:I

    iput p2, p0, Lcom/sid/tvos/AppAdapter;->dockSlots:I

    invoke-static {p1}, Lcom/sid/tvos/Favorites;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/sid/tvos/AppAdapter;->favourites:Ljava/util/List;

    new-instance p2, Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/sid/tvos/R$array;->hidden_apps:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/sid/tvos/AppAdapter;->hidden:Ljava/util/Set;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/g;->setHasStableIds(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/sid/tvos/AppAdapter;Lcom/sid/tvos/AppAdapter$Entry;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/AppAdapter;->lambda$onBindViewHolder$1(Lcom/sid/tvos/AppAdapter$Entry;Landroid/view/View;)V

    return-void
.end method

.method private applyTileSize(Lcom/sid/tvos/AppAdapter$Holder;)V
    .locals 6

    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Lcom/sid/tvos/AppAdapter;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/sid/tvos/AppAdapter;->tileScale(Landroid/content/Context;)F

    move-result v1

    sget-object v2, Lcom/sid/tvos/Appearance;->ROW_GAP_DP:[I

    iget-object v3, p0, Lcom/sid/tvos/AppAdapter;->ctx:Landroid/content/Context;

    const-string v4, "row_gap"

    invoke-static {v3, v4}, Lcom/sid/tvos/Appearance;->step(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p1, Landroidx/recyclerview/widget/o;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    if-eq v3, v2, :cond_0

    iget-object v3, p1, Landroidx/recyclerview/widget/o;->itemView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    const/high16 v2, 0x431a0000    # 154.0f

    mul-float v2, v2, v1

    mul-float v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v3, 0x42b80000    # 92.0f

    mul-float v3, v3, v1

    mul-float v3, v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p1, Lcom/sid/tvos/AppAdapter$Holder;->folderGrid:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v4, p1, Lcom/sid/tvos/AppAdapter$Holder;->folderGrid:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v4, p1, Lcom/sid/tvos/AppAdapter$Holder;->card:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v5, v2, :cond_1

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v5, v3, :cond_2

    :cond_1
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p1, Lcom/sid/tvos/AppAdapter$Holder;->card:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p1, Lcom/sid/tvos/AppAdapter$Holder;->name:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v4, 0x432e0000    # 174.0f

    mul-float v1, v1, v4

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/high16 v1, 0x41600000    # 14.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v3

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p1, p1, Lcom/sid/tvos/AppAdapter$Holder;->name:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public static synthetic b(Lcom/sid/tvos/AppAdapter;Lcom/sid/tvos/AppAdapter$Entry;Lcom/sid/tvos/AppAdapter$Entry;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/AppAdapter;->lambda$reload$0(Lcom/sid/tvos/AppAdapter$Entry;Lcom/sid/tvos/AppAdapter$Entry;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/sid/tvos/AppAdapter;Lcom/sid/tvos/AppAdapter$Entry;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/AppAdapter;->lambda$onBindViewHolder$2(Lcom/sid/tvos/AppAdapter$Entry;Landroid/view/View;)V

    return-void
.end method

.method public static colorOf(Lcom/sid/tvos/AppAdapter$Entry;)I
    .locals 1

    iget v0, p0, Lcom/sid/tvos/AppAdapter$Entry;->ambient:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sid/tvos/AppAdapter$Entry;->banner:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sid/tvos/AppAdapter$Entry;->icon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-static {v0}, Lcom/sid/tvos/AppAdapter;->vividColor(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    iput v0, p0, Lcom/sid/tvos/AppAdapter$Entry;->ambient:I

    :cond_1
    iget p0, p0, Lcom/sid/tvos/AppAdapter$Entry;->ambient:I

    return p0
.end method

.method public static synthetic d(Lcom/sid/tvos/AppAdapter;Lcom/sid/tvos/AppAdapter$Entry;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sid/tvos/AppAdapter;->lambda$onBindViewHolder$3(Lcom/sid/tvos/AppAdapter$Entry;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static entryFor(Landroid/content/Context;Ljava/lang/String;)Lcom/sid/tvos/AppAdapter$Entry;
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageItemInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageItemInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    new-instance v2, Lcom/sid/tvos/AppAdapter$Entry;

    invoke-virtual {v0, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, p1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {v2, v3, v4, v1, p0}, Lcom/sid/tvos/AppAdapter$Entry;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v2

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static itemDp(Landroid/content/Context;)F
    .locals 2

    sget-object v0, Lcom/sid/tvos/Appearance;->ROW_GAP_DP:[I

    const-string v1, "row_gap"

    invoke-static {p0, v1}, Lcom/sid/tvos/Appearance;->step(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    aget v0, v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x22

    int-to-float v0, v0

    const/high16 v1, 0x42b80000    # 92.0f

    invoke-static {p0}, Lcom/sid/tvos/AppAdapter;->tileScale(Landroid/content/Context;)F

    move-result p0

    mul-float p0, p0, v1

    add-float/2addr p0, v0

    return p0
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/sid/tvos/AppAdapter$Entry;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lcom/sid/tvos/AppAdapter;->listener:Lcom/sid/tvos/AppAdapter$TileListener;

    invoke-interface {p2, p1}, Lcom/sid/tvos/AppAdapter$TileListener;->onFolderOpen(Lcom/sid/tvos/AppAdapter$Entry;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Lcom/sid/tvos/AppAdapter$Entry;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->listener:Lcom/sid/tvos/AppAdapter$TileListener;

    invoke-interface {v0, p1, p2}, Lcom/sid/tvos/AppAdapter$TileListener;->onLaunch(Lcom/sid/tvos/AppAdapter$Entry;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$3(Lcom/sid/tvos/AppAdapter$Entry;Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->listener:Lcom/sid/tvos/AppAdapter$TileListener;

    invoke-interface {v0, p1, p2}, Lcom/sid/tvos/AppAdapter$TileListener;->onTileLongPress(Lcom/sid/tvos/AppAdapter$Entry;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$reload$0(Lcom/sid/tvos/AppAdapter$Entry;Lcom/sid/tvos/AppAdapter$Entry;)I
    .locals 4

    invoke-virtual {p1}, Lcom/sid/tvos/AppAdapter$Entry;->isFolder()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->favourites:Ljava/util/List;

    iget-object v2, p1, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    invoke-virtual {p2}, Lcom/sid/tvos/AppAdapter$Entry;->isFolder()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sid/tvos/AppAdapter;->favourites:Ljava/util/List;

    iget-object v3, p2, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    :goto_1
    if-gez v0, :cond_3

    if-ltz v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p1, Lcom/sid/tvos/AppAdapter$Entry;->label:Ljava/lang/String;

    iget-object p2, p2, Lcom/sid/tvos/AppAdapter$Entry;->label:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_3
    :goto_2
    if-gez v0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-gez v2, :cond_5

    return v1

    :cond_5
    invoke-static {v0, v2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method private rebuild()V
    .locals 4

    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->favEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/sid/tvos/AppAdapter;->dockOffset:I

    iget v2, p0, Lcom/sid/tvos/AppAdapter;->dockSlots:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/sid/tvos/AppAdapter;->items:Ljava/util/List;

    iget-object v2, p0, Lcom/sid/tvos/AppAdapter;->favEntries:Ljava/util/List;

    iget v3, p0, Lcom/sid/tvos/AppAdapter;->dockOffset:I

    invoke-interface {v2, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/sid/tvos/AppAdapter;->dockSlots:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sid/tvos/AppAdapter;->rest:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sid/tvos/AppAdapter;->items:Ljava/util/List;

    invoke-static {v0}, Lcom/sid/tvos/AppAdapter$Entry;->placeholder(I)Lcom/sid/tvos/AppAdapter$Entry;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->items:Ljava/util/List;

    iget-object v1, p0, Lcom/sid/tvos/AppAdapter;->rest:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static styleLabel(Landroid/widget/TextView;)V
    .locals 5

    sget v0, Lcom/sid/tvos/AppAdapter;->labelColor:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget v0, Lcom/sid/tvos/AppAdapter;->labelColor:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    :goto_1
    if-eqz v0, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_2
    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/high16 v2, -0x80000000

    :goto_3
    invoke-virtual {p0, v3, v1, v4, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void
.end method

.method public static tileScale(Landroid/content/Context;)F
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v0

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float/2addr v1, v0

    sget v0, Lcom/sid/tvos/MainActivity;->COLUMNS:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x41000000    # 8.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    const v2, 0x43a40290

    div-float/2addr v0, v2

    const v2, 0x432e051f    # 174.02f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const-string v1, "icon_size"

    invoke-static {p0, v1}, Lcom/sid/tvos/Appearance;->step(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x2

    int-to-double v1, p0

    const-wide v3, 0x3ff2147ae147ae14L    # 1.13

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p0, v1

    div-float/2addr v0, p0

    return v0
.end method

.method private static vividColor(Landroid/graphics/drawable/Drawable;)I
    .locals 16

    const v0, -0xbbbbbc

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object/from16 v1, p0

    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v4, 0xc

    invoke-static {v4, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v6, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 v1, 0x3

    new-array v1, v1, [F

    const-wide/16 v7, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    move-wide v9, v7

    move-wide v11, v9

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    :goto_2
    if-ge v6, v4, :cond_3

    invoke-virtual {v3, v6, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v13

    int-to-long v14, v13

    add-long/2addr v7, v14

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v13

    int-to-long v13, v13

    add-long/2addr v9, v13

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    int-to-long v13, v13

    add-long/2addr v11, v13

    invoke-static {v4, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v13, 0x1

    aget v14, v1, v13

    const/4 v13, 0x2

    aget v15, v1, v13

    const v13, 0x3fb33333    # 1.4f

    mul-float v15, v15, v13

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v13, v15}, Ljava/lang/Math;->min(FF)F

    move-result v15

    mul-float v15, v15, v14

    cmpl-float v13, v15, v2

    if-lez v13, :cond_2

    move v0, v4

    move v2, v15

    :cond_2
    add-int/lit8 v6, v6, 0x1

    const/16 v4, 0xc

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    const/16 v4, 0xc

    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/high16 v3, 0x3e800000    # 0.25f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    const/16 v0, 0x90

    int-to-long v2, v0

    div-long/2addr v7, v2

    long-to-int v0, v7

    div-long/2addr v9, v2

    long-to-int v4, v9

    div-long/2addr v11, v2

    long-to-int v2, v11

    invoke-static {v0, v4, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v2, 0x2

    aget v0, v1, v2

    const v3, 0x3f0ccccd    # 0.55f

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v1, v2

    :goto_3
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0

    :cond_5
    const/4 v2, 0x2

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v0, 0x1

    aget v3, v1, v0

    const v4, 0x3f8ccccd    # 1.1f

    mul-float v3, v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    aget v3, v1, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v1, v2

    goto :goto_3
.end method


# virtual methods
.method public allEntries()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sid/tvos/AppAdapter$Entry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sid/tvos/AppAdapter;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sid/tvos/AppAdapter$Entry;

    invoke-virtual {v2}, Lcom/sid/tvos/AppAdapter$Entry;->isFolder()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/sid/tvos/AppAdapter$Entry;->children:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public ambientColorAt(I)I
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sid/tvos/AppAdapter$Entry;

    invoke-static {p1}, Lcom/sid/tvos/AppAdapter;->colorOf(Lcom/sid/tvos/AppAdapter$Entry;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const p1, -0xbbbbbc

    return p1
.end method

.method public dockShown()I
    .locals 3

    iget v0, p0, Lcom/sid/tvos/AppAdapter;->dockSlots:I

    iget-object v1, p0, Lcom/sid/tvos/AppAdapter;->favEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/sid/tvos/AppAdapter;->dockOffset:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public entryAt(I)Lcom/sid/tvos/AppAdapter$Entry;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sid/tvos/AppAdapter$Entry;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public favouriteIndexAt(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sid/tvos/AppAdapter;->entryAt(I)Lcom/sid/tvos/AppAdapter$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/sid/tvos/AppAdapter;->dockSlots:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sid/tvos/AppAdapter;->favEntries:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method public firstEntries(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sid/tvos/AppAdapter$Entry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sid/tvos/AppAdapter;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public folderOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->folderOf:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sid/tvos/AppAdapter$Entry;

    invoke-virtual {p1}, Lcom/sid/tvos/AppAdapter$Entry;->key()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public isFavorite(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->favourites:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public keyAt(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sid/tvos/AppAdapter$Entry;

    invoke-virtual {p1}, Lcom/sid/tvos/AppAdapter$Entry;->key()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/o;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/sid/tvos/AppAdapter$Holder;

    invoke-virtual {p0, p1, p2}, Lcom/sid/tvos/AppAdapter;->onBindViewHolder(Lcom/sid/tvos/AppAdapter$Holder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sid/tvos/AppAdapter$Holder;I)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sid/tvos/AppAdapter$Entry;

    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Holder;->name:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/sid/tvos/AppAdapter$Entry;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Holder;->name:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sid/tvos/AppAdapter;->styleLabel(Landroid/widget/TextView;)V

    invoke-direct {p0, p1}, Lcom/sid/tvos/AppAdapter;->applyTileSize(Lcom/sid/tvos/AppAdapter$Holder;)V

    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Holder;->card:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    iget-object v1, p1, Lcom/sid/tvos/AppAdapter$Holder;->name:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p1, Lcom/sid/tvos/AppAdapter$Holder;->card:Landroid/view/View;

    const v3, 0x3f90a3d7    # 1.13f

    if-eqz v0, :cond_1

    const v4, 0x3f90a3d7    # 1.13f

    goto :goto_1

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p1, Lcom/sid/tvos/AppAdapter$Holder;->card:Landroid/view/View;

    if-eqz v0, :cond_2

    const v2, 0x3f90a3d7    # 1.13f

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Holder;->card:Landroid/view/View;

    invoke-virtual {p2}, Lcom/sid/tvos/AppAdapter$Entry;->isPlaceholder()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Holder;->card:Landroid/view/View;

    invoke-virtual {p2}, Lcom/sid/tvos/AppAdapter$Entry;->isPlaceholder()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p2}, Lcom/sid/tvos/AppAdapter$Entry;->isPlaceholder()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object p2, p1, Lcom/sid/tvos/AppAdapter$Holder;->name:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/sid/tvos/AppAdapter$Holder;->card:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/sid/tvos/AppAdapter$Holder;->card:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    :cond_4
    invoke-virtual {p2}, Lcom/sid/tvos/AppAdapter$Entry;->isFolder()Z

    move-result v0

    const/16 v4, 0x8

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Holder;->card:Landroid/view/View;

    sget v5, Lcom/sid/tvos/R$drawable;->folder_bg:I

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Holder;->banner:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Holder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Holder;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Holder;->folderGrid:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    :goto_3
    const/4 v4, 0x6

    if-ge v0, v4, :cond_8

    iget-object v4, p1, Lcom/sid/tvos/AppAdapter$Holder;->minis:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    iget-object v5, p2, Lcom/sid/tvos/AppAdapter$Entry;->children:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_7

    iget-object v5, p2, Lcom/sid/tvos/AppAdapter$Entry;->children:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sid/tvos/AppAdapter$Entry;

    iget-object v6, p0, Lcom/sid/tvos/AppAdapter;->ctx:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sid/tvos/IconPack;->tile(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5

    :cond_5
    iget-object v6, v5, Lcom/sid/tvos/AppAdapter$Entry;->banner:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    iget-object v6, v5, Lcom/sid/tvos/AppAdapter$Entry;->icon:Landroid/graphics/drawable/Drawable;

    :goto_4
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_5
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    :cond_7
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Holder;->card:Landroid/view/View;

    new-instance v1, Lcom/sid/tvos/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/sid/tvos/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    :goto_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a

    :cond_9
    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Holder;->card:Landroid/view/View;

    sget v2, Lcom/sid/tvos/R$drawable;->tile_bg:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Holder;->folderGrid:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->ctx:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sid/tvos/IconPack;->tile(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    iget-object v1, p1, Lcom/sid/tvos/AppAdapter$Holder;->banner:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_8
    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Holder;->banner:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Holder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Holder;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_a
    iget-object v0, p2, Lcom/sid/tvos/AppAdapter$Entry;->banner:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v1, p1, Lcom/sid/tvos/AppAdapter$Holder;->banner:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    :cond_b
    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Holder;->banner:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Holder;->banner:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Holder;->icon:Landroid/widget/ImageView;

    iget-object v1, p2, Lcom/sid/tvos/AppAdapter$Entry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Holder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Holder;->label:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/sid/tvos/AppAdapter$Entry;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Holder;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_9
    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Holder;->card:Landroid/view/View;

    new-instance v1, Lcom/sid/tvos/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, v2}, Lcom/sid/tvos/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_7

    :goto_a
    iget-object p1, p1, Lcom/sid/tvos/AppAdapter$Holder;->card:Landroid/view/View;

    new-instance v0, Lcom/sid/tvos/c;

    invoke-direct {v0, p0, p2}, Lcom/sid/tvos/c;-><init>(Lcom/sid/tvos/AppAdapter;Lcom/sid/tvos/AppAdapter$Entry;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/o;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/sid/tvos/AppAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sid/tvos/AppAdapter$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sid/tvos/AppAdapter$Holder;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/sid/tvos/R$layout;->item_app:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sid/tvos/AppAdapter$Holder;

    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->listener:Lcom/sid/tvos/AppAdapter$TileListener;

    invoke-direct {p2, p1, v0}, Lcom/sid/tvos/AppAdapter$Holder;-><init>(Landroid/view/View;Lcom/sid/tvos/AppAdapter$TileListener;)V

    return-object p2
.end method

.method public positionOf(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sid/tvos/AppAdapter;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/sid/tvos/AppAdapter;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sid/tvos/AppAdapter$Entry;

    invoke-virtual {v2}, Lcom/sid/tvos/AppAdapter$Entry;->key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public prewarmShelves(I)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sid/tvos/AppAdapter;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sid/tvos/AppAdapter;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sid/tvos/AppAdapter$Entry;

    invoke-virtual {v1}, Lcom/sid/tvos/AppAdapter$Entry;->isPlaceholder()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/sid/tvos/AppAdapter$Entry;->isFolder()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/sid/tvos/Stage;->peek(Lcom/sid/tvos/AppAdapter$Entry;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/sid/tvos/AppAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sid/tvos/AppAdapter;->ambientColorAt(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Lcom/sid/tvos/Stage;->renderAsync(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;ILcom/sid/tvos/Stage$Callback;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public reload()V
    .locals 11

    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/sid/tvos/Favorites;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sid/tvos/AppAdapter;->favourites:Ljava/util/List;

    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/sid/tvos/AppAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sid/tvos/AppAdapter;->hidden:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageItemInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_3

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageItemInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :cond_3
    invoke-virtual {v4, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/sid/tvos/AppAdapter$Entry;

    new-instance v10, Landroid/content/ComponentName;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v9, v8, v10, v6, v7}, Lcom/sid/tvos/AppAdapter$Entry;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/sid/tvos/AppAdapter;->folderOf:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    iget-object v4, p0, Lcom/sid/tvos/AppAdapter;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lcom/sid/tvos/Folders;->load(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sid/tvos/AppAdapter$Entry;

    if-eqz v9, :cond_6

    iget-object v10, p0, Lcom/sid/tvos/AppAdapter;->favourites:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/sid/tvos/AppAdapter;->folderOf:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    new-instance v7, Lcom/sid/tvos/AppAdapter$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v7, v5, v6}, Lcom/sid/tvos/AppAdapter$Entry;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/sid/tvos/a;

    invoke-direct {v1, p0}, Lcom/sid/tvos/a;-><init>(Lcom/sid/tvos/AppAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/sid/tvos/AppAdapter;->favEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/sid/tvos/AppAdapter;->rest:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sid/tvos/AppAdapter$Entry;

    invoke-virtual {v1}, Lcom/sid/tvos/AppAdapter$Entry;->isFolder()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/sid/tvos/AppAdapter;->favourites:Ljava/util/List;

    iget-object v4, v1, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/sid/tvos/AppAdapter;->favEntries:Ljava/util/List;

    :goto_4
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    iget-object v3, p0, Lcom/sid/tvos/AppAdapter;->rest:Ljava/util/List;

    goto :goto_4

    :cond_b
    iget v0, p0, Lcom/sid/tvos/AppAdapter;->dockOffset:I

    iget-object v1, p0, Lcom/sid/tvos/AppAdapter;->favEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v3, p0, Lcom/sid/tvos/AppAdapter;->dockSlots:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sid/tvos/AppAdapter;->dockOffset:I

    invoke-direct {p0}, Lcom/sid/tvos/AppAdapter;->rebuild()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/g;->notifyDataSetChanged()V

    return-void
.end method

.method public setEntries(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sid/tvos/AppAdapter$Entry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/g;->notifyDataSetChanged()V

    return-void
.end method

.method public shelfAt(I)Landroid/graphics/Bitmap;
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/sid/tvos/AppAdapter;->items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sid/tvos/AppAdapter$Entry;

    invoke-virtual {p0, p1}, Lcom/sid/tvos/AppAdapter;->ambientColorAt(I)I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/sid/tvos/Stage;->render(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public shelfReady(ILcom/sid/tvos/Stage$Callback;)Landroid/graphics/Bitmap;
    .locals 3

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sid/tvos/AppAdapter$Entry;

    invoke-static {v0}, Lcom/sid/tvos/Stage;->peek(Lcom/sid/tvos/AppAdapter$Entry;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/sid/tvos/AppAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/sid/tvos/AppAdapter;->ambientColorAt(I)I

    move-result p1

    invoke-static {v2, v0, p1, p2}, Lcom/sid/tvos/Stage;->renderAsync(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;ILcom/sid/tvos/Stage$Callback;)V

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public shiftDock(I)Z
    .locals 3

    iget v0, p0, Lcom/sid/tvos/AppAdapter;->dockOffset:I

    add-int/2addr v0, p1

    const/4 p1, 0x0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sid/tvos/AppAdapter;->favEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/sid/tvos/AppAdapter;->dockSlots:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/sid/tvos/AppAdapter;->dockOffset:I

    invoke-direct {p0}, Lcom/sid/tvos/AppAdapter;->rebuild()V

    iget v0, p0, Lcom/sid/tvos/AppAdapter;->dockSlots:I

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/g;->notifyItemRangeChanged(II)V

    const/4 p1, 0x1

    :cond_1
    :goto_0
    return p1
.end method

.method public showFavourite(I)V
    .locals 3

    iget v0, p0, Lcom/sid/tvos/AppAdapter;->dockOffset:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/sid/tvos/AppAdapter;->dockSlots:I

    add-int v2, v0, v1

    if-lt p1, v2, :cond_1

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iget-object v0, p0, Lcom/sid/tvos/AppAdapter;->favEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/sid/tvos/AppAdapter;->dockSlots:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/sid/tvos/AppAdapter;->dockOffset:I

    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    iput p1, p0, Lcom/sid/tvos/AppAdapter;->dockOffset:I

    invoke-direct {p0}, Lcom/sid/tvos/AppAdapter;->rebuild()V

    iget p1, p0, Lcom/sid/tvos/AppAdapter;->dockSlots:I

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/g;->notifyItemRangeChanged(II)V

    return-void
.end method
