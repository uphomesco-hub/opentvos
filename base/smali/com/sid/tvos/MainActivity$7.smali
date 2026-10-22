.class Lcom/sid/tvos/MainActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sid/tvos/AppAdapter$TileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sid/tvos/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sid/tvos/MainActivity;


# direct methods
.method public constructor <init>(Lcom/sid/tvos/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sid/tvos/MainActivity$7;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderOpen(Lcom/sid/tvos/AppAdapter$Entry;)V
    .locals 0

    return-void
.end method

.method public onLaunch(Lcom/sid/tvos/AppAdapter$Entry;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$7;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-virtual {v0, p1, p2}, Lcom/sid/tvos/MainActivity;->onLaunch(Lcom/sid/tvos/AppAdapter$Entry;Landroid/view/View;)V

    return-void
.end method

.method public onTileFocused(ILandroid/view/View;)V
    .locals 8

    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$7;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->X3(Lcom/sid/tvos/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$7;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float v0, v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3f90a3d7    # 1.13f

    mul-float v1, v1, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v0, v0, v4

    add-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v3

    add-float/2addr v5, v0

    float-to-int v0, v5

    iget-object v5, p0, Lcom/sid/tvos/MainActivity$7;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v5}, Lcom/sid/tvos/MainActivity;->U3(Lcom/sid/tvos/MainActivity;)Lcom/sid/tvos/GlassView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v6, v1, :cond_0

    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v6, v0, :cond_1

    :cond_0
    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v6, p0, Lcom/sid/tvos/MainActivity$7;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v6}, Lcom/sid/tvos/MainActivity;->U3(Lcom/sid/tvos/MainActivity;)Lcom/sid/tvos/GlassView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/sid/tvos/MainActivity$7;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v5}, Lcom/sid/tvos/MainActivity;->U3(Lcom/sid/tvos/MainActivity;)Lcom/sid/tvos/GlassView;

    move-result-object v5

    iget-object v6, p0, Lcom/sid/tvos/MainActivity$7;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v6}, Lcom/sid/tvos/MainActivity;->S3(Lcom/sid/tvos/MainActivity;)F

    move-result v6

    const/high16 v7, 0x41800000    # 16.0f

    mul-float v6, v6, v7

    mul-float v6, v6, v3

    invoke-virtual {v5, v6}, Lcom/sid/tvos/GlassView;->setRadius(F)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    int-to-float v1, v1

    div-float/2addr v1, v4

    sub-float/2addr v3, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    int-to-float v0, v0

    div-float/2addr v0, v4

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$7;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->U3(Lcom/sid/tvos/MainActivity;)Lcom/sid/tvos/GlassView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$7;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->U3(Lcom/sid/tvos/MainActivity;)Lcom/sid/tvos/GlassView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity$7;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {p1}, Lcom/sid/tvos/MainActivity;->U3(Lcom/sid/tvos/MainActivity;)Lcom/sid/tvos/GlassView;

    move-result-object v0

    iget-object v1, p0, Lcom/sid/tvos/MainActivity$7;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v1}, Lcom/sid/tvos/MainActivity;->V3(Lcom/sid/tvos/MainActivity;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/sid/tvos/MainActivity;->v4(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/GlassView;Z)V

    iget-object p1, p0, Lcom/sid/tvos/MainActivity$7;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {p1}, Lcom/sid/tvos/MainActivity;->j4(Lcom/sid/tvos/MainActivity;)V

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object p2, p0, Lcom/sid/tvos/MainActivity$7;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {p2}, Lcom/sid/tvos/MainActivity;->W3(Lcom/sid/tvos/MainActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, p1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    return-void
.end method

.method public onTileHorizontalKey(II)Z
    .locals 2

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$7;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->T3(Lcom/sid/tvos/MainActivity;)Lcom/sid/tvos/AppAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sid/tvos/AppAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {p1, p2, v1, v0}, Lcom/sid/tvos/MainActivity;->atRowEnd(IIII)Z

    move-result p1

    return p1
.end method

.method public onTileLongPress(Lcom/sid/tvos/AppAdapter$Entry;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sid/tvos/MainActivity$7;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-virtual {v0, p1, p2}, Lcom/sid/tvos/MainActivity;->onTileLongPress(Lcom/sid/tvos/AppAdapter$Entry;Landroid/view/View;)V

    return-void
.end method

.method public onTileVerticalKey(II)Z
    .locals 4

    const/16 v0, 0x13

    if-ne p2, v0, :cond_0

    add-int/lit8 v0, p1, -0x4

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x4

    :goto_0
    iget-object v1, p0, Lcom/sid/tvos/MainActivity$7;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {v1}, Lcom/sid/tvos/MainActivity;->T3(Lcom/sid/tvos/MainActivity;)Lcom/sid/tvos/AppAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sid/tvos/AppAdapter;->getItemCount()I

    move-result v1

    const/16 v2, 0x14

    const/4 v3, 0x1

    if-ne p2, v2, :cond_2

    if-lt v0, v1, :cond_2

    sub-int/2addr v1, v3

    div-int/lit8 p2, v1, 0x4

    mul-int/lit8 p2, p2, 0x4

    if-lt p1, p2, :cond_1

    const/4 p1, -0x1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    if-gez v0, :cond_3

    return v3

    :cond_3
    iget-object p1, p0, Lcom/sid/tvos/MainActivity$7;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {p1}, Lcom/sid/tvos/MainActivity;->W3(Lcom/sid/tvos/MainActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/o;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p1, Landroidx/recyclerview/widget/o;->itemView:Landroid/view/View;

    sget p2, Lcom/sid/tvos/R$id;->card:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/sid/tvos/MainActivity$7;->this$0:Lcom/sid/tvos/MainActivity;

    invoke-static {p1}, Lcom/sid/tvos/MainActivity;->W3(Lcom/sid/tvos/MainActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :goto_2
    return v3
.end method
