.class public Lcom/sid/tvos/GlassView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final density:F

.field private final outline:Landroid/graphics/Paint;

.field private radius:F

.field private final rect:Landroid/graphics/RectF;

.field private final ring:Landroid/graphics/Path;

.field private final shadow:Landroid/graphics/Paint;

.field private shadowBmp:Landroid/graphics/Bitmap;

.field private shadowH:I

.field private shadowR:F

.field private shadowW:I

.field private final tile:Landroid/graphics/Path;

.field private final tmp:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/sid/tvos/GlassView;->shadow:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sid/tvos/GlassView;->outline:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/sid/tvos/GlassView;->rect:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/sid/tvos/GlassView;->tmp:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/sid/tvos/GlassView;->tile:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/sid/tvos/GlassView;->ring:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/sid/tvos/GlassView;->density:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float v2, v2, v1

    iput v2, p0, Lcom/sid/tvos/GlassView;->radius:F

    const/high16 v2, -0x1000000

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p1, 0x3fc00000    # 1.5f

    mul-float v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const p1, -0xd000001

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private buildShadow()V
    .locals 11

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sid/tvos/GlassView;->shadowW:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sid/tvos/GlassView;->shadowH:I

    iget v0, p0, Lcom/sid/tvos/GlassView;->radius:F

    iput v0, p0, Lcom/sid/tvos/GlassView;->shadowR:F

    iget-object v0, p0, Lcom/sid/tvos/GlassView;->shadowBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget v0, p0, Lcom/sid/tvos/GlassView;->shadowW:I

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lcom/sid/tvos/GlassView;->shadowH:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sid/tvos/GlassView;->shadowBmp:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sid/tvos/GlassView;->shadowBmp:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v2, p0, Lcom/sid/tvos/GlassView;->density:F

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float v3, v3, v2

    const/high16 v4, 0x41600000    # 14.0f

    mul-float v4, v4, v2

    const/high16 v5, 0x41100000    # 9.0f

    mul-float v5, v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v2, v2, v6

    new-instance v6, Landroid/graphics/RectF;

    sub-float v7, v3, v2

    add-float v8, v3, v5

    sub-float/2addr v8, v2

    iget v9, p0, Lcom/sid/tvos/GlassView;->shadowW:I

    int-to-float v9, v9

    sub-float/2addr v9, v3

    add-float/2addr v9, v2

    iget v10, p0, Lcom/sid/tvos/GlassView;->shadowH:I

    int-to-float v10, v10

    sub-float/2addr v10, v3

    add-float/2addr v10, v5

    add-float/2addr v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v3, Landroid/graphics/Paint;

    const/4 v5, 0x5

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v5, -0x74000000

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v5, Landroid/graphics/BlurMaskFilter;

    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v4, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget v4, p0, Lcom/sid/tvos/GlassView;->radius:F

    add-float v5, v4, v2

    add-float/2addr v4, v2

    invoke-virtual {v0, v6, v5, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sid/tvos/GlassView;->shadowBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/sid/tvos/GlassView;->shadowBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    const v5, -0x61c88647

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_3

    aget-byte v7, v3, v6

    const/16 v8, 0xff

    and-int/2addr v7, v8

    if-eqz v7, :cond_2

    if-ne v7, v8, :cond_1

    goto :goto_1

    :cond_1
    shl-int/lit8 v9, v5, 0xd

    xor-int/2addr v5, v9

    ushr-int/lit8 v9, v5, 0x11

    xor-int/2addr v5, v9

    shl-int/lit8 v9, v5, 0x5

    xor-int/2addr v5, v9

    and-int/lit8 v9, v5, 0x1

    ushr-int/lit8 v10, v5, 0x9

    and-int/2addr v10, v1

    sub-int/2addr v9, v10

    add-int/2addr v9, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/sid/tvos/GlassView;->shadowBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/high16 v0, 0x41f00000    # 30.0f

    iget v1, p0, Lcom/sid/tvos/GlassView;->density:F

    mul-float v1, v1, v0

    iget-object v0, p0, Lcom/sid/tvos/GlassView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/sid/tvos/GlassView;->tile:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/sid/tvos/GlassView;->tile:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sid/tvos/GlassView;->rect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/sid/tvos/GlassView;->radius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/sid/tvos/GlassView;->shadowBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sid/tvos/GlassView;->shadowW:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sid/tvos/GlassView;->shadowH:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sid/tvos/GlassView;->shadowR:F

    iget v1, p0, Lcom/sid/tvos/GlassView;->radius:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sid/tvos/GlassView;->buildShadow()V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/sid/tvos/GlassView;->tile:Landroid/graphics/Path;

    invoke-static {p1, v0}, Lk/s;->h(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sid/tvos/GlassView;->tile:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    :goto_0
    iget-object v0, p0, Lcom/sid/tvos/GlassView;->shadowBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sid/tvos/GlassView;->shadow:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/sid/tvos/GlassView;->outline:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/sid/tvos/GlassView;->tmp:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sid/tvos/GlassView;->rect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    iget v4, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v0

    iget v5, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v0

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/sid/tvos/GlassView;->tmp:Landroid/graphics/RectF;

    iget v2, p0, Lcom/sid/tvos/GlassView;->radius:F

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/sid/tvos/GlassView;->outline:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/sid/tvos/GlassView;->radius:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
