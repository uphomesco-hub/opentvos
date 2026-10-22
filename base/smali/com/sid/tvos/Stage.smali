.class abstract Lcom/sid/tvos/Stage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sid/tvos/Stage$Callback;
    }
.end annotation


# static fields
.field private static final ASSETS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final BG:Ljava/util/concurrent/ExecutorService;

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

.field private static H:I = 0x2d0

.field private static final MAIN:Landroid/os/Handler;

.field private static W:I = 0x500


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/sid/tvos/Stage;->CACHE:Landroid/util/LruCache;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sid/tvos/Stage;->BG:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sid/tvos/Stage;->MAIN:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sid/tvos/Stage;->ASSETS:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/sid/tvos/Stage$Callback;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sid/tvos/Stage;->lambda$renderAsync$0(Lcom/sid/tvos/Stage$Callback;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static asset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "a_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "[^a-z0-9]"

    const-string v1, "_"

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sid/tvos/Stage;->ASSETS:Ljava/util/Map;

    monitor-enter p2

    :try_start_0
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit p2

    return p0

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic b(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;ILcom/sid/tvos/Stage$Callback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/sid/tvos/Stage;->lambda$renderAsync$1(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;ILcom/sid/tvos/Stage$Callback;)V

    return-void
.end method

.method private static blend(IIF)I
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

.method public static brandArt(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->dark(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/sid/tvos/Stage;->logoFor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "rc"

    invoke-static {p0, v0, p1}, Lcom/sid/tvos/Stage;->asset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    invoke-static {p0, p1}, Lcom/sid/tvos/Stage;->logoFor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    :cond_1
    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {p0, v1, p2, p3}, Lcom/sid/tvos/Stage;->logoCard(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    nop

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "bg"

    invoke-static {p0, v0, p1}, Lcom/sid/tvos/Stage;->asset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    invoke-static {p0, v0, p1}, Lcom/sid/tvos/Stage;->asset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_4
    const-string v0, "cw"

    goto :goto_1

    :goto_2
    if-nez v0, :cond_5

    const/4 p0, 0x0

    goto :goto_3

    :cond_5
    invoke-static {p0, v0, p2, p3}, Lcom/sid/tvos/Stage;->cover(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public static brandBackground(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 1
    const-string v0, "rc"

    invoke-static {p0, v0, p1}, Lcom/sid/tvos/Stage;->asset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    invoke-static {p0, p1}, Lcom/sid/tvos/Stage;->logoFor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return v0

    :cond_2
    const-string v0, "bg"

    invoke-static {p0, v0, p1}, Lcom/sid/tvos/Stage;->asset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "cw"

    invoke-static {p0, v0, p1}, Lcom/sid/tvos/Stage;->asset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_1
    return v0
.end method

.method public static brandBackground(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;III)Landroid/graphics/Bitmap;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    const/4 v4, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "brand_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "[^a-z0-9]"

    const-string v9, "_"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "color"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/sid/tvos/AppAdapter$Entry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/sid/tvos/IconPack;->dominantColor(Landroid/graphics/drawable/Drawable;)I

    move-result v6

    :cond_1
    :goto_0
    new-array v1, v4, [F

    if-eqz v5, :cond_3

    .line 2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_2

    invoke-static {v0, v5}, Ld/b;->a(Landroid/content/Context;I)I

    move-result v5

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_1

    :cond_3
    const v5, -0xb5b5b4

    :goto_1
    const v7, 0x3f0ccccd    # 0.55f

    const/4 v8, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v6, :cond_4

    .line 3
    invoke-static {v6, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v6, 0x1

    aget v10, v1, v6

    const v11, 0x3e19999a    # 0.15f

    cmpl-float v11, v10, v11

    if-ltz v11, :cond_4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float v10, v10, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v5

    aput v5, v1, v6

    aget v5, v1, v8

    const v6, 0x3f51eb85    # 0.82f

    mul-float v5, v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v9, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    aput v5, v1, v8

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/Appearance;->dark(Landroid/content/Context;)Z

    move-result v15

    const v1, -0xb0b0b

    invoke-static {v5, v1, v7}, Lcom/sid/tvos/Stage;->blend(IIF)I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v13, Landroid/graphics/Paint;

    const/4 v9, 0x4

    invoke-direct {v13, v9}, Landroid/graphics/Paint;-><init>(I)V

    if-eqz v15, :cond_5

    new-instance v1, Landroid/graphics/LinearGradient;

    int-to-float v5, v3

    const v6, -0xd9d9d6    # -2.2085E38f

    const/high16 v9, -0x1000000

    const v10, -0xb5b5b3

    filled-new-array {v10, v6, v9}, [I

    move-result-object v21

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v1

    move/from16 v20, v5

    move-object/from16 v22, v4

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_2

    :cond_5
    new-instance v4, Landroid/graphics/LinearGradient;

    int-to-float v9, v3

    filled-new-array {v5, v5, v6, v1, v1}, [I

    move-result-object v29

    const/4 v1, 0x5

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    sget-object v31, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v24, v4

    move/from16 v28, v9

    move-object/from16 v30, v1

    invoke-direct/range {v24 .. v31}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object v1, v4

    :goto_2
    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float v1, v2

    int-to-float v4, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v9, v14

    move v12, v1

    move-object v5, v13

    move v13, v4

    move-object v6, v14

    move-object v14, v5

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move/from16 v5, p2

    .line 4
    invoke-static {v0, v5}, Ld/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 5
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_6

    const v0, 0x3f28f5c3    # 0.66f

    mul-float v1, v1, v0

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const v0, 0x3e851eb8    # 0.26f

    mul-float v4, v4, v0

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v4, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v14

    sub-int v0, v2, v13

    div-int/lit8 v11, v0, 0x2

    sub-int v0, v3, v14

    div-int/lit8 v12, v0, 0x2

    move-object v9, v6

    invoke-static/range {v9 .. v15}, Lcom/sid/tvos/Stage;->drawLogo(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIIIZ)V

    :cond_6
    return-object v7

    nop

    :array_0
    .array-data 4
        0x0
        0x3ee66666    # 0.45f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3d75c28f    # 0.06f
        0x3f000000    # 0.5f
        0x3f5c28f6    # 0.86f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static cap(I)I
    .locals 1

    const/16 v0, 0x780

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static clear()V
    .locals 1

    sget-object v0, Lcom/sid/tvos/Stage;->CACHE:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public static config(Landroid/content/Context;)Landroid/graphics/Bitmap$Config;
    .locals 1

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    return-object p0
.end method

.method private static cover(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 8

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {p0}, Lcom/sid/tvos/Stage;->config(Landroid/content/Context;)Landroid/graphics/Bitmap$Config;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_0
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v3, v2, 0x2

    div-int/2addr v1, v3

    if-lt v1, p2, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/lit8 v3, v2, 0x2

    div-int/2addr v1, v3

    if-lt v1, p3, :cond_0

    mul-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/sid/tvos/Stage;->config(Landroid/content/Context;)Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-static {p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p2, v1

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p3, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/RectF;

    sub-float v5, p2, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v7, p3, v3

    div-float/2addr v7, v6

    add-float/2addr p2, v2

    div-float/2addr p2, v6

    add-float/2addr p3, v3

    div-float/2addr p3, v6

    invoke-direct {v4, v5, v7, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x6

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v1, p1, v0, v4, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p0
.end method

.method private static customBackground(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;II)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p1}, Lcom/sid/tvos/AppAdapter$Entry;->isFolder()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/sid/tvos/AppAdapter$Entry;->isPlaceholder()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/sid/tvos/Appearance;->cwOn(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->dark(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sid/tvos/Stage;->logoFor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "cw"

    iget-object v3, p1, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    invoke-static {p0, v0, v3}, Lcom/sid/tvos/Stage;->asset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {p0, v0, p2, p3}, Lcom/sid/tvos/Stage;->cover(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_4

    iget-object v0, p1, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sid/tvos/Stage;->logoFor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    :cond_4
    if-eqz v2, :cond_5

    :try_start_0
    invoke-static {p0, p1, v2, p2, p3}, Lcom/sid/tvos/Stage;->brandBackground(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;III)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    nop

    :cond_5
    iget-object p1, p1, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sid/tvos/Stage;->customFor(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {p0, p1, p2, p3}, Lcom/sid/tvos/Stage;->cover(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_7
    :goto_1
    return-object v1
.end method

.method private static customFor(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->cwOn(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "bg"

    const-string v2, "cw"

    if-eqz v0, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-static {p0, v3, p1}, Lcom/sid/tvos/Stage;->asset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-static {p0, v1, p1}, Lcom/sid/tvos/Stage;->asset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, p0

    :goto_2
    return v3
.end method

.method private static darken(IF)I
    .locals 2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, p1

    float-to-int p0, p0

    invoke-static {v0, v1, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method private static drawLogo(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIIIZ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v12, p4

    move/from16 v13, p5

    if-nez p6, :cond_0

    add-int v4, v2, v12

    add-int v5, v3, v13

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    const/4 v14, 0x1

    invoke-static {v14, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    const/4 v11, 0x0

    invoke-virtual {v1, v11, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    mul-int v1, v12, v13

    new-array v10, v1, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v4, v15

    move-object v5, v10

    move/from16 v7, p4

    move-object/from16 v16, v10

    move/from16 v10, p4

    const/16 v17, 0x0

    move/from16 v11, p5

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    div-int/lit8 v4, v12, 0xa

    mul-int/lit8 v5, v12, 0x9

    div-int/lit8 v5, v5, 0xa

    div-int/lit8 v6, v13, 0xa

    mul-int/lit8 v7, v13, 0x9

    div-int/lit8 v7, v7, 0xa

    div-int/lit8 v8, v13, 0x2

    mul-int v8, v8, v12

    add-int/2addr v4, v8

    aget v4, v16, v4

    ushr-int/lit8 v4, v4, 0x18

    const/16 v9, 0xc8

    if-le v4, v9, :cond_1

    add-int/2addr v8, v5

    aget v4, v16, v8

    ushr-int/lit8 v4, v4, 0x18

    if-le v4, v9, :cond_1

    mul-int v6, v6, v12

    div-int/lit8 v4, v12, 0x2

    add-int/2addr v6, v4

    aget v5, v16, v6

    ushr-int/lit8 v5, v5, 0x18

    if-le v5, v9, :cond_1

    mul-int v7, v7, v12

    add-int/2addr v7, v4

    aget v4, v16, v7

    ushr-int/lit8 v4, v4, 0x18

    if-le v4, v9, :cond_1

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    :goto_0
    const/4 v11, 0x0

    :goto_1
    if-ge v11, v1, :cond_4

    if-nez v14, :cond_4

    aget v4, v16, v11

    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    and-int/lit16 v7, v4, 0xff

    ushr-int/lit8 v8, v4, 0x18

    if-eqz v8, :cond_3

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/16 v6, 0x5a

    if-le v5, v6, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v5, -0x1000000

    and-int/2addr v4, v5

    const v5, 0xebebf0

    or-int/2addr v4, v5

    aput v4, v16, v11

    :cond_3
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v4, v15

    move-object/from16 v5, v16

    move/from16 v7, p4

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    int-to-float v1, v2

    int-to-float v2, v3

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method private static edgeColor(Landroid/graphics/drawable/Drawable;)I
    .locals 17

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
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v3, 0x20

    const/16 v4, 0x12

    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const-wide/16 v0, 0x0

    move-wide v4, v0

    move-wide v7, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    const/16 v11, 0x10

    const/4 v12, 0x4

    const/4 v13, 0x1

    if-ge v9, v3, :cond_2

    const/16 v14, 0x11

    filled-new-array {v6, v13, v11, v14}, [I

    move-result-object v11

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_1

    aget v14, v11, v13

    invoke-virtual {v2, v9, v14}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v14

    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v15

    move/from16 v16, v13

    int-to-long v12, v15

    add-long/2addr v0, v12

    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v4, v12

    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v7, v12

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v13, v16, 0x1

    const/4 v12, 0x4

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    :goto_3
    if-ge v3, v11, :cond_4

    const/16 v9, 0x1e

    const/16 v12, 0x1f

    filled-new-array {v6, v13, v9, v12}, [I

    move-result-object v9

    const/4 v12, 0x4

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v12, :cond_3

    aget v15, v9, v14

    invoke-virtual {v2, v15, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v15

    invoke-static {v15}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-long v11, v6

    add-long/2addr v0, v11

    invoke-static {v15}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-long v11, v6

    add-long/2addr v4, v11

    invoke-static {v15}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-long v11, v6

    add-long/2addr v7, v11

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x0

    const/16 v11, 0x10

    const/4 v12, 0x4

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x0

    const/16 v11, 0x10

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    int-to-long v2, v10

    div-long/2addr v0, v2

    long-to-int v1, v0

    div-long/2addr v4, v2

    long-to-int v0, v4

    div-long/2addr v7, v2

    long-to-int v2, v7

    invoke-static {v1, v0, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static iconArt(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;II)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p1}, Lcom/sid/tvos/AppAdapter$Entry;->isFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/sid/tvos/Stage;->sharpestBanner(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/sid/tvos/AppAdapter$Entry;->banner:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p1, Lcom/sid/tvos/AppAdapter$Entry;->icon:Landroid/graphics/drawable/Drawable;

    :goto_1
    const/4 v2, 0x1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p0}, Lcom/sid/tvos/Stage;->config(Landroid/content/Context;)Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-static {v3, v2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/sid/tvos/Stage;->edgeColor(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    goto :goto_2

    :cond_3
    const v3, -0xd3d3d2

    :goto_2
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    if-nez v1, :cond_4

    return-object p0

    :cond_4
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_5
    if-nez v0, :cond_6

    iget-object p1, p1, Lcom/sid/tvos/AppAdapter$Entry;->banner:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_6

    div-int/lit8 p1, p3, 0x3

    sub-int v0, p2, p1

    div-int/lit8 v0, v0, 0x2

    sub-int v3, p3, p1

    div-int/lit8 v3, v3, 0x2

    add-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p1

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {v1, v0, v3, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_5

    :cond_6
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    if-lez p1, :cond_7

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p1, p1

    goto :goto_3

    :cond_7
    const/high16 p1, 0x41800000    # 16.0f

    :goto_3
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_4

    :cond_8
    const/high16 v0, 0x41100000    # 9.0f

    :goto_4
    int-to-float v3, p2

    div-float/2addr v3, p1

    int-to-float v4, p3

    div-float/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float p1, p1, v3

    float-to-int p1, p1

    mul-float v0, v0, v3

    float-to-int v0, v0

    sub-int v3, p2, p1

    div-int/lit8 v3, v3, 0x2

    sub-int v4, p3, v0

    div-int/lit8 v4, v4, 0x2

    add-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {v1, v3, v4, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_5
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method private static synthetic lambda$renderAsync$0(Lcom/sid/tvos/Stage$Callback;Landroid/graphics/Bitmap;)V
    .locals 0

    check-cast p0, Lcom/sid/tvos/G;

    invoke-virtual {p0, p1}, Lcom/sid/tvos/G;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static synthetic lambda$renderAsync$1(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;ILcom/sid/tvos/Stage$Callback;)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/sid/tvos/Stage;->render(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;I)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p3, :cond_0

    sget-object p1, Lcom/sid/tvos/Stage;->MAIN:Landroid/os/Handler;

    new-instance p2, Lcom/sid/tvos/a0;

    const/4 v0, 0x2

    invoke-direct {p2, p3, p0, v0}, Lcom/sid/tvos/a0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private static lighten(IF)I
    .locals 3

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    rsub-int v1, v1, 0xff

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    rsub-int v2, v2, 0xff

    int-to-float v2, v2

    mul-float v2, v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    rsub-int p0, p0, 0xff

    int-to-float p0, p0

    mul-float p0, p0, p1

    float-to-int p0, p0

    add-int/2addr v2, p0

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method public static logoCard(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 22

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/Appearance;->dark(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v6

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 19
    .line 20
    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    new-instance v2, Landroid/graphics/Canvas;

    .line 25
    .line 26
    invoke-direct {v2, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 27
    .line 28
    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    new-instance v13, Landroid/graphics/Paint;

    .line 32
    .line 33
    const/4 v3, 0x4

    .line 34
    invoke-direct {v13, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 35
    .line 36
    .line 37
    new-instance v3, Landroid/graphics/LinearGradient;

    .line 38
    .line 39
    int-to-float v12, v1

    .line 40
    const v20, -0xeeeeed

    .line 41
    .line 42
    .line 43
    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 44
    .line 45
    const/4 v15, 0x0

    .line 46
    const/16 v16, 0x0

    .line 47
    .line 48
    const/16 v17, 0x0

    .line 49
    .line 50
    const v19, -0xc5c5c3

    .line 51
    .line 52
    .line 53
    move-object v14, v3

    .line 54
    move/from16 v18, v12

    .line 55
    .line 56
    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v13, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 60
    .line 61
    .line 62
    const/4 v10, 0x0

    .line 63
    int-to-float v11, v0

    .line 64
    const/4 v9, 0x0

    .line 65
    move-object v8, v2

    .line 66
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const/4 v3, -0x1

    .line 71
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-static/range {p0 .. p1}, Ld/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-lez v4, :cond_1

    .line 85
    .line 86
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-lez v4, :cond_1

    .line 91
    .line 92
    int-to-float v4, v0

    .line 93
    const v5, 0x3f1eb852    # 0.62f

    .line 94
    .line 95
    .line 96
    mul-float v4, v4, v5

    .line 97
    .line 98
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    int-to-float v5, v5

    .line 103
    div-float/2addr v4, v5

    .line 104
    int-to-float v5, v1

    .line 105
    const v8, 0x3eae147b    # 0.34f

    .line 106
    .line 107
    .line 108
    mul-float v5, v5, v8

    .line 109
    .line 110
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    int-to-float v8, v8

    .line 115
    div-float/2addr v5, v8

    .line 116
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    int-to-float v5, v5

    .line 125
    mul-float v5, v5, v4

    .line 126
    .line 127
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    int-to-float v8, v8

    .line 136
    mul-float v8, v8, v4

    .line 137
    .line 138
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    sub-int/2addr v0, v5

    .line 143
    div-int/lit8 v4, v0, 0x2

    .line 144
    .line 145
    sub-int v0, v1, v8

    .line 146
    .line 147
    div-int/lit8 v9, v0, 0x2

    .line 148
    .line 149
    move-object v0, v2

    .line 150
    move-object v1, v3

    .line 151
    move v2, v4

    .line 152
    move v3, v9

    .line 153
    move v4, v5

    .line 154
    move v5, v8

    .line 155
    invoke-static/range {v0 .. v6}, Lcom/sid/tvos/Stage;->drawLogo(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIIIZ)V

    .line 156
    .line 157
    .line 158
    :cond_1
    invoke-static {v7}, Lcom/sid/tvos/Gpu;->upload(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    return-object v0
.end method

.method public static logoFor(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "logo_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "[^a-z0-9]"

    const-string v2, "_"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/sid/tvos/Stage;->ASSETS:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static peek(Lcom/sid/tvos/AppAdapter$Entry;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/sid/tvos/Stage;->CACHE:Landroid/util/LruCache;

    invoke-virtual {p0}, Lcom/sid/tvos/AppAdapter$Entry;->key()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static declared-synchronized render(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;I)Landroid/graphics/Bitmap;
    .locals 36

    move-object/from16 v0, p1

    const-class v2, Lcom/sid/tvos/Stage;

    monitor-enter v2

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/sid/tvos/AppAdapter$Entry;->key()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sid/tvos/Stage;->CACHE:Landroid/util/LruCache;

    invoke-virtual {v4, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    monitor-exit v2

    return-object v5

    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v7, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6}, Lcom/sid/tvos/Stage;->cap(I)I

    move-result v7

    sput v7, Lcom/sid/tvos/Stage;->W:I

    int-to-float v5, v5

    int-to-float v7, v7

    int-to-float v6, v6

    div-float/2addr v7, v6

    mul-float v7, v7, v5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    sput v5, Lcom/sid/tvos/Stage;->H:I

    sget v6, Lcom/sid/tvos/Stage;->W:I

    move-object/from16 v7, p0

    invoke-static {v7, v0, v6, v5}, Lcom/sid/tvos/Stage;->customBackground(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;II)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v5}, Lcom/sid/tvos/Gpu;->upload(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/sid/tvos/AppAdapter$Entry;->isFolder()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    invoke-static/range {p0 .. p1}, Lcom/sid/tvos/Stage;->sharpestBanner(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_3

    move-object v8, v5

    goto :goto_1

    :cond_3
    iget-object v8, v0, Lcom/sid/tvos/AppAdapter$Entry;->banner:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    iget-object v8, v0, Lcom/sid/tvos/AppAdapter$Entry;->icon:Landroid/graphics/drawable/Drawable;

    :goto_1
    if-eqz v8, :cond_5

    invoke-static {v8}, Lcom/sid/tvos/Stage;->edgeColor(Landroid/graphics/drawable/Drawable;)I

    move-result v9

    goto :goto_2

    :cond_5
    move/from16 v9, p2

    :goto_2
    sget v10, Lcom/sid/tvos/Stage;->W:I

    sget v11, Lcom/sid/tvos/Stage;->H:I

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v15, Landroid/graphics/Paint;

    const/4 v13, 0x7

    invoke-direct {v15, v13}, Landroid/graphics/Paint;-><init>(I)V

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/Appearance;->dark(Landroid/content/Context;)Z

    move-result v13

    const v19, 0x3f19999a    # 0.6f

    const/high16 v20, 0x3f000000    # 0.5f

    const/4 v14, 0x0

    if-eqz v13, :cond_6

    new-instance v9, Landroid/graphics/LinearGradient;

    sget v13, Lcom/sid/tvos/Stage;->H:I

    int-to-float v13, v13

    sget-object v28, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const v26, -0xb5b5b3

    const/high16 v27, -0x1000000

    move-object/from16 v21, v9

    move/from16 v25, v13

    invoke-direct/range {v21 .. v28}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v15, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sget v9, Lcom/sid/tvos/Stage;->W:I

    int-to-float v9, v9

    sget v13, Lcom/sid/tvos/Stage;->H:I

    int-to-float v13, v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v18, v13

    move-object v13, v11

    const/4 v6, 0x0

    move/from16 v14, v16

    move-object/from16 p2, v15

    move/from16 v15, v17

    move/from16 v16, v9

    move/from16 v17, v18

    move-object/from16 v18, p2

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v9, p2

    goto/16 :goto_3

    :cond_6
    move-object/from16 p2, v15

    const/4 v6, 0x0

    new-instance v13, Landroid/graphics/LinearGradient;

    sget v14, Lcom/sid/tvos/Stage;->H:I

    int-to-float v14, v14

    const v15, 0x3df5c28f    # 0.12f

    invoke-static {v9, v15}, Lcom/sid/tvos/Stage;->lighten(IF)I

    move-result v27

    const v15, 0x3e3851ec    # 0.18f

    invoke-static {v9, v15}, Lcom/sid/tvos/Stage;->darken(IF)I

    move-result v28

    sget-object v35, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v22, v13

    move/from16 v26, v14

    move-object/from16 v29, v35

    invoke-direct/range {v22 .. v29}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v15, p2

    invoke-virtual {v15, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sget v13, Lcom/sid/tvos/Stage;->W:I

    int-to-float v14, v13

    sget v13, Lcom/sid/tvos/Stage;->H:I

    int-to-float v13, v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v18, v13

    move-object v13, v11

    move/from16 v22, v14

    move/from16 v14, v16

    move-object/from16 p2, v15

    move/from16 v15, v17

    move/from16 v16, v22

    move/from16 v17, v18

    move-object/from16 v18, p2

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    new-instance v13, Landroid/graphics/RadialGradient;

    sget v14, Lcom/sid/tvos/Stage;->W:I

    int-to-float v15, v14

    mul-float v30, v15, v20

    sget v15, Lcom/sid/tvos/Stage;->H:I

    int-to-float v15, v15

    const v16, 0x3e99999a    # 0.3f

    mul-float v31, v15, v16

    int-to-float v14, v14

    mul-float v32, v14, v19

    const v14, 0x3eb33333    # 0.35f

    invoke-static {v9, v14}, Lcom/sid/tvos/Stage;->lighten(IF)I

    move-result v14

    const/16 v15, 0x66

    invoke-static {v14, v15}, Lcom/sid/tvos/Stage;->withAlpha(II)I

    move-result v33

    invoke-static {v9, v6}, Lcom/sid/tvos/Stage;->withAlpha(II)I

    move-result v34

    move-object/from16 v29, v13

    invoke-direct/range {v29 .. v35}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v9, p2

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sget v13, Lcom/sid/tvos/Stage;->W:I

    int-to-float v15, v13

    sget v13, Lcom/sid/tvos/Stage;->H:I

    int-to-float v14, v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v11

    move/from16 v18, v14

    move/from16 v14, v16

    move/from16 v16, v15

    move/from16 v15, v17

    move/from16 v17, v18

    move-object/from16 v18, v9

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_3
    if-eqz v8, :cond_a

    sget v14, Lcom/sid/tvos/Stage;->W:I

    int-to-float v14, v14

    mul-float v14, v14, v20

    float-to-int v14, v14

    instance-of v15, v8, Landroid/graphics/drawable/BitmapDrawable;

    const v16, 0x3eae147b    # 0.34f

    if-eqz v15, :cond_7

    move-object v15, v8

    check-cast v15, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    sget v13, Lcom/sid/tvos/Stage;->W:I

    int-to-float v13, v13

    mul-float v13, v13, v16

    float-to-int v13, v13

    int-to-float v15, v15

    const/high16 v17, 0x3fc00000    # 1.5f

    mul-float v15, v15, v17

    float-to-int v15, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_7
    int-to-float v13, v14

    const/high16 v15, 0x41100000    # 9.0f

    mul-float v15, v15, v13

    const/high16 v17, 0x41800000    # 16.0f

    div-float v15, v15, v17

    float-to-int v15, v15

    invoke-static {v14, v15, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v18

    if-eqz v18, :cond_8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    :cond_8
    const/4 v6, 0x2

    if-nez v5, :cond_9

    iget-object v0, v0, Lcom/sid/tvos/AppAdapter$Entry;->banner:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_9

    int-to-float v0, v15

    mul-float v0, v0, v19

    float-to-int v0, v0

    sub-int v5, v14, v0

    div-int/2addr v5, v6

    sub-int v18, v15, v0

    div-int/lit8 v7, v18, 0x2

    add-int v18, v14, v0

    move-object/from16 v19, v3

    div-int/lit8 v3, v18, 0x2

    add-int/2addr v0, v15

    div-int/2addr v0, v6

    invoke-virtual {v8, v5, v7, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_4

    :cond_9
    move-object/from16 v19, v3

    const/4 v0, 0x0

    invoke-virtual {v8, v0, v0, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_4
    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/high16 v3, -0x1000000

    const/4 v5, 0x0

    filled-new-array {v5, v3, v3, v5}, [I

    move-result-object v3

    new-instance v5, Landroid/graphics/LinearGradient;

    const/4 v7, 0x4

    new-array v8, v7, [F

    fill-array-data v8, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v22, v5

    move/from16 v25, v13

    move-object/from16 v27, v3

    move-object/from16 v28, v8

    move-object/from16 v29, v7

    invoke-direct/range {v22 .. v29}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float v5, v15

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v22, v1

    move/from16 v25, v13

    move/from16 v26, v5

    move-object/from16 v27, v0

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    new-instance v8, Landroid/graphics/LinearGradient;

    const/4 v15, 0x4

    new-array v15, v15, [F

    fill-array-data v15, :array_1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v22, v8

    move/from16 v26, v5

    move-object/from16 v27, v3

    move-object/from16 v28, v15

    move-object/from16 v29, v7

    invoke-direct/range {v22 .. v29}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v22, v1

    move/from16 v25, v13

    move/from16 v26, v5

    move-object/from16 v27, v0

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget v0, Lcom/sid/tvos/Stage;->W:I

    sub-int/2addr v0, v14

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sget v3, Lcom/sid/tvos/Stage;->H:I

    int-to-float v3, v3

    mul-float v3, v3, v16

    div-float v1, v5, v1

    sub-float/2addr v3, v1

    new-instance v1, Landroid/graphics/RectF;

    add-float/2addr v13, v0

    add-float/2addr v5, v3

    invoke-direct {v1, v0, v3, v13, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v11, v12, v3, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_5

    :cond_a
    move-object/from16 v19, v3

    :goto_5
    new-instance v0, Landroid/graphics/LinearGradient;

    sget v1, Lcom/sid/tvos/Stage;->H:I

    int-to-float v1, v1

    const v3, 0x3e4ccccd    # 0.2f

    mul-float v25, v1, v3

    sget-object v33, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/high16 v26, 0x59000000

    const/16 v27, 0x0

    move-object/from16 v21, v0

    move-object/from16 v28, v33

    invoke-direct/range {v21 .. v28}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sget v0, Lcom/sid/tvos/Stage;->W:I

    int-to-float v0, v0

    sget v1, Lcom/sid/tvos/Stage;->H:I

    int-to-float v1, v1

    const v3, 0x3e4ccccd    # 0.2f

    mul-float v17, v1, v3

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v13, v11

    move/from16 v16, v0

    move-object/from16 v18, v9

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/LinearGradient;

    sget v1, Lcom/sid/tvos/Stage;->H:I

    int-to-float v3, v1

    const v5, 0x3f0ccccd    # 0.55f

    mul-float v28, v3, v5

    int-to-float v1, v1

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/high16 v32, -0x67000000

    move-object/from16 v26, v0

    move/from16 v30, v1

    invoke-direct/range {v26 .. v33}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sget v0, Lcom/sid/tvos/Stage;->W:I

    int-to-float v0, v0

    sget v1, Lcom/sid/tvos/Stage;->H:I

    int-to-float v1, v1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v13, v11

    move/from16 v16, v0

    move/from16 v17, v1

    move-object/from16 v18, v9

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-static {}, Lcom/sid/tvos/Gpu;->enabled()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lk/s;->b()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v10, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/Stage;->config(Landroid/content/Context;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    goto :goto_6

    :goto_7
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v1, v19

    invoke-virtual {v4, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v0

    :goto_8
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e75c28f    # 0.24f
        0x3f428f5c    # 0.76f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static renderAsync(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;ILcom/sid/tvos/Stage$Callback;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/sid/tvos/Stage;->BG:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sid/tvos/Y;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sid/tvos/Y;-><init>(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;ILcom/sid/tvos/Stage$Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static sharpestBanner(Landroid/content/Context;Lcom/sid/tvos/AppAdapter$Entry;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object p1, p1, Lcom/sid/tvos/AppAdapter$Entry;->component:Landroid/content/ComponentName;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iget v1, p1, Landroid/content/pm/ActivityInfo;->banner:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->banner:I

    :goto_0
    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p0

    const/16 p1, 0x280

    invoke-virtual {p0, v1, p1, v0}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static trimTo(I)V
    .locals 1

    if-gtz p0, :cond_0

    sget-object p0, Lcom/sid/tvos/Stage;->CACHE:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sid/tvos/Stage;->CACHE:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->trimToSize(I)V

    :goto_0
    return-void
.end method

.method private static withAlpha(II)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method
