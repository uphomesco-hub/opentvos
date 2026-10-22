.class abstract Lcom/sid/tvos/WatchNext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sid/tvos/WatchNext$Callback;,
        Lcom/sid/tvos/WatchNext$Item;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final MAIN:Landroid/os/Handler;

.field private static cached:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sid/tvos/WatchNext$Item;",
            ">;>;"
        }
    .end annotation
.end field

.field private static cachedAt:J


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v10, "duration_millis"

    const-string v11, "browsable"

    const-string v0, "package_name"

    const-string v1, "title"

    const-string v2, "episode_title"

    const-string v3, "season_display_number"

    const-string v4, "episode_display_number"

    const-string v5, "short_description"

    const-string v6, "poster_art_uri"

    const-string v7, "thumbnail_uri"

    const-string v8, "intent_uri"

    const-string v9, "last_playback_position_millis"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sid/tvos/WatchNext;->COLUMNS:[Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sid/tvos/WatchNext;->MAIN:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/sid/tvos/WatchNext$Callback;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sid/tvos/WatchNext;->lambda$load$0(Lcom/sid/tvos/WatchNext$Callback;Ljava/util/Map;)V

    return-void
.end method

.method private static addChannelRows(Landroid/content/Context;Ljava/util/Map;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sid/tvos/WatchNext$Item;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "display_name"

    const-string v2, "type"

    const-string v3, "_id"

    const-string v4, "package_name"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v7

    const-string v13, "last_playback_position_millis"

    const-string v14, "duration_millis"

    const-string v8, "title"

    const-string v9, "short_description"

    const-string v10, "poster_art_uri"

    const-string v11, "thumbnail_uri"

    const-string v12, "intent_uri"

    filled-new-array/range {v8 .. v14}, [Ljava/lang/String;

    move-result-object v11

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/media/tv/TvContract$Channels;->CONTENT_URI:Landroid/net/Uri;

    const-string v10, "_id"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    if-eqz v7, :cond_a

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v1, "TYPE_PREVIEW"

    const/4 v10, 0x3

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v9, :cond_0

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v13, 0x0

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lk/s;->f(J)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, v11

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_3
    :goto_1
    if-eqz v1, :cond_8

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0xf

    if-ge v2, v3, :cond_8

    new-instance v2, Lcom/sid/tvos/WatchNext$Item;

    invoke-direct {v2}, Lcom/sid/tvos/WatchNext$Item;-><init>()V

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sid/tvos/WatchNext$Item;->title:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sid/tvos/WatchNext$Item;->subtitle:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_4

    :cond_5
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    iput-object v4, v2, Lcom/sid/tvos/WatchNext$Item;->art:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v6, v14, v16

    if-lez v6, :cond_6

    cmp-long v6, v4, v16

    if-lez v6, :cond_6

    long-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v4, v4, v5

    long-to-float v6, v14

    div-float/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_3

    :cond_6
    const/high16 v4, -0x40800000    # -1.0f

    :goto_3
    iput v4, v2, Lcom/sid/tvos/WatchNext$Item;->progress:F

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sid/tvos/WatchNext$Item;->section:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_7

    :try_start_3
    invoke-static {v3, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, v2, Lcom/sid/tvos/WatchNext$Item;->intent:Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    :cond_7
    :try_start_4
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :goto_4
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v2

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_6

    :cond_8
    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_0

    :goto_6
    :try_start_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v1

    :cond_a
    if-eqz v7, :cond_b

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    :cond_b
    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Lcom/sid/tvos/WatchNext$Callback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sid/tvos/WatchNext;->lambda$load$1(Landroid/content/Context;Lcom/sid/tvos/WatchNext$Callback;)V

    return-void
.end method

.method public static bestArt(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "^(https?://image\\.tmdb\\.org/t/p/)w\\d+(/.*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "original"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "^(https?://i\\.ytimg\\.com/vi/[^/]+/)[a-z0-9_]+\\.jpg(\\?.*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "maxresdefault.jpg"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "hq720.jpg"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static invalidate()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sid/tvos/WatchNext;->cachedAt:J

    return-void
.end method

.method private static synthetic lambda$load$0(Lcom/sid/tvos/WatchNext$Callback;Ljava/util/Map;)V
    .locals 0

    check-cast p0, Lcom/sid/tvos/p;

    invoke-virtual {p0, p1}, Lcom/sid/tvos/p;->a(Ljava/util/Map;)V

    return-void
.end method

.method private static synthetic lambda$load$1(Landroid/content/Context;Lcom/sid/tvos/WatchNext$Callback;)V
    .locals 3

    invoke-static {p0}, Lcom/sid/tvos/WatchNext;->query(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    sput-wide p0, Lcom/sid/tvos/WatchNext;->cachedAt:J

    return-void

    :cond_0
    sput-object p0, Lcom/sid/tvos/WatchNext;->cached:Ljava/util/Map;

    sget-object v0, Lcom/sid/tvos/WatchNext;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/sid/tvos/a0;

    const/4 v2, 0x4

    invoke-direct {v1, p1, p0, v2}, Lcom/sid/tvos/a0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static load(Landroid/content/Context;Lcom/sid/tvos/WatchNext$Callback;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sid/tvos/WatchNext$Callback;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sid/tvos/WatchNext$Item;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/sid/tvos/WatchNext;->cachedAt:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/sid/tvos/WatchNext;->cachedAt:J

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sid/tvos/a0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v2}, Lcom/sid/tvos/a0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string p0, "watch-next"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    sget-object p0, Lcom/sid/tvos/WatchNext;->cached:Ljava/util/Map;

    return-object p0
.end method

.method private static query(Landroid/content/Context;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sid/tvos/WatchNext$Item;",
            ">;>;"
        }
    .end annotation

    move-object v12, p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    invoke-static {v12, v0}, Lcom/sid/tvos/FeatureBridge;->merge(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lk/s;->e()Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/sid/tvos/WatchNext;->COLUMNS:[Ljava/lang/String;

    const-string v8, "last_engagement_time_utc_millis DESC"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    invoke-static {v12, v0}, Lcom/sid/tvos/FeatureBridge;->merge(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v2, 0xb

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    new-instance v3, Lcom/sid/tvos/WatchNext$Item;

    invoke-direct {v3}, Lcom/sid/tvos/WatchNext$Item;-><init>()V

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/sid/tvos/WatchNext$Item;->title:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_7

    if-eqz v7, :cond_7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_1

    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " \u00b7 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_6
    :goto_1
    const-string v5, ""

    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "S"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " \u00b7 E"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    iput-object v5, v3, Lcom/sid/tvos/WatchNext$Item;->subtitle:Ljava/lang/String;

    goto :goto_4

    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_3

    :cond_8
    const/4 v5, 0x5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :goto_4
    const/4 v5, 0x6

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_9

    goto :goto_5

    :cond_9
    move-object v5, v6

    :goto_5
    iput-object v5, v3, Lcom/sid/tvos/WatchNext$Item;->art:Ljava/lang/String;

    const/16 v5, 0x9

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/16 v7, 0xa

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_a

    long-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v5, v5, v6

    long-to-float v7, v7

    div-float/2addr v5, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    goto :goto_6

    :cond_a
    const/high16 v5, -0x40800000    # -1.0f

    :goto_6
    iput v5, v3, Lcom/sid/tvos/WatchNext$Item;->progress:F

    const/16 v5, 0x8

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_b

    :try_start_2
    invoke-static {v5, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, v3, Lcom/sid/tvos/WatchNext$Item;->intent:Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :cond_b
    :try_start_3
    iget-object v4, v3, Lcom/sid/tvos/WatchNext$Item;->title:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_d

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/16 v5, 0xf

    if-ge v2, v5, :cond_2

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_e
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    invoke-static {p0, v0}, Lcom/sid/tvos/WatchNext;->addChannelRows(Landroid/content/Context;Ljava/util/Map;)V

    invoke-static {v12, v0}, Lcom/sid/tvos/FeatureBridge;->merge(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :goto_7
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw p0
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    const/4 p0, 0x0

    invoke-static {v12, p0}, Lcom/sid/tvos/FeatureBridge;->merge(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :catch_2
    invoke-static {v12, v0}, Lcom/sid/tvos/FeatureBridge;->merge(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
