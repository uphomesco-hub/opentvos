.class abstract Lcom/sid/tvos/Blur;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static boxBlur([IIII)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p3

    array-length v2, v0

    new-array v2, v2, [I

    mul-int/lit8 v3, v1, 0x2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x2

    if-ge v6, v7, :cond_8

    if-nez v6, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_1

    move/from16 v8, p2

    goto :goto_2

    :cond_1
    move/from16 v8, p1

    :goto_2
    if-eqz v7, :cond_2

    move/from16 v9, p1

    goto :goto_3

    :cond_2
    move/from16 v9, p2

    :goto_3
    if-eqz v7, :cond_3

    const/4 v10, 0x1

    goto :goto_4

    :cond_3
    move/from16 v10, p1

    :goto_4
    const/4 v11, 0x0

    :goto_5
    if-ge v11, v8, :cond_7

    if-eqz v7, :cond_4

    mul-int v12, v11, p1

    goto :goto_6

    :cond_4
    move v12, v11

    :goto_6
    neg-int v13, v1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_7
    if-gt v13, v1, :cond_5

    add-int/lit8 v4, v9, -0x1

    invoke-static {v4, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    mul-int v4, v4, v10

    add-int/2addr v4, v12

    aget v4, v0, v4

    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v14, v5

    shr-int/lit8 v5, v4, 0x8

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v15, v5

    and-int/lit16 v4, v4, 0xff

    add-int v16, v16, v4

    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_7

    :cond_5
    const/4 v4, 0x0

    :goto_8
    if-ge v4, v9, :cond_6

    mul-int v5, v4, v10

    add-int/2addr v5, v12

    div-int v13, v14, v3

    shl-int/lit8 v13, v13, 0x10

    const/high16 v18, -0x1000000

    or-int v13, v13, v18

    div-int v18, v15, v3

    shl-int/lit8 v18, v18, 0x8

    or-int v13, v13, v18

    div-int v18, v16, v3

    or-int v13, v13, v18

    aput v13, v2, v5

    add-int/lit8 v5, v9, -0x1

    add-int v13, v4, v1

    const/16 v17, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int v5, v5, v10

    add-int/2addr v5, v12

    aget v5, v0, v5

    sub-int v13, v4, v1

    const/4 v1, 0x0

    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    mul-int v13, v13, v10

    add-int/2addr v13, v12

    aget v1, v0, v13

    shr-int/lit8 v13, v5, 0x10

    and-int/lit16 v13, v13, 0xff

    move/from16 v18, v3

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v13, v3

    add-int/2addr v14, v13

    shr-int/lit8 v3, v5, 0x8

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v13, v1, 0x8

    and-int/lit16 v13, v13, 0xff

    sub-int/2addr v3, v13

    add-int/2addr v15, v3

    and-int/lit16 v3, v5, 0xff

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v3, v1

    add-int v16, v3, v16

    add-int/lit8 v4, v4, 0x1

    move/from16 v1, p3

    move/from16 v3, v18

    goto :goto_8

    :cond_6
    move/from16 v18, v3

    const/16 v17, 0x1

    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p3

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_7
    move/from16 v18, v3

    const/16 v17, 0x1

    array-length v1, v0

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v6, 0x1

    move/from16 v1, p3

    move/from16 v3, v18

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public static capture(Landroid/view/View;I)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1}, Lcom/sid/tvos/Gpu;->capture(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static clamp(F)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x437f0000    # 255.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const/16 p0, 0xff

    goto :goto_0

    :cond_1
    float-to-int p0, p0

    :goto_0
    return p0
.end method

.method private static clamp(I)I
    .locals 1

    .line 2
    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    if-le p0, v0, :cond_1

    const/16 p0, 0xff

    :cond_1
    :goto_0
    return p0
.end method

.method public static frost(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 16

    const/16 v0, 0xa

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v2, v0, 0x2

    const/4 v3, 0x3

    div-int/2addr v2, v3

    add-int/2addr v2, v3

    const/4 v4, 0x1

    if-nez v0, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    div-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v4

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/2addr v6, v2

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/2addr v7, v2

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v4, 0x0

    move-object/from16 v15, p0

    invoke-static {v15, v4, v6, v2}, Lcom/sid/tvos/Gpu;->region(Landroid/graphics/Bitmap;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object v4

    mul-int v7, v6, v2

    new-array v14, v7, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object v7, v4

    move-object v8, v14

    move v10, v6

    move v13, v6

    move-object v1, v14

    move v14, v2

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    if-lez v5, :cond_1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v3, :cond_1

    invoke-static {v1, v6, v2, v5}, Lcom/sid/tvos/Blur;->boxBlur([IIII)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    int-to-float v0, v0

    const v3, 0x3c03126f    # 0.008f

    mul-float v0, v0, v3

    const v3, 0x3f570a3d    # 0.84f

    sub-float/2addr v3, v0

    const/high16 v0, 0x3fe00000    # 1.75f

    invoke-static {v1, v0, v3}, Lcom/sid/tvos/Blur;->vibrancy([IFF)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object v7, v4

    move-object v8, v1

    move v10, v6

    move v13, v6

    move v14, v2

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v4, v0, v1}, Lcom/sid/tvos/Blur;->refine(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static refine(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v1, p1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x280

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int p2, p2, v0

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0, v0, p1, p2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    mul-int p0, v0, p1

    new-array v10, p0, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, v1

    move-object v3, v10

    move v5, v0

    move v8, v0

    move v9, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    invoke-static {v10, v0, p1, v4}, Lcom/sid/tvos/Blur;->boxBlur([IIII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const v3, 0x2545f491

    :goto_1
    if-ge v2, p0, :cond_3

    shl-int/lit8 v4, v3, 0xd

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v3, 0x11

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0x5

    xor-int/2addr v3, v4

    and-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, v3, 0x9

    and-int/2addr v5, p2

    sub-int/2addr v4, v5

    aget v5, v10, v2

    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v6, v4

    invoke-static {v6}, Lcom/sid/tvos/Blur;->clamp(I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    const/high16 v7, -0x1000000

    or-int/2addr v6, v7

    shr-int/lit8 v7, v5, 0x8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v7, v4

    invoke-static {v7}, Lcom/sid/tvos/Blur;->clamp(I)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v5, v4

    invoke-static {v5}, Lcom/sid/tvos/Blur;->clamp(I)I

    move-result v4

    or-int/2addr v4, v6

    aput v4, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, v1

    move-object v3, v10

    move v5, v0

    move v8, v0

    move v9, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v1
.end method

.method public static snapshot(Landroid/view/View;IIF)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1}, Lcom/sid/tvos/Blur;->capture(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/sid/tvos/Blur;->soften(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static soften(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 13

    .line 1
    const/16 v0, 0xa

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    mul-int/lit8 v2, p1, 0x7

    div-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x5

    const/4 v0, 0x3

    div-int/2addr p1, v0

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/2addr v4, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v3, v1}, Lcom/sid/tvos/Gpu;->region(Landroid/graphics/Bitmap;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object v2

    mul-int v4, v3, v1

    new-array v12, v4, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v12

    move v7, v3

    move v10, v3

    move v11, v1

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    invoke-static {v12, v3, v1, p1}, Lcom/sid/tvos/Blur;->boxBlur([IIII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v12

    move v7, v3

    move v10, v3

    move v11, v1

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-static {v2, p1, p0}, Lcom/sid/tvos/Blur;->refine(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static soften(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;
    .locals 11

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    new-array v10, v0, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    invoke-static {v10, v8, v9, p1}, Lcom/sid/tvos/Blur;->boxBlur([IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const p1, 0x3fd9999a    # 1.7f

    invoke-static {v10, p1, p2}, Lcom/sid/tvos/Blur;->vibrancy([IFF)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p0
.end method

.method public static vibrancy([IFF)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    shr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    const v4, 0x3e59b3d0    # 0.2126f

    mul-float v4, v4, v2

    const v5, 0x3f371759    # 0.7152f

    mul-float v5, v5, v3

    add-float/2addr v5, v4

    const v4, 0x3d93dd98    # 0.0722f

    mul-float v4, v4, v1

    add-float/2addr v4, v5

    sub-float/2addr v2, v4

    mul-float v2, v2, p1

    add-float/2addr v2, v4

    mul-float v2, v2, p2

    sub-float/2addr v3, v4

    mul-float v3, v3, p1

    add-float/2addr v3, v4

    mul-float v3, v3, p2

    sub-float/2addr v1, v4

    mul-float v1, v1, p1

    add-float/2addr v1, v4

    mul-float v1, v1, p2

    invoke-static {v2}, Lcom/sid/tvos/Blur;->clamp(F)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v4, -0x1000000

    or-int/2addr v2, v4

    invoke-static {v3}, Lcom/sid/tvos/Blur;->clamp(F)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    invoke-static {v1}, Lcom/sid/tvos/Blur;->clamp(F)I

    move-result v1

    or-int/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
