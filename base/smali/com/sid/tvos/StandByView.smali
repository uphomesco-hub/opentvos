.class public Lcom/sid/tvos/StandByView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final bold:Landroid/graphics/Typeface;

.field private final bounds:Landroid/graphics/Rect;

.field private colour:I

.field private layout:I

.field private left:I

.field private final now:Ljava/util/Calendar;

.field private final p:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private right:I

.field private final semi:Landroid/graphics/Typeface;

.field private shiftX:F

.field private shiftY:F

.field private final tick:Ljava/lang/Runnable;

.field private final weather:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sid/tvos/StandByView;->now:Ljava/util/Calendar;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sid/tvos/StandByView;->bounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sid/tvos/StandByView;->path:Landroid/graphics/Path;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sid/tvos/StandByView;->layout:I

    iput v0, p0, Lcom/sid/tvos/StandByView;->left:I

    const/4 v2, 0x4

    iput v2, p0, Lcom/sid/tvos/StandByView;->right:I

    new-instance v2, Lcom/sid/tvos/StandByView$1;

    invoke-direct {v2, p0}, Lcom/sid/tvos/StandByView$1;-><init>(Lcom/sid/tvos/StandByView;)V

    iput-object v2, p0, Lcom/sid/tvos/StandByView;->tick:Ljava/lang/Runnable;

    sget v2, Lcom/sid/tvos/R$font;->inter_semibold:I

    invoke-static {p1, v2}, Le/k;->b(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_0
    iput-object v2, p0, Lcom/sid/tvos/StandByView;->semi:Landroid/graphics/Typeface;

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/sid/tvos/StandByView;->bold:Landroid/graphics/Typeface;

    const-string v1, "weather"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sid/tvos/StandByView;->weather:Landroid/content/SharedPreferences;

    const/high16 p1, -0x1000000

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/sid/tvos/StandByView;->reload()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sid/tvos/StandByView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sid/tvos/StandByView;->seconds()Z

    move-result p0

    return p0
.end method

.method private arrow(Landroid/graphics/Canvas;FFF)V
    .locals 3

    iget-object v0, p0, Lcom/sid/tvos/StandByView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/sid/tvos/StandByView;->path:Landroid/graphics/Path;

    add-float v1, p2, p4

    invoke-virtual {v0, v1, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/sid/tvos/StandByView;->path:Landroid/graphics/Path;

    const v1, 0x3ed70a3d    # 0.42f

    mul-float v1, v1, p4

    add-float/2addr v1, p3

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/sid/tvos/StandByView;->path:Landroid/graphics/Path;

    const v1, 0x3ef5c28f    # 0.48f

    mul-float v1, v1, p4

    add-float/2addr v1, p2

    const v2, 0x3f051eb8    # 0.52f

    mul-float v2, v2, p4

    add-float/2addr v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/sid/tvos/StandByView;->path:Landroid/graphics/Path;

    const v1, 0x3f147ae1    # 0.58f

    mul-float v1, v1, p4

    add-float/2addr v1, p2

    add-float/2addr p3, p4

    invoke-virtual {v0, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/sid/tvos/StandByView;->path:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    iget-object p2, p0, Lcom/sid/tvos/StandByView;->path:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawAnalogue(Landroid/graphics/Canvas;FFF)V
    .locals 14

    move-object v7, p0

    iget-object v0, v7, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v7, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x3c

    if-ge v1, v2, :cond_4

    rem-int/lit8 v2, v1, 0x5

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, v7, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    if-eqz v2, :cond_1

    const/4 v4, -0x1

    goto :goto_2

    :cond_1
    const v4, -0xb7b7b6

    :goto_2
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v7, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    if-eqz v2, :cond_2

    const v4, 0x3cb43958    # 0.022f

    goto :goto_3

    :cond_2
    const v4, 0x3c656042    # 0.014f

    :goto_3
    mul-float v4, v4, p4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    mul-int/lit8 v3, v1, 0x6

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    if-eqz v2, :cond_3

    const v2, 0x3f666666    # 0.9f

    goto :goto_4

    :cond_3
    const v2, 0x3f6e147b    # 0.93f

    :goto_4
    mul-float v2, v2, p4

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v5, v5, v2

    add-float v9, v5, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v5, v5, v2

    sub-float v10, p3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v2, v5

    mul-float v2, v2, p4

    add-float v11, v2, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, p4

    sub-float v12, p3, v2

    iget-object v13, v7, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const v0, 0x3f35c28f    # 0.71f

    mul-float v4, p4, v0

    const v0, 0x3e4ccccd    # 0.2f

    mul-float v5, p4, v0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/sid/tvos/StandByView;->numerals(Landroid/graphics/Canvas;FFFFI)V

    invoke-direct/range {p0 .. p4}, Lcom/sid/tvos/StandByView;->hands(Landroid/graphics/Canvas;FFF)V

    return-void
.end method

.method private drawBigAnalogue(Landroid/graphics/Canvas;FF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const/high16 v8, 0x40000000    # 2.0f

    div-float v9, p2, v8

    div-float v10, p3, v8

    const v1, 0x3f75c28f    # 0.96f

    mul-float v11, v9, v1

    const v1, 0x3f70a3d7    # 0.94f

    mul-float v12, v10, v1

    iget-object v1, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    const/16 v1, 0x3c

    if-ge v14, v1, :cond_5

    rem-int/lit8 v1, v14, 0xf

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    rem-int/lit8 v1, v14, 0x5

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    mul-int/lit8 v4, v14, 0x6

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    neg-float v3, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x38d1b717    # 1.0E-4f

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    div-float v4, v11, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    div-float v5, v12, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    if-eqz v1, :cond_2

    const v5, 0x3e4ccccd    # 0.2f

    :goto_2
    mul-float v5, v5, p3

    goto :goto_3

    :cond_2
    const v5, 0x3d0f5c29    # 0.035f

    goto :goto_2

    :goto_3
    iget-object v6, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    if-eqz v1, :cond_3

    const v15, -0x2e2e2a

    goto :goto_4

    :cond_3
    const v15, -0xb7b7b6

    :goto_4
    invoke-virtual {v6, v15}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    if-eqz v1, :cond_4

    const v16, 0x3bc49ba6    # 0.006f

    goto :goto_5

    :cond_4
    const v1, 0x3b83126f    # 0.004f

    const v16, 0x3b83126f    # 0.004f

    :goto_5
    mul-float v1, p3, v16

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sub-float v1, v4, v5

    mul-float v5, v2, v1

    add-float/2addr v5, v9

    mul-float v1, v1, v3

    add-float v6, v1, v10

    mul-float v2, v2, v4

    add-float v15, v2, v9

    mul-float v3, v3, v4

    add-float v16, v3, v10

    iget-object v4, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    move-object v6, v4

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_5
    iget-object v1, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const v2, -0x2e2e2a

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const v2, 0x3bc49ba6    # 0.006f

    mul-float v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sub-float v2, v9, v11

    const v1, 0x3d8f5c29    # 0.07f

    mul-float v13, p2, v1

    add-float v4, v2, v13

    iget-object v6, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v10

    move v5, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v2, v9, v11

    sub-float v4, v2, v13

    iget-object v6, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v3, v10, v12

    const v1, 0x3d4ccccd    # 0.05f

    mul-float v13, p3, v1

    add-float v5, v3, v13

    iget-object v6, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v9

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v3, v10, v12

    sub-float v5, v3, v13

    iget-object v6, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/sid/tvos/StandByView;->semi:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const v2, 0x3e051eb8    # 0.13f

    mul-float v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    iget-object v2, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    add-float/2addr v2, v1

    neg-float v1, v2

    div-float/2addr v1, v8

    const v2, 0x3f1eb852    # 0.62f

    mul-float v12, v12, v2

    sub-float v2, v10, v12

    add-float/2addr v2, v1

    iget-object v3, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const-string v4, "12"

    invoke-virtual {v7, v4, v9, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr v12, v10

    add-float/2addr v12, v1

    iget-object v2, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const-string v3, "6"

    invoke-virtual {v7, v3, v9, v12, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const v2, 0x3f333333    # 0.7f

    mul-float v2, v2, v11

    sub-float v3, v9, v2

    add-float/2addr v1, v10

    iget-object v4, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const-string v5, "9"

    invoke-virtual {v7, v5, v3, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr v2, v9

    iget-object v3, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const-string v4, "3"

    invoke-virtual {v7, v4, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const v2, 0x3d23d70a    # 0.04f

    mul-float v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const v1, 0x3f19999a    # 0.6f

    mul-float v11, v11, v1

    add-float/2addr v11, v9

    iget-object v1, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    iget-object v2, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    add-float/2addr v2, v1

    neg-float v1, v2

    div-float/2addr v1, v8

    iget-object v2, v0, Lcom/sid/tvos/StandByView;->now:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    add-float/2addr v1, v10

    iget-object v3, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v11, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v3, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const v4, -0xbac6

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EEE"

    iget-object v5, v0, Lcom/sid/tvos/StandByView;->now:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v11, v2

    iget-object v2, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v11, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const v1, 0x3ed70a3d    # 0.42f

    mul-float v1, v1, p3

    invoke-direct {v0, v7, v9, v10, v1}, Lcom/sid/tvos/StandByView;->hands(Landroid/graphics/Canvas;FFF)V

    return-void
.end method

.method private drawCalendar(Landroid/graphics/Canvas;FFF)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/sid/tvos/StandByView;->now:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v5

    const/4 v6, 0x7

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int/2addr v7, v5

    add-int/2addr v7, v6

    rem-int/2addr v7, v6

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    iget-object v8, v0, Lcom/sid/tvos/StandByView;->now:Ljava/util/Calendar;

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int v8, v7, v2

    add-int/lit8 v8, v8, 0x6

    div-int/2addr v8, v6

    const/high16 v9, 0x40e00000    # 7.0f

    div-float v9, p3, v9

    const v10, 0x3f5c28f6    # 0.86f

    mul-float v10, v10, v9

    const v11, 0x3f2e147b    # 0.68f

    mul-float v11, v11, p4

    add-int/2addr v8, v4

    int-to-float v8, v8

    div-float/2addr v11, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    mul-float v8, v8, v10

    sub-float v8, p4, v8

    const v11, 0x3dcccccd    # 0.1f

    mul-float v11, v11, p4

    sub-float/2addr v8, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v8, v12

    iget-object v13, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v13, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v13, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    iget-object v14, v0, Lcom/sid/tvos/StandByView;->semi:Landroid/graphics/Typeface;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v13, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const v14, 0x3f051eb8    # 0.52f

    mul-float v14, v14, v10

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v13, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const v14, -0xbac6

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    const-string v13, "MMMM"

    iget-object v15, v0, Lcom/sid/tvos/StandByView;->now:Ljava/util/Calendar;

    invoke-static {v13, v15}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    const v15, 0x3e3851ec    # 0.18f

    mul-float v15, v15, v9

    add-float v15, v15, p2

    const v16, 0x3d75c28f    # 0.06f

    mul-float v16, v16, p4

    add-float v14, v16, v8

    iget-object v12, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v15, v14, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v12, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v12, Ljava/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v12}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v12

    add-float/2addr v8, v11

    const v11, 0x3f19999a    # 0.6f

    mul-float v11, v11, v10

    add-float/2addr v11, v8

    iget-object v8, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const v13, 0x3ed70a3d    # 0.42f

    mul-float v13, v13, v10

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v8, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const v14, -0x71716d

    invoke-virtual {v8, v14}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_0
    const/high16 v17, 0x3f000000    # 0.5f

    if-ge v15, v6, :cond_1

    add-int/lit8 v18, v5, -0x1

    add-int v18, v18, v15

    rem-int/lit8 v18, v18, 0x7

    add-int/lit8 v18, v18, 0x1

    aget-object v14, v12, v18

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_0

    const-string v14, ""

    goto :goto_1

    :cond_0
    invoke-virtual {v14, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    :goto_1
    int-to-float v8, v15

    add-float v8, v8, v17

    mul-float v8, v8, v9

    add-float v8, v8, p2

    iget-object v6, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v14, v8, v11, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x7

    const/4 v8, 0x0

    const v14, -0x71716d

    goto :goto_0

    :cond_1
    iget-object v6, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const v8, 0x3eeb851f    # 0.46f

    mul-float v8, v8, v10

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v6, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    iget-object v8, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->descent()F

    move-result v8

    add-float/2addr v8, v6

    neg-float v6, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    const/4 v8, 0x1

    :goto_2
    if-gt v8, v2, :cond_6

    add-int v12, v7, v8

    sub-int/2addr v12, v4

    rem-int/lit8 v14, v12, 0x7

    const/4 v15, 0x7

    div-int/2addr v12, v15

    int-to-float v15, v14

    add-float v15, v15, v17

    mul-float v15, v15, v9

    add-float v15, v15, p2

    add-int/2addr v12, v4

    int-to-float v12, v12

    mul-float v12, v12, v10

    add-float/2addr v12, v11

    const v16, 0x3e19999a    # 0.15f

    mul-float v16, v16, v10

    sub-float v12, v12, v16

    add-int/lit8 v16, v5, -0x1

    add-int v16, v16, v14

    const/4 v14, 0x7

    rem-int/lit8 v16, v16, 0x7

    move/from16 v19, v2

    add-int/lit8 v2, v16, 0x1

    if-eq v2, v14, :cond_3

    if-ne v2, v4, :cond_2

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v2, 0x1

    :goto_4
    const/4 v4, -0x1

    if-ne v8, v3, :cond_4

    iget-object v2, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const v14, -0xbac6

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v15, v12, v13, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/sid/tvos/StandByView;->bold:Landroid/graphics/Typeface;

    :goto_5
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_7

    :cond_4
    const v14, -0xbac6

    iget-object v4, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    if-eqz v2, :cond_5

    const v2, -0x71716d

    goto :goto_6

    :cond_5
    const/4 v2, -0x1

    :goto_6
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/sid/tvos/StandByView;->semi:Landroid/graphics/Typeface;

    goto :goto_5

    :goto_7
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    add-float/2addr v12, v6

    iget-object v4, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v15, v12, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v19

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method private drawDate(Landroid/graphics/Canvas;FFF)V
    .locals 9

    iget-object v0, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sid/tvos/StandByView;->semi:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const v1, 0x3de147ae    # 0.11f

    mul-float v1, v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v0, "EEE"

    iget-object v1, p0, Lcom/sid/tvos/StandByView;->now:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MMM"

    iget-object v2, p0, Lcom/sid/tvos/StandByView;->now:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sid/tvos/StandByView;->now:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    new-instance v4, Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-direct {v4, v6}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iget-object v6, p0, Lcom/sid/tvos/StandByView;->bold:Landroid/graphics/Typeface;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const v6, 0x3f051eb8    # 0.52f

    mul-float v6, v6, p4

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float/2addr p3, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr p3, v6

    add-float/2addr p3, p2

    const p2, 0x3e99999a    # 0.3f

    mul-float p2, p2, p4

    iget-object v7, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const v8, -0xbac6

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p3, p2, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v7, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const v8, -0x71716d

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v0, p3

    iget-object v5, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, p2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/sid/tvos/StandByView;->bounds:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    sub-float/2addr v3, v0

    div-float/2addr v3, v6

    add-float/2addr v3, p3

    const p3, 0x3d75c28f    # 0.06f

    mul-float p4, p4, p3

    add-float/2addr p4, p2

    iget-object p2, p0, Lcom/sid/tvos/StandByView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p4, p2

    invoke-virtual {p1, v2, v3, p4, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawDigital(Landroid/graphics/Canvas;FFF)V
    .locals 5

    invoke-direct {p0}, Lcom/sid/tvos/StandByView;->timeDigits()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/sid/tvos/StandByView;->bold:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const v3, 0x3ed70a3d    # 0.42f

    mul-float v3, v3, p4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    cmpl-float v3, v1, p3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    mul-float v4, v4, p3

    div-float/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p3, v1

    add-float/2addr p3, p2

    iget-object p2, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/sid/tvos/StandByView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    div-float p2, p4, v1

    iget-object v2, p0, Lcom/sid/tvos/StandByView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    add-float/2addr v2, p2

    const p2, 0x3d23d70a    # 0.04f

    mul-float p2, p2, p4

    add-float/2addr p2, v2

    iget-object v1, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p3, p2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sid/tvos/StandByView;->semi:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const v1, 0x3d3851ec    # 0.045f

    mul-float p4, p4, v1

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const v1, -0xbac6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const-string v0, "EEEE d MMMM"

    iget-object v1, p0, Lcom/sid/tvos/StandByView;->now:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sid/tvos/StandByView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    sub-float/2addr p2, p4

    iget-object p4, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p3, p2, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawFloat(Landroid/graphics/Canvas;FF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    invoke-direct/range {p0 .. p0}, Lcom/sid/tvos/StandByView;->timeDigits()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-object v5, v1, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v2, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    iget-object v5, v0, Lcom/sid/tvos/StandByView;->bold:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v2, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const v5, 0x3f1eb852    # 0.62f

    mul-float v6, p3, v5

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v2, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const v6, 0x3d0f5c29    # 0.035f

    mul-float v6, v6, p3

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    new-array v6, v2, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    const v13, 0x3f570a3e    # 0.84000003f

    const/high16 v14, 0x3f800000    # 1.0f

    if-ge v10, v12, :cond_1

    iget-object v12, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    add-int/lit8 v15, v10, 0x1

    invoke-virtual {v12, v9, v10, v15}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v12

    aput v12, v6, v10

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v7, v16, -0x1

    if-ne v10, v7, :cond_0

    const/high16 v13, 0x3f800000    # 1.0f

    :cond_0
    mul-float v12, v12, v13

    add-float/2addr v11, v12

    move v10, v15

    goto :goto_0

    :cond_1
    const v7, 0x3f5c28f6    # 0.86f

    mul-float v7, v7, p2

    div-float/2addr v7, v11

    invoke-static {v14, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iget-object v10, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getTextSize()F

    move-result v12

    mul-float v12, v12, v7

    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v10, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v12

    mul-float v12, v12, v7

    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v2, :cond_2

    aget v12, v6, v10

    mul-float v12, v12, v7

    aput v12, v6, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    mul-float v11, v11, v7

    iget-object v2, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const-string v7, "0"

    iget-object v10, v0, Lcom/sid/tvos/StandByView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v7, v3, v4, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const/high16 v2, 0x40000000    # 2.0f

    div-float v7, p3, v2

    iget-object v10, v0, Lcom/sid/tvos/StandByView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v2

    add-float/2addr v10, v7

    iget v7, v0, Lcom/sid/tvos/StandByView;->colour:I

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v5

    float-to-int v7, v7

    iget v12, v0, Lcom/sid/tvos/StandByView;->colour:I

    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v5

    float-to-int v12, v12

    iget v14, v0, Lcom/sid/tvos/StandByView;->colour:I

    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    int-to-float v14, v14

    mul-float v14, v14, v5

    float-to-int v5, v14

    invoke-static {v7, v12, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    new-array v14, v5, [F

    sub-float v5, p2, v11

    div-float/2addr v5, v2

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_4

    aput v5, v14, v2

    aget v7, v6, v2

    mul-float v7, v7, v13

    add-float/2addr v5, v7

    aget-object v7, v1, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v4

    if-ne v2, v7, :cond_3

    aget v7, v6, v2

    const v11, 0x3e23d70a    # 0.16f

    mul-float v7, v7, v11

    const v11, 0x3dcccccd    # 0.1f

    mul-float v7, v7, v11

    sub-float v7, v5, v7

    move v11, v7

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v13, 0x0

    :goto_3
    const/4 v1, 0x2

    if-ge v13, v1, :cond_7

    iget-object v1, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    if-nez v13, :cond_5

    move v2, v12

    goto :goto_4

    :cond_5
    iget v2, v0, Lcom/sid/tvos/StandByView;->colour:I

    :goto_4
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    move v15, v13

    :goto_5
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v15, v1, :cond_6

    add-int/lit8 v4, v15, 0x1

    aget v5, v14, v15

    iget-object v7, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object v2, v9

    move v3, v15

    move v6, v10

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    add-int/lit8 v15, v15, 0x2

    goto :goto_5

    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_7
    iget-object v1, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const v2, -0x261a1a16

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x3d4ccccd    # 0.05f

    mul-float v1, v1, p3

    iget-object v2, v0, Lcom/sid/tvos/StandByView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f2e147b    # 0.68f

    mul-float v2, v2, v3

    sub-float v2, v10, v2

    iget-object v3, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {v8, v11, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/sid/tvos/StandByView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e8f5c29    # 0.28f

    mul-float v2, v2, v3

    sub-float/2addr v10, v2

    iget-object v2, v0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {v8, v11, v10, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawModern(Landroid/graphics/Canvas;FFF)V
    .locals 15

    move-object v7, p0

    iget-object v0, v7, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v7, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x3c

    const v3, 0x3ca3d70a    # 0.02f

    const/4 v4, -0x1

    if-ge v1, v2, :cond_5

    rem-int/lit8 v2, v1, 0x5

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    rem-int/lit8 v5, v1, 0xf

    if-nez v5, :cond_1

    goto :goto_6

    :cond_1
    mul-int/lit8 v5, v1, 0x6

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    neg-float v5, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    div-float v6, p4, v6

    if-eqz v2, :cond_2

    const v9, 0x3e75c28f    # 0.24f

    :goto_2
    mul-float v9, v9, p4

    goto :goto_3

    :cond_2
    const v9, 0x3da3d70a    # 0.08f

    goto :goto_2

    :goto_3
    iget-object v10, v7, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_3
    const v4, -0xb7b7b6

    :goto_4
    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v7, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    if-eqz v2, :cond_4

    goto :goto_5

    :cond_4
    const v3, 0x3c449ba6    # 0.012f

    :goto_5
    mul-float v2, p4, v3

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sub-float v2, v6, v9

    mul-float v3, v8, v2

    add-float v10, v3, p2

    mul-float v2, v2, v5

    add-float v11, v2, p3

    mul-float v8, v8, v6

    add-float v12, v8, p2

    mul-float v5, v5, v6

    add-float v13, v5, p3

    iget-object v14, v7, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, v7, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v7, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    mul-float v1, p4, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sub-float v2, p3, p4

    const v0, 0x3f5c28f6    # 0.86f

    mul-float v6, p4, v0

    sub-float v4, p3, v6

    iget-object v5, v7, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v2, p3, p4

    add-float v4, p3, v6

    iget-object v5, v7, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v1, p2, p4

    sub-float v3, p2, v6

    iget-object v5, v7, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    move/from16 v2, p3

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v1, p2, p4

    add-float v3, p2, v6

    iget-object v5, v7, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v0, 0x3f1eb852    # 0.62f

    mul-float v4, p4, v0

    const v0, 0x3e851eb8    # 0.26f

    mul-float v5, p4, v0

    const/4 v6, 0x3

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/sid/tvos/StandByView;->numerals(Landroid/graphics/Canvas;FFFFI)V

    invoke-direct/range {p0 .. p4}, Lcom/sid/tvos/StandByView;->hands(Landroid/graphics/Canvas;FFF)V

    return-void
.end method

.method private drawWeather(Landroid/graphics/Canvas;FFF)V
    .locals 11

    .line 1
    const v0, 0x3e23d70a    # 0.16f

    .line 2
    .line 3
    .line 4
    mul-float p3, p3, v0

    .line 5
    .line 6
    add-float/2addr p3, p2

    .line 7
    const p2, 0x3d99999a    # 0.075f

    .line 8
    .line 9
    .line 10
    mul-float p2, p2, p4

    .line 11
    .line 12
    iget-object v0, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    .line 13
    .line 14
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/sid/tvos/StandByView;->semi:Landroid/graphics/Typeface;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    .line 27
    .line 28
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    .line 34
    .line 35
    const/4 v1, -0x1

    .line 36
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/sid/tvos/StandByView;->weather:Landroid/content/SharedPreferences;

    .line 40
    .line 41
    const-string v2, "temp"

    .line 42
    .line 43
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    .line 50
    .line 51
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 52
    .line 53
    .line 54
    iget-object p2, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    .line 55
    .line 56
    const v0, -0x71716d

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    sget v0, Lcom/sid/tvos/R$string;->standby_no_weather:I

    .line 67
    .line 68
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    const/high16 v0, 0x40000000    # 2.0f

    .line 73
    .line 74
    div-float/2addr p4, v0

    .line 75
    iget-object v0, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    .line 76
    .line 77
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/sid/tvos/StandByView;->weather:Landroid/content/SharedPreferences;

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iget-object v2, p0, Lcom/sid/tvos/StandByView;->weather:Landroid/content/SharedPreferences;

    .line 89
    .line 90
    const-string v4, "code"

    .line 91
    .line 92
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    iget-object v4, p0, Lcom/sid/tvos/StandByView;->weather:Landroid/content/SharedPreferences;

    .line 97
    .line 98
    const-string v5, "day"

    .line 99
    .line 100
    const/4 v6, 0x1

    .line 101
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    iget-object v5, p0, Lcom/sid/tvos/StandByView;->weather:Landroid/content/SharedPreferences;

    .line 106
    .line 107
    const-string v7, "city"

    .line 108
    .line 109
    const-string v8, ""

    .line 110
    .line 111
    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    const v7, 0x3e4ccccd    # 0.2f

    .line 116
    .line 117
    .line 118
    mul-float v7, v7, p4

    .line 119
    .line 120
    iget-object v8, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    .line 121
    .line 122
    invoke-virtual {v8, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    const v9, 0x3e99999a    # 0.3f

    .line 130
    .line 131
    .line 132
    if-nez v8, :cond_1

    .line 133
    .line 134
    iget-object v8, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    .line 135
    .line 136
    invoke-virtual {p1, v5, p3, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 137
    .line 138
    .line 139
    iget-object v8, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    .line 140
    .line 141
    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    add-float/2addr v5, p3

    .line 146
    mul-float v8, p2, v9

    .line 147
    .line 148
    add-float/2addr v8, v5

    .line 149
    const v5, 0x3f1eb852    # 0.62f

    .line 150
    .line 151
    .line 152
    mul-float v5, v5, p2

    .line 153
    .line 154
    sub-float v10, v7, v5

    .line 155
    .line 156
    invoke-direct {p0, p1, v8, v10, v5}, Lcom/sid/tvos/StandByView;->arrow(Landroid/graphics/Canvas;FFF)V

    .line 157
    .line 158
    .line 159
    :cond_1
    iget-object v5, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    .line 160
    .line 161
    iget-object v8, p0, Lcom/sid/tvos/StandByView;->bold:Landroid/graphics/Typeface;

    .line 162
    .line 163
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 164
    .line 165
    .line 166
    iget-object v5, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    .line 167
    .line 168
    mul-float v9, v9, p4

    .line 169
    .line 170
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 171
    .line 172
    .line 173
    iget-object v5, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    .line 174
    .line 175
    const-string v8, "0"

    .line 176
    .line 177
    iget-object v9, p0, Lcom/sid/tvos/StandByView;->bounds:Landroid/graphics/Rect;

    .line 178
    .line 179
    invoke-virtual {v5, v8, v3, v6, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 180
    .line 181
    .line 182
    const v5, 0x3d23d70a    # 0.04f

    .line 183
    .line 184
    .line 185
    mul-float v5, v5, p4

    .line 186
    .line 187
    iget-object v6, p0, Lcom/sid/tvos/StandByView;->bounds:Landroid/graphics/Rect;

    .line 188
    .line 189
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    int-to-float v6, v6

    .line 194
    add-float/2addr v5, v6

    .line 195
    add-float/2addr v5, v7

    .line 196
    new-instance v6, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v0, "\u00b0"

    .line 205
    .line 206
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    const v7, 0x3c23d70a    # 0.01f

    .line 214
    .line 215
    .line 216
    mul-float v7, v7, p4

    .line 217
    .line 218
    sub-float v7, p3, v7

    .line 219
    .line 220
    iget-object v8, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    .line 221
    .line 222
    invoke-virtual {p1, v6, v7, v5, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    invoke-static {v2, v4}, Lcom/sid/tvos/Weather;->icon(IZ)I

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    invoke-static {v6, v7}, Ld/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    const v7, 0x3f8ccccd    # 1.1f

    .line 238
    .line 239
    .line 240
    mul-float v7, v7, p2

    .line 241
    .line 242
    const v8, 0x3d8f5c29    # 0.07f

    .line 243
    .line 244
    .line 245
    mul-float p4, p4, v8

    .line 246
    .line 247
    add-float/2addr p4, v5

    .line 248
    if-eqz v6, :cond_2

    .line 249
    .line 250
    float-to-int v5, p3

    .line 251
    float-to-int v8, p4

    .line 252
    add-float v9, p3, v7

    .line 253
    .line 254
    float-to-int v9, v9

    .line 255
    add-float v10, p4, v7

    .line 256
    .line 257
    float-to-int v10, v10

    .line 258
    invoke-virtual {v6, v5, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 265
    .line 266
    .line 267
    :cond_2
    iget-object v1, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    .line 268
    .line 269
    iget-object v5, p0, Lcom/sid/tvos/StandByView;->semi:Landroid/graphics/Typeface;

    .line 270
    .line 271
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 272
    .line 273
    .line 274
    iget-object v1, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    .line 275
    .line 276
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 277
    .line 278
    .line 279
    const v1, 0x3f933333    # 1.15f

    .line 280
    .line 281
    .line 282
    mul-float v1, v1, p2

    .line 283
    .line 284
    add-float/2addr v1, v7

    .line 285
    add-float/2addr v1, p4

    .line 286
    invoke-static {v2, v4}, Lcom/sid/tvos/Weather;->describe(IZ)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p4

    .line 290
    iget-object v2, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    .line 291
    .line 292
    invoke-virtual {p1, p4, p3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 293
    .line 294
    .line 295
    iget-object p4, p0, Lcom/sid/tvos/StandByView;->weather:Landroid/content/SharedPreferences;

    .line 296
    .line 297
    const-string v2, "high"

    .line 298
    .line 299
    invoke-interface {p4, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 300
    .line 301
    .line 302
    move-result p4

    .line 303
    if-eqz p4, :cond_3

    .line 304
    .line 305
    const p4, 0x3f99999a    # 1.2f

    .line 306
    .line 307
    .line 308
    mul-float p2, p2, p4

    .line 309
    .line 310
    add-float/2addr p2, v1

    .line 311
    new-instance p4, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    const-string v1, "H:"

    .line 314
    .line 315
    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    iget-object v1, p0, Lcom/sid/tvos/StandByView;->weather:Landroid/content/SharedPreferences;

    .line 319
    .line 320
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    const-string v1, "\u00b0 L:"

    .line 328
    .line 329
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    iget-object v1, p0, Lcom/sid/tvos/StandByView;->weather:Landroid/content/SharedPreferences;

    .line 333
    .line 334
    const-string v2, "low"

    .line 335
    .line 336
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p4

    .line 350
    iget-object v0, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    .line 351
    .line 352
    invoke-virtual {p1, p4, p3, p2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 353
    .line 354
    .line 355
    :cond_3
    return-void
.end method

.method private drawWidget(Landroid/graphics/Canvas;IFFF)V
    .locals 3

    const v0, 0x3f47ae14    # 0.78f

    mul-float v0, v0, p4

    const v1, 0x3f3d70a4    # 0.74f

    mul-float v1, v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v2, 0x1

    if-eq p2, v2, :cond_4

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    const/4 v2, 0x3

    if-eq p2, v2, :cond_2

    const/4 v2, 0x4

    if-eq p2, v2, :cond_1

    const/4 v2, 0x5

    if-eq p2, v2, :cond_0

    div-float/2addr p4, v1

    add-float/2addr p4, p3

    div-float/2addr p5, v1

    invoke-direct {p0, p1, p4, p5, v0}, Lcom/sid/tvos/StandByView;->drawAnalogue(Landroid/graphics/Canvas;FFF)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/sid/tvos/StandByView;->drawWeather(Landroid/graphics/Canvas;FFF)V

    goto :goto_0

    :cond_1
    const p2, 0x3da3d70a    # 0.08f

    mul-float p2, p2, p4

    add-float/2addr p2, p3

    const p3, 0x3f570a3d    # 0.84f

    mul-float p4, p4, p3

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/sid/tvos/StandByView;->drawCalendar(Landroid/graphics/Canvas;FFF)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/sid/tvos/StandByView;->drawDate(Landroid/graphics/Canvas;FFF)V

    goto :goto_0

    :cond_3
    const p2, 0x3d75c28f    # 0.06f

    mul-float p2, p2, p4

    add-float/2addr p2, p3

    const p3, 0x3f6147ae    # 0.88f

    mul-float p4, p4, p3

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/sid/tvos/StandByView;->drawDigital(Landroid/graphics/Canvas;FFF)V

    goto :goto_0

    :cond_4
    div-float/2addr p4, v1

    add-float/2addr p4, p3

    div-float/2addr p5, v1

    invoke-direct {p0, p1, p4, p5, v0}, Lcom/sid/tvos/StandByView;->drawModern(Landroid/graphics/Canvas;FFF)V

    :goto_0
    return-void
.end method

.method private hand(Landroid/graphics/Canvas;FFFFF)V
    .locals 9

    float-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p4, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    neg-float v0, v0

    iget-object v1, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const v2, 0x3eb33333    # 0.35f

    mul-float v2, v2, p6

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    mul-float p4, p4, p5

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v2, p4, v1

    add-float/2addr v2, p2

    mul-float v0, v0, p5

    mul-float v1, v1, v0

    add-float p5, v1, p3

    iget-object v8, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, v2

    move v7, p5

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, p6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    add-float v6, p2, p4

    add-float v7, p3, v0

    iget-object v8, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    move v4, v2

    move v5, p5

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private hands(Landroid/graphics/Canvas;FFF)V
    .locals 11

    iget-object v0, p0, Lcom/sid/tvos/StandByView;->now:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sid/tvos/StandByView;->now:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42700000    # 60.0f

    div-float v3, v0, v2

    add-float/2addr v3, v1

    iget-object v1, p0, Lcom/sid/tvos/StandByView;->now:Ljava/util/Calendar;

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-float v1, v1

    div-float v2, v3, v2

    add-float/2addr v2, v1

    iget-object v1, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float v8, v2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v9, p4, v1

    const v1, 0x3d851eb8    # 0.065f

    mul-float v10, p4, v1

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v10}, Lcom/sid/tvos/StandByView;->hand(Landroid/graphics/Canvas;FFFFF)V

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float v8, v3, v1

    const v2, 0x3f51eb85    # 0.82f

    mul-float v9, p4, v2

    const v2, 0x3d6147ae    # 0.055f

    mul-float v10, p4, v2

    invoke-direct/range {v4 .. v10}, Lcom/sid/tvos/StandByView;->hand(Landroid/graphics/Canvas;FFFFF)V

    iget-object v2, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const/16 v3, -0x60f6

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const v3, 0x3c656042    # 0.014f

    mul-float v3, v3, p4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    mul-float v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v2, v4

    mul-float v2, v2, p4

    const v4, 0x3e23d70a    # 0.16f

    mul-float v2, v2, v4

    sub-float v6, p2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v2, v7

    mul-float v2, v2, p4

    mul-float v2, v2, v4

    add-float v7, v2, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v2, v4

    mul-float v2, v2, p4

    const v4, 0x3f6b851f    # 0.92f

    mul-float v2, v2, v4

    add-float v8, v2, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v0, v0, p4

    mul-float v0, v0, v4

    sub-float v9, p3, v0

    iget-object v10, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v0, 0x3d0f5c29    # 0.035f

    mul-float p4, p4, v0

    iget-object v0, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object p4, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p4, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v3, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private numerals(Landroid/graphics/Canvas;FFFFI)V
    .locals 6

    iget-object v0, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sid/tvos/StandByView;->semi:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p5, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p5, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {p5}, Landroid/graphics/Paint;->ascent()F

    move-result p5

    iget-object v0, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    add-float/2addr v0, p5

    neg-float p5, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p5, v0

    move v0, p6

    :goto_0
    const/16 v1, 0xc

    if-gt v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x1e

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, p4

    add-float/2addr v4, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, p4

    sub-float v1, p3, v1

    add-float/2addr v1, p5

    iget-object v2, p0, Lcom/sid/tvos/StandByView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/2addr v0, p6

    goto :goto_0

    :cond_0
    return-void
.end method

.method private seconds()Z
    .locals 3

    iget v0, p0, Lcom/sid/tvos/StandByView;->layout:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/sid/tvos/StandByView;->left:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/sid/tvos/StandByView;->right:I

    if-gt v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method private timeDigits()[Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/sid/tvos/StandByView;->now:Ljava/util/Calendar;

    if-eqz v2, :cond_0

    const/16 v4, 0xb

    goto :goto_0

    :cond_0
    const/16 v4, 0xa

    :goto_0
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xc

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    const/16 v3, 0xc

    :cond_1
    const-string v5, "%02d"

    if-eqz v2, :cond_2

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v3, v6, v0

    invoke-static {v2, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, p0, Lcom/sid/tvos/StandByView;->now:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    invoke-static {v3, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public nudge()V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3c449ba6    # 0.012f

    mul-float v0, v0, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double v1, v1, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v5

    double-to-float v1, v1

    mul-float v1, v1, v0

    iput v1, p0, Lcom/sid/tvos/StandByView;->shiftX:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    mul-double v1, v1, v3

    sub-double/2addr v1, v5

    double-to-float v1, v1

    mul-float v1, v1, v0

    iput v1, p0, Lcom/sid/tvos/StandByView;->shiftY:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/sid/tvos/StandByView;->tick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/sid/tvos/StandByView;->tick:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/sid/tvos/StandByView;->now:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_4

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v2, p0, Lcom/sid/tvos/StandByView;->shiftX:F

    iget v3, p0, Lcom/sid/tvos/StandByView;->shiftY:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, p0, Lcom/sid/tvos/StandByView;->layout:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget v4, p0, Lcom/sid/tvos/StandByView;->left:I

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move v6, v0

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/sid/tvos/StandByView;->drawWidget(Landroid/graphics/Canvas;IFFF)V

    iget v4, p0, Lcom/sid/tvos/StandByView;->right:I

    move v5, v0

    invoke-direct/range {v2 .. v7}, Lcom/sid/tvos/StandByView;->drawWidget(Landroid/graphics/Canvas;IFFF)V

    goto :goto_0

    :cond_1
    const v2, 0x3dcccccd    # 0.1f

    mul-float v2, v2, v0

    const v3, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v3

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/sid/tvos/StandByView;->drawDigital(Landroid/graphics/Canvas;FFF)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v0, v1}, Lcom/sid/tvos/StandByView;->drawFloat(Landroid/graphics/Canvas;FF)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v0, v1}, Lcom/sid/tvos/StandByView;->drawBigAnalogue(Landroid/graphics/Canvas;FF)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    :goto_1
    return-void
.end method

.method public reload()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sid/tvos/Appearance;->standByLayout(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/sid/tvos/StandByView;->layout:I

    invoke-static {v0}, Lcom/sid/tvos/Appearance;->standByLeft(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/sid/tvos/StandByView;->left:I

    invoke-static {v0}, Lcom/sid/tvos/Appearance;->standByRight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/sid/tvos/StandByView;->right:I

    sget-object v1, Lcom/sid/tvos/Appearance;->SB_COLOURS:[I

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0}, Lcom/sid/tvos/Appearance;->standByColour(Landroid/content/Context;)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget v0, v1, v0

    iput v0, p0, Lcom/sid/tvos/StandByView;->colour:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
