.class public final Landroidx/recyclerview/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Li/e;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Landroidx/recyclerview/widget/f;

.field public final e:Ll/e;

.field public f:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/f;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Li/e;

    .line 5
    .line 6
    const/16 v1, 0x1e

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-direct {v0, v1, v2}, Li/e;-><init>(II)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/recyclerview/widget/a;->a:Li/e;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Landroidx/recyclerview/widget/a;->f:I

    .line 30
    .line 31
    iput-object p1, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/f;

    .line 32
    .line 33
    new-instance p1, Ll/e;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Ll/e;-><init>(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Landroidx/recyclerview/widget/a;->e:Ll/e;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr/a;

    iget v5, v4, Lr/a;->a:I

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    iget v4, v4, Lr/a;->d:I

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/a;->f(II)I

    move-result v4

    if-ne v4, p1, :cond_2

    return v7

    :cond_0
    if-ne v5, v7, :cond_2

    iget v5, v4, Lr/a;->b:I

    iget v4, v4, Lr/a;->d:I

    add-int/2addr v4, v5

    :goto_1
    if-ge v5, v4, :cond_2

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v5, v6}, Landroidx/recyclerview/widget/a;->f(II)I

    move-result v6

    if-ne v6, p1, :cond_1

    return v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Lr/a;

    .line 16
    .line 17
    iget-object v5, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/f;

    .line 18
    .line 19
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/f;->a(Lr/a;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->l(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    iput v2, p0, Landroidx/recyclerview/widget/a;->f:I

    .line 29
    .line 30
    return-void
.end method

.method public final c()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v1, :cond_4

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Lr/a;

    .line 19
    .line 20
    iget v5, v4, Lr/a;->a:I

    .line 21
    .line 22
    const/4 v6, 0x1

    .line 23
    iget-object v7, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/f;

    .line 24
    .line 25
    if-eq v5, v6, :cond_3

    .line 26
    .line 27
    const/4 v8, 0x2

    .line 28
    if-eq v5, v8, :cond_2

    .line 29
    .line 30
    const/4 v8, 0x4

    .line 31
    if-eq v5, v8, :cond_1

    .line 32
    .line 33
    const/16 v8, 0x8

    .line 34
    .line 35
    if-eq v5, v8, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/f;->a(Lr/a;)V

    .line 39
    .line 40
    .line 41
    iget v5, v4, Lr/a;->b:I

    .line 42
    .line 43
    iget v4, v4, Lr/a;->d:I

    .line 44
    .line 45
    iget-object v7, v7, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    .line 47
    invoke-virtual {v7, v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    .line 48
    .line 49
    .line 50
    iput-boolean v6, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/f;->a(Lr/a;)V

    .line 54
    .line 55
    .line 56
    iget v5, v4, Lr/a;->b:I

    .line 57
    .line 58
    iget v8, v4, Lr/a;->d:I

    .line 59
    .line 60
    iget-object v4, v4, Lr/a;->c:Ljava/lang/Object;

    .line 61
    .line 62
    iget-object v7, v7, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    .line 64
    invoke-virtual {v7, v5, v8, v4}, Landroidx/recyclerview/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iput-boolean v6, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/f;->a(Lr/a;)V

    .line 71
    .line 72
    .line 73
    iget v5, v4, Lr/a;->b:I

    .line 74
    .line 75
    iget v4, v4, Lr/a;->d:I

    .line 76
    .line 77
    iget-object v7, v7, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    .line 79
    invoke-virtual {v7, v5, v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 80
    .line 81
    .line 82
    iput-boolean v6, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 83
    .line 84
    iget-object v5, v7, Landroidx/recyclerview/widget/RecyclerView;->mState:Lr/Y;

    .line 85
    .line 86
    iget v6, v5, Lr/Y;->c:I

    .line 87
    .line 88
    add-int/2addr v6, v4

    .line 89
    iput v6, v5, Lr/Y;->c:I

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/f;->a(Lr/a;)V

    .line 93
    .line 94
    .line 95
    iget v5, v4, Lr/a;->b:I

    .line 96
    .line 97
    iget v4, v4, Lr/a;->d:I

    .line 98
    .line 99
    iget-object v7, v7, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    .line 101
    invoke-virtual {v7, v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 102
    .line 103
    .line 104
    iput-boolean v6, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 105
    .line 106
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->l(Ljava/util/List;)V

    .line 110
    .line 111
    .line 112
    iput v2, p0, Landroidx/recyclerview/widget/a;->f:I

    .line 113
    .line 114
    return-void
.end method

.method public final d(Lr/a;)V
    .locals 12

    .line 1
    iget v0, p1, Lr/a;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_8

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    if-eq v0, v2, :cond_8

    .line 9
    .line 10
    iget v2, p1, Lr/a;->b:I

    .line 11
    .line 12
    invoke-virtual {p0, v2, v0}, Landroidx/recyclerview/widget/a;->m(II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p1, Lr/a;->b:I

    .line 17
    .line 18
    iget v3, p1, Lr/a;->a:I

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    const/4 v5, 0x4

    .line 22
    if-eq v3, v4, :cond_1

    .line 23
    .line 24
    if-ne v3, v5, :cond_0

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "op should be remove or update."

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_1
    const/4 v3, 0x0

    .line 49
    :goto_0
    const/4 v6, 0x1

    .line 50
    const/4 v7, 0x1

    .line 51
    :goto_1
    iget v8, p1, Lr/a;->d:I

    .line 52
    .line 53
    const/4 v9, 0x0

    .line 54
    if-ge v6, v8, :cond_6

    .line 55
    .line 56
    iget v8, p1, Lr/a;->b:I

    .line 57
    .line 58
    mul-int v10, v3, v6

    .line 59
    .line 60
    add-int/2addr v10, v8

    .line 61
    iget v8, p1, Lr/a;->a:I

    .line 62
    .line 63
    invoke-virtual {p0, v10, v8}, Landroidx/recyclerview/widget/a;->m(II)I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    iget v10, p1, Lr/a;->a:I

    .line 68
    .line 69
    if-eq v10, v4, :cond_3

    .line 70
    .line 71
    if-eq v10, v5, :cond_2

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_2
    add-int/lit8 v11, v0, 0x1

    .line 75
    .line 76
    if-ne v8, v11, :cond_4

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    if-ne v8, v0, :cond_4

    .line 80
    .line 81
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_4
    :goto_3
    iget-object v11, p1, Lr/a;->c:Ljava/lang/Object;

    .line 85
    .line 86
    invoke-virtual {p0, v10, v0, v7, v11}, Landroidx/recyclerview/widget/a;->h(IIILjava/lang/Object;)Lr/a;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/a;->e(Lr/a;I)V

    .line 91
    .line 92
    .line 93
    iput-object v9, v0, Lr/a;->c:Ljava/lang/Object;

    .line 94
    .line 95
    iget-object v9, p0, Landroidx/recyclerview/widget/a;->a:Li/e;

    .line 96
    .line 97
    invoke-virtual {v9, v0}, Li/e;->b(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iget v0, p1, Lr/a;->a:I

    .line 101
    .line 102
    if-ne v0, v5, :cond_5

    .line 103
    .line 104
    add-int/2addr v2, v7

    .line 105
    :cond_5
    move v0, v8

    .line 106
    const/4 v7, 0x1

    .line 107
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_6
    iget-object v1, p1, Lr/a;->c:Ljava/lang/Object;

    .line 111
    .line 112
    iput-object v9, p1, Lr/a;->c:Ljava/lang/Object;

    .line 113
    .line 114
    iget-object v3, p0, Landroidx/recyclerview/widget/a;->a:Li/e;

    .line 115
    .line 116
    invoke-virtual {v3, p1}, Li/e;->b(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    if-lez v7, :cond_7

    .line 120
    .line 121
    iget p1, p1, Lr/a;->a:I

    .line 122
    .line 123
    invoke-virtual {p0, p1, v0, v7, v1}, Landroidx/recyclerview/widget/a;->h(IIILjava/lang/Object;)Lr/a;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/a;->e(Lr/a;I)V

    .line 128
    .line 129
    .line 130
    iput-object v9, p1, Lr/a;->c:Ljava/lang/Object;

    .line 131
    .line 132
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->a:Li/e;

    .line 133
    .line 134
    invoke-virtual {v0, p1}, Li/e;->b(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_7
    return-void

    .line 138
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 139
    .line 140
    const-string v0, "should not dispatch add or move for pre layout"

    .line 141
    .line 142
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p1
.end method

.method public final e(Lr/a;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/f;->a(Lr/a;)V

    .line 4
    .line 5
    .line 6
    iget v1, p1, Lr/a;->a:I

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x1

    .line 10
    iget-object v0, v0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    if-eq v1, v2, :cond_1

    .line 13
    .line 14
    const/4 v2, 0x4

    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    iget v1, p1, Lr/a;->d:I

    .line 18
    .line 19
    iget-object p1, p1, Lr/a;->c:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v0, p2, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string p2, "only remove and update ops can be dispatched in first pass"

    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_1
    iget p1, p1, Lr/a;->d:I

    .line 36
    .line 37
    invoke-virtual {v0, p2, p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 38
    .line 39
    .line 40
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 41
    .line 42
    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Lr/Y;

    .line 43
    .line 44
    iget v0, p2, Lr/Y;->c:I

    .line 45
    .line 46
    add-int/2addr v0, p1

    .line 47
    iput v0, p2, Lr/Y;->c:I

    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public final f(II)I
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge p2, v1, :cond_6

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr/a;

    iget v3, v2, Lr/a;->a:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    iget v3, v2, Lr/a;->b:I

    if-ne v3, p1, :cond_0

    iget p1, v2, Lr/a;->d:I

    goto :goto_1

    :cond_0
    if-ge v3, p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget v2, v2, Lr/a;->d:I

    if-gt v2, p1, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    iget v4, v2, Lr/a;->b:I

    if-gt v4, p1, :cond_5

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    iget v2, v2, Lr/a;->d:I

    add-int/2addr v4, v2

    if-ge p1, v4, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    sub-int/2addr p1, v2

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    iget v2, v2, Lr/a;->d:I

    add-int/2addr p1, v2

    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return p1
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h(IIILjava/lang/Object;)Lr/a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->a:Li/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Li/e;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lr/a;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lr/a;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput p1, v0, Lr/a;->a:I

    .line 17
    .line 18
    iput p2, v0, Lr/a;->b:I

    .line 19
    .line 20
    iput p3, v0, Lr/a;->d:I

    .line 21
    .line 22
    iput-object p4, v0, Lr/a;->c:Ljava/lang/Object;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput p1, v0, Lr/a;->a:I

    .line 26
    .line 27
    iput p2, v0, Lr/a;->b:I

    .line 28
    .line 29
    iput p3, v0, Lr/a;->d:I

    .line 30
    .line 31
    iput-object p4, v0, Lr/a;->c:Ljava/lang/Object;

    .line 32
    .line 33
    :goto_0
    return-object v0
.end method

.method public final i(Lr/a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget v0, p1, Lr/a;->a:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iget-object v2, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/f;

    .line 10
    .line 11
    if-eq v0, v1, :cond_3

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    if-eq v0, v3, :cond_2

    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    if-eq v0, v3, :cond_1

    .line 18
    .line 19
    const/16 v3, 0x8

    .line 20
    .line 21
    if-ne v0, v3, :cond_0

    .line 22
    .line 23
    iget v0, p1, Lr/a;->b:I

    .line 24
    .line 25
    iget p1, p1, Lr/a;->d:I

    .line 26
    .line 27
    iget-object v2, v2, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    invoke-virtual {v2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    .line 30
    .line 31
    .line 32
    iput-boolean v1, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "Unknown update op type for "

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_1
    iget v0, p1, Lr/a;->b:I

    .line 56
    .line 57
    iget v3, p1, Lr/a;->d:I

    .line 58
    .line 59
    iget-object p1, p1, Lr/a;->c:Ljava/lang/Object;

    .line 60
    .line 61
    iget-object v2, v2, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    .line 63
    invoke-virtual {v2, v0, v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iput-boolean v1, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget v0, p1, Lr/a;->b:I

    .line 70
    .line 71
    iget p1, p1, Lr/a;->d:I

    .line 72
    .line 73
    iget-object v2, v2, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    invoke-virtual {v2, v0, p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 77
    .line 78
    .line 79
    iput-boolean v1, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    iget v0, p1, Lr/a;->b:I

    .line 83
    .line 84
    iget p1, p1, Lr/a;->d:I

    .line 85
    .line 86
    iget-object v2, v2, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 87
    .line 88
    invoke-virtual {v2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 89
    .line 90
    .line 91
    iput-boolean v1, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 92
    .line 93
    :goto_0
    return-void
.end method

.method public final j()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/recyclerview/widget/a;->e:Ll/e;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x1

    .line 15
    sub-int/2addr v3, v4

    .line 16
    const/4 v6, 0x0

    .line 17
    :goto_1
    const/4 v7, -0x1

    .line 18
    const/16 v8, 0x8

    .line 19
    .line 20
    if-ltz v3, :cond_3

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v9

    .line 26
    check-cast v9, Lr/a;

    .line 27
    .line 28
    iget v9, v9, Lr/a;->a:I

    .line 29
    .line 30
    if-ne v9, v8, :cond_1

    .line 31
    .line 32
    if-eqz v6, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    const/4 v6, 0x1

    .line 36
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    const/4 v3, -0x1

    .line 40
    :goto_2
    const/4 v6, 0x0

    .line 41
    const/4 v9, 0x4

    .line 42
    const/4 v10, 0x2

    .line 43
    if-eq v3, v7, :cond_22

    .line 44
    .line 45
    add-int/lit8 v8, v3, 0x1

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v11

    .line 51
    check-cast v11, Lr/a;

    .line 52
    .line 53
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v12

    .line 57
    check-cast v12, Lr/a;

    .line 58
    .line 59
    iget v13, v12, Lr/a;->a:I

    .line 60
    .line 61
    if-eq v13, v4, :cond_1d

    .line 62
    .line 63
    iget-object v7, v2, Ll/e;->a:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v7, Landroidx/recyclerview/widget/a;

    .line 66
    .line 67
    if-eq v13, v10, :cond_b

    .line 68
    .line 69
    if-eq v13, v9, :cond_4

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    iget v5, v11, Lr/a;->d:I

    .line 73
    .line 74
    iget v10, v12, Lr/a;->b:I

    .line 75
    .line 76
    if-ge v5, v10, :cond_5

    .line 77
    .line 78
    add-int/lit8 v10, v10, -0x1

    .line 79
    .line 80
    iput v10, v12, Lr/a;->b:I

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_5
    iget v13, v12, Lr/a;->d:I

    .line 84
    .line 85
    add-int/2addr v10, v13

    .line 86
    if-ge v5, v10, :cond_6

    .line 87
    .line 88
    add-int/lit8 v13, v13, -0x1

    .line 89
    .line 90
    iput v13, v12, Lr/a;->d:I

    .line 91
    .line 92
    iget v5, v11, Lr/a;->b:I

    .line 93
    .line 94
    iget-object v10, v12, Lr/a;->c:Ljava/lang/Object;

    .line 95
    .line 96
    invoke-virtual {v7, v9, v5, v4, v10}, Landroidx/recyclerview/widget/a;->h(IIILjava/lang/Object;)Lr/a;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    goto :goto_4

    .line 101
    :cond_6
    :goto_3
    move-object v4, v6

    .line 102
    :goto_4
    iget v5, v11, Lr/a;->b:I

    .line 103
    .line 104
    iget v10, v12, Lr/a;->b:I

    .line 105
    .line 106
    if-gt v5, v10, :cond_7

    .line 107
    .line 108
    add-int/lit8 v10, v10, 0x1

    .line 109
    .line 110
    iput v10, v12, Lr/a;->b:I

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_7
    iget v13, v12, Lr/a;->d:I

    .line 114
    .line 115
    add-int/2addr v10, v13

    .line 116
    if-ge v5, v10, :cond_8

    .line 117
    .line 118
    sub-int/2addr v10, v5

    .line 119
    add-int/lit8 v5, v5, 0x1

    .line 120
    .line 121
    iget-object v13, v12, Lr/a;->c:Ljava/lang/Object;

    .line 122
    .line 123
    invoke-virtual {v7, v9, v5, v10, v13}, Landroidx/recyclerview/widget/a;->h(IIILjava/lang/Object;)Lr/a;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    iget v9, v12, Lr/a;->d:I

    .line 128
    .line 129
    sub-int/2addr v9, v10

    .line 130
    iput v9, v12, Lr/a;->d:I

    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_8
    :goto_5
    move-object v5, v6

    .line 134
    :goto_6
    invoke-virtual {v1, v8, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    iget v8, v12, Lr/a;->d:I

    .line 138
    .line 139
    if-lez v8, :cond_9

    .line 140
    .line 141
    invoke-virtual {v1, v3, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    goto :goto_7

    .line 145
    :cond_9
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    iput-object v6, v12, Lr/a;->c:Ljava/lang/Object;

    .line 152
    .line 153
    iget-object v6, v7, Landroidx/recyclerview/widget/a;->a:Li/e;

    .line 154
    .line 155
    invoke-virtual {v6, v12}, Li/e;->b(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :goto_7
    if-eqz v4, :cond_a

    .line 159
    .line 160
    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    :cond_a
    if-eqz v5, :cond_0

    .line 164
    .line 165
    invoke-virtual {v1, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_b
    iget v9, v11, Lr/a;->b:I

    .line 171
    .line 172
    iget v13, v11, Lr/a;->d:I

    .line 173
    .line 174
    iget v14, v12, Lr/a;->b:I

    .line 175
    .line 176
    if-ge v9, v13, :cond_d

    .line 177
    .line 178
    if-ne v14, v9, :cond_c

    .line 179
    .line 180
    iget v14, v12, Lr/a;->d:I

    .line 181
    .line 182
    sub-int v9, v13, v9

    .line 183
    .line 184
    if-ne v14, v9, :cond_c

    .line 185
    .line 186
    const/4 v5, 0x1

    .line 187
    :goto_8
    const/4 v9, 0x0

    .line 188
    goto :goto_a

    .line 189
    :cond_c
    const/4 v5, 0x0

    .line 190
    goto :goto_8

    .line 191
    :cond_d
    add-int/lit8 v15, v13, 0x1

    .line 192
    .line 193
    if-ne v14, v15, :cond_e

    .line 194
    .line 195
    iget v14, v12, Lr/a;->d:I

    .line 196
    .line 197
    sub-int/2addr v9, v13

    .line 198
    if-ne v14, v9, :cond_e

    .line 199
    .line 200
    const/4 v5, 0x1

    .line 201
    :goto_9
    const/4 v9, 0x1

    .line 202
    goto :goto_a

    .line 203
    :cond_e
    const/4 v5, 0x0

    .line 204
    goto :goto_9

    .line 205
    :goto_a
    iget v14, v12, Lr/a;->b:I

    .line 206
    .line 207
    if-ge v13, v14, :cond_f

    .line 208
    .line 209
    add-int/lit8 v14, v14, -0x1

    .line 210
    .line 211
    iput v14, v12, Lr/a;->b:I

    .line 212
    .line 213
    goto :goto_b

    .line 214
    :cond_f
    iget v15, v12, Lr/a;->d:I

    .line 215
    .line 216
    add-int/2addr v14, v15

    .line 217
    if-ge v13, v14, :cond_10

    .line 218
    .line 219
    add-int/lit8 v15, v15, -0x1

    .line 220
    .line 221
    iput v15, v12, Lr/a;->d:I

    .line 222
    .line 223
    iput v10, v11, Lr/a;->a:I

    .line 224
    .line 225
    iput v4, v11, Lr/a;->d:I

    .line 226
    .line 227
    iget v3, v12, Lr/a;->d:I

    .line 228
    .line 229
    if-nez v3, :cond_0

    .line 230
    .line 231
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    iput-object v6, v12, Lr/a;->c:Ljava/lang/Object;

    .line 238
    .line 239
    iget-object v3, v7, Landroidx/recyclerview/widget/a;->a:Li/e;

    .line 240
    .line 241
    invoke-virtual {v3, v12}, Li/e;->b(Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_0

    .line 245
    .line 246
    :cond_10
    :goto_b
    iget v4, v11, Lr/a;->b:I

    .line 247
    .line 248
    iget v13, v12, Lr/a;->b:I

    .line 249
    .line 250
    if-gt v4, v13, :cond_11

    .line 251
    .line 252
    add-int/lit8 v13, v13, 0x1

    .line 253
    .line 254
    iput v13, v12, Lr/a;->b:I

    .line 255
    .line 256
    goto :goto_c

    .line 257
    :cond_11
    iget v14, v12, Lr/a;->d:I

    .line 258
    .line 259
    add-int/2addr v13, v14

    .line 260
    if-ge v4, v13, :cond_12

    .line 261
    .line 262
    sub-int/2addr v13, v4

    .line 263
    add-int/lit8 v4, v4, 0x1

    .line 264
    .line 265
    invoke-virtual {v7, v10, v4, v13, v6}, Landroidx/recyclerview/widget/a;->h(IIILjava/lang/Object;)Lr/a;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    iget v10, v11, Lr/a;->b:I

    .line 270
    .line 271
    iget v13, v12, Lr/a;->b:I

    .line 272
    .line 273
    sub-int/2addr v10, v13

    .line 274
    iput v10, v12, Lr/a;->d:I

    .line 275
    .line 276
    goto :goto_d

    .line 277
    :cond_12
    :goto_c
    move-object v4, v6

    .line 278
    :goto_d
    if-eqz v5, :cond_13

    .line 279
    .line 280
    invoke-virtual {v1, v3, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    iput-object v6, v11, Lr/a;->c:Ljava/lang/Object;

    .line 290
    .line 291
    iget-object v3, v7, Landroidx/recyclerview/widget/a;->a:Li/e;

    .line 292
    .line 293
    invoke-virtual {v3, v11}, Li/e;->b(Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_0

    .line 297
    .line 298
    :cond_13
    if-eqz v9, :cond_17

    .line 299
    .line 300
    if-eqz v4, :cond_15

    .line 301
    .line 302
    iget v5, v11, Lr/a;->b:I

    .line 303
    .line 304
    iget v6, v4, Lr/a;->b:I

    .line 305
    .line 306
    if-le v5, v6, :cond_14

    .line 307
    .line 308
    iget v6, v4, Lr/a;->d:I

    .line 309
    .line 310
    sub-int/2addr v5, v6

    .line 311
    iput v5, v11, Lr/a;->b:I

    .line 312
    .line 313
    :cond_14
    iget v5, v11, Lr/a;->d:I

    .line 314
    .line 315
    iget v6, v4, Lr/a;->b:I

    .line 316
    .line 317
    if-le v5, v6, :cond_15

    .line 318
    .line 319
    iget v6, v4, Lr/a;->d:I

    .line 320
    .line 321
    sub-int/2addr v5, v6

    .line 322
    iput v5, v11, Lr/a;->d:I

    .line 323
    .line 324
    :cond_15
    iget v5, v11, Lr/a;->b:I

    .line 325
    .line 326
    iget v6, v12, Lr/a;->b:I

    .line 327
    .line 328
    if-le v5, v6, :cond_16

    .line 329
    .line 330
    iget v6, v12, Lr/a;->d:I

    .line 331
    .line 332
    sub-int/2addr v5, v6

    .line 333
    iput v5, v11, Lr/a;->b:I

    .line 334
    .line 335
    :cond_16
    iget v5, v11, Lr/a;->d:I

    .line 336
    .line 337
    iget v6, v12, Lr/a;->b:I

    .line 338
    .line 339
    if-le v5, v6, :cond_1b

    .line 340
    .line 341
    :goto_e
    iget v6, v12, Lr/a;->d:I

    .line 342
    .line 343
    sub-int/2addr v5, v6

    .line 344
    iput v5, v11, Lr/a;->d:I

    .line 345
    .line 346
    goto :goto_f

    .line 347
    :cond_17
    if-eqz v4, :cond_19

    .line 348
    .line 349
    iget v5, v11, Lr/a;->b:I

    .line 350
    .line 351
    iget v6, v4, Lr/a;->b:I

    .line 352
    .line 353
    if-lt v5, v6, :cond_18

    .line 354
    .line 355
    iget v6, v4, Lr/a;->d:I

    .line 356
    .line 357
    sub-int/2addr v5, v6

    .line 358
    iput v5, v11, Lr/a;->b:I

    .line 359
    .line 360
    :cond_18
    iget v5, v11, Lr/a;->d:I

    .line 361
    .line 362
    iget v6, v4, Lr/a;->b:I

    .line 363
    .line 364
    if-lt v5, v6, :cond_19

    .line 365
    .line 366
    iget v6, v4, Lr/a;->d:I

    .line 367
    .line 368
    sub-int/2addr v5, v6

    .line 369
    iput v5, v11, Lr/a;->d:I

    .line 370
    .line 371
    :cond_19
    iget v5, v11, Lr/a;->b:I

    .line 372
    .line 373
    iget v6, v12, Lr/a;->b:I

    .line 374
    .line 375
    if-lt v5, v6, :cond_1a

    .line 376
    .line 377
    iget v6, v12, Lr/a;->d:I

    .line 378
    .line 379
    sub-int/2addr v5, v6

    .line 380
    iput v5, v11, Lr/a;->b:I

    .line 381
    .line 382
    :cond_1a
    iget v5, v11, Lr/a;->d:I

    .line 383
    .line 384
    iget v6, v12, Lr/a;->b:I

    .line 385
    .line 386
    if-lt v5, v6, :cond_1b

    .line 387
    .line 388
    goto :goto_e

    .line 389
    :cond_1b
    :goto_f
    invoke-virtual {v1, v3, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    iget v5, v11, Lr/a;->b:I

    .line 393
    .line 394
    iget v6, v11, Lr/a;->d:I

    .line 395
    .line 396
    if-eq v5, v6, :cond_1c

    .line 397
    .line 398
    invoke-virtual {v1, v8, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    goto :goto_10

    .line 402
    :cond_1c
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    :goto_10
    if-eqz v4, :cond_0

    .line 406
    .line 407
    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    goto/16 :goto_0

    .line 411
    .line 412
    :cond_1d
    iget v4, v11, Lr/a;->d:I

    .line 413
    .line 414
    iget v6, v12, Lr/a;->b:I

    .line 415
    .line 416
    if-ge v4, v6, :cond_1e

    .line 417
    .line 418
    const/4 v5, -0x1

    .line 419
    goto :goto_11

    .line 420
    :cond_1e
    const/4 v5, 0x0

    .line 421
    :goto_11
    iget v7, v11, Lr/a;->b:I

    .line 422
    .line 423
    if-ge v7, v6, :cond_1f

    .line 424
    .line 425
    add-int/lit8 v5, v5, 0x1

    .line 426
    .line 427
    :cond_1f
    if-gt v6, v7, :cond_20

    .line 428
    .line 429
    iget v6, v12, Lr/a;->d:I

    .line 430
    .line 431
    add-int/2addr v7, v6

    .line 432
    iput v7, v11, Lr/a;->b:I

    .line 433
    .line 434
    :cond_20
    iget v6, v12, Lr/a;->b:I

    .line 435
    .line 436
    if-gt v6, v4, :cond_21

    .line 437
    .line 438
    iget v7, v12, Lr/a;->d:I

    .line 439
    .line 440
    add-int/2addr v4, v7

    .line 441
    iput v4, v11, Lr/a;->d:I

    .line 442
    .line 443
    :cond_21
    add-int/2addr v6, v5

    .line 444
    iput v6, v12, Lr/a;->b:I

    .line 445
    .line 446
    invoke-virtual {v1, v3, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v1, v8, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    goto/16 :goto_0

    .line 453
    .line 454
    :cond_22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    const/4 v3, 0x0

    .line 459
    :goto_12
    if-ge v3, v2, :cond_36

    .line 460
    .line 461
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v11

    .line 465
    check-cast v11, Lr/a;

    .line 466
    .line 467
    iget v12, v11, Lr/a;->a:I

    .line 468
    .line 469
    if-eq v12, v4, :cond_35

    .line 470
    .line 471
    iget-object v13, v0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/f;

    .line 472
    .line 473
    if-eq v12, v10, :cond_2c

    .line 474
    .line 475
    if-eq v12, v9, :cond_24

    .line 476
    .line 477
    if-eq v12, v8, :cond_23

    .line 478
    .line 479
    goto/16 :goto_1c

    .line 480
    .line 481
    :cond_23
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/a;->i(Lr/a;)V

    .line 482
    .line 483
    .line 484
    goto/16 :goto_1c

    .line 485
    .line 486
    :cond_24
    iget v12, v11, Lr/a;->b:I

    .line 487
    .line 488
    iget v14, v11, Lr/a;->d:I

    .line 489
    .line 490
    add-int/2addr v14, v12

    .line 491
    move v15, v12

    .line 492
    const/4 v5, 0x0

    .line 493
    :goto_13
    if-ge v12, v14, :cond_29

    .line 494
    .line 495
    invoke-virtual {v13, v12}, Landroidx/recyclerview/widget/f;->b(I)Landroidx/recyclerview/widget/o;

    .line 496
    .line 497
    .line 498
    move-result-object v16

    .line 499
    if-nez v16, :cond_27

    .line 500
    .line 501
    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/a;->a(I)Z

    .line 502
    .line 503
    .line 504
    move-result v16

    .line 505
    if-eqz v16, :cond_25

    .line 506
    .line 507
    goto :goto_14

    .line 508
    :cond_25
    if-ne v7, v4, :cond_26

    .line 509
    .line 510
    iget-object v7, v11, Lr/a;->c:Ljava/lang/Object;

    .line 511
    .line 512
    invoke-virtual {v0, v9, v15, v5, v7}, Landroidx/recyclerview/widget/a;->h(IIILjava/lang/Object;)Lr/a;

    .line 513
    .line 514
    .line 515
    move-result-object v5

    .line 516
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/a;->i(Lr/a;)V

    .line 517
    .line 518
    .line 519
    move v15, v12

    .line 520
    const/4 v5, 0x0

    .line 521
    :cond_26
    const/4 v7, 0x0

    .line 522
    goto :goto_15

    .line 523
    :cond_27
    :goto_14
    if-nez v7, :cond_28

    .line 524
    .line 525
    iget-object v7, v11, Lr/a;->c:Ljava/lang/Object;

    .line 526
    .line 527
    invoke-virtual {v0, v9, v15, v5, v7}, Landroidx/recyclerview/widget/a;->h(IIILjava/lang/Object;)Lr/a;

    .line 528
    .line 529
    .line 530
    move-result-object v5

    .line 531
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/a;->d(Lr/a;)V

    .line 532
    .line 533
    .line 534
    move v15, v12

    .line 535
    const/4 v5, 0x0

    .line 536
    :cond_28
    const/4 v7, 0x1

    .line 537
    :goto_15
    add-int/2addr v5, v4

    .line 538
    add-int/lit8 v12, v12, 0x1

    .line 539
    .line 540
    goto :goto_13

    .line 541
    :cond_29
    iget v12, v11, Lr/a;->d:I

    .line 542
    .line 543
    if-eq v5, v12, :cond_2a

    .line 544
    .line 545
    iget-object v12, v11, Lr/a;->c:Ljava/lang/Object;

    .line 546
    .line 547
    iput-object v6, v11, Lr/a;->c:Ljava/lang/Object;

    .line 548
    .line 549
    iget-object v13, v0, Landroidx/recyclerview/widget/a;->a:Li/e;

    .line 550
    .line 551
    invoke-virtual {v13, v11}, Li/e;->b(Ljava/lang/Object;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v0, v9, v15, v5, v12}, Landroidx/recyclerview/widget/a;->h(IIILjava/lang/Object;)Lr/a;

    .line 555
    .line 556
    .line 557
    move-result-object v11

    .line 558
    :cond_2a
    if-nez v7, :cond_2b

    .line 559
    .line 560
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/a;->d(Lr/a;)V

    .line 561
    .line 562
    .line 563
    goto/16 :goto_1c

    .line 564
    .line 565
    :cond_2b
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/a;->i(Lr/a;)V

    .line 566
    .line 567
    .line 568
    goto :goto_1c

    .line 569
    :cond_2c
    iget v5, v11, Lr/a;->b:I

    .line 570
    .line 571
    iget v7, v11, Lr/a;->d:I

    .line 572
    .line 573
    add-int/2addr v7, v5

    .line 574
    move v12, v5

    .line 575
    const/4 v14, 0x0

    .line 576
    const/4 v15, -0x1

    .line 577
    :goto_16
    if-ge v12, v7, :cond_32

    .line 578
    .line 579
    invoke-virtual {v13, v12}, Landroidx/recyclerview/widget/f;->b(I)Landroidx/recyclerview/widget/o;

    .line 580
    .line 581
    .line 582
    move-result-object v16

    .line 583
    if-nez v16, :cond_2f

    .line 584
    .line 585
    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/a;->a(I)Z

    .line 586
    .line 587
    .line 588
    move-result v16

    .line 589
    if-eqz v16, :cond_2d

    .line 590
    .line 591
    goto :goto_18

    .line 592
    :cond_2d
    if-ne v15, v4, :cond_2e

    .line 593
    .line 594
    invoke-virtual {v0, v10, v5, v14, v6}, Landroidx/recyclerview/widget/a;->h(IIILjava/lang/Object;)Lr/a;

    .line 595
    .line 596
    .line 597
    move-result-object v15

    .line 598
    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/a;->i(Lr/a;)V

    .line 599
    .line 600
    .line 601
    const/4 v15, 0x1

    .line 602
    goto :goto_17

    .line 603
    :cond_2e
    const/4 v15, 0x0

    .line 604
    :goto_17
    const/16 v16, 0x0

    .line 605
    .line 606
    goto :goto_1a

    .line 607
    :cond_2f
    :goto_18
    if-nez v15, :cond_30

    .line 608
    .line 609
    invoke-virtual {v0, v10, v5, v14, v6}, Landroidx/recyclerview/widget/a;->h(IIILjava/lang/Object;)Lr/a;

    .line 610
    .line 611
    .line 612
    move-result-object v15

    .line 613
    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/a;->d(Lr/a;)V

    .line 614
    .line 615
    .line 616
    const/4 v15, 0x1

    .line 617
    goto :goto_19

    .line 618
    :cond_30
    const/4 v15, 0x0

    .line 619
    :goto_19
    const/16 v16, 0x1

    .line 620
    .line 621
    :goto_1a
    if-eqz v15, :cond_31

    .line 622
    .line 623
    sub-int/2addr v12, v14

    .line 624
    sub-int/2addr v7, v14

    .line 625
    const/4 v14, 0x1

    .line 626
    goto :goto_1b

    .line 627
    :cond_31
    add-int/lit8 v14, v14, 0x1

    .line 628
    .line 629
    :goto_1b
    add-int/2addr v12, v4

    .line 630
    move/from16 v15, v16

    .line 631
    .line 632
    goto :goto_16

    .line 633
    :cond_32
    iget v7, v11, Lr/a;->d:I

    .line 634
    .line 635
    if-eq v14, v7, :cond_33

    .line 636
    .line 637
    iput-object v6, v11, Lr/a;->c:Ljava/lang/Object;

    .line 638
    .line 639
    iget-object v7, v0, Landroidx/recyclerview/widget/a;->a:Li/e;

    .line 640
    .line 641
    invoke-virtual {v7, v11}, Li/e;->b(Ljava/lang/Object;)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v0, v10, v5, v14, v6}, Landroidx/recyclerview/widget/a;->h(IIILjava/lang/Object;)Lr/a;

    .line 645
    .line 646
    .line 647
    move-result-object v11

    .line 648
    :cond_33
    if-nez v15, :cond_34

    .line 649
    .line 650
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/a;->d(Lr/a;)V

    .line 651
    .line 652
    .line 653
    goto :goto_1c

    .line 654
    :cond_34
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/a;->i(Lr/a;)V

    .line 655
    .line 656
    .line 657
    goto :goto_1c

    .line 658
    :cond_35
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/a;->i(Lr/a;)V

    .line 659
    .line 660
    .line 661
    :goto_1c
    add-int/lit8 v3, v3, 0x1

    .line 662
    .line 663
    const/4 v7, -0x1

    .line 664
    goto/16 :goto_12

    .line 665
    .line 666
    :cond_36
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 667
    .line 668
    .line 669
    return-void
.end method

.method public final k(Lr/a;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lr/a;->c:Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->a:Li/e;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Li/e;->b(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final l(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr/a;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/a;->k(Lr/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final m(II)I
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    :goto_0
    const/16 v3, 0x8

    .line 10
    .line 11
    if-ltz v1, :cond_d

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Lr/a;

    .line 18
    .line 19
    iget v5, v4, Lr/a;->a:I

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    if-ne v5, v3, :cond_8

    .line 23
    .line 24
    iget v3, v4, Lr/a;->b:I

    .line 25
    .line 26
    iget v5, v4, Lr/a;->d:I

    .line 27
    .line 28
    if-ge v3, v5, :cond_0

    .line 29
    .line 30
    move v7, v3

    .line 31
    move v8, v5

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    move v8, v3

    .line 34
    move v7, v5

    .line 35
    :goto_1
    if-lt p1, v7, :cond_6

    .line 36
    .line 37
    if-gt p1, v8, :cond_6

    .line 38
    .line 39
    if-ne v7, v3, :cond_3

    .line 40
    .line 41
    if-ne p2, v2, :cond_1

    .line 42
    .line 43
    add-int/lit8 v5, v5, 0x1

    .line 44
    .line 45
    :goto_2
    iput v5, v4, Lr/a;->d:I

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_1
    if-ne p2, v6, :cond_2

    .line 49
    .line 50
    add-int/lit8 v5, v5, -0x1

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    :goto_3
    add-int/lit8 p1, p1, 0x1

    .line 54
    .line 55
    goto :goto_8

    .line 56
    :cond_3
    if-ne p2, v2, :cond_4

    .line 57
    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    :goto_4
    iput v3, v4, Lr/a;->b:I

    .line 61
    .line 62
    goto :goto_5

    .line 63
    :cond_4
    if-ne p2, v6, :cond_5

    .line 64
    .line 65
    add-int/lit8 v3, v3, -0x1

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_5
    :goto_5
    add-int/lit8 p1, p1, -0x1

    .line 69
    .line 70
    goto :goto_8

    .line 71
    :cond_6
    if-ge p1, v3, :cond_c

    .line 72
    .line 73
    if-ne p2, v2, :cond_7

    .line 74
    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 76
    .line 77
    iput v3, v4, Lr/a;->b:I

    .line 78
    .line 79
    add-int/lit8 v5, v5, 0x1

    .line 80
    .line 81
    :goto_6
    iput v5, v4, Lr/a;->d:I

    .line 82
    .line 83
    goto :goto_8

    .line 84
    :cond_7
    if-ne p2, v6, :cond_c

    .line 85
    .line 86
    add-int/lit8 v3, v3, -0x1

    .line 87
    .line 88
    iput v3, v4, Lr/a;->b:I

    .line 89
    .line 90
    add-int/lit8 v5, v5, -0x1

    .line 91
    .line 92
    goto :goto_6

    .line 93
    :cond_8
    iget v3, v4, Lr/a;->b:I

    .line 94
    .line 95
    if-gt v3, p1, :cond_a

    .line 96
    .line 97
    if-ne v5, v2, :cond_9

    .line 98
    .line 99
    iget v3, v4, Lr/a;->d:I

    .line 100
    .line 101
    sub-int/2addr p1, v3

    .line 102
    goto :goto_8

    .line 103
    :cond_9
    if-ne v5, v6, :cond_c

    .line 104
    .line 105
    iget v3, v4, Lr/a;->d:I

    .line 106
    .line 107
    add-int/2addr p1, v3

    .line 108
    goto :goto_8

    .line 109
    :cond_a
    if-ne p2, v2, :cond_b

    .line 110
    .line 111
    add-int/lit8 v3, v3, 0x1

    .line 112
    .line 113
    :goto_7
    iput v3, v4, Lr/a;->b:I

    .line 114
    .line 115
    goto :goto_8

    .line 116
    :cond_b
    if-ne p2, v6, :cond_c

    .line 117
    .line 118
    add-int/lit8 v3, v3, -0x1

    .line 119
    .line 120
    goto :goto_7

    .line 121
    :cond_c
    :goto_8
    add-int/lit8 v1, v1, -0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    sub-int/2addr p2, v2

    .line 129
    :goto_9
    if-ltz p2, :cond_11

    .line 130
    .line 131
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Lr/a;

    .line 136
    .line 137
    iget v2, v1, Lr/a;->a:I

    .line 138
    .line 139
    const/4 v4, 0x0

    .line 140
    if-ne v2, v3, :cond_f

    .line 141
    .line 142
    iget v2, v1, Lr/a;->d:I

    .line 143
    .line 144
    iget v5, v1, Lr/a;->b:I

    .line 145
    .line 146
    if-eq v2, v5, :cond_e

    .line 147
    .line 148
    if-gez v2, :cond_10

    .line 149
    .line 150
    :cond_e
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    :goto_a
    iput-object v4, v1, Lr/a;->c:Ljava/lang/Object;

    .line 154
    .line 155
    iget-object v2, p0, Landroidx/recyclerview/widget/a;->a:Li/e;

    .line 156
    .line 157
    invoke-virtual {v2, v1}, Li/e;->b(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    goto :goto_b

    .line 161
    :cond_f
    iget v2, v1, Lr/a;->d:I

    .line 162
    .line 163
    if-gtz v2, :cond_10

    .line 164
    .line 165
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    goto :goto_a

    .line 169
    :cond_10
    :goto_b
    add-int/lit8 p2, p2, -0x1

    .line 170
    .line 171
    goto :goto_9

    .line 172
    :cond_11
    return p1
.end method
