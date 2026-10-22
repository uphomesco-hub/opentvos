.class abstract Lcom/sid/tvos/IconPack;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CACHE:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static H:I

.field private static final PACK_ACTIONS:[Ljava/lang/String;

.field private static W:I

.field private static filter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static filterPack:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v4, "com.fede.launcher.THEME_ICONPACK"

    const-string v5, "com.anddoes.launcher.THEME"

    const-string v0, "org.adw.launcher.THEMES"

    const-string v1, "com.novalauncher.THEME"

    const-string v2, "com.teslacoilsw.launcher.THEME"

    const-string v3, "com.gau.go.launcherex.theme"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sid/tvos/IconPack;->PACK_ACTIONS:[Ljava/lang/String;

    const/16 v0, 0x190

    sput v0, Lcom/sid/tvos/IconPack;->W:I

    const/16 v0, 0xf0

    sput v0, Lcom/sid/tvos/IconPack;->H:I

    new-instance v0, Lcom/sid/tvos/IconPack$1;

    const/high16 v1, 0xc00000

    invoke-direct {v0, v1}, Lcom/sid/tvos/IconPack$1;-><init>(I)V

    sput-object v0, Lcom/sid/tvos/IconPack;->CACHE:Landroid/util/LruCache;

    return-void
.end method

.method private static appIcon(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;)Landroid/graphics/drawable/Drawable;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Entry;->component:Landroid/content/ComponentName;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ComponentInfo;->getIconResource()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p0

    const/16 v0, 0x280

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return-object p0

    :catch_0
    :cond_0
    iget-object p0, p1, Lcom/sid/tvos/AppAdapter$Entry;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private static brandOverride(Ljava/lang/String;)I
    .locals 2

    const-string v0, "com.android.vending"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p0, :cond_1

    const-string v0, "com.google.android.youtube"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "com.internet.tvbrowser"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static clearCache()V
    .locals 1

    sget-object v0, Lcom/sid/tvos/IconPack;->CACHE:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public static current(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "iconpack"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "pack"

    const-string v1, "original"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dominantColor(Landroid/graphics/drawable/Drawable;)I
    .locals 16

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    :goto_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x30

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/16 v0, 0xc

    new-array v4, v0, [F

    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v7, 0x1

    const/4 v8, 0x3

    aput v8, v6, v7

    aput v0, v6, v3

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[F

    new-array v8, v8, [F

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v2, :cond_5

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v2, :cond_4

    invoke-virtual {v1, v10, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v11

    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    const/16 v13, 0xa0

    if-ge v12, v13, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {v11, v8}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v12, v8, v7

    const v13, 0x3eb33333    # 0.35f

    cmpg-float v13, v12, v13

    if-ltz v13, :cond_3

    aget v13, v8, v5

    const v14, 0x3e99999a    # 0.3f

    cmpg-float v14, v13, v14

    if-gez v14, :cond_2

    goto :goto_3

    :cond_2
    aget v14, v8, v3

    const/high16 v15, 0x41f00000    # 30.0f

    div-float/2addr v14, v15

    float-to-int v14, v14

    rem-int/2addr v14, v0

    mul-float v12, v12, v13

    aget v13, v4, v14

    add-float/2addr v13, v12

    aput v13, v4, v14

    aget-object v13, v6, v14

    aget v15, v13, v3

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v12

    add-float/2addr v2, v15

    aput v2, v13, v3

    aget-object v2, v6, v14

    aget v13, v2, v7

    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v15

    int-to-float v15, v15

    mul-float v15, v15, v12

    add-float/2addr v15, v13

    aput v15, v2, v7

    aget-object v2, v6, v14

    aget v13, v2, v5

    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v12

    add-float/2addr v11, v13

    aput v11, v2, v5

    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    const/16 v2, 0x30

    goto :goto_2

    :cond_4
    add-int/lit8 v9, v9, 0x1

    const/16 v2, 0x30

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_8

    aget v8, v4, v2

    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-lez v9, :cond_7

    if-ltz v1, :cond_6

    aget v9, v4, v1

    cmpl-float v8, v8, v9

    if-lez v8, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    if-ltz v1, :cond_a

    aget v0, v4, v1

    const/high16 v2, 0x41000000    # 8.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_9

    goto :goto_5

    :cond_9
    aget-object v1, v6, v1

    aget v2, v1, v3

    div-float/2addr v2, v0

    float-to-int v2, v2

    aget v3, v1, v7

    div-float/2addr v3, v0

    float-to-int v3, v3

    aget v1, v1, v5

    div-float/2addr v1, v0

    float-to-int v0, v1

    invoke-static {v2, v3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0

    :cond_a
    :goto_5
    return v3
.end method

.method private static drawFitted(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IZ)V
    .locals 20

    move/from16 v0, p2

    sget v1, Lcom/sid/tvos/IconPack;->H:I

    mul-int/lit8 v1, v1, 0x2

    const/16 v2, 0x400

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x180

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    const/4 v11, 0x0

    if-lez v4, :cond_3

    if-lez v5, :cond_3

    if-eq v4, v5, :cond_3

    if-le v4, v5, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    mul-int v6, v1, v4

    int-to-float v6, v6

    int-to-float v7, v5

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    :goto_1
    if-le v5, v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    mul-int v5, v5, v1

    int-to-float v5, v5

    int-to-float v4, v4

    div-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    :goto_2
    sub-int v5, v1, v6

    div-int/lit8 v5, v5, 0x2

    sub-int v7, v1, v4

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v1

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v5, v7, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_3

    :cond_3
    invoke-virtual {v3, v11, v11, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_3
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    mul-int v12, v1, v1

    new-array v13, v12, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v3, v2

    move-object v4, v13

    move v6, v1

    move v9, v1

    move v10, v1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/16 v14, 0xc8

    if-nez v0, :cond_7

    invoke-static {v13}, Lcom/sid/tvos/IconPack;->isColourful([I)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v12, :cond_6

    aget v4, v13, v3

    ushr-int/lit8 v5, v4, 0x18

    if-eqz v5, :cond_5

    if-ge v5, v14, :cond_5

    invoke-static {v4}, Lcom/sid/tvos/IconPack;->neutral(I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v4}, Lcom/sid/tvos/IconPack;->lum(I)I

    move-result v4

    const/16 v5, 0x6e

    if-lt v4, v5, :cond_4

    goto :goto_5

    :cond_4
    aput v11, v13, v3

    :cond_5
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v3, v2

    move-object v4, v13

    move v6, v1

    move v9, v1

    move v10, v1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_7
    const/4 v3, -0x1

    move v8, v1

    move v9, v8

    const/4 v3, 0x0

    const/4 v10, -0x1

    const/4 v15, -0x1

    :goto_6
    const/16 v5, 0x28

    if-ge v3, v1, :cond_10

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v1, :cond_f

    mul-int v7, v3, v1

    add-int/2addr v7, v6

    aget v7, v13, v7

    ushr-int/lit8 v11, v7, 0x18

    if-ge v11, v5, :cond_8

    goto :goto_8

    :cond_8
    if-eqz v0, :cond_9

    shr-int/lit8 v11, v7, 0x10

    and-int/lit16 v11, v11, 0xff

    shr-int/lit8 v5, v0, 0x10

    and-int/lit16 v5, v5, 0xff

    sub-int/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v5

    shr-int/lit8 v11, v7, 0x8

    and-int/lit16 v11, v11, 0xff

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    sub-int/2addr v11, v4

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v4, v5

    and-int/lit16 v5, v7, 0xff

    and-int/lit16 v11, v0, 0xff

    sub-int/2addr v5, v11

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v5, v4

    const/16 v4, 0x30

    if-ge v5, v4, :cond_9

    goto :goto_8

    :cond_9
    if-eqz v0, :cond_a

    invoke-static/range {p2 .. p2}, Lcom/sid/tvos/IconPack;->lum(I)I

    move-result v4

    if-le v4, v14, :cond_a

    invoke-static {v7}, Lcom/sid/tvos/IconPack;->neutral(I)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v7}, Lcom/sid/tvos/IconPack;->lum(I)I

    move-result v4

    const/16 v5, 0x78

    if-le v4, v5, :cond_a

    goto :goto_8

    :cond_a
    if-ge v6, v9, :cond_b

    move v9, v6

    :cond_b
    if-le v6, v15, :cond_c

    move v15, v6

    :cond_c
    if-ge v3, v8, :cond_d

    move v8, v3

    :cond_d
    if-le v3, v10, :cond_e

    move v10, v3

    :cond_e
    :goto_8
    add-int/lit8 v6, v6, 0x1

    const/16 v5, 0x28

    const/4 v11, 0x0

    goto :goto_7

    :cond_f
    add-int/lit8 v3, v3, 0x1

    const/4 v11, 0x0

    goto :goto_6

    :cond_10
    const/4 v11, 0x1

    if-eqz v0, :cond_1f

    invoke-static/range {p2 .. p2}, Lcom/sid/tvos/IconPack;->lum(I)I

    move-result v3

    if-le v3, v14, :cond_11

    const/4 v3, 0x1

    goto :goto_9

    :cond_11
    const/4 v3, 0x0

    :goto_9
    new-array v4, v12, [Z

    new-array v5, v12, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_a
    if-ge v6, v1, :cond_14

    add-int/lit8 v12, v1, -0x1

    mul-int v12, v12, v1

    add-int/2addr v12, v6

    mul-int v14, v6, v1

    add-int v16, v14, v1

    move/from16 v17, v7

    add-int/lit8 v7, v16, -0x1

    filled-new-array {v6, v12, v14, v7}, [I

    move-result-object v7

    const/4 v12, 0x0

    :goto_b
    const/4 v14, 0x4

    if-ge v12, v14, :cond_13

    aget v14, v7, v12

    aget-boolean v16, v4, v14

    if-nez v16, :cond_12

    aput-boolean v11, v4, v14

    add-int/lit8 v16, v17, 0x1

    aput v14, v5, v17

    move/from16 v17, v16

    :cond_12
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :cond_13
    add-int/lit8 v6, v6, 0x1

    move/from16 v7, v17

    goto :goto_a

    :cond_14
    move/from16 v17, v7

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v7, :cond_1e

    add-int/lit8 v12, v6, 0x1

    aget v6, v5, v6

    aget v14, v13, v6

    shr-int/lit8 v11, v14, 0x10

    and-int/lit16 v11, v11, 0xff

    move/from16 v17, v8

    shr-int/lit8 v8, v0, 0x10

    and-int/lit16 v8, v8, 0xff

    sub-int/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v8

    shr-int/lit8 v11, v14, 0x8

    and-int/lit16 v11, v11, 0xff

    move/from16 v18, v9

    shr-int/lit8 v9, v0, 0x8

    and-int/lit16 v9, v9, 0xff

    sub-int/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v9, v8

    and-int/lit16 v8, v14, 0xff

    and-int/lit16 v11, v0, 0xff

    sub-int/2addr v8, v11

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v8, v9

    if-eqz v3, :cond_15

    ushr-int/lit8 v9, v14, 0x18

    const/16 v11, 0x28

    if-lt v9, v11, :cond_15

    invoke-static {v14}, Lcom/sid/tvos/IconPack;->neutral(I)Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-static {v14}, Lcom/sid/tvos/IconPack;->lum(I)I

    move-result v9

    const/16 v11, 0x78

    if-le v9, v11, :cond_16

    const/4 v8, 0x0

    goto :goto_d

    :cond_15
    const/16 v11, 0x78

    :cond_16
    :goto_d
    ushr-int/lit8 v9, v14, 0x18

    const/16 v11, 0x28

    if-lt v9, v11, :cond_17

    const/16 v11, 0x48

    if-lt v8, v11, :cond_17

    const/16 v0, 0x28

    goto :goto_f

    :cond_17
    const/16 v11, 0x28

    if-ge v9, v11, :cond_18

    const/4 v11, 0x0

    goto :goto_e

    :cond_18
    add-int/lit8 v11, v8, -0x12

    int-to-float v11, v11

    const/high16 v19, 0x42580000    # 54.0f

    div-float v11, v11, v19

    const/4 v0, 0x0

    invoke-static {v0, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    :goto_e
    int-to-float v0, v9

    mul-float v0, v0, v11

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    const v11, 0xffffff

    and-int/2addr v11, v14

    or-int/2addr v0, v11

    aput v0, v13, v6

    const/16 v0, 0x28

    if-lt v8, v0, :cond_1a

    if-lt v9, v0, :cond_1a

    :cond_19
    :goto_f
    move/from16 v0, p2

    move v6, v12

    move/from16 v8, v17

    move/from16 v9, v18

    const/4 v11, 0x1

    goto/16 :goto_c

    :cond_1a
    rem-int v8, v6, v1

    div-int v9, v6, v1

    if-lez v8, :cond_1b

    add-int/lit8 v11, v6, -0x1

    aget-boolean v14, v4, v11

    if-nez v14, :cond_1b

    const/4 v14, 0x1

    aput-boolean v14, v4, v11

    add-int/lit8 v14, v7, 0x1

    aput v11, v5, v7

    move v7, v14

    :cond_1b
    add-int/lit8 v11, v1, -0x1

    if-ge v8, v11, :cond_1c

    add-int/lit8 v8, v6, 0x1

    aget-boolean v14, v4, v8

    if-nez v14, :cond_1c

    const/4 v14, 0x1

    aput-boolean v14, v4, v8

    add-int/lit8 v14, v7, 0x1

    aput v8, v5, v7

    move v7, v14

    :cond_1c
    if-lez v9, :cond_1d

    sub-int v8, v6, v1

    aget-boolean v14, v4, v8

    if-nez v14, :cond_1d

    const/4 v14, 0x1

    aput-boolean v14, v4, v8

    add-int/lit8 v14, v7, 0x1

    aput v8, v5, v7

    move v7, v14

    :cond_1d
    if-ge v9, v11, :cond_19

    add-int/2addr v6, v1

    aget-boolean v8, v4, v6

    if-nez v8, :cond_19

    const/4 v8, 0x1

    aput-boolean v8, v4, v6

    add-int/lit8 v8, v7, 0x1

    aput v6, v5, v7

    move v7, v8

    goto :goto_f

    :cond_1e
    move/from16 v17, v8

    move/from16 v18, v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v3, v2

    move-object v4, v13

    move v6, v1

    move/from16 v0, v17

    move/from16 v11, v18

    move v9, v1

    move v12, v10

    move v10, v1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_10

    :cond_1f
    move v0, v8

    move v11, v9

    move v12, v10

    :goto_10
    if-lt v15, v11, :cond_20

    if-ge v12, v0, :cond_21

    :cond_20
    const/4 v0, 0x1

    goto :goto_11

    :cond_21
    move v1, v0

    move v10, v12

    const/4 v0, 0x1

    goto :goto_12

    :goto_11
    add-int/lit8 v15, v1, -0x1

    move v10, v15

    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_12
    sub-int v3, v15, v11

    add-int/2addr v3, v0

    int-to-float v3, v3

    sub-int v4, v10, v1

    add-int/2addr v4, v0

    int-to-float v0, v4

    sget v4, Lcom/sid/tvos/IconPack;->W:I

    int-to-float v4, v4

    const v5, 0x3f19999a    # 0.6f

    mul-float v4, v4, v5

    div-float/2addr v4, v3

    sget v5, Lcom/sid/tvos/IconPack;->H:I

    int-to-float v5, v5

    const v6, 0x3f147ae1    # 0.58f

    mul-float v5, v5, v6

    div-float/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float v3, v3, v4

    mul-float v0, v0, v4

    new-instance v4, Landroid/graphics/RectF;

    sget v5, Lcom/sid/tvos/IconPack;->W:I

    int-to-float v6, v5

    sub-float/2addr v6, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sget v8, Lcom/sid/tvos/IconPack;->H:I

    int-to-float v9, v8

    sub-float/2addr v9, v0

    div-float/2addr v9, v7

    int-to-float v5, v5

    add-float/2addr v5, v3

    div-float/2addr v5, v7

    int-to-float v3, v8

    add-float/2addr v3, v0

    div-float/2addr v3, v7

    invoke-direct {v4, v6, v9, v5, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v0, Landroid/graphics/Rect;

    const/4 v3, 0x1

    add-int/2addr v15, v3

    add-int/2addr v10, v3

    invoke-direct {v0, v11, v1, v15, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v3, p0

    invoke-virtual {v3, v2, v0, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method private static fillBrand(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const p2, 0x3eb33333    # 0.35f

    const/4 v1, 0x2

    aget v2, v0, v1

    invoke-static {p2, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    aput p2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/sid/tvos/IconPack;->verticalFill(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    return-void
.end method

.method private static fromPack(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    sget-object v1, Lcom/sid/tvos/IconPack;->filter:Ljava/util/Map;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sid/tvos/IconPack;->filterPack:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {p0, p1}, Lcom/sid/tvos/IconPack;->parseFilter(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/sid/tvos/IconPack;->filter:Ljava/util/Map;

    sput-object p1, Lcom/sid/tvos/IconPack;->filterPack:Ljava/lang/String;

    :cond_1
    sget-object v1, Lcom/sid/tvos/IconPack;->filter:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    sget-object v1, Lcom/sid/tvos/IconPack;->filter:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    :cond_2
    if-nez v1, :cond_3

    return-object v0

    :cond_3
    const-string p2, "drawable"

    invoke-virtual {p0, v1, p2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 p2, 0x280

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object v0
.end method

.method private static glass(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 25

    move-object/from16 v6, p1

    new-instance v0, Landroid/graphics/LinearGradient;

    sget v1, Lcom/sid/tvos/IconPack;->H:I

    int-to-float v1, v1

    const v15, 0x3f0ccccd    # 0.55f

    mul-float v11, v1, v15

    sget-object v24, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v12, 0x38ffffff

    const v13, 0xffffff

    move-object v7, v0

    move-object/from16 v14, v24

    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sget v0, Lcom/sid/tvos/IconPack;->W:I

    int-to-float v3, v0

    sget v0, Lcom/sid/tvos/IconPack;->H:I

    int-to-float v0, v0

    mul-float v4, v0, v15

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/LinearGradient;

    sget v1, Lcom/sid/tvos/IconPack;->H:I

    int-to-float v2, v1

    mul-float v18, v2, v15

    int-to-float v1, v1

    const/16 v21, 0x0

    const/high16 v22, 0x14000000

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v0

    move/from16 v20, v1

    move-object/from16 v23, v24

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sget v0, Lcom/sid/tvos/IconPack;->H:I

    int-to-float v1, v0

    mul-float v2, v1, v15

    sget v1, Lcom/sid/tvos/IconPack;->W:I

    int-to-float v3, v1

    int-to-float v4, v0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/LinearGradient;

    sget v1, Lcom/sid/tvos/IconPack;->H:I

    int-to-float v1, v1

    const v2, 0x3d0f5c29    # 0.035f

    mul-float v20, v1, v2

    const v21, 0x40ffffff    # 7.9999995f

    const v22, 0xffffff

    const/16 v18, 0x0

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sget v0, Lcom/sid/tvos/IconPack;->W:I

    int-to-float v3, v0

    sget v0, Lcom/sid/tvos/IconPack;->H:I

    int-to-float v0, v0

    mul-float v4, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private static hasVerticalGradient(Landroid/graphics/drawable/Drawable;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x30

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 p0, 0x2

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    const/16 v4, 0x2e

    invoke-virtual {v0, p0, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/2addr p0, v4

    const/16 v0, 0x18

    if-le p0, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private static innerSquare(Landroid/graphics/drawable/Drawable;)I
    .locals 17

    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object/from16 v3, p0

    :goto_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v5, 0x40

    invoke-static {v5, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v1, v1, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v3, v5

    const v5, 0x3e23d70a    # 0.16f

    mul-float v3, v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    rsub-int/lit8 v5, v3, 0x3f

    filled-new-array {v3, v3}, [I

    move-result-object v6

    filled-new-array {v5, v3}, [I

    move-result-object v7

    filled-new-array {v3, v5}, [I

    move-result-object v8

    filled-new-array {v5, v5}, [I

    move-result-object v5

    add-int/lit8 v9, v3, 0x1

    const/16 v10, 0x20

    filled-new-array {v10, v9}, [I

    move-result-object v11

    filled-new-array {v9, v10}, [I

    move-result-object v9

    rsub-int/lit8 v3, v3, 0x3e

    filled-new-array {v3, v10}, [I

    move-result-object v3

    new-array v10, v0, [[I

    aput-object v6, v10, v1

    aput-object v7, v10, v2

    const/4 v6, 0x2

    aput-object v8, v10, v6

    const/4 v6, 0x3

    aput-object v5, v10, v6

    const/4 v5, 0x4

    aput-object v11, v10, v5

    const/4 v5, 0x5

    aput-object v9, v10, v5

    const/4 v5, 0x6

    aput-object v3, v10, v5

    invoke-virtual {v4, v2, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    const/16 v5, 0x28

    if-le v3, v5, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    return v1

    :cond_1
    aget-object v3, v10, v1

    aget v5, v3, v1

    aget v3, v3, v2

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    const-wide/16 v5, 0x0

    move-wide v7, v5

    move-wide v11, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v0, :cond_4

    aget-object v13, v10, v9

    aget v14, v13, v1

    aget v13, v13, v2

    invoke-virtual {v4, v14, v13}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v13

    invoke-static {v13}, Landroid/graphics/Color;->alpha(I)I

    move-result v14

    const/16 v15, 0xf0

    if-lt v14, v15, :cond_3

    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v14

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    const/16 v15, 0x12

    if-gt v14, v15, :cond_3

    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v14

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v16

    sub-int v14, v14, v16

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-gt v14, v15, :cond_3

    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v16

    sub-int v14, v14, v16

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-le v14, v15, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v5, v14

    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v7, v14

    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    int-to-long v13, v13

    add-long/2addr v11, v13

    add-int/2addr v9, v2

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    return v1

    :cond_4
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    int-to-long v0, v0

    div-long/2addr v5, v0

    long-to-int v2, v5

    div-long/2addr v7, v0

    long-to-int v3, v7

    div-long/2addr v11, v0

    long-to-int v0, v11

    invoke-static {v2, v3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static installed(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/sid/tvos/IconPack;->PACK_ACTIONS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x80

    invoke-virtual {p0, v6, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v6, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v7, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static isAdaptive(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lk/s;->k(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isColourful([I)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_2

    aget v4, p0, v1

    ushr-int/lit8 v5, v4, 0x18

    const/16 v6, 0xdc

    if-ge v5, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    invoke-static {v4}, Lcom/sid/tvos/IconPack;->neutral(I)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_2
    if-lez v2, :cond_3

    int-to-float p0, v3

    int-to-float v1, v2

    const v2, 0x3f19999a    # 0.6f

    mul-float v1, v1, v2

    cmpl-float p0, p0, v1

    if-lez p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private static isPicture(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    if-lez v0, :cond_0

    if-lez p0, :cond_0

    int-to-float v0, v0

    int-to-float p0, p0

    const v1, 0x3fa66666    # 1.3f

    mul-float p0, p0, v1

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSettings(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.android.tv.settings"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.settings"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.google.android.tv.settings"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static lum(I)I
    .locals 3

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const v1, 0x3e59b3d0    # 0.2126f

    mul-float v0, v0, v1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    const v2, 0x3f371759    # 0.7152f

    mul-float v1, v1, v2

    add-float/2addr v1, v0

    and-int/lit16 p0, p0, 0xff

    int-to-float p0, p0

    const v0, 0x3d93dd98    # 0.0722f

    mul-float p0, p0, v0

    add-float/2addr p0, v1

    float-to-int p0, p0

    return p0
.end method

.method private static neutral(I)Z
    .locals 3

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p0, p0, 0xff

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sub-int/2addr v2, p0

    const/16 p0, 0x18

    if-ge v2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static opaqueEdge(Landroid/graphics/drawable/Drawable;)I
    .locals 14

    const/16 v0, 0x18

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/16 v3, 0x2e

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v6, 0x30

    invoke-static {v6, v6, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v2, v2, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-array p0, v1, [[I

    filled-new-array {v4, v4}, [I

    move-result-object v6

    aput-object v6, p0, v2

    filled-new-array {v3, v4}, [I

    move-result-object v6

    aput-object v6, p0, v4

    filled-new-array {v4, v3}, [I

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, p0, v7

    filled-new-array {v3, v3}, [I

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, p0, v6

    filled-new-array {v0, v4}, [I

    move-result-object v3

    const/4 v6, 0x4

    aput-object v3, p0, v6

    filled-new-array {v4, v0}, [I

    move-result-object v0

    const/4 v3, 0x5

    aput-object v0, p0, v3

    const-wide/16 v6, 0x0

    move-wide v8, v6

    move-wide v10, v8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v3, p0, v0

    aget v12, v3, v2

    aget v3, v3, v4

    invoke-virtual {v5, v12, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    const/16 v13, 0xe6

    if-ge v12, v13, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    return v2

    :cond_1
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v6, v12

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v8, v12

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-long v12, v3

    add-long/2addr v10, v12

    add-int/2addr v0, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    int-to-long v0, v1

    div-long/2addr v6, v0

    long-to-int p0, v6

    div-long/2addr v8, v0

    long-to-int v2, v8

    div-long/2addr v10, v0

    long-to-int v0, v10

    invoke-static {p0, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method private static parseFilter(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appfilter"

    const-string v2, "xml"

    invoke-virtual {p0, v1, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    move-object p1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string p1, "appfilter.xml"

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    const-string v2, "UTF-8"

    invoke-interface {p1, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    :goto_0
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_1
    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    const-string v2, "item"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v2, "component"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "drawable"

    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_5

    if-eqz v4, :cond_5

    const-string v5, "ComponentInfo{"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    const/16 v3, 0xe

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_4
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_7
    return-object v0

    :goto_4
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_8
    throw p0
.end method

.method private static recolour(Landroid/graphics/Bitmap;I)V
    .locals 13

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v10, v8, v9

    new-array v11, v10, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v11

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v1, v10, :cond_4

    aget v6, v11, v1

    ushr-int/lit8 v7, v6, 0x18

    const/16 v12, 0xa0

    if-ge v7, v12, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    invoke-static {v6}, Lcom/sid/tvos/IconPack;->neutral(I)Z

    move-result v7

    if-nez v7, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v6}, Lcom/sid/tvos/IconPack;->lum(I)I

    move-result v7

    const/16 v12, 0x50

    if-ge v7, v12, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v6}, Lcom/sid/tvos/IconPack;->lum(I)I

    move-result v6

    const/16 v7, 0xaa

    if-le v6, v7, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_c

    int-to-float v1, v3

    int-to-float v3, v2

    const v6, 0x3ecccccd    # 0.4f

    mul-float v6, v6, v3

    cmpl-float v1, v1, v6

    if-lez v1, :cond_5

    goto/16 :goto_5

    :cond_5
    int-to-float v1, v4

    const v6, 0x3e19999a    # 0.15f

    mul-float v6, v6, v3

    cmpl-float v1, v1, v6

    if-lez v1, :cond_6

    int-to-float v1, v5

    const v5, 0x3da3d70a    # 0.08f

    mul-float v3, v3, v5

    cmpl-float v1, v1, v3

    if-lez v1, :cond_6

    return-void

    :cond_6
    const/4 v1, 0x3

    new-array v1, v1, [F

    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x1

    aget v3, v1, p1

    const/high16 v5, 0x3e800000    # 0.25f

    const/4 v6, 0x2

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_7

    aget v3, v1, v6

    const v5, 0x3e4ccccd    # 0.2f

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_7

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    :goto_2
    div-int/2addr v2, v6

    if-le v4, v2, :cond_8

    const p1, 0xebebf0

    goto :goto_3

    :cond_8
    if-eqz p1, :cond_c

    aget p1, v1, v6

    const v2, 0x3f6b851f    # 0.92f

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    aput p1, v1, v6

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    const v1, 0xffffff

    and-int/2addr p1, v1

    :goto_3
    if-ge v0, v10, :cond_b

    aget v1, v11, v0

    ushr-int/lit8 v2, v1, 0x18

    if-eqz v2, :cond_a

    invoke-static {v1}, Lcom/sid/tvos/IconPack;->neutral(I)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_4

    :cond_9
    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    or-int/2addr v1, p1

    aput v1, v11, v0

    :cond_a
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v11

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_c
    :goto_5
    return-void
.end method

.method private static render(Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/Bitmap;
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x3

    sget v3, Lcom/sid/tvos/IconPack;->W:I

    sget v4, Lcom/sid/tvos/IconPack;->H:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v12, Landroid/graphics/Paint;

    const/4 v6, 0x5

    invoke-direct {v12, v6}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v13, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/4 v8, 0x2

    if-eqz p2, :cond_1

    invoke-static/range {p0 .. p0}, Lk/s;->c(Ljava/lang/Object;)Landroid/graphics/drawable/AdaptiveIconDrawable;

    move-result-object v0

    invoke-static {v0}, Lk/s;->d(Landroid/graphics/drawable/AdaptiveIconDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_0

    sget v1, Lcom/sid/tvos/IconPack;->W:I

    sget v6, Lcom/sid/tvos/IconPack;->H:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/2addr v1, v8

    sget v6, Lcom/sid/tvos/IconPack;->W:I

    sub-int v7, v6, v1

    div-int/2addr v7, v8

    sget v9, Lcom/sid/tvos/IconPack;->H:I

    sub-int v10, v9, v1

    div-int/2addr v10, v8

    add-int/2addr v6, v1

    div-int/2addr v6, v8

    add-int/2addr v9, v1

    div-int/2addr v9, v8

    invoke-virtual {v5, v7, v10, v6, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v1, Landroid/graphics/LinearGradient;

    sget v5, Lcom/sid/tvos/IconPack;->H:I

    int-to-float v5, v5

    const v6, 0x2effffff

    const/high16 v7, 0x66000000

    filled-new-array {v6, v15, v7}, [I

    move-result-object v21

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v1

    move/from16 v20, v5

    move-object/from16 v22, v2

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sget v1, Lcom/sid/tvos/IconPack;->W:I

    int-to-float v9, v1

    sget v1, Lcom/sid/tvos/IconPack;->H:I

    int-to-float v10, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v4

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :cond_0
    invoke-static {v4, v12, v1}, Lcom/sid/tvos/IconPack;->fillBrand(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    :goto_0
    invoke-static {v4, v12}, Lcom/sid/tvos/IconPack;->glass(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-static {v0}, Lk/s;->m(Landroid/graphics/drawable/AdaptiveIconDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_9

    goto/16 :goto_4

    :cond_1
    if-eqz v0, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/IconPack;->opaqueEdge(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/IconPack;->innerSquare(Landroid/graphics/drawable/Drawable;)I

    move-result v9

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_5

    invoke-virtual {v4, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    sget v1, Lcom/sid/tvos/IconPack;->H:I

    int-to-float v1, v1

    const v2, 0x3f8f5c29    # 1.12f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_4
    sget v2, Lcom/sid/tvos/IconPack;->W:I

    sub-int v5, v2, v1

    div-int/2addr v5, v8

    sget v6, Lcom/sid/tvos/IconPack;->H:I

    sub-int v7, v6, v1

    div-int/2addr v7, v8

    add-int/2addr v2, v1

    div-int/2addr v2, v8

    add-int/2addr v6, v1

    div-int/2addr v6, v8

    invoke-virtual {v0, v5, v7, v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_3
    invoke-static {v4, v12}, Lcom/sid/tvos/IconPack;->glass(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_5
    if-eqz v2, :cond_7

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/IconPack;->hasVerticalGradient(Landroid/graphics/drawable/Drawable;)Z

    move-result v9

    if-eqz v9, :cond_7

    sget v1, Lcom/sid/tvos/IconPack;->H:I

    invoke-static {v1, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_6
    invoke-virtual {v0, v15, v15, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    div-int/lit8 v0, v1, 0x18

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v15, v15, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5, v14, v1, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    sub-int v9, v1, v0

    invoke-static {v2, v9, v15, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v14, v1, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v8}, Landroid/graphics/Paint;-><init>(I)V

    sget v8, Lcom/sid/tvos/IconPack;->W:I

    sub-int/2addr v8, v1

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    new-instance v10, Landroid/graphics/RectF;

    add-float v11, v8, v6

    sget v14, Lcom/sid/tvos/IconPack;->H:I

    int-to-float v14, v14

    invoke-direct {v10, v7, v7, v11, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v4, v5, v13, v10, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v5, Landroid/graphics/RectF;

    int-to-float v1, v1

    add-float/2addr v1, v8

    sub-float/2addr v1, v6

    sget v6, Lcom/sid/tvos/IconPack;->W:I

    int-to-float v6, v6

    sget v10, Lcom/sid/tvos/IconPack;->H:I

    int-to-float v10, v10

    invoke-direct {v5, v1, v7, v6, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v4, v0, v13, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v4, v2, v8, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_8

    invoke-static {v4, v12, v2}, Lcom/sid/tvos/IconPack;->verticalFill(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    invoke-static {v4, v12}, Lcom/sid/tvos/IconPack;->glass(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-static {v4, v0, v2, v15}, Lcom/sid/tvos/IconPack;->drawFitted(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IZ)V

    goto :goto_5

    :cond_8
    invoke-static {v4, v12, v1}, Lcom/sid/tvos/IconPack;->fillBrand(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    invoke-static {v4, v12}, Lcom/sid/tvos/IconPack;->glass(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    if-eqz v0, :cond_9

    :goto_4
    invoke-static {v4, v0, v15, v14}, Lcom/sid/tvos/IconPack;->drawFitted(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IZ)V

    :cond_9
    :goto_5
    return-object v3

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static renderCover(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8

    sget v0, Lcom/sid/tvos/IconPack;->W:I

    sget v1, Lcom/sid/tvos/IconPack;->H:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget v2, Lcom/sid/tvos/IconPack;->W:I

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sget v3, Lcom/sid/tvos/IconPack;->H:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_0
    sget v4, Lcom/sid/tvos/IconPack;->W:I

    sub-int v5, v4, v3

    div-int/lit8 v5, v5, 0x2

    sget v6, Lcom/sid/tvos/IconPack;->H:I

    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p0, v5, v7, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p0, Landroid/graphics/Paint;

    const/4 v2, 0x5

    invoke-direct {p0, v2}, Landroid/graphics/Paint;-><init>(I)V

    invoke-static {v1, p0}, Lcom/sid/tvos/IconPack;->glass(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method private static renderDark(Landroid/graphics/drawable/Drawable;IZZ)Landroid/graphics/Bitmap;
    .locals 19

    move-object/from16 v0, p0

    sget v1, Lcom/sid/tvos/IconPack;->W:I

    sget v2, Lcom/sid/tvos/IconPack;->H:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v10, Landroid/graphics/Paint;

    const/4 v4, 0x5

    invoke-direct {v10, v4}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v4, Landroid/graphics/LinearGradient;

    sget v5, Lcom/sid/tvos/IconPack;->H:I

    int-to-float v15, v5

    const v17, -0xf5f5f5

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const v16, -0xcbcbc9

    move-object v11, v4

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sget v4, Lcom/sid/tvos/IconPack;->W:I

    int-to-float v7, v4

    sget v4, Lcom/sid/tvos/IconPack;->H:I

    int-to-float v8, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v2

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-static {v2, v10}, Lcom/sid/tvos/IconPack;->glass(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget v4, Lcom/sid/tvos/IconPack;->W:I

    sget v5, Lcom/sid/tvos/IconPack;->H:I

    invoke-static {v4, v5, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p2, :cond_2

    invoke-static/range {p0 .. p0}, Lk/s;->c(Ljava/lang/Object;)Landroid/graphics/drawable/AdaptiveIconDrawable;

    move-result-object v0

    invoke-static {v0}, Lk/s;->d(Landroid/graphics/drawable/AdaptiveIconDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {v0}, Lk/s;->d(Landroid/graphics/drawable/AdaptiveIconDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7}, Lcom/sid/tvos/IconPack;->dominantColor(Landroid/graphics/drawable/Drawable;)I

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v7, p1

    :goto_0
    invoke-static {v0}, Lk/s;->m(Landroid/graphics/drawable/AdaptiveIconDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-static {v0}, Lk/s;->m(Landroid/graphics/drawable/AdaptiveIconDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v4, v0, v6, v5}, Lcom/sid/tvos/IconPack;->drawFitted(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IZ)V

    goto :goto_4

    :cond_2
    if-eqz p3, :cond_3

    invoke-static {v4, v0, v6, v5}, Lcom/sid/tvos/IconPack;->drawFitted(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IZ)V

    move/from16 v7, p1

    goto :goto_4

    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/IconPack;->opaqueEdge(Landroid/graphics/drawable/Drawable;)I

    move-result v7

    if-nez v7, :cond_4

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/IconPack;->innerSquare(Landroid/graphics/drawable/Drawable;)I

    move-result v8

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_5

    move v7, v8

    :cond_5
    if-eqz v7, :cond_6

    move v8, v7

    goto :goto_2

    :cond_6
    move/from16 v8, p1

    :goto_2
    if-nez v7, :cond_7

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    :goto_3
    invoke-static {v4, v0, v7, v5}, Lcom/sid/tvos/IconPack;->drawFitted(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IZ)V

    move v7, v8

    :cond_8
    :goto_4
    invoke-static {v3, v7}, Lcom/sid/tvos/IconPack;->recolour(Landroid/graphics/Bitmap;I)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    return-object v1
.end method

.method private static renderLogo(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 4

    sget v0, Lcom/sid/tvos/IconPack;->W:I

    sget v1, Lcom/sid/tvos/IconPack;->H:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    invoke-static {v1, v2, p1}, Lcom/sid/tvos/IconPack;->fillBrand(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    invoke-static {v1, v2}, Lcom/sid/tvos/IconPack;->glass(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, p0, p1, v2}, Lcom/sid/tvos/IconPack;->drawFitted(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IZ)V

    :cond_0
    return-object v0
.end method

.method public static set(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "iconpack"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pack"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p0, Lcom/sid/tvos/IconPack;->CACHE:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    const/4 p0, 0x0

    sput-object p0, Lcom/sid/tvos/IconPack;->filter:Ljava/util/Map;

    return-void
.end method

.method private static settingsTile(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 25

    .line 1
    sget v0, Lcom/sid/tvos/IconPack;->W:I

    .line 2
    .line 3
    sget v1, Lcom/sid/tvos/IconPack;->H:I

    .line 4
    .line 5
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v7, Landroid/graphics/Canvas;

    .line 12
    .line 13
    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 14
    .line 15
    .line 16
    new-instance v8, Landroid/graphics/Paint;

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    invoke-direct {v8, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroid/graphics/LinearGradient;

    .line 23
    .line 24
    sget v2, Lcom/sid/tvos/IconPack;->H:I

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    int-to-float v13, v2

    .line 29
    const v15, -0xf5f5f5

    .line 30
    .line 31
    .line 32
    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 33
    .line 34
    const/4 v10, 0x0

    .line 35
    const/4 v11, 0x0

    .line 36
    const/4 v12, 0x0

    .line 37
    const v14, -0xcbcbc9

    .line 38
    .line 39
    .line 40
    move-object v9, v1

    .line 41
    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    int-to-float v2, v2

    .line 46
    const v23, -0x777370

    .line 47
    .line 48
    .line 49
    sget-object v24, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 50
    .line 51
    const/16 v18, 0x0

    .line 52
    .line 53
    const/16 v19, 0x0

    .line 54
    .line 55
    const/16 v20, 0x0

    .line 56
    .line 57
    const v22, -0x2c2823

    .line 58
    .line 59
    .line 60
    move-object/from16 v17, v1

    .line 61
    .line 62
    move/from16 v21, v2

    .line 63
    .line 64
    invoke-direct/range {v17 .. v24}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 68
    .line 69
    .line 70
    sget v1, Lcom/sid/tvos/IconPack;->W:I

    .line 71
    .line 72
    int-to-float v4, v1

    .line 73
    sget v1, Lcom/sid/tvos/IconPack;->H:I

    .line 74
    .line 75
    int-to-float v5, v1

    .line 76
    const/4 v2, 0x0

    .line 77
    const/4 v3, 0x0

    .line 78
    move-object v1, v7

    .line 79
    move-object v6, v8

    .line 80
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 81
    .line 82
    .line 83
    const/4 v1, 0x0

    .line 84
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 85
    .line 86
    .line 87
    invoke-static {v7, v8}, Lcom/sid/tvos/IconPack;->glass(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 88
    .line 89
    .line 90
    sget v1, Lcom/sid/tvos/R$drawable;->ic_settings_gear:I

    .line 91
    .line 92
    move-object/from16 v2, p0

    .line 93
    .line 94
    invoke-static {v2, v1}, Ld/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-eqz v1, :cond_1

    .line 99
    .line 100
    sget v2, Lcom/sid/tvos/IconPack;->H:I

    .line 101
    .line 102
    int-to-float v2, v2

    .line 103
    const v3, 0x3f3851ec    # 0.72f

    .line 104
    .line 105
    .line 106
    mul-float v2, v2, v3

    .line 107
    .line 108
    const v3, 0x3f47ae14    # 0.78f

    .line 109
    .line 110
    .line 111
    div-float/2addr v2, v3

    .line 112
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    sget v3, Lcom/sid/tvos/IconPack;->W:I

    .line 117
    .line 118
    sub-int v4, v3, v2

    .line 119
    .line 120
    div-int/lit8 v4, v4, 0x2

    .line 121
    .line 122
    sget v5, Lcom/sid/tvos/IconPack;->H:I

    .line 123
    .line 124
    sub-int v6, v5, v2

    .line 125
    .line 126
    div-int/lit8 v6, v6, 0x2

    .line 127
    .line 128
    add-int/2addr v3, v2

    .line 129
    div-int/lit8 v3, v3, 0x2

    .line 130
    .line 131
    add-int/2addr v5, v2

    .line 132
    div-int/lit8 v5, v5, 0x2

    .line 133
    .line 134
    invoke-virtual {v1, v4, v6, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 138
    .line 139
    .line 140
    :cond_1
    return-object v0
.end method

.method public static tile(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/sid/tvos/IconPack;->current(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "original"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/sid/tvos/AppAdapter$Entry;->isFolder()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/sid/tvos/AppAdapter$Entry;->isPlaceholder()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->dark(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "|dark|"

    goto :goto_0

    :cond_1
    const-string v0, "|"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sid/tvos/AppAdapter$Entry;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sid/tvos/IconPack;->CACHE:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x43390000    # 185.0f

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/16 v3, 0x2d0

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/16 v3, 0x190

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v3, v2

    const v4, 0x3f19999a    # 0.6f

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {p0, p1, v2, v3}, Lcom/sid/tvos/IconPack;->tile(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;II)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static tile(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;II)Landroid/graphics/Bitmap;
    .locals 5

    invoke-static {p0}, Lcom/sid/tvos/IconPack;->current(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "original"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    invoke-virtual {p1}, Lcom/sid/tvos/AppAdapter$Entry;->isFolder()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p1}, Lcom/sid/tvos/AppAdapter$Entry;->isPlaceholder()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    :cond_0
    const-class v1, Lcom/sid/tvos/IconPack;

    monitor-enter v1

    :try_start_0
    sput p2, Lcom/sid/tvos/IconPack;->W:I

    sput p3, Lcom/sid/tvos/IconPack;->H:I

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->dark(Landroid/content/Context;)Z

    move-result p2

    const-string p3, "tvos"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p1, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    invoke-static {p3}, Lcom/sid/tvos/IconPack;->isSettings(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p0, p2}, Lcom/sid/tvos/IconPack;->settingsTile(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_1
    const-string p3, "tvos"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v3, 0x0

    if-eqz p3, :cond_2

    const-string p3, "logo"

    iget-object v4, p1, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    invoke-static {p0, p3, v4}, Lcom/sid/tvos/Stage;->asset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_3

    .line 2
    invoke-static {p0, p3}, Ld/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 3
    :cond_3
    const-string v4, "tvos"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/sid/tvos/AppAdapter$Entry;->component:Landroid/content/ComponentName;

    invoke-static {p0, v0, v2}, Lcom/sid/tvos/IconPack;->fromPack(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_5

    invoke-static {p0, p1}, Lcom/sid/tvos/IconPack;->appIcon(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_5
    iget-object p0, p1, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    invoke-static {p0}, Lcom/sid/tvos/IconPack;->brandOverride(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_6

    if-eqz v2, :cond_6

    invoke-static {v2}, Lcom/sid/tvos/IconPack;->dominantColor(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    :cond_6
    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {p1}, Lcom/sid/tvos/AppAdapter;->colorOf(Lcom/sid/tvos/AppAdapter$Entry;)I

    move-result p0

    :goto_2
    const/4 p1, 0x1

    if-eqz p3, :cond_a

    if-eqz v2, :cond_8

    invoke-static {v2}, Lcom/sid/tvos/IconPack;->isPicture(Landroid/graphics/drawable/Drawable;)Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-static {v2}, Lcom/sid/tvos/IconPack;->opaqueEdge(Landroid/graphics/drawable/Drawable;)I

    move-result p3

    if-eqz p3, :cond_8

    invoke-static {v2}, Lcom/sid/tvos/IconPack;->renderCover(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :cond_8
    if-eqz p2, :cond_9

    invoke-static {v2, p0, v3, p1}, Lcom/sid/tvos/IconPack;->renderDark(Landroid/graphics/drawable/Drawable;IZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_3

    :cond_9
    invoke-static {v2, p0}, Lcom/sid/tvos/IconPack;->renderLogo(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_3
    monitor-exit v1

    return-object p0

    :cond_a
    if-eqz v2, :cond_b

    invoke-static {v2}, Lcom/sid/tvos/IconPack;->isAdaptive(Landroid/graphics/drawable/Drawable;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-static {v2}, Lcom/sid/tvos/IconPack;->opaqueEdge(Landroid/graphics/drawable/Drawable;)I

    move-result p3

    if-eqz p3, :cond_b

    invoke-static {v2}, Lcom/sid/tvos/IconPack;->hasVerticalGradient(Landroid/graphics/drawable/Drawable;)Z

    move-result p3

    if-nez p3, :cond_c

    invoke-static {v2}, Lcom/sid/tvos/IconPack;->isPicture(Landroid/graphics/drawable/Drawable;)Z

    move-result p3

    if-eqz p3, :cond_b

    goto :goto_4

    :cond_b
    const/4 p1, 0x0

    :cond_c
    :goto_4
    if-eqz p2, :cond_d

    if-nez p1, :cond_d

    invoke-static {v2}, Lcom/sid/tvos/IconPack;->isAdaptive(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    invoke-static {v2, p0, p1, v3}, Lcom/sid/tvos/IconPack;->renderDark(Landroid/graphics/drawable/Drawable;IZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_5

    :cond_d
    invoke-static {v2}, Lcom/sid/tvos/IconPack;->isAdaptive(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    invoke-static {v2, p0, p1}, Lcom/sid/tvos/IconPack;->render(Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_5
    monitor-exit v1

    return-object p0

    :goto_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_e
    :goto_7
    return-object v2
.end method

.method private static verticalFill(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x3

    new-array v2, v1, [F

    invoke-static {p2, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v3, 0x1

    aget v4, v2, v3

    const v5, 0x3df5c28f    # 0.12f

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x2

    cmpg-float v5, v4, v5

    if-gez v5, :cond_0

    aget v5, v2, v8

    const v9, 0x3f59999a    # 0.85f

    cmpl-float v9, v5, v9

    if-lez v9, :cond_0

    aget v2, v2, v0

    const v6, 0x3f4ccccd    # 0.8f

    mul-float v5, v5, v6

    new-array v6, v1, [F

    aput v2, v6, v0

    aput v4, v6, v3

    aput v5, v6, v8

    invoke-static {v6}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    aget v5, v0, v3

    const v9, 0x3f51eb85    # 0.82f

    mul-float v5, v5, v9

    aput v5, v0, v3

    aget v2, v2, v8

    const v5, 0x3f970a3d    # 1.18f

    mul-float v2, v2, v5

    const v5, 0x3dcccccd    # 0.1f

    add-float/2addr v2, v5

    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v0, v8

    aget v2, v4, v8

    mul-float v2, v2, v6

    aput v2, v4, v8

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    :goto_0
    new-instance v12, Landroid/graphics/LinearGradient;

    sget v4, Lcom/sid/tvos/IconPack;->H:I

    int-to-float v8, v4

    filled-new-array {v2, p2, v0}, [I

    move-result-object v9

    new-array v10, v1, [F

    fill-array-data v10, :array_0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    sget p2, Lcom/sid/tvos/IconPack;->W:I

    int-to-float v3, p2

    sget p2, Lcom/sid/tvos/IconPack;->H:I

    int-to-float v4, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

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
