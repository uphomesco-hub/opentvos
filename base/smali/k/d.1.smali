.class public final Lk/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/view/ViewParent;

.field public b:Landroid/view/ViewParent;

.field public final c:Landroid/view/View;

.field public d:Z

.field public e:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk/d;->c:Landroid/view/View;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(II[I[II)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lk/d;->d:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_9

    .line 5
    .line 6
    invoke-virtual {p0, p5}, Lk/d;->c(I)Landroid/view/ViewParent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    const/4 v2, 0x1

    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    if-eqz p4, :cond_9

    .line 20
    .line 21
    aput v1, p4, v1

    .line 22
    .line 23
    aput v1, p4, v2

    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_2
    :goto_0
    iget-object v3, p0, Lk/d;->c:Landroid/view/View;

    .line 27
    .line 28
    if-eqz p4, :cond_3

    .line 29
    .line 30
    invoke-virtual {v3, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 31
    .line 32
    .line 33
    aget v4, p4, v1

    .line 34
    .line 35
    aget v5, p4, v2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    :goto_1
    if-nez p3, :cond_5

    .line 41
    .line 42
    iget-object p3, p0, Lk/d;->e:[I

    .line 43
    .line 44
    if-nez p3, :cond_4

    .line 45
    .line 46
    const/4 p3, 0x2

    .line 47
    new-array p3, p3, [I

    .line 48
    .line 49
    iput-object p3, p0, Lk/d;->e:[I

    .line 50
    .line 51
    :cond_4
    iget-object p3, p0, Lk/d;->e:[I

    .line 52
    .line 53
    :cond_5
    aput v1, p3, v1

    .line 54
    .line 55
    aput v1, p3, v2

    .line 56
    .line 57
    if-nez p5, :cond_6

    .line 58
    .line 59
    :try_start_0
    invoke-interface {v0, v3, p1, p2, p3}, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catch_0
    move-exception p1

    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string p5, "ViewParent "

    .line 67
    .line 68
    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p5, " does not implement interface method onNestedPreScroll"

    .line 75
    .line 76
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    const-string p5, "ViewParentCompat"

    .line 84
    .line 85
    invoke-static {p5, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .line 87
    .line 88
    :cond_6
    :goto_2
    if-eqz p4, :cond_7

    .line 89
    .line 90
    invoke-virtual {v3, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 91
    .line 92
    .line 93
    aget p1, p4, v1

    .line 94
    .line 95
    sub-int/2addr p1, v4

    .line 96
    aput p1, p4, v1

    .line 97
    .line 98
    aget p1, p4, v2

    .line 99
    .line 100
    sub-int/2addr p1, v5

    .line 101
    aput p1, p4, v2

    .line 102
    .line 103
    :cond_7
    aget p1, p3, v1

    .line 104
    .line 105
    if-nez p1, :cond_8

    .line 106
    .line 107
    aget p1, p3, v2

    .line 108
    .line 109
    if-eqz p1, :cond_9

    .line 110
    .line 111
    :cond_8
    const/4 v1, 0x1

    .line 112
    :cond_9
    :goto_3
    return v1
.end method

.method public final b(IIII[II[I)Z
    .locals 15

    move-object v1, p0

    move-object/from16 v8, p5

    move/from16 v0, p6

    .line 1
    iget-boolean v2, v1, Lk/d;->d:Z

    const/4 v9, 0x0

    if-eqz v2, :cond_8

    .line 2
    invoke-virtual {p0, v0}, Lk/d;->c(I)Landroid/view/ViewParent;

    move-result-object v10

    if-nez v10, :cond_0

    return v9

    :cond_0
    const/4 v11, 0x1

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v8, :cond_8

    aput v9, v8, v9

    aput v9, v8, v11

    goto/16 :goto_4

    :cond_2
    :goto_0
    iget-object v12, v1, Lk/d;->c:Landroid/view/View;

    if-eqz v8, :cond_3

    invoke-virtual {v12, v8}, Landroid/view/View;->getLocationInWindow([I)V

    aget v2, v8, v9

    aget v3, v8, v11

    move v13, v2

    move v14, v3

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-nez p7, :cond_5

    .line 3
    iget-object v2, v1, Lk/d;->e:[I

    if-nez v2, :cond_4

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, v1, Lk/d;->e:[I

    :cond_4
    iget-object v2, v1, Lk/d;->e:[I

    .line 4
    aput v9, v2, v9

    aput v9, v2, v11

    goto :goto_2

    :cond_5
    move-object/from16 v2, p7

    :goto_2
    iget-object v3, v1, Lk/d;->c:Landroid/view/View;

    .line 5
    aget v4, v2, v9

    add-int v4, v4, p3

    aput v4, v2, v9

    aget v4, v2, v11

    add-int v4, v4, p4

    aput v4, v2, v11

    if-nez v0, :cond_6

    move-object v2, v10

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    :try_start_0
    invoke-interface/range {v2 .. v7}, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "ViewParent "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not implement interface method onNestedScroll"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ViewParentCompat"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_3
    if-eqz v8, :cond_7

    .line 6
    invoke-virtual {v12, v8}, Landroid/view/View;->getLocationInWindow([I)V

    aget v0, v8, v9

    sub-int/2addr v0, v13

    aput v0, v8, v9

    aget v0, v8, v11

    sub-int/2addr v0, v14

    aput v0, v8, v11

    :cond_7
    return v11

    :cond_8
    :goto_4
    return v9
.end method

.method public final c(I)Landroid/view/ViewParent;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object p1, p0, Lk/d;->b:Landroid/view/ViewParent;

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_1
    iget-object p1, p0, Lk/d;->a:Landroid/view/ViewParent;

    .line 12
    .line 13
    return-object p1
.end method

.method public final d(II)Z
    .locals 10

    .line 1
    invoke-virtual {p0, p2}, Lk/d;->c(I)Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return v2

    .line 15
    :cond_1
    iget-boolean v0, p0, Lk/d;->d:Z

    .line 16
    .line 17
    if-eqz v0, :cond_8

    .line 18
    .line 19
    iget-object v0, p0, Lk/d;->c:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    move-object v4, v0

    .line 26
    :goto_1
    if-eqz v3, :cond_8

    .line 27
    .line 28
    const-string v5, "ViewParentCompat"

    .line 29
    .line 30
    const-string v6, "ViewParent "

    .line 31
    .line 32
    if-nez p2, :cond_2

    .line 33
    .line 34
    :try_start_0
    invoke-interface {v3, v4, v0, p1}, Landroid/view/ViewParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    .line 35
    .line 36
    .line 37
    move-result v7
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_2

    .line 39
    :catch_0
    move-exception v7

    .line 40
    new-instance v8, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v9, " does not implement interface method onStartNestedScroll"

    .line 49
    .line 50
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    invoke-static {v5, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .line 59
    .line 60
    :cond_2
    const/4 v7, 0x0

    .line 61
    :goto_2
    if-eqz v7, :cond_6

    .line 62
    .line 63
    if-eqz p2, :cond_4

    .line 64
    .line 65
    if-eq p2, v2, :cond_3

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_3
    iput-object v3, p0, Lk/d;->b:Landroid/view/ViewParent;

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    iput-object v3, p0, Lk/d;->a:Landroid/view/ViewParent;

    .line 72
    .line 73
    :goto_3
    if-nez p2, :cond_5

    .line 74
    .line 75
    :try_start_1
    invoke-interface {v3, v4, v0, p1}, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    .line 77
    .line 78
    goto :goto_4

    .line 79
    :catch_1
    move-exception p1

    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v0, " does not implement interface method onNestedScrollAccepted"

    .line 89
    .line 90
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-static {v5, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .line 99
    .line 100
    :cond_5
    :goto_4
    return v2

    .line 101
    :cond_6
    instance-of v5, v3, Landroid/view/View;

    .line 102
    .line 103
    if-eqz v5, :cond_7

    .line 104
    .line 105
    move-object v4, v3

    .line 106
    check-cast v4, Landroid/view/View;

    .line 107
    .line 108
    :cond_7
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    goto :goto_1

    .line 113
    :cond_8
    return v1
.end method

.method public final e(I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lk/d;->c(I)Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v1, p0, Lk/d;->c:Landroid/view/View;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->onStopNestedScroll(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v3, "ViewParent "

    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, " does not implement interface method onStopNestedScroll"

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v2, "ViewParentCompat"

    .line 36
    .line 37
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    if-eq p1, v1, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    iput-object v0, p0, Lk/d;->b:Landroid/view/ViewParent;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iput-object v0, p0, Lk/d;->a:Landroid/view/ViewParent;

    .line 51
    .line 52
    :cond_3
    :goto_1
    return-void
.end method
