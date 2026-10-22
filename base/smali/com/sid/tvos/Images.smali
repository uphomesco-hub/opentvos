.class abstract Lcom/sid/tvos/Images;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sid/tvos/Images$Callback;
    }
.end annotation


# static fields
.field private static final MAIN:Landroid/os/Handler;

.field private static final MEMORY:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final POOL:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sid/tvos/Images;->MAIN:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sid/tvos/Images;->POOL:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sid/tvos/Images$1;

    const/high16 v1, 0x1000000

    invoke-direct {v0, v1}, Lcom/sid/tvos/Images$1;-><init>(I)V

    sput-object v0, Lcom/sid/tvos/Images;->MEMORY:Landroid/util/LruCache;

    return-void
.end method

.method public static synthetic a(Lcom/sid/tvos/Images$Callback;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sid/tvos/Images;->lambda$loadFirst$2(Lcom/sid/tvos/Images$Callback;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic b(Ljava/io/File;[Ljava/lang/String;Landroid/content/Context;ILcom/sid/tvos/Images$Callback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sid/tvos/Images;->lambda$loadFirst$3(Ljava/io/File;[Ljava/lang/String;Landroid/content/Context;ILcom/sid/tvos/Images$Callback;)V

    return-void
.end method

.method public static synthetic c(Lcom/sid/tvos/Images$Callback;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sid/tvos/Images;->lambda$load$0(Lcom/sid/tvos/Images$Callback;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static clear()V
    .locals 1

    sget-object v0, Lcom/sid/tvos/Images;->MEMORY:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public static synthetic d(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;IZLjava/lang/String;Lcom/sid/tvos/Images$Callback;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/sid/tvos/Images;->lambda$load$1(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;IZLjava/lang/String;Lcom/sid/tvos/Images$Callback;)V

    return-void
.end method

.method private static darkColumn(Landroid/graphics/Bitmap;II)Z
    .locals 7

    div-int/lit8 v0, p2, 0x18

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, p2, :cond_1

    invoke-virtual {p0, p1, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-static {v6}, Lcom/sid/tvos/Images;->isDark(I)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/2addr v3, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    int-to-float p0, v4

    int-to-float p1, v5

    const p2, 0x3f733333    # 0.95f

    mul-float p1, p1, p2

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private static darkRow(Landroid/graphics/Bitmap;III)Z
    .locals 6

    sub-int v0, p3, p2

    div-int/lit8 v0, v0, 0x20

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-gt p2, p3, :cond_1

    invoke-virtual {p0, p2, p1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    invoke-static {v5}, Lcom/sid/tvos/Images;->isDark(I)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/2addr p2, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    int-to-float p0, v3

    int-to-float p1, v4

    const p2, 0x3f733333    # 0.95f

    mul-float p1, p1, p2

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private static decode(Ljava/io/File;IZ)Landroid/graphics/Bitmap;
    .locals 5

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gtz v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/lit8 v4, v2, 0x2

    div-int/2addr v3, v4

    if-lt v3, p1, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-le v0, p1, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    int-to-float v2, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move-object p0, p1

    :cond_3
    if-nez p2, :cond_5

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lcom/sid/tvos/Images;->trimBars(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_5
    :goto_1
    return-object p0
.end method

.method private static download(Ljava/lang/String;Ljava/io/File;)V
    .locals 6

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v0, 0x4e20

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string v0, "User-Agent"

    const-string v1, "tvos-launcher/2.0"

    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".part"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v3, 0x4000

    :try_start_2
    new-array v3, v3, [B

    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void

    :catchall_1
    move-exception p1

    goto :goto_5

    :catchall_2
    move-exception p1

    goto :goto_3

    :goto_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_6
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p1
.end method

.method private static fetch(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 4

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/sid/tvos/Images;->download(Ljava/lang/String;Ljava/io/File;)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".part"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-nez p0, :cond_2

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    const/16 v1, 0x4000

    :try_start_1
    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_3

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_4
    return-void

    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    if-eqz p0, :cond_5

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw p1
.end method

.method private static isDark(I)Z
    .locals 2

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    if-ge v0, v1, :cond_0

    and-int/lit16 p0, p0, 0xff

    if-ge p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$load$0(Lcom/sid/tvos/Images$Callback;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/sid/tvos/Images$Callback;->onImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static synthetic lambda$load$1(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;IZLjava/lang/String;Lcom/sid/tvos/Images$Callback;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".img"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-nez p0, :cond_2

    :cond_1
    invoke-static {p2, p1, v0}, Lcom/sid/tvos/Images;->fetch(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    :cond_2
    invoke-static {v0, p3, p4}, Lcom/sid/tvos/Images;->decode(Ljava/io/File;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_3

    return-void

    :cond_3
    sget-object p1, Lcom/sid/tvos/Images;->MEMORY:Landroid/util/LruCache;

    invoke-virtual {p1, p5, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sid/tvos/Images;->MAIN:Landroid/os/Handler;

    new-instance p2, Lcom/sid/tvos/j;

    const/4 p3, 0x1

    invoke-direct {p2, p6, p0, p3}, Lcom/sid/tvos/j;-><init>(Lcom/sid/tvos/Images$Callback;Landroid/graphics/Bitmap;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static synthetic lambda$loadFirst$2(Lcom/sid/tvos/Images$Callback;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/sid/tvos/Images$Callback;->onImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static synthetic lambda$loadFirst$3(Ljava/io/File;[Ljava/lang/String;Landroid/content/Context;ILcom/sid/tvos/Images$Callback;)V
    .locals 10

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p1, v2

    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".img"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    :cond_1
    invoke-static {p2, v3, v4}, Lcom/sid/tvos/Images;->fetch(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    :cond_2
    invoke-static {v4, p3, v1}, Lcom/sid/tvos/Images;->decode(Ljava/io/File;IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    aget-object v6, p1, v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v5, :cond_4

    if-nez v3, :cond_3

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/16 v6, 0x1e0

    if-ge v3, v6, :cond_3

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/sid/tvos/Images;->MAIN:Landroid/os/Handler;

    new-instance v4, Lcom/sid/tvos/j;

    const/4 v6, 0x0

    invoke-direct {v4, p4, v5, v6}, Lcom/sid/tvos/j;-><init>(Lcom/sid/tvos/Images$Callback;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;ILcom/sid/tvos/Images$Callback;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/sid/tvos/Images;->load(Landroid/content/Context;Ljava/lang/String;IZLcom/sid/tvos/Images$Callback;)V

    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;IZLcom/sid/tvos/Images$Callback;)V
    .locals 10

    .line 2
    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const-string v1, "a"

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/sid/tvos/Images;->MEMORY:Landroid/util/LruCache;

    invoke-virtual {v0, v8}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-interface {p4, v0}, Lcom/sid/tvos/Images$Callback;->onImage(Landroid/graphics/Bitmap;)V

    return-void

    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "art"

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v0, Lcom/sid/tvos/Images;->POOL:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sid/tvos/i;

    move-object v2, v1

    move-object v4, p1

    move-object v5, p0

    move v6, p2

    move v7, p3

    move-object v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/sid/tvos/i;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;IZLjava/lang/String;Lcom/sid/tvos/Images$Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loadFirst(Landroid/content/Context;[Ljava/lang/String;ILcom/sid/tvos/Images$Callback;)V
    .locals 8

    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "art"

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v0, Lcom/sid/tvos/Images;->POOL:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/sid/tvos/h;

    move-object v1, v7

    move-object v3, p1

    move-object v4, p0

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sid/tvos/h;-><init>(Ljava/io/File;[Ljava/lang/String;Landroid/content/Context;ILcom/sid/tvos/Images$Callback;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static trimBars(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    add-int/lit8 v3, v1, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    div-int/lit8 v6, v0, 0x3

    if-ge v5, v6, :cond_0

    invoke-static {p0, v5, v1}, Lcom/sid/tvos/Images;->darkColumn(Landroid/graphics/Bitmap;II)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move v7, v2

    :goto_1
    mul-int/lit8 v8, v0, 0x2

    div-int/lit8 v8, v8, 0x3

    if-le v7, v8, :cond_1

    invoke-static {p0, v7, v1}, Lcom/sid/tvos/Images;->darkColumn(Landroid/graphics/Bitmap;II)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    div-int/lit8 v0, v1, 0x3

    if-ge v4, v0, :cond_2

    invoke-static {p0, v4, v5, v7}, Lcom/sid/tvos/Images;->darkRow(Landroid/graphics/Bitmap;III)Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move v8, v3

    :goto_3
    mul-int/lit8 v9, v1, 0x2

    div-int/lit8 v9, v9, 0x3

    if-le v8, v9, :cond_3

    invoke-static {p0, v8, v5, v7}, Lcom/sid/tvos/Images;->darkRow(Landroid/graphics/Bitmap;III)Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_3
    sub-int v1, v7, v5

    add-int/lit8 v1, v1, 0x1

    sub-int v9, v8, v4

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x4

    if-ge v5, v10, :cond_4

    sub-int/2addr v2, v7

    if-ge v2, v10, :cond_4

    if-ge v4, v10, :cond_4

    sub-int/2addr v3, v8

    if-lt v3, v10, :cond_7

    :cond_4
    if-lt v1, v6, :cond_7

    if-ge v9, v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {p0, v5, v4, v1, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, p0, :cond_6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    return-object v0

    :cond_7
    :goto_4
    return-object p0
.end method
