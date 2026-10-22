.class abstract Lcom/sid/tvos/DarkSchedule;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static apply(Landroid/content/Context;)Z
    .locals 8

    invoke-static {p0}, Lcom/sid/tvos/DarkSchedule;->mode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {p0}, Lcom/sid/tvos/DarkSchedule;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "dark_hold_until"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    return v1

    :cond_1
    invoke-static {p0, v0}, Lcom/sid/tvos/DarkSchedule;->isDark(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result v0

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->dark(Landroid/content/Context;)Z

    move-result v2

    if-ne v0, v2, :cond_2

    return v1

    :cond_2
    invoke-static {p0, v0}, Lcom/sid/tvos/Appearance;->setDark(Landroid/content/Context;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public static customOff(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lcom/sid/tvos/DarkSchedule;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "dark_off_min"

    const/16 v1, 0x1a4

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static customOn(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lcom/sid/tvos/DarkSchedule;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "dark_on_min"

    const/16 v1, 0x528

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static holdManual(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/sid/tvos/DarkSchedule;->mode(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/sid/tvos/DarkSchedule;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sid/tvos/DarkSchedule;->next(Landroid/content/Context;Ljava/util/Calendar;)J

    move-result-wide v1

    const-string p0, "dark_hold_until"

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static isDark(Landroid/content/Context;Ljava/util/Calendar;)Z
    .locals 3

    invoke-static {p0, p1}, Lcom/sid/tvos/DarkSchedule;->window(Landroid/content/Context;Ljava/util/Calendar;)[I

    move-result-object p0

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr p1, v0

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget p0, p0, v2

    if-gt v1, p0, :cond_1

    if-lt p1, v1, :cond_2

    if-ge p1, p0, :cond_2

    :cond_0
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    if-ge p1, v1, :cond_0

    if-ge p1, p0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static mode(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lcom/sid/tvos/DarkSchedule;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "dark_schedule"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static next(Landroid/content/Context;Ljava/util/Calendar;)J
    .locals 5

    invoke-static {p0, p1}, Lcom/sid/tvos/DarkSchedule;->isDark(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result v0

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    :goto_0
    const/16 v2, 0xb40

    if-ge v3, v2, :cond_1

    const/16 v2, 0xc

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->add(II)V

    invoke-static {p0, v1}, Lcom/sid/tvos/DarkSchedule;->isDark(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    const-wide/32 v0, 0x5265c00

    add-long/2addr p0, v0

    return-wide p0
.end method

.method private static norm(DD)D
    .locals 3

    rem-double/2addr p0, p2

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    add-double/2addr p0, p2

    :cond_0
    return-wide p0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "appearance"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static setCustom(Landroid/content/Context;II)V
    .locals 1

    invoke-static {p0}, Lcom/sid/tvos/DarkSchedule;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "dark_on_min"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "dark_off_min"

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "dark_hold_until"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMode(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p0}, Lcom/sid/tvos/DarkSchedule;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "dark_schedule"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "dark_hold_until"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static sin(D)D
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static sun(Ljava/util/Calendar;DDZ)I
    .locals 21

    const/4 v0, 0x6

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    div-double v5, p3, v3

    int-to-double v7, v2

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    :goto_0
    int-to-double v9, v0

    sub-double/2addr v9, v5

    const-wide/high16 v11, 0x4038000000000000L    # 24.0

    div-double/2addr v9, v11

    add-double/2addr v9, v7

    const-wide v7, 0x3fef8a0902de00d2L    # 0.9856

    mul-double v7, v7, v9

    const-wide v13, 0x400a4fdf3b645a1dL    # 3.289

    sub-double/2addr v7, v13

    const-wide v13, 0x3ffea7ef9db22d0eL    # 1.916

    invoke-static {v7, v8}, Lcom/sid/tvos/DarkSchedule;->sin(D)D

    move-result-wide v15

    mul-double v15, v15, v13

    add-double/2addr v15, v7

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double v7, v7, v13

    invoke-static {v7, v8}, Lcom/sid/tvos/DarkSchedule;->sin(D)D

    move-result-wide v7

    const-wide v13, 0x3f947ae147ae147bL    # 0.02

    mul-double v7, v7, v13

    add-double/2addr v7, v15

    const-wide v13, 0x4071aa24dd2f1aa0L    # 282.634

    add-double/2addr v7, v13

    const-wide v13, 0x4076800000000000L    # 360.0

    invoke-static {v7, v8, v13, v14}, Lcom/sid/tvos/DarkSchedule;->norm(DD)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->tan(D)D

    move-result-wide v15

    const-wide v17, 0x3fed5d4e8fb00bccL    # 0.91764

    mul-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->atan(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v11

    invoke-static {v11, v12, v13, v14}, Lcom/sid/tvos/DarkSchedule;->norm(DD)D

    move-result-wide v11

    const-wide v15, 0x4056800000000000L    # 90.0

    div-double v17, v7, v15

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->floor(D)D

    move-result-wide v17

    mul-double v17, v17, v15

    add-double v17, v17, v11

    div-double/2addr v11, v15

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    mul-double v11, v11, v15

    sub-double v17, v17, v11

    div-double v17, v17, v3

    const-wide v11, 0x3fd975e2046c764bL    # 0.39782

    invoke-static {v7, v8}, Lcom/sid/tvos/DarkSchedule;->sin(D)D

    move-result-wide v7

    mul-double v7, v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    const-wide v15, 0x4056b54fdf3b645aL    # 90.833

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    invoke-static/range {p1 .. p2}, Lcom/sid/tvos/DarkSchedule;->sin(D)D

    move-result-wide v19

    mul-double v7, v7, v19

    sub-double/2addr v15, v7

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v7, v7, v11

    div-double/2addr v15, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v15, v7

    if-gtz v0, :cond_3

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    cmpg-double v0, v15, v7

    if-gez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->acos(D)D

    move-result-wide v7

    if-eqz p5, :cond_2

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    sub-double/2addr v13, v7

    goto :goto_1

    :cond_2
    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    :goto_1
    div-double/2addr v13, v3

    add-double v13, v13, v17

    const-wide v2, 0x3fb0d25edd052935L    # 0.06571

    mul-double v9, v9, v2

    sub-double/2addr v13, v9

    const-wide v2, 0x401a7ced916872b0L    # 6.622

    sub-double/2addr v13, v2

    sub-double/2addr v13, v5

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    invoke-static {v13, v14, v2, v3}, Lcom/sid/tvos/DarkSchedule;->norm(DD)D

    move-result-wide v4

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-double v0, v0

    const-wide v6, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v6

    add-double/2addr v0, v4

    invoke-static {v0, v1, v2, v3}, Lcom/sid/tvos/DarkSchedule;->norm(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    rem-int/lit16 v1, v1, 0x5a0

    return v1

    :cond_3
    :goto_2
    const/4 v0, -0x1

    return v0
.end method

.method public static window(Landroid/content/Context;Ljava/util/Calendar;)[I
    .locals 12

    invoke-static {p0}, Lcom/sid/tvos/DarkSchedule;->mode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/sid/tvos/DarkSchedule;->customOn(Landroid/content/Context;)I

    move-result p1

    invoke-static {p0}, Lcom/sid/tvos/DarkSchedule;->customOff(Landroid/content/Context;)I

    move-result p0

    filled-new-array {p1, p0}, [I

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "weather"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "lat"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x186

    const/16 v3, 0x456

    if-nez v1, :cond_1

    filled-new-array {v3, v2}, [I

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v10, v0

    const-string v0, "lon"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    float-to-double v0, p0

    const/4 v9, 0x0

    move-object v4, p1

    move-wide v5, v10

    move-wide v7, v0

    invoke-static/range {v4 .. v9}, Lcom/sid/tvos/DarkSchedule;->sun(Ljava/util/Calendar;DDZ)I

    move-result p0

    const/4 v9, 0x1

    invoke-static/range {v4 .. v9}, Lcom/sid/tvos/DarkSchedule;->sun(Ljava/util/Calendar;DDZ)I

    move-result p1

    if-gez p0, :cond_2

    goto :goto_0

    :cond_2
    move v3, p0

    :goto_0
    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    move v2, p1

    :goto_1
    filled-new-array {v3, v2}, [I

    move-result-object p0

    return-object p0
.end method
