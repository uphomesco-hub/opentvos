.class abstract Lcom/sid/tvos/CwBackground;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sid/tvos/CwBackground$Opener;
    }
.end annotation


# static fields
.field static final COLOURS:[I

.field static final CUSTOM:I

.field static final PRESETS:[[I

.field private static cached:Landroid/graphics/Bitmap;

.field private static cachedKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const v0, -0x85b5d6

    const v1, -0x365dd9

    const/high16 v2, -0x1000000

    const v3, -0x28ffeb

    const v4, -0xe246ac

    const v5, -0xf57b01

    const v6, -0xb4d42a

    const v7, -0xd288

    const/16 v8, 0x18

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    sput-object v8, Lcom/sid/tvos/CwBackground;->COLOURS:[I

    array-length v8, v8

    sput v8, Lcom/sid/tvos/CwBackground;->CUSTOM:I

    const/16 v8, 0xe

    new-array v8, v8, [[I

    const/4 v9, 0x1

    filled-new-array {v9, v3, v2}, [I

    move-result-object v3

    const/4 v10, 0x0

    aput-object v3, v8, v10

    filled-new-array {v9, v4, v2}, [I

    move-result-object v2

    aput-object v2, v8, v9

    const v2, -0xaed1

    const v3, -0x22db8a

    filled-new-array {v9, v2, v3}, [I

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v8, v3

    const v2, -0xde6c50

    const v4, -0xf4e1c1

    filled-new-array {v10, v2, v4}, [I

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v8, v4

    const v2, -0xff3659

    filled-new-array {v4, v2, v6}, [I

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v8, v4

    const v2, -0xc5c592

    const v6, -0xf4f4ec

    filled-new-array {v3, v2, v6}, [I

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v8, v3

    const/16 v2, -0x4774

    const v6, -0x219d9e

    filled-new-array {v9, v2, v6}, [I

    move-result-object v2

    const/4 v6, 0x6

    aput-object v2, v8, v6

    const v2, -0xed8ef

    const v10, -0xe5f5d2

    filled-new-array {v4, v2, v10}, [I

    move-result-object v2

    const/4 v4, 0x7

    aput-object v2, v8, v4

    const v2, -0x71d21e

    const v10, -0xe4f9c8

    filled-new-array {v3, v2, v10}, [I

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v8, v3

    const v2, -0xff4b25

    const v10, -0xff7c50

    filled-new-array {v4, v2, v10}, [I

    move-result-object v2

    const/16 v4, 0x9

    aput-object v2, v8, v4

    filled-new-array {v6, v7, v5}, [I

    move-result-object v2

    const/16 v5, 0xa

    aput-object v2, v8, v5

    const v2, -0xedf5fb

    filled-new-array {v3, v0, v2}, [I

    move-result-object v0

    const/16 v2, 0xb

    aput-object v0, v8, v2

    const v0, -0xa954d1

    const v2, -0xf0d5f6

    filled-new-array {v4, v0, v2}, [I

    move-result-object v0

    const/16 v2, 0xc

    aput-object v0, v8, v2

    const v0, -0xd4deef

    filled-new-array {v9, v1, v0}, [I

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, v8, v1

    sput-object v8, Lcom/sid/tvos/CwBackground;->PRESETS:[[I

    return-void

    :array_0
    .array-data 4
        -0x1000000
        -0xe3e3e2
        -0xc5c5c4
        -0x71716d
        -0xd0d09
        -0x28ffeb
        -0x750000
        -0x9600
        -0x5000
        -0x29f6
        -0x5b1c00
        -0xe246ac
        -0xff78a6
        -0xff5c5d
        -0xcd2d0b
        -0xf57b01
        -0xf5d595
        -0xb4d42a
        -0x64cf27
        -0x29d437
        -0xd288
        -0x705d
        -0x85b5d6
        -0x365dd9
    .end array-data
.end method

.method public static synthetic a(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sid/tvos/CwBackground;->lambda$setPicture$0(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/io/File;)Ljava/io/InputStream;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sid/tvos/CwBackground;->lambda$setPicture$1(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static blob(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFII)V
    .locals 8

    new-instance v7, Landroid/graphics/RadialGradient;

    invoke-static {p5, p6}, Lcom/sid/tvos/CwBackground;->withAlpha(II)I

    move-result v0

    mul-int/lit8 p6, p6, 0x2

    div-int/lit8 p6, p6, 0x5

    invoke-static {p5, p6}, Lcom/sid/tvos/CwBackground;->withAlpha(II)I

    move-result p6

    const/4 v1, 0x0

    invoke-static {p5, v1}, Lcom/sid/tvos/CwBackground;->withAlpha(II)I

    move-result p5

    filled-new-array {v0, p6, p5}, [I

    move-result-object v4

    const/4 p5, 0x3

    new-array v5, p5, [F

    fill-array-data v5, :array_0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, v7

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static choice(Landroid/content/Context;I)I
    .locals 2

    invoke-static {p0}, Lcom/sid/tvos/CwBackground;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v1, "cw_bg_c1"

    goto :goto_0

    :cond_0
    const-string v1, "cw_bg_c2"

    :goto_0
    if-ne p1, v0, :cond_1

    const/4 p1, 0x5

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static colour(Landroid/content/Context;I)I
    .locals 3

    invoke-static {p0, p1}, Lcom/sid/tvos/CwBackground;->choice(Landroid/content/Context;I)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v1, Lcom/sid/tvos/CwBackground;->COLOURS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget p0, v1, v0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/sid/tvos/CwBackground;->custom(Landroid/content/Context;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static custom(Landroid/content/Context;I)I
    .locals 2

    invoke-static {p0}, Lcom/sid/tvos/CwBackground;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v1, "cw_bg_c1_rgb"

    goto :goto_0

    :cond_0
    const-string v1, "cw_bg_c2_rgb"

    :goto_0
    if-ne p1, v0, :cond_1

    const p1, -0x28ffeb

    goto :goto_1

    :cond_1
    const/high16 p1, -0x1000000

    :goto_1
    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static draw(IIIII)Landroid/graphics/Bitmap;
    .locals 28

    move/from16 v8, p1

    move/from16 v7, p2

    move/from16 v6, p3

    move/from16 v5, p4

    const/4 v0, 0x3

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    const v9, 0x3eb33333    # 0.35f

    const v10, 0x3ee66666    # 0.45f

    const v11, 0x3f0ccccd    # 0.55f

    const/high16 v14, 0x3e800000    # 0.25f

    const v12, 0x3f19999a    # 0.6f

    const/high16 v15, -0x1000000

    const/high16 v13, 0x3f000000    # 0.5f

    packed-switch p0, :pswitch_data_0

    int-to-float v13, v5

    int-to-float v12, v6

    const v9, 0x3ecccccd    # 0.4f

    invoke-static {v7, v15, v9}, Lcom/sid/tvos/CwBackground;->mix(IIF)I

    move-result v18

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v9, v3

    move-object v10, v2

    move/from16 v26, v12

    move v12, v13

    move/from16 v27, v13

    move/from16 v13, v26

    const/high16 v1, 0x3e800000    # 0.25f

    move v14, v15

    move/from16 v15, p3

    move/from16 v16, p4

    move/from16 v17, p2

    invoke-static/range {v9 .. v18}, Lcom/sid/tvos/CwBackground;->linear(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFIIII)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    new-instance v6, Landroid/graphics/LinearGradient;

    int-to-float v7, v5

    mul-float v7, v7, v1

    const v17, 0x3e99999a    # 0.3f

    add-float v9, v7, v17

    mul-float v20, v9, v27

    const v9, 0x3d4ccccd    # 0.05f

    add-float/2addr v7, v9

    mul-float v22, v7, v27

    const/4 v15, 0x0

    invoke-static {v8, v15}, Lcom/sid/tvos/CwBackground;->withAlpha(II)I

    move-result v7

    mul-int/lit8 v9, v5, 0x18

    rsub-int/lit8 v9, v9, 0x70

    invoke-static {v8, v9}, Lcom/sid/tvos/CwBackground;->withAlpha(II)I

    move-result v9

    invoke-static {v8, v15}, Lcom/sid/tvos/CwBackground;->withAlpha(II)I

    move-result v10

    filled-new-array {v7, v9, v10}, [I

    move-result-object v23

    new-array v7, v0, [F

    fill-array-data v7, :array_0

    sget-object v25, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v19, 0x0

    move-object/from16 v18, v6

    move/from16 v21, v26

    move-object/from16 v24, v7

    invoke-direct/range {v18 .. v25}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v9, v3

    move/from16 v12, v26

    move/from16 v13, v27

    move-object v14, v2

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    move-object/from16 v17, v4

    goto/16 :goto_6

    :pswitch_0
    const/4 v15, 0x0

    invoke-virtual {v3, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v1, Landroid/graphics/RadialGradient;

    int-to-float v14, v6

    mul-float v8, v14, v13

    int-to-float v13, v5

    mul-float v9, v13, v10

    int-to-double v10, v6

    int-to-double v5, v5

    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v5, v5, v12

    invoke-static {v7, v15}, Lcom/sid/tvos/CwBackground;->withAlpha(II)I

    move-result v6

    const/16 v10, 0x60

    invoke-static {v7, v10}, Lcom/sid/tvos/CwBackground;->withAlpha(II)I

    move-result v10

    filled-new-array {v6, v10, v7}, [I

    move-result-object v10

    new-array v11, v0, [F

    fill-array-data v11, :array_1

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v1

    move v7, v8

    move v8, v9

    move v9, v5

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v3

    move v8, v14

    move v9, v13

    move-object v10, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :pswitch_1
    const/high16 v1, 0x3e800000    # 0.25f

    const v17, 0x3e99999a    # 0.3f

    invoke-static {v8, v7, v13}, Lcom/sid/tvos/CwBackground;->mix(IIF)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    int-to-float v14, v6

    const v0, 0x3dcccccd    # 0.1f

    mul-float v6, v14, v0

    int-to-float v13, v5

    const v18, 0x3e19999a    # 0.15f

    mul-float v5, v13, v18

    mul-float v19, v14, v12

    const/16 v9, 0xff

    move-object v0, v3

    const/high16 v10, 0x3e800000    # 0.25f

    const v12, 0x3e99999a    # 0.3f

    move-object v1, v2

    move-object/from16 p0, v2

    move v2, v6

    move-object v6, v3

    move v3, v5

    move-object/from16 v17, v4

    move/from16 v4, v19

    move/from16 v5, p1

    move-object/from16 v20, v6

    move v6, v9

    invoke-static/range {v0 .. v6}, Lcom/sid/tvos/CwBackground;->blob(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFII)V

    const v0, 0x3f666666    # 0.9f

    mul-float v2, v14, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, v13

    mul-float v3, v14, v11

    const/4 v4, -0x1

    invoke-static {v8, v4, v10}, Lcom/sid/tvos/CwBackground;->mix(IIF)I

    move-result v4

    const/16 v5, 0xb0

    move-object/from16 v8, v20

    move-object/from16 v9, p0

    move v10, v2

    move v11, v1

    const v1, 0x3e99999a    # 0.3f

    move v12, v3

    move v6, v13

    move v13, v4

    move v4, v14

    move v14, v5

    invoke-static/range {v8 .. v14}, Lcom/sid/tvos/CwBackground;->blob(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFII)V

    mul-float v10, v4, v18

    const v4, 0x3f733333    # 0.95f

    mul-float v11, v6, v4

    invoke-static {v7, v15, v1}, Lcom/sid/tvos/CwBackground;->mix(IIF)I

    move-result v13

    const/16 v14, 0xc0

    invoke-static/range {v8 .. v14}, Lcom/sid/tvos/CwBackground;->blob(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFII)V

    mul-float v3, v6, v0

    const/16 v6, 0xff

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v4, v19

    :goto_2
    move/from16 v5, p2

    :goto_3
    invoke-static/range {v0 .. v6}, Lcom/sid/tvos/CwBackground;->blob(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFII)V

    goto/16 :goto_6

    :pswitch_2
    move-object/from16 p0, v2

    move-object/from16 v20, v3

    move-object/from16 v17, v4

    invoke-static {v8, v7, v13}, Lcom/sid/tvos/CwBackground;->mix(IIF)I

    move-result v0

    const v1, 0x3f333333    # 0.7f

    invoke-static {v0, v15, v1}, Lcom/sid/tvos/CwBackground;->mix(IIF)I

    move-result v0

    move-object/from16 v14, v20

    invoke-virtual {v14, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    int-to-float v9, v6

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float v10, v9, v0

    const/16 v6, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move v4, v10

    move v12, v5

    move/from16 v5, p1

    invoke-static/range {v0 .. v6}, Lcom/sid/tvos/CwBackground;->blob(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFII)V

    int-to-float v3, v12

    move v2, v9

    goto :goto_2

    :pswitch_3
    move-object/from16 p0, v2

    move-object v14, v3

    move-object/from16 v17, v4

    move v12, v5

    new-instance v1, Landroid/graphics/RadialGradient;

    int-to-float v2, v6

    mul-float v19, v2, v13

    int-to-float v9, v12

    mul-float v20, v9, v13

    int-to-double v3, v6

    int-to-double v5, v12

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v21, v3, v11

    invoke-static {v8, v7, v13}, Lcom/sid/tvos/CwBackground;->mix(IIF)I

    move-result v3

    filled-new-array {v8, v3, v7}, [I

    move-result-object v22

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sget-object v24, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v18, v1

    move-object/from16 v23, v0

    invoke-direct/range {v18 .. v24}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v4, p0

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v14

    move v8, v2

    :goto_4
    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :pswitch_4
    move-object v14, v3

    move-object/from16 v17, v4

    move-object v4, v2

    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v1, v5

    invoke-static {v7, v8, v9}, Lcom/sid/tvos/CwBackground;->mix(IIF)I

    move-result v2

    invoke-static {v8, v15, v12}, Lcom/sid/tvos/CwBackground;->mix(IIF)I

    move-result v3

    filled-new-array {v7, v2, v8, v3}, [I

    move-result-object v23

    const/4 v2, 0x4

    new-array v2, v2, [F

    fill-array-data v2, :array_3

    sget-object v25, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v0

    move/from16 v22, v1

    move-object/from16 v24, v2

    invoke-direct/range {v18 .. v25}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v7, 0x0

    int-to-float v8, v6

    const/4 v6, 0x0

    move-object v5, v14

    move v9, v1

    goto :goto_4

    :pswitch_5
    move-object v14, v3

    move-object/from16 v17, v4

    const/high16 v10, 0x3e800000    # 0.25f

    move-object v4, v2

    invoke-static {v7, v15, v11}, Lcom/sid/tvos/CwBackground;->mix(IIF)I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    int-to-float v15, v6

    const v0, 0x3e6147ae    # 0.22f

    mul-float v2, v15, v0

    int-to-float v6, v5

    mul-float v3, v6, v10

    mul-float v10, v15, v11

    const/16 v11, 0xd0

    move-object v0, v14

    move-object v1, v4

    move-object/from16 v18, v4

    move v4, v10

    move/from16 v5, p1

    move/from16 v19, v6

    move v6, v11

    invoke-static/range {v0 .. v6}, Lcom/sid/tvos/CwBackground;->blob(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFII)V

    const v0, 0x3f51eb85    # 0.82f

    mul-float v2, v15, v0

    mul-float v3, v19, v9

    mul-float v4, v15, v13

    const/16 v6, 0xd0

    move-object v0, v14

    move-object/from16 v1, v18

    move/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lcom/sid/tvos/CwBackground;->blob(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFII)V

    const v0, 0x3f733333    # 0.95f

    mul-float v0, v0, v19

    mul-float v9, v15, v12

    invoke-static {v8, v7, v13}, Lcom/sid/tvos/CwBackground;->mix(IIF)I

    move-result v1

    move-object v5, v14

    move-object/from16 v6, v18

    move v7, v10

    move v8, v0

    move v10, v1

    invoke-static/range {v5 .. v11}, Lcom/sid/tvos/CwBackground;->blob(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFII)V

    goto :goto_6

    :pswitch_6
    move-object/from16 v18, v2

    move-object v14, v3

    move-object/from16 v17, v4

    invoke-virtual {v14, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    int-to-float v0, v6

    mul-float v2, v0, v13

    int-to-float v1, v5

    const v3, 0x3e8f5c29    # 0.28f

    mul-float v3, v3, v1

    const v1, 0x3f1eb852    # 0.62f

    mul-float v4, v0, v1

    const/16 v6, 0xff

    move-object v0, v14

    move-object/from16 v1, v18

    move/from16 v5, p1

    goto/16 :goto_3

    :pswitch_7
    move-object/from16 v18, v2

    move-object v14, v3

    move-object/from16 v17, v4

    int-to-float v4, v6

    int-to-float v9, v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v14

    move-object/from16 v1, v18

    move v10, v5

    move v5, v9

    :goto_5
    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p1

    move/from16 v9, p2

    invoke-static/range {v0 .. v9}, Lcom/sid/tvos/CwBackground;->linear(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFIIII)V

    goto :goto_6

    :pswitch_8
    move-object/from16 v18, v2

    move-object v14, v3

    move-object/from16 v17, v4

    move v10, v5

    const/4 v4, 0x0

    int-to-float v5, v10

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v14

    move-object/from16 v1, v18

    goto :goto_5

    :pswitch_9
    move-object v14, v3

    move-object/from16 v17, v4

    invoke-virtual {v14, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_6
    return-object v17

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3e800000    # 0.25f
        0x3f266666    # 0.65f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3ee66666    # 0.45f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f3851ec    # 0.72f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static declared-synchronized get(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 9

    const-class v0, Lcom/sid/tvos/CwBackground;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/sid/tvos/CwBackground;->mode(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v1, v3, :cond_6

    if-lez p1, :cond_6

    if-gtz p2, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sid/tvos/CwBackground;->style(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-static {p0, v5}, Lcom/sid/tvos/CwBackground;->colour(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v3}, Lcom/sid/tvos/CwBackground;->colour(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x4

    if-ne v1, v6, :cond_1

    invoke-static {p0}, Lcom/sid/tvos/CwBackground;->pictureFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    const-wide/16 v7, 0x0

    :goto_0
    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/sid/tvos/CwBackground;->cachedKey:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcom/sid/tvos/CwBackground;->cached:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_2

    sget-object p0, Lcom/sid/tvos/CwBackground;->cached:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_2
    if-ne v1, v6, :cond_3

    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/sid/tvos/CwBackground;->picture(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_5

    if-ne v1, v3, :cond_4

    const/4 v1, -0x1

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lcom/sid/tvos/CwBackground;->style(Landroid/content/Context;)I

    move-result v1

    :goto_1
    invoke-static {p0, v5}, Lcom/sid/tvos/CwBackground;->colour(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p0, v3}, Lcom/sid/tvos/CwBackground;->colour(Landroid/content/Context;I)I

    move-result p0

    invoke-static {v1, v2, p0, p1, p2}, Lcom/sid/tvos/CwBackground;->draw(IIIII)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_5
    invoke-static {v2}, Lcom/sid/tvos/Gpu;->upload(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    sput-object p0, Lcom/sid/tvos/CwBackground;->cached:Landroid/graphics/Bitmap;

    sput-object v4, Lcom/sid/tvos/CwBackground;->cachedKey:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_6
    :goto_2
    monitor-exit v0

    return-object v2

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static declared-synchronized invalidate()V
    .locals 2

    const-class v0, Lcom/sid/tvos/CwBackground;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/sid/tvos/CwBackground;->cached:Landroid/graphics/Bitmap;

    sput-object v1, Lcom/sid/tvos/CwBackground;->cachedKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static keep(Landroid/content/Context;Lcom/sid/tvos/CwBackground$Opener;)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-interface {p1}, Lcom/sid/tvos/CwBackground$Opener;->open()Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/4 v4, 0x0

    :try_start_1
    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_0
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gtz v3, :cond_1

    return v0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/lit8 v6, v3, 0x2

    div-int/2addr v5, v6

    const/16 v7, 0x780

    if-lt v5, v7, :cond_2

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v5, v6

    const/16 v7, 0x438

    if-lt v5, v7, :cond_2

    move v3, v6

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-interface {p1}, Lcom/sid/tvos/CwBackground$Opener;->open()Ljava/io/InputStream;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :try_start_3
    invoke-static {p1, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p1, :cond_3

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_3
    if-nez v1, :cond_4

    return v0

    :cond_4
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-static {p0}, Lcom/sid/tvos/CwBackground;->pictureFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    :try_start_5
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5c

    invoke-virtual {v1, v3, v4, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const-string p1, "cw_bg"

    const/4 v1, 0x4

    invoke-static {p0, p1, v1}, Lcom/sid/tvos/CwBackground;->set(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lcom/sid/tvos/CwBackground;->invalidate()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    return v2

    :catchall_0
    move-exception p0

    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_2
    move-exception p0

    if-eqz p1, :cond_5

    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    :try_start_a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_4
    move-exception p0

    if-eqz v3, :cond_6

    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p1

    :try_start_c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    return v0
.end method

.method private static synthetic lambda$setPicture$0(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setPicture$1(Ljava/io/File;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method private static linear(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFIIII)V
    .locals 10

    move-object v0, p1

    move/from16 v1, p8

    move/from16 v2, p9

    new-instance v9, Landroid/graphics/LinearGradient;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v1, v2, v3}, Lcom/sid/tvos/CwBackground;->mix(IIF)I

    move-result v3

    filled-new-array {v1, v3, v2}, [I

    move-result-object v6

    const/4 v1, 0x3

    new-array v7, v1, [F

    fill-array-data v7, :array_0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v9

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move/from16 v1, p6

    int-to-float v1, v1

    move/from16 v2, p7

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object p2, p0

    move p3, v3

    move p4, v4

    move p5, v1

    move/from16 p6, v2

    move-object/from16 p7, p1

    invoke-virtual/range {p2 .. p7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3ef5c28f    # 0.48f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static mix(IIF)I
    .locals 4

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, p2

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float p0, p0, p2

    add-float/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {v0, v1, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method public static mode(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Lcom/sid/tvos/CwBackground;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "cw_bg"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_0
    const-string v0, "cw_art"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2
.end method

.method private static picture(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 9

    invoke-static {p0}, Lcom/sid/tvos/CwBackground;->pictureFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p1, v2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v2

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/RectF;

    sub-float v6, p1, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float v8, p2, v4

    div-float/2addr v8, v7

    add-float/2addr p1, v3

    div-float/2addr p1, v7

    add-float/2addr p2, v4

    div-float/2addr p2, v7

    invoke-direct {v5, v6, v8, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v2, p0, v0, v5, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v1
.end method

.method private static pictureFile(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "cw_background.jpg"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "appearance"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static preset(Landroid/content/Context;)I
    .locals 8

    invoke-static {p0}, Lcom/sid/tvos/CwBackground;->style(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/sid/tvos/CwBackground;->colour(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {p0, v3}, Lcom/sid/tvos/CwBackground;->colour(Landroid/content/Context;I)I

    move-result p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    sget-object v6, Lcom/sid/tvos/CwBackground;->PRESETS:[[I

    array-length v7, v6

    if-ge v5, v7, :cond_1

    aget-object v6, v6, v5

    aget v7, v6, v4

    if-ne v7, v0, :cond_0

    aget v7, v6, v1

    if-ne v7, v2, :cond_0

    aget v6, v6, v3

    if-ne v6, p0, :cond_0

    return v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static set(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0}, Lcom/sid/tvos/CwBackground;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setCustom(Landroid/content/Context;II)V
    .locals 3

    invoke-static {p0}, Lcom/sid/tvos/CwBackground;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v1, "cw_bg_c1"

    goto :goto_0

    :cond_0
    const-string v1, "cw_bg_c2"

    :goto_0
    sget v2, Lcom/sid/tvos/CwBackground;->CUSTOM:I

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-ne p1, v0, :cond_1

    const-string p1, "cw_bg_c1_rgb"

    goto :goto_1

    :cond_1
    const-string p1, "cw_bg_c2_rgb"

    :goto_1
    const/high16 v0, -0x1000000

    or-int/2addr p2, v0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setPicture(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2

    .line 1
    new-instance v0, Lcom/sid/tvos/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sid/tvos/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p0, v0}, Lcom/sid/tvos/CwBackground;->keep(Landroid/content/Context;Lcom/sid/tvos/CwBackground$Opener;)Z

    move-result p0

    return p0
.end method

.method public static setPicture(Landroid/content/Context;Ljava/io/File;)Z
    .locals 2

    .line 2
    new-instance v0, Lcom/sid/tvos/f;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/sid/tvos/f;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v0}, Lcom/sid/tvos/CwBackground;->keep(Landroid/content/Context;Lcom/sid/tvos/CwBackground$Opener;)Z

    move-result p0

    return p0
.end method

.method public static setPreset(Landroid/content/Context;I)V
    .locals 2

    sget-object v0, Lcom/sid/tvos/CwBackground;->PRESETS:[[I

    aget-object p1, v0, p1

    const/4 v0, 0x0

    aget v0, p1, v0

    const-string v1, "cw_bg_style"

    invoke-static {p0, v1, v0}, Lcom/sid/tvos/CwBackground;->set(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v0, 0x1

    aget v1, p1, v0

    invoke-static {p0, v0, v1}, Lcom/sid/tvos/CwBackground;->setCustom(Landroid/content/Context;II)V

    const/4 v0, 0x2

    aget p1, p1, v0

    invoke-static {p0, v0, p1}, Lcom/sid/tvos/CwBackground;->setCustom(Landroid/content/Context;II)V

    return-void
.end method

.method public static style(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lcom/sid/tvos/CwBackground;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "cw_bg_style"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static withAlpha(II)I
    .locals 1

    const/16 v0, 0xff

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    const v0, 0xffffff

    and-int/2addr p0, v0

    or-int/2addr p0, p1

    return p0
.end method
