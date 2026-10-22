.class abstract Lcom/sid/tvos/Corners;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static canClip()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static clip(Landroid/view/View;F)V
    .locals 1

    new-instance v0, Lcom/sid/tvos/Corners$1;

    invoke-direct {v0, p1}, Lcom/sid/tvos/Corners$1;-><init>(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method public static set(Landroid/graphics/Outline;Landroid/view/View;F)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {}, Lcom/sid/tvos/Corners;->canClip()Z

    move-result p1

    if-eqz p1, :cond_0

    if-lez v3, :cond_0

    if-lez v4, :cond_0

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, v3

    int-to-float v2, v4

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p1, v0, p2}, Lcom/sid/tvos/Corners;->squircle(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object p1

    invoke-static {p0, p1}, Lk/F;->c(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    :goto_0
    return-void
.end method

.method public static squircle(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;
    .locals 28

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->reset()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v1, v8

    move/from16 v2, p2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/4 v2, 0x0

    cmpg-float v2, v9, v2

    if-gtz v2, :cond_0

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-object v7

    :cond_0
    div-float v2, v1, v9

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    const v4, 0x3f19999a    # 0.6f

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float v4, v2, v3

    mul-float v4, v4, v9

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v3, v2

    mul-float v3, v3, v1

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double v11, v3, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    float-to-double v13, v9

    mul-double v11, v11, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    mul-double v11, v11, v15

    double-to-float v1, v11

    const-wide v11, 0x4056800000000000L    # 90.0

    sub-double/2addr v11, v3

    div-double/2addr v11, v5

    div-double/2addr v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    mul-double v5, v5, v13

    double-to-float v5, v5

    const/high16 v11, 0x42340000    # 45.0f

    mul-float v2, v2, v11

    float-to-double v12, v2

    float-to-double v5, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double v14, v14, v5

    double-to-float v14, v14

    float-to-double v5, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    mul-double v12, v12, v5

    double-to-float v12, v12

    sub-float v1, v10, v1

    sub-float/2addr v1, v14

    sub-float/2addr v1, v12

    const/high16 v2, 0x40400000    # 3.0f

    div-float v13, v1, v2

    mul-float v15, v13, v8

    double-to-float v6, v3

    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    add-float v0, v5, v10

    invoke-virtual {v7, v0, v4}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v11, v3, v10

    invoke-virtual {v7, v11, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v11, v15, v13

    add-float v8, v11, v14

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v20, v1

    move v1, v15

    move/from16 v21, v2

    move/from16 v2, v17

    move/from16 v22, v3

    move v3, v11

    move/from16 v23, v4

    move/from16 v4, v18

    move/from16 v24, v5

    move v5, v8

    move/from16 p1, v11

    move v11, v6

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v9, v9, v0

    move/from16 v6, v22

    sub-float v5, v6, v9

    move/from16 v4, v23

    add-float v3, v4, v9

    move-object/from16 v2, v20

    invoke-virtual {v2, v5, v4, v6, v3}, Landroid/graphics/RectF;->set(FFFF)V

    div-float v16, v11, v0

    const/high16 v0, -0x3dcc0000    # -45.0f

    sub-float v0, v0, v16

    const/4 v1, 0x0

    invoke-virtual {v7, v2, v0, v11, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    move v1, v12

    move/from16 v17, v11

    move-object v11, v2

    move v2, v14

    move/from16 v26, v3

    move v3, v12

    move/from16 v27, v4

    move v4, v13

    move/from16 v18, v13

    move v13, v5

    move v5, v12

    move/from16 v20, v14

    move v14, v6

    move v6, v8

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    move/from16 v6, v21

    sub-float v2, v6, v10

    invoke-virtual {v7, v14, v2}, Landroid/graphics/Path;->lineTo(FF)V

    neg-float v5, v12

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v2, v15

    move/from16 v4, p1

    move/from16 v21, v5

    move/from16 v22, v10

    move v10, v6

    move v6, v8

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    sub-float v6, v10, v9

    invoke-virtual {v11, v13, v6, v14, v10}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v0, 0x42340000    # 45.0f

    sub-float v0, v0, v16

    move/from16 v13, v17

    const/4 v14, 0x0

    invoke-virtual {v7, v11, v0, v13, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    move/from16 v5, v20

    neg-float v4, v5

    move/from16 v3, v18

    neg-float v2, v3

    neg-float v1, v8

    move-object/from16 v0, p0

    move/from16 v17, v1

    move v1, v4

    move/from16 v18, v2

    move v2, v12

    move/from16 v20, v3

    move/from16 v3, v18

    move/from16 v23, v4

    move v4, v12

    move/from16 v25, v5

    move/from16 v5, v17

    move v14, v6

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    move/from16 v5, v19

    invoke-virtual {v7, v5, v10}, Landroid/graphics/Path;->lineTo(FF)V

    neg-float v15, v15

    move/from16 v0, p1

    neg-float v6, v0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move v3, v6

    move/from16 v5, v17

    move/from16 v19, v6

    move/from16 v6, v21

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    move/from16 v6, v24

    add-float/2addr v9, v6

    invoke-virtual {v11, v6, v14, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v0, 0x43070000    # 135.0f

    sub-float v0, v0, v16

    const/4 v1, 0x0

    invoke-virtual {v7, v11, v0, v13, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v21

    move/from16 v4, v18

    move/from16 v5, v21

    move v10, v6

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    move/from16 v14, v27

    add-float v4, v14, v22

    invoke-virtual {v7, v10, v4}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v2, v15

    move/from16 v4, v19

    move v5, v12

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    move/from16 v4, v26

    invoke-virtual {v11, v10, v14, v9, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v0, 0x43610000    # 225.0f

    sub-float v0, v0, v16

    const/4 v1, 0x0

    invoke-virtual {v7, v11, v0, v13, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, v21

    move v5, v8

    move/from16 v6, v21

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    return-object v7
.end method
