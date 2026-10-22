.class final Lcom/sid/tvos/LiquidGlassDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field static blurScale:F = 1.0f


# instance fields
.field private final backdrop:Landroid/graphics/Paint;

.field private backdropBmp:Landroid/graphics/Bitmap;

.field private final corner:F

.field private final density:F

.field private fade:Landroid/animation/ValueAnimator;

.field private final fill:Landroid/graphics/Paint;

.field private final hostLoc:[I

.field private final inner:Landroid/graphics/RectF;

.field private final innerRim:Landroid/graphics/Paint;

.field private final innerShade:Landroid/graphics/Paint;

.field private final lens:Landroid/graphics/Paint;

.field private final lensMatrix:Landroid/graphics/Matrix;

.field private lensNode:Ljava/lang/Object;

.field private liquid:Z

.field private liveHost:Landroid/view/View;

.field private liveNode:Ljava/lang/Object;

.field private liveSource:Landroid/view/View;

.field private final matrix:Landroid/graphics/Matrix;

.field private newAlpha:I

.field private final oldBackdrop:Landroid/graphics/Paint;

.field private oldBmp:Landroid/graphics/Bitmap;

.field private final oldLens:Landroid/graphics/Paint;

.field private opacity:F

.field private final rect:Landroid/graphics/RectF;

.field private final rim:Landroid/graphics/Paint;

.field private final ring:Landroid/graphics/Path;

.field private final specular:Landroid/graphics/Paint;

.field private final srcLoc:[I


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sid/tvos/LiquidGlassDrawable;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 6

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sid/tvos/LiquidGlassDrawable;->backdrop:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sid/tvos/LiquidGlassDrawable;->lens:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sid/tvos/LiquidGlassDrawable;->fill:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sid/tvos/LiquidGlassDrawable;->specular:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sid/tvos/LiquidGlassDrawable;->rim:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/sid/tvos/LiquidGlassDrawable;->innerRim:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lcom/sid/tvos/LiquidGlassDrawable;->innerShade:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcom/sid/tvos/LiquidGlassDrawable;->rect:Landroid/graphics/RectF;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcom/sid/tvos/LiquidGlassDrawable;->inner:Landroid/graphics/RectF;

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/sid/tvos/LiquidGlassDrawable;->ring:Landroid/graphics/Path;

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/sid/tvos/LiquidGlassDrawable;->matrix:Landroid/graphics/Matrix;

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/sid/tvos/LiquidGlassDrawable;->lensMatrix:Landroid/graphics/Matrix;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/sid/tvos/LiquidGlassDrawable;->oldBackdrop:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/sid/tvos/LiquidGlassDrawable;->oldLens:Landroid/graphics/Paint;

    iput-boolean v2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->liquid:Z

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->hostLoc:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->srcLoc:[I

    const/16 v1, 0xff

    iput v1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->newAlpha:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->opacity:F

    iput p1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->density:F

    iput p2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->corner:F

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p2, 0x40400000    # 3.0f

    mul-float p1, p1, p2

    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public static synthetic a(Lcom/sid/tvos/LiquidGlassDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sid/tvos/LiquidGlassDrawable;->lambda$setBackdrop$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sid/tvos/LiquidGlassDrawable;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sid/tvos/LiquidGlassDrawable;->oldBmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static bridge synthetic c(Lcom/sid/tvos/LiquidGlassDrawable;)V
    .locals 1

    .line 1
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/sid/tvos/LiquidGlassDrawable;->setNewAlpha(I)V

    return-void
.end method

.method private drawLive(Landroid/graphics/Canvas;F)Z
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1f
    .end annotation

    iget-object v0, p0, Lcom/sid/tvos/LiquidGlassDrawable;->liveSource:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sid/tvos/LiquidGlassDrawable;->liveSource:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->liveHost:Landroid/view/View;

    iget-object v3, p0, Lcom/sid/tvos/LiquidGlassDrawable;->hostLoc:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->liveSource:Landroid/view/View;

    iget-object v3, p0, Lcom/sid/tvos/LiquidGlassDrawable;->srcLoc:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->srcLoc:[I

    aget v3, v2, v1

    iget-object v4, p0, Lcom/sid/tvos/LiquidGlassDrawable;->hostLoc:[I

    aget v1, v4, v1

    sub-int/2addr v3, v1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    const/4 v3, 0x1

    aget v2, v2, v3

    aget v4, v4, v3

    sub-int/2addr v2, v4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/sid/tvos/LiquidGlassDrawable;->liveNode:Ljava/lang/Object;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lf/b;->e()Landroid/graphics/RenderNode;

    move-result-object v4

    iput-object v4, p0, Lcom/sid/tvos/LiquidGlassDrawable;->liveNode:Ljava/lang/Object;

    :goto_0
    invoke-static {v4}, Lf/b;->f(Ljava/lang/Object;)Landroid/graphics/RenderNode;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v4, v5, v6}, Lf/b;->p(Landroid/graphics/RenderNode;II)V

    invoke-static {v4}, Lf/b;->d(Landroid/graphics/RenderNode;)Landroid/graphics/RecordingCanvas;

    move-result-object v5

    invoke-static {v5, v1, v2}, Lf/b;->u(Landroid/graphics/RecordingCanvas;FF)V

    iget-object v1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->liveSource:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-static {v4}, Lf/b;->n(Landroid/graphics/RenderNode;)V

    iget-boolean v1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->liquid:Z

    if-eqz v1, :cond_2

    const/high16 v1, 0x40200000    # 2.5f

    goto :goto_1

    :cond_2
    const/high16 v1, 0x41b00000    # 22.0f

    :goto_1
    iget v2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->density:F

    mul-float v1, v1, v2

    sget v2, Lcom/sid/tvos/LiquidGlassDrawable;->blurScale:F

    mul-float v1, v1, v2

    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    iget-boolean v5, p0, Lcom/sid/tvos/LiquidGlassDrawable;->liquid:Z

    if-eqz v5, :cond_3

    const v5, 0x3faccccd    # 1.35f

    goto :goto_2

    :cond_3
    const v5, 0x3fe66666    # 1.8f

    :goto_2
    invoke-virtual {v2, v5}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_4

    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-static {v1, v1, v2}, Lt/a;->a(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object v1

    :goto_3
    invoke-static {v5, v1}, Lt/a;->b(Landroid/graphics/ColorMatrixColorFilter;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object v1

    invoke-static {v4, v1}, Lt/a;->c(Landroid/graphics/RenderNode;Landroid/graphics/RenderEffect;)V

    iget v1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->opacity:F

    invoke-static {v4, v1}, Lf/b;->o(Landroid/graphics/RenderNode;F)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v5, p2, p2, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget p2, v0, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {p1, v4}, Lf/b;->k(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-boolean p2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->liquid:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->lensNode:Ljava/lang/Object;

    if-eqz p2, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {}, Lf/b;->s()Landroid/graphics/RenderNode;

    move-result-object p2

    iput-object p2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->lensNode:Ljava/lang/Object;

    :goto_4
    invoke-static {p2}, Lf/b;->f(Ljava/lang/Object;)Landroid/graphics/RenderNode;

    move-result-object p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {p2, v1, v2}, Lf/b;->p(Landroid/graphics/RenderNode;II)V

    invoke-static {p2}, Lf/b;->d(Landroid/graphics/RenderNode;)Landroid/graphics/RecordingCanvas;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-static {v1, v2, v6}, Lf/b;->l(Landroid/graphics/RecordingCanvas;FF)V

    invoke-static {v1, v4}, Lf/b;->m(Landroid/graphics/RecordingCanvas;Landroid/graphics/RenderNode;)V

    invoke-static {p2}, Lf/b;->n(Landroid/graphics/RenderNode;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget-object v2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->ring:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {p1, p2}, Lf/b;->k(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_6
    return v3

    :cond_7
    :goto_5
    return v1
.end method

.method private synthetic lambda$setBackdrop$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sid/tvos/LiquidGlassDrawable;->setNewAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private setLocal(Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/sid/tvos/LiquidGlassDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object p3, p0, Lcom/sid/tvos/LiquidGlassDrawable;->matrix:Landroid/graphics/Matrix;

    iget v0, p4, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p4, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    iget-object p3, p0, Lcom/sid/tvos/LiquidGlassDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->lensMatrix:Landroid/graphics/Matrix;

    iget-object p3, p0, Lcom/sid/tvos/LiquidGlassDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->lensMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p3

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p4

    const v0, 0x3f8f5c29    # 1.12f

    const v1, 0x3faccccd    # 1.35f

    invoke-virtual {p1, v0, v1, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    iget-object p2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->lensMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private setNewAlpha(I)V
    .locals 2

    iput p1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->newAlpha:I

    iget-object v0, p0, Lcom/sid/tvos/LiquidGlassDrawable;->backdrop:Landroid/graphics/Paint;

    int-to-float p1, p1

    iget v1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->opacity:F

    mul-float v1, v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/sid/tvos/LiquidGlassDrawable;->lens:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->opacity:F

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private updateMatrix(Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sid/tvos/LiquidGlassDrawable;->backdropBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->backdrop:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->lens:Landroid/graphics/Paint;

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/sid/tvos/LiquidGlassDrawable;->setLocal(Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    :cond_1
    iget-object v0, p0, Lcom/sid/tvos/LiquidGlassDrawable;->oldBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->oldBackdrop:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->oldLens:Landroid/graphics/Paint;

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/sid/tvos/LiquidGlassDrawable;->setLocal(Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->corner:F

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    :goto_0
    iget-object v2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-boolean v2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->liquid:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const v4, 0x3e6147ae    # 0.22f

    mul-float v2, v2, v4

    const/high16 v4, 0x41100000    # 9.0f

    iget v5, p0, Lcom/sid/tvos/LiquidGlassDrawable;->density:F

    mul-float v5, v5, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v4, p0, Lcom/sid/tvos/LiquidGlassDrawable;->inner:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v6, v2

    iget v7, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v7, v2

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    sub-float/2addr v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Lcom/sid/tvos/LiquidGlassDrawable;->ring:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, p0, Lcom/sid/tvos/LiquidGlassDrawable;->ring:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/sid/tvos/LiquidGlassDrawable;->rect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v1, v1, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v4, p0, Lcom/sid/tvos/LiquidGlassDrawable;->ring:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/sid/tvos/LiquidGlassDrawable;->inner:Landroid/graphics/RectF;

    sub-float v2, v1, v2

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v2, v2, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v2, v4, :cond_3

    invoke-direct {p0, p1, v1}, Lcom/sid/tvos/LiquidGlassDrawable;->drawLive(Landroid/graphics/Canvas;F)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_4

    iget-object v4, p0, Lcom/sid/tvos/LiquidGlassDrawable;->oldBmp:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sid/tvos/LiquidGlassDrawable;->rect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sid/tvos/LiquidGlassDrawable;->oldBackdrop:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v1, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v4, p0, Lcom/sid/tvos/LiquidGlassDrawable;->liquid:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sid/tvos/LiquidGlassDrawable;->ring:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/sid/tvos/LiquidGlassDrawable;->oldLens:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_4
    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->backdropBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->rect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sid/tvos/LiquidGlassDrawable;->backdrop:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->liquid:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->ring:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/sid/tvos/LiquidGlassDrawable;->lens:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_5
    iget-object v2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->rect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sid/tvos/LiquidGlassDrawable;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->density:F

    mul-float v2, v2, v3

    iget-object v4, p0, Lcom/sid/tvos/LiquidGlassDrawable;->rect:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v6, v2

    iget v7, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v7, v2

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    sub-float/2addr v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Lcom/sid/tvos/LiquidGlassDrawable;->rect:Landroid/graphics/RectF;

    sub-float v2, v1, v2

    iget-object v5, p0, Lcom/sid/tvos/LiquidGlassDrawable;->specular:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->innerShade:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v3

    iget-object v4, p0, Lcom/sid/tvos/LiquidGlassDrawable;->rect:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v6, v2

    iget v7, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v7, v2

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    sub-float/2addr v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Lcom/sid/tvos/LiquidGlassDrawable;->rect:Landroid/graphics/RectF;

    sub-float v2, v1, v2

    iget-object v5, p0, Lcom/sid/tvos/LiquidGlassDrawable;->innerShade:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->innerRim:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    if-eqz v2, :cond_6

    const/high16 v2, 0x40400000    # 3.0f

    iget v4, p0, Lcom/sid/tvos/LiquidGlassDrawable;->density:F

    mul-float v4, v4, v2

    iget-object v2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->rect:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v5, v4

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v6, v4

    iget v7, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v7, v4

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    sub-float/2addr v8, v4

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->rect:Landroid/graphics/RectF;

    sub-float v4, v1, v4

    iget-object v5, p0, Lcom/sid/tvos/LiquidGlassDrawable;->innerRim:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_6
    iget-object v2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->rim:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sid/tvos/LiquidGlassDrawable;->rect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/sid/tvos/LiquidGlassDrawable;->rect:Landroid/graphics/RectF;

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->rim:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isLive()Z
    .locals 1

    iget-object v0, p0, Lcom/sid/tvos/LiquidGlassDrawable;->liveSource:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    invoke-direct/range {p0 .. p1}, Lcom/sid/tvos/LiquidGlassDrawable;->updateMatrix(Landroid/graphics/Rect;)V

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-boolean v4, v0, Lcom/sid/tvos/LiquidGlassDrawable;->liquid:Z

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v4, :cond_0

    iget-object v15, v0, Lcom/sid/tvos/LiquidGlassDrawable;->fill:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/LinearGradient;

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const v9, 0x14ffffff

    const v10, 0x5ffffff

    move-object v4, v11

    move v6, v3

    move v8, v12

    move-object v13, v11

    move-object/from16 v11, v16

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v15, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v13, v0, Lcom/sid/tvos/LiquidGlassDrawable;->specular:Landroid/graphics/Paint;

    new-instance v15, Landroid/graphics/LinearGradient;

    const v4, 0x3ee66666    # 0.45f

    mul-float v1, v1, v4

    add-float v8, v1, v3

    const v9, 0x33ffffff

    const v10, 0xffffff

    move-object v4, v15

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Lcom/sid/tvos/LiquidGlassDrawable;->rim:Landroid/graphics/Paint;

    const v4, 0x3fb33333    # 1.4f

    iget v5, v0, Lcom/sid/tvos/LiquidGlassDrawable;->density:F

    mul-float v5, v5, v4

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Lcom/sid/tvos/LiquidGlassDrawable;->rim:Landroid/graphics/Paint;

    new-instance v13, Landroid/graphics/LinearGradient;

    const v4, 0x26ffffff

    const v5, -0x33000001    # -1.3421772E8f

    const/4 v6, -0x1

    const v7, 0x40ffffff    # 7.9999995f

    filled-new-array {v6, v7, v4, v5}, [I

    move-result-object v9

    new-array v10, v2, [F

    fill-array-data v10, :array_0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v13

    move v6, v3

    move v8, v12

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Lcom/sid/tvos/LiquidGlassDrawable;->innerRim:Landroid/graphics/Paint;

    iget v4, v0, Lcom/sid/tvos/LiquidGlassDrawable;->density:F

    mul-float v4, v4, v14

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Lcom/sid/tvos/LiquidGlassDrawable;->innerRim:Landroid/graphics/Paint;

    new-instance v13, Landroid/graphics/LinearGradient;

    const v4, 0x66ffffff

    const v5, 0xffffff

    const v6, 0x4dffffff    # 5.3687088E8f

    filled-new-array {v4, v5, v5, v6}, [I

    move-result-object v9

    new-array v10, v2, [F

    fill-array-data v10, :array_1

    const/4 v5, 0x0

    move-object v4, v13

    move v6, v3

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :cond_0
    iget-object v13, v0, Lcom/sid/tvos/LiquidGlassDrawable;->fill:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/LinearGradient;

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const v9, 0x52ffffff

    const v10, 0x29ffffff

    move-object v4, v14

    move v6, v3

    move v8, v12

    move-object v11, v15

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v13, v0, Lcom/sid/tvos/LiquidGlassDrawable;->specular:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/LinearGradient;

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v1, v1, v4

    add-float v8, v1, v3

    const v9, 0x40ffffff    # 7.9999995f

    const v10, 0xffffff

    move-object v4, v14

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Lcom/sid/tvos/LiquidGlassDrawable;->rim:Landroid/graphics/Paint;

    const v4, 0x3f99999a    # 1.2f

    iget v5, v0, Lcom/sid/tvos/LiquidGlassDrawable;->density:F

    mul-float v5, v5, v4

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Lcom/sid/tvos/LiquidGlassDrawable;->rim:Landroid/graphics/Paint;

    new-instance v13, Landroid/graphics/LinearGradient;

    const v4, 0x33ffffff

    const v5, -0x66000001

    const v6, -0x26000001

    const v7, 0x4dffffff    # 5.3687088E8f

    filled-new-array {v6, v7, v4, v5}, [I

    move-result-object v9

    new-array v10, v2, [F

    fill-array-data v10, :array_2

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v13

    move v6, v3

    move v8, v12

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Lcom/sid/tvos/LiquidGlassDrawable;->innerRim:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_0
    iget-object v1, v0, Lcom/sid/tvos/LiquidGlassDrawable;->innerShade:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    iget-boolean v4, v0, Lcom/sid/tvos/LiquidGlassDrawable;->liquid:Z

    if-eqz v4, :cond_1

    const/high16 v4, 0x1a000000

    goto :goto_1

    :cond_1
    const/high16 v4, 0x26000000

    :goto_1
    const/4 v5, 0x0

    filled-new-array {v5, v5, v4}, [I

    move-result-object v9

    const/4 v4, 0x3

    new-array v10, v4, [F

    fill-array-data v10, :array_3

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v2

    move v6, v3

    move v8, v12

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBackdrop(Landroid/graphics/Bitmap;J)V
    .locals 5

    iget-object v0, p0, Lcom/sid/tvos/LiquidGlassDrawable;->fade:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-lez v3, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/sid/tvos/LiquidGlassDrawable;->backdropBmp:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iput-object v3, p0, Lcom/sid/tvos/LiquidGlassDrawable;->oldBmp:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sid/tvos/LiquidGlassDrawable;->oldBackdrop:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/sid/tvos/LiquidGlassDrawable;->backdrop:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v3, p0, Lcom/sid/tvos/LiquidGlassDrawable;->oldLens:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/sid/tvos/LiquidGlassDrawable;->lens:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->oldBmp:Landroid/graphics/Bitmap;

    :goto_1
    iput-object p1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->backdropBmp:Landroid/graphics/Bitmap;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->backdrop:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->lens:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->backdrop:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, p1, v4, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->lens:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/BitmapShader;

    invoke-direct {v3, p1, v4, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sid/tvos/LiquidGlassDrawable;->updateMatrix(Landroid/graphics/Rect;)V

    const/16 p1, 0xff

    if-eqz v0, :cond_4

    invoke-direct {p0, v2}, Lcom/sid/tvos/LiquidGlassDrawable;->setNewAlpha(I)V

    filled-new-array {v2, p1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->fade:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->fade:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const p3, 0x3fb33333    # 1.4f

    invoke-direct {p2, p3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->fade:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/sid/tvos/k;

    invoke-direct {p2, p0}, Lcom/sid/tvos/k;-><init>(Lcom/sid/tvos/LiquidGlassDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->fade:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/sid/tvos/LiquidGlassDrawable$1;

    invoke-direct {p2, p0}, Lcom/sid/tvos/LiquidGlassDrawable$1;-><init>(Lcom/sid/tvos/LiquidGlassDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->fade:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    :cond_4
    invoke-direct {p0, p1}, Lcom/sid/tvos/LiquidGlassDrawable;->setNewAlpha(I)V

    :goto_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setBackdropOpacity(F)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->opacity:F

    cmpl-float v3, p1, v2

    if-eqz v3, :cond_1

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3d23d70a    # 0.04f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->opacity:F

    iget v0, p0, Lcom/sid/tvos/LiquidGlassDrawable;->newAlpha:I

    invoke-direct {p0, v0}, Lcom/sid/tvos/LiquidGlassDrawable;->setNewAlpha(I)V

    iget-object v0, p0, Lcom/sid/tvos/LiquidGlassDrawable;->oldBackdrop:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/sid/tvos/LiquidGlassDrawable;->oldLens:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setLiquid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->liquid:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sid/tvos/LiquidGlassDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setLiveSource(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sid/tvos/LiquidGlassDrawable;->liveSource:Landroid/view/View;

    iput-object p2, p0, Lcom/sid/tvos/LiquidGlassDrawable;->liveHost:Landroid/view/View;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
