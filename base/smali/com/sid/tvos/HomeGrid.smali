.class public Lcom/sid/tvos/HomeGrid;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# instance fields
.field private fadePx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private updateFade()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/sid/tvos/HomeGrid;->fadePx:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v6

    add-float/2addr v6, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v3, v7

    add-float/2addr v3, v6

    iget v6, p0, Lcom/sid/tvos/HomeGrid;->fadePx:I

    int-to-float v6, v6

    div-float/2addr v3, v6

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_1

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v6

    cmpl-float v6, v6, v3

    if-nez v6, :cond_1

    goto :goto_3

    :cond_1
    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    cmpg-float v4, v3, v5

    if-gez v4, :cond_2

    const/4 v4, 0x2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v2}, Landroid/view/View;->getLayerType()I

    move-result v5

    if-eq v5, v4, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/sid/tvos/HomeGrid;->updateFade()V

    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    invoke-direct {p0}, Lcom/sid/tvos/HomeGrid;->updateFade()V

    return-void
.end method

.method public setTopFade(I)V
    .locals 0

    iput p1, p0, Lcom/sid/tvos/HomeGrid;->fadePx:I

    invoke-direct {p0}, Lcom/sid/tvos/HomeGrid;->updateFade()V

    return-void
.end method
