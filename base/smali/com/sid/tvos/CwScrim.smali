.class final Lcom/sid/tvos/CwScrim;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static shared:Landroid/graphics/Bitmap;


# instance fields
.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sid/tvos/CwScrim;->paint:Landroid/graphics/Paint;

    const-class v0, Lcom/sid/tvos/CwScrim;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sid/tvos/CwScrim;->shared:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sid/tvos/CwScrim;->make()Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/sid/tvos/CwScrim;->shared:Landroid/graphics/Bitmap;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static make()Landroid/graphics/Bitmap;
    .locals 18

    const/16 v0, 0x36

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x60

    invoke-static {v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v8, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v8, v1}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v1, Landroid/graphics/LinearGradient;

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x426e147b    # 59.52f

    const/4 v13, 0x0

    const/high16 v14, -0x4d000000

    const/4 v15, 0x0

    move-object v9, v1

    move-object/from16 v16, v17

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const v4, 0x426e147b    # 59.52f

    const/high16 v5, 0x42580000    # 54.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v7

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/LinearGradient;

    const/high16 v14, 0x66000000

    const/4 v12, 0x0

    const v13, 0x412ccccd    # 10.8f

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/high16 v4, 0x42c00000    # 96.0f

    const v5, 0x412ccccd    # 10.8f

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v14, 0x0

    const/high16 v15, -0x4d000000

    const/high16 v11, 0x41d80000    # 27.0f

    const/high16 v13, 0x42580000    # 54.0f

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/high16 v5, 0x42580000    # 54.0f

    const/high16 v3, 0x41d80000    # 27.0f

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    sget-object v0, Lcom/sid/tvos/CwScrim;->shared:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/sid/tvos/CwScrim;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/sid/tvos/CwScrim;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
