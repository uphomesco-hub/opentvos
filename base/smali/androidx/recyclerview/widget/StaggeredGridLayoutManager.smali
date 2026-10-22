.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.super Landroidx/recyclerview/widget/j;
.source "SourceFile"

# interfaces
.implements Lr/X;


# instance fields
.field public final a:I

.field public final b:[Lr/i0;

.field public final c:Lr/A;

.field public final d:Lr/A;

.field public final e:I

.field public f:I

.field public final g:Lr/s;

.field public h:Z

.field public i:Z

.field public final j:Ljava/util/BitSet;

.field public k:I

.field public l:I

.field public final m:Lr/g0;

.field public final n:I

.field public o:Z

.field public p:Z

.field public q:Lr/h0;

.field public final r:Landroid/graphics/Rect;

.field public final s:Lr/d0;

.field public final t:Z

.field public u:[I

.field public final v:Lr/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/j;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    .line 9
    .line 10
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 11
    .line 12
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 13
    .line 14
    const/high16 v0, -0x80000000

    .line 15
    .line 16
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    .line 17
    .line 18
    new-instance v0, Lr/g0;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Lr/g0;

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    iput v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    .line 27
    .line 28
    new-instance v2, Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroid/graphics/Rect;

    .line 34
    .line 35
    new-instance v2, Lr/d0;

    .line 36
    .line 37
    invoke-direct {v2, p0}, Lr/d0;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lr/d0;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    iput-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Z

    .line 44
    .line 45
    new-instance v3, Lr/j;

    .line 46
    .line 47
    const/4 v4, 0x1

    .line 48
    invoke-direct {v3, p0, v4}, Lr/j;-><init>(Ljava/lang/Object;I)V

    .line 49
    .line 50
    .line 51
    iput-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Lr/j;

    .line 52
    .line 53
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/j;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lr/M;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget p2, p1, Lr/M;->a:I

    .line 58
    .line 59
    if-eqz p2, :cond_1

    .line 60
    .line 61
    if-ne p2, v2, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 65
    .line 66
    const-string p2, "invalid orientation."

    .line 67
    .line 68
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1

    .line 72
    :cond_1
    :goto_0
    const/4 p3, 0x0

    .line 73
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 77
    .line 78
    if-ne p2, p4, :cond_2

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 82
    .line 83
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 84
    .line 85
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Lr/A;

    .line 86
    .line 87
    iput-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 88
    .line 89
    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Lr/A;

    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->requestLayout()V

    .line 92
    .line 93
    .line 94
    :goto_1
    iget p2, p1, Lr/M;->b:I

    .line 95
    .line 96
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 100
    .line 101
    if-eq p2, p4, :cond_4

    .line 102
    .line 103
    invoke-virtual {v0}, Lr/g0;->a()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->requestLayout()V

    .line 107
    .line 108
    .line 109
    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 110
    .line 111
    new-instance p2, Ljava/util/BitSet;

    .line 112
    .line 113
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 114
    .line 115
    invoke-direct {p2, p4}, Ljava/util/BitSet;-><init>(I)V

    .line 116
    .line 117
    .line 118
    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Ljava/util/BitSet;

    .line 119
    .line 120
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 121
    .line 122
    new-array p2, p2, [Lr/i0;

    .line 123
    .line 124
    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 125
    .line 126
    const/4 p2, 0x0

    .line 127
    :goto_2
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 128
    .line 129
    if-ge p2, p4, :cond_3

    .line 130
    .line 131
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 132
    .line 133
    new-instance v0, Lr/i0;

    .line 134
    .line 135
    invoke-direct {v0, p0, p2}, Lr/i0;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V

    .line 136
    .line 137
    .line 138
    aput-object v0, p4, p2

    .line 139
    .line 140
    add-int/lit8 p2, p2, 0x1

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->requestLayout()V

    .line 144
    .line 145
    .line 146
    :cond_4
    iget-boolean p1, p1, Lr/M;->c:Z

    .line 147
    .line 148
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Lr/h0;

    .line 152
    .line 153
    if-eqz p2, :cond_5

    .line 154
    .line 155
    iget-boolean p3, p2, Lr/h0;->h:Z

    .line 156
    .line 157
    if-eq p3, p1, :cond_5

    .line 158
    .line 159
    iput-boolean p1, p2, Lr/h0;->h:Z

    .line 160
    .line 161
    :cond_5
    iput-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    .line 162
    .line 163
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->requestLayout()V

    .line 164
    .line 165
    .line 166
    new-instance p1, Lr/s;

    .line 167
    .line 168
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 169
    .line 170
    .line 171
    iput-boolean v2, p1, Lr/s;->a:Z

    .line 172
    .line 173
    iput v1, p1, Lr/s;->f:I

    .line 174
    .line 175
    iput v1, p1, Lr/s;->g:I

    .line 176
    .line 177
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Lr/s;

    .line 178
    .line 179
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 180
    .line 181
    invoke-static {p0, p1}, Lr/A;->a(Landroidx/recyclerview/widget/j;I)Lr/A;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 186
    .line 187
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 188
    .line 189
    sub-int/2addr v2, p1

    .line 190
    invoke-static {p0, v2}, Lr/A;->a(Landroidx/recyclerview/widget/j;I)Lr/A;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Lr/A;

    .line 195
    .line 196
    return-void
.end method

.method public static D(III)I
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    return p0

    .line 6
    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/high16 v1, -0x80000000

    .line 11
    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/high16 v1, 0x40000000    # 2.0f

    .line 15
    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return p0

    .line 20
    :cond_2
    :goto_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    sub-int/2addr p0, p1

    .line 25
    sub-int/2addr p0, p2

    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method


# virtual methods
.method public final A(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Lr/s;

    iput p1, v0, Lr/s;->e:I

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_1
    iput v2, v0, Lr/s;->d:I

    return-void
.end method

.method public final B(ILr/Y;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Lr/s;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lr/s;->b:I

    .line 5
    .line 6
    iput p1, v0, Lr/s;->c:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->isSmoothScrolling()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    iget p2, p2, Lr/Y;->a:I

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    if-eq p2, v2, :cond_2

    .line 19
    .line 20
    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 21
    .line 22
    if-ge p2, p1, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    if-ne v2, p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 30
    .line 31
    invoke-virtual {p1}, Lr/A;->l()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    :goto_1
    const/4 p2, 0x0

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 38
    .line 39
    invoke-virtual {p1}, Lr/A;->l()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    move p2, p1

    .line 44
    const/4 p1, 0x0

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/4 p1, 0x0

    .line 47
    goto :goto_1

    .line 48
    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getClipToPadding()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 55
    .line 56
    invoke-virtual {v2}, Lr/A;->k()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    sub-int/2addr v2, p2

    .line 61
    iput v2, v0, Lr/s;->f:I

    .line 62
    .line 63
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 64
    .line 65
    invoke-virtual {p2}, Lr/A;->g()I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    add-int/2addr p2, p1

    .line 70
    iput p2, v0, Lr/s;->g:I

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 74
    .line 75
    invoke-virtual {v2}, Lr/A;->f()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    add-int/2addr v2, p1

    .line 80
    iput v2, v0, Lr/s;->g:I

    .line 81
    .line 82
    neg-int p1, p2

    .line 83
    iput p1, v0, Lr/s;->f:I

    .line 84
    .line 85
    :goto_3
    iput-boolean v1, v0, Lr/s;->h:Z

    .line 86
    .line 87
    iput-boolean v3, v0, Lr/s;->a:Z

    .line 88
    .line 89
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 90
    .line 91
    invoke-virtual {p1}, Lr/A;->i()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_4

    .line 96
    .line 97
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 98
    .line 99
    invoke-virtual {p1}, Lr/A;->f()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_4

    .line 104
    .line 105
    const/4 v1, 0x1

    .line 106
    :cond_4
    iput-boolean v1, v0, Lr/s;->i:Z

    .line 107
    .line 108
    return-void
.end method

.method public final C(Lr/i0;II)V
    .locals 5

    .line 1
    iget v0, p1, Lr/i0;->d:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, -0x1

    .line 7
    iget v4, p1, Lr/i0;->e:I

    .line 8
    .line 9
    if-ne p2, v3, :cond_1

    .line 10
    .line 11
    iget p2, p1, Lr/i0;->b:I

    .line 12
    .line 13
    if-eq p2, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p2, p1, Lr/i0;->a:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lr/e0;

    .line 29
    .line 30
    iget-object v3, p1, Lr/i0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 31
    .line 32
    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 33
    .line 34
    invoke-virtual {v3, p2}, Lr/A;->e(Landroid/view/View;)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    iput p2, p1, Lr/i0;->b:I

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget p2, p1, Lr/i0;->b:I

    .line 44
    .line 45
    :goto_0
    add-int/2addr p2, v0

    .line 46
    if-gt p2, p3, :cond_3

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    iget p2, p1, Lr/i0;->c:I

    .line 50
    .line 51
    if-eq p2, v1, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {p1}, Lr/i0;->a()V

    .line 55
    .line 56
    .line 57
    iget p2, p1, Lr/i0;->c:I

    .line 58
    .line 59
    :goto_1
    sub-int/2addr p2, v0

    .line 60
    if-lt p2, p3, :cond_3

    .line 61
    .line 62
    :goto_2
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Ljava/util/BitSet;

    .line 63
    .line 64
    invoke-virtual {p1, v4, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 65
    .line 66
    .line 67
    :cond_3
    return-void
.end method

.method public final assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Lr/h0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/j;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final c(I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-eq p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public final canScrollHorizontally()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final canScrollVertically()Z
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final checkLayoutParams(Lr/N;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lr/e0;

    .line 2
    .line 3
    return p1
.end method

.method public final collectAdjacentPrefetchPositions(IILr/Y;Lr/L;)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move p1, p2

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_7

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto :goto_5

    .line 16
    :cond_1
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v(ILr/Y;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:[I

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    array-length p1, p1

    .line 24
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 25
    .line 26
    if-ge p1, p2, :cond_3

    .line 27
    .line 28
    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 29
    .line 30
    new-array p1, p1, [I

    .line 31
    .line 32
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:[I

    .line 33
    .line 34
    :cond_3
    const/4 p1, 0x0

    .line 35
    const/4 p2, 0x0

    .line 36
    const/4 v0, 0x0

    .line 37
    :goto_1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 38
    .line 39
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Lr/s;

    .line 40
    .line 41
    if-ge p2, v1, :cond_6

    .line 42
    .line 43
    iget v1, v2, Lr/s;->d:I

    .line 44
    .line 45
    const/4 v3, -0x1

    .line 46
    if-ne v1, v3, :cond_4

    .line 47
    .line 48
    iget v1, v2, Lr/s;->f:I

    .line 49
    .line 50
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 51
    .line 52
    aget-object v2, v2, p2

    .line 53
    .line 54
    invoke-virtual {v2, v1}, Lr/i0;->h(I)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    :goto_2
    sub-int/2addr v1, v2

    .line 59
    goto :goto_3

    .line 60
    :cond_4
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 61
    .line 62
    aget-object v1, v1, p2

    .line 63
    .line 64
    iget v3, v2, Lr/s;->g:I

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Lr/i0;->f(I)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iget v2, v2, Lr/s;->g:I

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :goto_3
    if-ltz v1, :cond_5

    .line 74
    .line 75
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:[I

    .line 76
    .line 77
    aput v1, v2, v0

    .line 78
    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 80
    .line 81
    :cond_5
    add-int/lit8 p2, p2, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_6
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:[I

    .line 85
    .line 86
    invoke-static {p2, p1, v0}, Ljava/util/Arrays;->sort([III)V

    .line 87
    .line 88
    .line 89
    :goto_4
    if-ge p1, v0, :cond_7

    .line 90
    .line 91
    iget p2, v2, Lr/s;->c:I

    .line 92
    .line 93
    if-ltz p2, :cond_7

    .line 94
    .line 95
    invoke-virtual {p3}, Lr/Y;->b()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-ge p2, v1, :cond_7

    .line 100
    .line 101
    iget p2, v2, Lr/s;->c:I

    .line 102
    .line 103
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:[I

    .line 104
    .line 105
    aget v1, v1, p1

    .line 106
    .line 107
    move-object v3, p4

    .line 108
    check-cast v3, Landroidx/recyclerview/widget/c;

    .line 109
    .line 110
    invoke-virtual {v3, p2, v1}, Landroidx/recyclerview/widget/c;->a(II)V

    .line 111
    .line 112
    .line 113
    iget p2, v2, Lr/s;->c:I

    .line 114
    .line 115
    iget v1, v2, Lr/s;->d:I

    .line 116
    .line 117
    add-int/2addr p2, v1

    .line 118
    iput p2, v2, Lr/s;->c:I

    .line 119
    .line 120
    add-int/lit8 p1, p1, 0x1

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_7
    :goto_5
    return-void
.end method

.method public final computeHorizontalScrollExtent(Lr/Y;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e(Lr/Y;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final computeHorizontalScrollOffset(Lr/Y;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f(Lr/Y;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final computeHorizontalScrollRange(Lr/Y;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g(Lr/Y;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(I)I

    move-result p1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    iput v2, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_1
    iput v2, v0, Landroid/graphics/PointF;->x:F

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    :goto_0
    return-object v0
.end method

.method public final computeVerticalScrollExtent(Lr/Y;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e(Lr/Y;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final computeVerticalScrollOffset(Lr/Y;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f(Lr/Y;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final computeVerticalScrollRange(Lr/Y;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g(Lr/Y;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final d()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m()I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n()I

    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Lr/g0;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lr/g0;->a()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->requestSimpleAnimationsInNextLayout()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->requestLayout()V

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_1
    return v1
.end method

.method public final e(Lr/Y;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 10
    .line 11
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Z

    .line 12
    .line 13
    xor-int/lit8 v2, v0, 0x1

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j(Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    xor-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(Z)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Z

    .line 26
    .line 27
    move-object v0, p1

    .line 28
    move-object v4, p0

    .line 29
    invoke-static/range {v0 .. v5}, Ly/a;->f(Lr/Y;Lr/A;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/j;Z)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public final f(Lr/Y;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 10
    .line 11
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Z

    .line 12
    .line 13
    xor-int/lit8 v2, v0, 0x1

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j(Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    xor-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(Z)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Z

    .line 26
    .line 27
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 28
    .line 29
    move-object v0, p1

    .line 30
    move-object v4, p0

    .line 31
    invoke-static/range {v0 .. v6}, Ly/a;->g(Lr/Y;Lr/A;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/j;ZZ)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1
.end method

.method public final g(Lr/Y;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 10
    .line 11
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Z

    .line 12
    .line 13
    xor-int/lit8 v2, v0, 0x1

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j(Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    xor-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(Z)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Z

    .line 26
    .line 27
    move-object v0, p1

    .line 28
    move-object v4, p0

    .line 29
    invoke-static/range {v0 .. v5}, Ly/a;->h(Lr/Y;Lr/A;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/j;Z)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public final generateDefaultLayoutParams()Lr/N;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, -0x2

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lr/e0;

    .line 8
    .line 9
    invoke-direct {v0, v2, v1}, Lr/N;-><init>(II)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Lr/e0;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lr/N;-><init>(II)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lr/N;
    .locals 1

    new-instance v0, Lr/e0;

    .line 1
    invoke-direct {v0, p1, p2}, Lr/N;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lr/N;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lr/e0;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    invoke-direct {v0, p1}, Lr/N;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lr/e0;

    .line 4
    invoke-direct {v0, p1}, Lr/N;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final h(Landroidx/recyclerview/widget/k;Lr/s;Lr/Y;)I
    .locals 18

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Ljava/util/BitSet;

    .line 8
    .line 9
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 10
    .line 11
    const/4 v9, 0x0

    .line 12
    const/4 v10, 0x1

    .line 13
    invoke-virtual {v0, v9, v1, v10}, Ljava/util/BitSet;->set(IIZ)V

    .line 14
    .line 15
    .line 16
    iget-object v11, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Lr/s;

    .line 17
    .line 18
    iget-boolean v0, v11, Lr/s;->i:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget v0, v8, Lr/s;->e:I

    .line 23
    .line 24
    if-ne v0, v10, :cond_0

    .line 25
    .line 26
    const v14, 0x7fffffff

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/high16 v14, -0x80000000

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget v0, v8, Lr/s;->e:I

    .line 34
    .line 35
    if-ne v0, v10, :cond_2

    .line 36
    .line 37
    iget v0, v8, Lr/s;->g:I

    .line 38
    .line 39
    iget v1, v8, Lr/s;->b:I

    .line 40
    .line 41
    add-int/2addr v0, v1

    .line 42
    :goto_0
    move v14, v0

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    iget v0, v8, Lr/s;->f:I

    .line 45
    .line 46
    iget v1, v8, Lr/s;->b:I

    .line 47
    .line 48
    sub-int/2addr v0, v1

    .line 49
    goto :goto_0

    .line 50
    :goto_1
    iget v0, v8, Lr/s;->e:I

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    :goto_2
    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 54
    .line 55
    if-ge v1, v2, :cond_4

    .line 56
    .line 57
    iget-object v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 58
    .line 59
    aget-object v2, v2, v1

    .line 60
    .line 61
    iget-object v2, v2, Lr/i0;->a:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    iget-object v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 71
    .line 72
    aget-object v2, v2, v1

    .line 73
    .line 74
    invoke-virtual {v6, v2, v0, v14}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C(Lr/i0;II)V

    .line 75
    .line 76
    .line 77
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    iget-boolean v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 85
    .line 86
    invoke-virtual {v0}, Lr/A;->g()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    :goto_4
    move v15, v0

    .line 91
    goto :goto_5

    .line 92
    :cond_5
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 93
    .line 94
    invoke-virtual {v0}, Lr/A;->k()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    goto :goto_4

    .line 99
    :goto_5
    const/4 v0, 0x0

    .line 100
    :goto_6
    iget v1, v8, Lr/s;->c:I

    .line 101
    .line 102
    if-ltz v1, :cond_6

    .line 103
    .line 104
    invoke-virtual/range {p3 .. p3}, Lr/Y;->b()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-ge v1, v2, :cond_6

    .line 109
    .line 110
    const/4 v1, 0x1

    .line 111
    goto :goto_7

    .line 112
    :cond_6
    const/4 v1, 0x0

    .line 113
    :goto_7
    const/4 v2, -0x1

    .line 114
    if-eqz v1, :cond_7

    .line 115
    .line 116
    iget-boolean v1, v11, Lr/s;->i:Z

    .line 117
    .line 118
    if-nez v1, :cond_8

    .line 119
    .line 120
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Ljava/util/BitSet;

    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-nez v1, :cond_7

    .line 127
    .line 128
    goto :goto_8

    .line 129
    :cond_7
    move-object v1, v7

    .line 130
    const/4 v3, 0x0

    .line 131
    goto/16 :goto_1a

    .line 132
    .line 133
    :cond_8
    :goto_8
    iget v0, v8, Lr/s;->c:I

    .line 134
    .line 135
    const-wide v3, 0x7fffffffffffffffL

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    invoke-virtual {v7, v0, v3, v4}, Landroidx/recyclerview/widget/k;->l(IJ)Landroidx/recyclerview/widget/o;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iget-object v5, v0, Landroidx/recyclerview/widget/o;->itemView:Landroid/view/View;

    .line 145
    .line 146
    iget v0, v8, Lr/s;->c:I

    .line 147
    .line 148
    iget v1, v8, Lr/s;->d:I

    .line 149
    .line 150
    add-int/2addr v0, v1

    .line 151
    iput v0, v8, Lr/s;->c:I

    .line 152
    .line 153
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Lr/e0;

    .line 158
    .line 159
    iget-object v1, v0, Lr/N;->a:Landroidx/recyclerview/widget/o;

    .line 160
    .line 161
    invoke-virtual {v1}, Landroidx/recyclerview/widget/o;->getLayoutPosition()I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    iget-object v3, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Lr/g0;

    .line 166
    .line 167
    iget-object v4, v3, Lr/g0;->a:[I

    .line 168
    .line 169
    if-eqz v4, :cond_a

    .line 170
    .line 171
    array-length v13, v4

    .line 172
    if-lt v1, v13, :cond_9

    .line 173
    .line 174
    goto :goto_9

    .line 175
    :cond_9
    aget v4, v4, v1

    .line 176
    .line 177
    goto :goto_a

    .line 178
    :cond_a
    :goto_9
    const/4 v4, -0x1

    .line 179
    :goto_a
    if-ne v4, v2, :cond_10

    .line 180
    .line 181
    iget v4, v8, Lr/s;->e:I

    .line 182
    .line 183
    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u(I)Z

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    if-eqz v4, :cond_b

    .line 188
    .line 189
    iget v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 190
    .line 191
    sub-int/2addr v4, v10

    .line 192
    move v13, v4

    .line 193
    const/4 v4, -0x1

    .line 194
    goto :goto_b

    .line 195
    :cond_b
    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 196
    .line 197
    const/4 v4, 0x1

    .line 198
    const/4 v13, 0x0

    .line 199
    :goto_b
    iget v12, v8, Lr/s;->e:I

    .line 200
    .line 201
    const/16 v17, 0x0

    .line 202
    .line 203
    if-ne v12, v10, :cond_e

    .line 204
    .line 205
    iget-object v12, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 206
    .line 207
    invoke-virtual {v12}, Lr/A;->k()I

    .line 208
    .line 209
    .line 210
    move-result v12

    .line 211
    const v9, 0x7fffffff

    .line 212
    .line 213
    .line 214
    :goto_c
    if-eq v13, v2, :cond_d

    .line 215
    .line 216
    iget-object v10, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 217
    .line 218
    aget-object v10, v10, v13

    .line 219
    .line 220
    invoke-virtual {v10, v12}, Lr/i0;->f(I)I

    .line 221
    .line 222
    .line 223
    move-result v7

    .line 224
    if-ge v7, v9, :cond_c

    .line 225
    .line 226
    move v9, v7

    .line 227
    move-object/from16 v17, v10

    .line 228
    .line 229
    :cond_c
    add-int/2addr v13, v4

    .line 230
    move-object/from16 v7, p1

    .line 231
    .line 232
    const/4 v10, 0x1

    .line 233
    goto :goto_c

    .line 234
    :cond_d
    move-object/from16 v2, v17

    .line 235
    .line 236
    goto :goto_e

    .line 237
    :cond_e
    iget-object v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 238
    .line 239
    invoke-virtual {v7}, Lr/A;->g()I

    .line 240
    .line 241
    .line 242
    move-result v7

    .line 243
    const/high16 v9, -0x80000000

    .line 244
    .line 245
    :goto_d
    if-eq v13, v2, :cond_d

    .line 246
    .line 247
    iget-object v10, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 248
    .line 249
    aget-object v10, v10, v13

    .line 250
    .line 251
    invoke-virtual {v10, v7}, Lr/i0;->h(I)I

    .line 252
    .line 253
    .line 254
    move-result v12

    .line 255
    if-le v12, v9, :cond_f

    .line 256
    .line 257
    move-object/from16 v17, v10

    .line 258
    .line 259
    move v9, v12

    .line 260
    :cond_f
    add-int/2addr v13, v4

    .line 261
    goto :goto_d

    .line 262
    :goto_e
    invoke-virtual {v3, v1}, Lr/g0;->b(I)V

    .line 263
    .line 264
    .line 265
    iget-object v3, v3, Lr/g0;->a:[I

    .line 266
    .line 267
    iget v4, v2, Lr/i0;->e:I

    .line 268
    .line 269
    aput v4, v3, v1

    .line 270
    .line 271
    :goto_f
    move-object v7, v2

    .line 272
    goto :goto_10

    .line 273
    :cond_10
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 274
    .line 275
    aget-object v2, v1, v4

    .line 276
    .line 277
    goto :goto_f

    .line 278
    :goto_10
    iput-object v7, v0, Lr/e0;->e:Lr/i0;

    .line 279
    .line 280
    iget v1, v8, Lr/s;->e:I

    .line 281
    .line 282
    const/4 v2, 0x1

    .line 283
    if-ne v1, v2, :cond_11

    .line 284
    .line 285
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/j;->addView(Landroid/view/View;)V

    .line 286
    .line 287
    .line 288
    const/4 v1, 0x0

    .line 289
    goto :goto_11

    .line 290
    :cond_11
    const/4 v1, 0x0

    .line 291
    invoke-virtual {v6, v5, v1}, Landroidx/recyclerview/widget/j;->addView(Landroid/view/View;I)V

    .line 292
    .line 293
    .line 294
    :goto_11
    iget v3, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 295
    .line 296
    if-ne v3, v2, :cond_12

    .line 297
    .line 298
    iget v3, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 299
    .line 300
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/j;->getWidthMode()I

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 305
    .line 306
    invoke-static {v3, v4, v1, v9, v1}, Landroidx/recyclerview/widget/j;->getChildMeasureSpec(IIIIZ)I

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/j;->getHeight()I

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/j;->getHeightMode()I

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/j;->getPaddingTop()I

    .line 319
    .line 320
    .line 321
    move-result v9

    .line 322
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/j;->getPaddingBottom()I

    .line 323
    .line 324
    .line 325
    move-result v10

    .line 326
    add-int/2addr v10, v9

    .line 327
    iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 328
    .line 329
    invoke-static {v1, v4, v10, v9, v2}, Landroidx/recyclerview/widget/j;->getChildMeasureSpec(IIIIZ)I

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    invoke-virtual {v6, v5, v3, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s(Landroid/view/View;II)V

    .line 334
    .line 335
    .line 336
    goto :goto_12

    .line 337
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/j;->getWidth()I

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/j;->getWidthMode()I

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/j;->getPaddingLeft()I

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/j;->getPaddingRight()I

    .line 350
    .line 351
    .line 352
    move-result v9

    .line 353
    add-int/2addr v9, v4

    .line 354
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 355
    .line 356
    invoke-static {v1, v3, v9, v4, v2}, Landroidx/recyclerview/widget/j;->getChildMeasureSpec(IIIIZ)I

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    iget v3, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 361
    .line 362
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/j;->getHeightMode()I

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 367
    .line 368
    const/4 v10, 0x0

    .line 369
    invoke-static {v3, v4, v10, v9, v10}, Landroidx/recyclerview/widget/j;->getChildMeasureSpec(IIIIZ)I

    .line 370
    .line 371
    .line 372
    move-result v3

    .line 373
    invoke-virtual {v6, v5, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s(Landroid/view/View;II)V

    .line 374
    .line 375
    .line 376
    :goto_12
    iget v1, v8, Lr/s;->e:I

    .line 377
    .line 378
    if-ne v1, v2, :cond_13

    .line 379
    .line 380
    invoke-virtual {v7, v15}, Lr/i0;->f(I)I

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    iget-object v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 385
    .line 386
    invoke-virtual {v2, v5}, Lr/A;->c(Landroid/view/View;)I

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    add-int/2addr v2, v1

    .line 391
    move v3, v1

    .line 392
    move v9, v2

    .line 393
    goto :goto_13

    .line 394
    :cond_13
    invoke-virtual {v7, v15}, Lr/i0;->h(I)I

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    iget-object v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 399
    .line 400
    invoke-virtual {v2, v5}, Lr/A;->c(Landroid/view/View;)I

    .line 401
    .line 402
    .line 403
    move-result v2

    .line 404
    sub-int v2, v1, v2

    .line 405
    .line 406
    move v9, v1

    .line 407
    move v3, v2

    .line 408
    :goto_13
    iget v1, v8, Lr/s;->e:I

    .line 409
    .line 410
    const/4 v2, 0x1

    .line 411
    iget-object v0, v0, Lr/e0;->e:Lr/i0;

    .line 412
    .line 413
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 414
    .line 415
    .line 416
    if-ne v1, v2, :cond_17

    .line 417
    .line 418
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    check-cast v1, Lr/e0;

    .line 423
    .line 424
    iput-object v0, v1, Lr/e0;->e:Lr/i0;

    .line 425
    .line 426
    iget-object v2, v0, Lr/i0;->a:Ljava/util/ArrayList;

    .line 427
    .line 428
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    const/high16 v4, -0x80000000

    .line 432
    .line 433
    iput v4, v0, Lr/i0;->c:I

    .line 434
    .line 435
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 436
    .line 437
    .line 438
    move-result v2

    .line 439
    const/4 v10, 0x1

    .line 440
    if-ne v2, v10, :cond_14

    .line 441
    .line 442
    iput v4, v0, Lr/i0;->b:I

    .line 443
    .line 444
    :cond_14
    iget-object v2, v1, Lr/N;->a:Landroidx/recyclerview/widget/o;

    .line 445
    .line 446
    invoke-virtual {v2}, Landroidx/recyclerview/widget/o;->isRemoved()Z

    .line 447
    .line 448
    .line 449
    move-result v2

    .line 450
    if-nez v2, :cond_15

    .line 451
    .line 452
    iget-object v1, v1, Lr/N;->a:Landroidx/recyclerview/widget/o;

    .line 453
    .line 454
    invoke-virtual {v1}, Landroidx/recyclerview/widget/o;->isUpdated()Z

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    if-eqz v1, :cond_16

    .line 459
    .line 460
    :cond_15
    iget v1, v0, Lr/i0;->d:I

    .line 461
    .line 462
    iget-object v2, v0, Lr/i0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 463
    .line 464
    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 465
    .line 466
    invoke-virtual {v2, v5}, Lr/A;->c(Landroid/view/View;)I

    .line 467
    .line 468
    .line 469
    move-result v2

    .line 470
    add-int/2addr v2, v1

    .line 471
    iput v2, v0, Lr/i0;->d:I

    .line 472
    .line 473
    :cond_16
    const/high16 v10, -0x80000000

    .line 474
    .line 475
    goto :goto_14

    .line 476
    :cond_17
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    check-cast v1, Lr/e0;

    .line 481
    .line 482
    iput-object v0, v1, Lr/e0;->e:Lr/i0;

    .line 483
    .line 484
    iget-object v2, v0, Lr/i0;->a:Ljava/util/ArrayList;

    .line 485
    .line 486
    const/4 v4, 0x0

    .line 487
    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 488
    .line 489
    .line 490
    const/high16 v10, -0x80000000

    .line 491
    .line 492
    iput v10, v0, Lr/i0;->b:I

    .line 493
    .line 494
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 495
    .line 496
    .line 497
    move-result v2

    .line 498
    const/4 v4, 0x1

    .line 499
    if-ne v2, v4, :cond_18

    .line 500
    .line 501
    iput v10, v0, Lr/i0;->c:I

    .line 502
    .line 503
    :cond_18
    iget-object v2, v1, Lr/N;->a:Landroidx/recyclerview/widget/o;

    .line 504
    .line 505
    invoke-virtual {v2}, Landroidx/recyclerview/widget/o;->isRemoved()Z

    .line 506
    .line 507
    .line 508
    move-result v2

    .line 509
    if-nez v2, :cond_19

    .line 510
    .line 511
    iget-object v1, v1, Lr/N;->a:Landroidx/recyclerview/widget/o;

    .line 512
    .line 513
    invoke-virtual {v1}, Landroidx/recyclerview/widget/o;->isUpdated()Z

    .line 514
    .line 515
    .line 516
    move-result v1

    .line 517
    if-eqz v1, :cond_1a

    .line 518
    .line 519
    :cond_19
    iget v1, v0, Lr/i0;->d:I

    .line 520
    .line 521
    iget-object v2, v0, Lr/i0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 522
    .line 523
    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 524
    .line 525
    invoke-virtual {v2, v5}, Lr/A;->c(Landroid/view/View;)I

    .line 526
    .line 527
    .line 528
    move-result v2

    .line 529
    add-int/2addr v2, v1

    .line 530
    iput v2, v0, Lr/i0;->d:I

    .line 531
    .line 532
    :cond_1a
    :goto_14
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 533
    .line 534
    .line 535
    move-result v0

    .line 536
    if-eqz v0, :cond_1b

    .line 537
    .line 538
    iget v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 539
    .line 540
    const/4 v1, 0x1

    .line 541
    if-ne v0, v1, :cond_1b

    .line 542
    .line 543
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Lr/A;

    .line 544
    .line 545
    invoke-virtual {v0}, Lr/A;->g()I

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 550
    .line 551
    sub-int/2addr v2, v1

    .line 552
    iget v1, v7, Lr/i0;->e:I

    .line 553
    .line 554
    sub-int/2addr v2, v1

    .line 555
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 556
    .line 557
    mul-int v2, v2, v1

    .line 558
    .line 559
    sub-int/2addr v0, v2

    .line 560
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Lr/A;

    .line 561
    .line 562
    invoke-virtual {v1, v5}, Lr/A;->c(Landroid/view/View;)I

    .line 563
    .line 564
    .line 565
    move-result v1

    .line 566
    sub-int v1, v0, v1

    .line 567
    .line 568
    :goto_15
    move v12, v0

    .line 569
    move v4, v1

    .line 570
    goto :goto_16

    .line 571
    :cond_1b
    iget v0, v7, Lr/i0;->e:I

    .line 572
    .line 573
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 574
    .line 575
    mul-int v0, v0, v1

    .line 576
    .line 577
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Lr/A;

    .line 578
    .line 579
    invoke-virtual {v1}, Lr/A;->k()I

    .line 580
    .line 581
    .line 582
    move-result v1

    .line 583
    add-int/2addr v1, v0

    .line 584
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Lr/A;

    .line 585
    .line 586
    invoke-virtual {v0, v5}, Lr/A;->c(Landroid/view/View;)I

    .line 587
    .line 588
    .line 589
    move-result v0

    .line 590
    add-int/2addr v0, v1

    .line 591
    goto :goto_15

    .line 592
    :goto_16
    iget v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 593
    .line 594
    const/4 v13, 0x1

    .line 595
    if-ne v0, v13, :cond_1c

    .line 596
    .line 597
    move-object/from16 v0, p0

    .line 598
    .line 599
    move-object v1, v5

    .line 600
    move v2, v4

    .line 601
    move v4, v12

    .line 602
    move-object/from16 v16, v5

    .line 603
    .line 604
    move v5, v9

    .line 605
    :goto_17
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/j;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 606
    .line 607
    .line 608
    goto :goto_18

    .line 609
    :cond_1c
    move-object/from16 v16, v5

    .line 610
    .line 611
    move-object/from16 v0, p0

    .line 612
    .line 613
    move-object/from16 v1, v16

    .line 614
    .line 615
    move v2, v3

    .line 616
    move v3, v4

    .line 617
    move v4, v9

    .line 618
    move v5, v12

    .line 619
    goto :goto_17

    .line 620
    :goto_18
    iget v0, v11, Lr/s;->e:I

    .line 621
    .line 622
    invoke-virtual {v6, v7, v0, v14}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C(Lr/i0;II)V

    .line 623
    .line 624
    .line 625
    move-object/from16 v1, p1

    .line 626
    .line 627
    invoke-virtual {v6, v1, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w(Landroidx/recyclerview/widget/k;Lr/s;)V

    .line 628
    .line 629
    .line 630
    iget-boolean v0, v11, Lr/s;->h:Z

    .line 631
    .line 632
    if-eqz v0, :cond_1d

    .line 633
    .line 634
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->hasFocusable()Z

    .line 635
    .line 636
    .line 637
    move-result v0

    .line 638
    if-eqz v0, :cond_1d

    .line 639
    .line 640
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Ljava/util/BitSet;

    .line 641
    .line 642
    iget v2, v7, Lr/i0;->e:I

    .line 643
    .line 644
    const/4 v3, 0x0

    .line 645
    invoke-virtual {v0, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 646
    .line 647
    .line 648
    goto :goto_19

    .line 649
    :cond_1d
    const/4 v3, 0x0

    .line 650
    :goto_19
    move-object v7, v1

    .line 651
    const/4 v0, 0x1

    .line 652
    const/4 v9, 0x0

    .line 653
    const/4 v10, 0x1

    .line 654
    goto/16 :goto_6

    .line 655
    .line 656
    :goto_1a
    if-nez v0, :cond_1e

    .line 657
    .line 658
    invoke-virtual {v6, v1, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w(Landroidx/recyclerview/widget/k;Lr/s;)V

    .line 659
    .line 660
    .line 661
    :cond_1e
    iget v0, v11, Lr/s;->e:I

    .line 662
    .line 663
    if-ne v0, v2, :cond_1f

    .line 664
    .line 665
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 666
    .line 667
    invoke-virtual {v0}, Lr/A;->k()I

    .line 668
    .line 669
    .line 670
    move-result v0

    .line 671
    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p(I)I

    .line 672
    .line 673
    .line 674
    move-result v0

    .line 675
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 676
    .line 677
    invoke-virtual {v1}, Lr/A;->k()I

    .line 678
    .line 679
    .line 680
    move-result v1

    .line 681
    sub-int/2addr v1, v0

    .line 682
    goto :goto_1b

    .line 683
    :cond_1f
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 684
    .line 685
    invoke-virtual {v0}, Lr/A;->g()I

    .line 686
    .line 687
    .line 688
    move-result v0

    .line 689
    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o(I)I

    .line 690
    .line 691
    .line 692
    move-result v0

    .line 693
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 694
    .line 695
    invoke-virtual {v1}, Lr/A;->g()I

    .line 696
    .line 697
    .line 698
    move-result v1

    .line 699
    sub-int v1, v0, v1

    .line 700
    .line 701
    :goto_1b
    if-lez v1, :cond_20

    .line 702
    .line 703
    iget v0, v8, Lr/s;->b:I

    .line 704
    .line 705
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 706
    .line 707
    .line 708
    move-result v9

    .line 709
    goto :goto_1c

    .line 710
    :cond_20
    const/4 v9, 0x0

    .line 711
    :goto_1c
    return v9
.end method

.method public final i(Z)Landroid/view/View;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    invoke-virtual {v0}, Lr/A;->k()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    invoke-virtual {v1}, Lr/A;->g()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ltz v2, :cond_4

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/j;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    invoke-virtual {v5, v4}, Lr/A;->e(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    invoke-virtual {v6, v4}, Lr/A;->b(Landroid/view/View;)I

    move-result v6

    if-le v6, v0, :cond_3

    if-lt v5, v1, :cond_0

    goto :goto_2

    :cond_0
    if-le v6, v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_2

    :cond_2
    :goto_1
    return-object v4

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public final isAutoMeasureEnabled()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLayoutRTL()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final j(Z)Landroid/view/View;
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    invoke-virtual {v0}, Lr/A;->k()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    invoke-virtual {v1}, Lr/A;->g()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/j;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    invoke-virtual {v6, v5}, Lr/A;->e(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    invoke-virtual {v7, v5}, Lr/A;->b(Landroid/view/View;)I

    move-result v7

    if-le v7, v0, :cond_3

    if-lt v6, v1, :cond_0

    goto :goto_2

    :cond_0
    if-ge v6, v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    move-object v3, v5

    goto :goto_2

    :cond_2
    :goto_1
    return-object v5

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public final k(Landroidx/recyclerview/widget/k;Lr/Y;Z)V
    .locals 2

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ne v1, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 11
    .line 12
    invoke-virtual {v0}, Lr/A;->g()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sub-int/2addr v0, v1

    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    neg-int v1, v0

    .line 20
    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/k;Lr/Y;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    neg-int p1, p1

    .line 25
    sub-int/2addr v0, p1

    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    if-lez v0, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lr/A;->p(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public final l(Landroidx/recyclerview/widget/k;Lr/Y;Z)V
    .locals 2

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p(I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ne v1, v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 12
    .line 13
    invoke-virtual {v0}, Lr/A;->k()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sub-int/2addr v1, v0

    .line 18
    if-lez v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/k;Lr/Y;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    sub-int/2addr v1, p1

    .line 25
    if-eqz p3, :cond_1

    .line 26
    .line 27
    if-lez v1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 30
    .line 31
    neg-int p2, v1

    .line 32
    invoke-virtual {p1, p2}, Lr/A;->p(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public final m()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/j;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/j;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public final n()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/j;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/j;->getPosition(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final o(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lr/i0;->f(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lr/i0;->f(I)I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final offsetChildrenHorizontal(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/j;->offsetChildrenHorizontal(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 6
    .line 7
    if-ge v0, v1, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 10
    .line 11
    aget-object v1, v1, v0

    .line 12
    .line 13
    iget v2, v1, Lr/i0;->b:I

    .line 14
    .line 15
    const/high16 v3, -0x80000000

    .line 16
    .line 17
    if-eq v2, v3, :cond_0

    .line 18
    .line 19
    add-int/2addr v2, p1

    .line 20
    iput v2, v1, Lr/i0;->b:I

    .line 21
    .line 22
    :cond_0
    iget v2, v1, Lr/i0;->c:I

    .line 23
    .line 24
    if-eq v2, v3, :cond_1

    .line 25
    .line 26
    add-int/2addr v2, p1

    .line 27
    iput v2, v1, Lr/i0;->c:I

    .line 28
    .line 29
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    return-void
.end method

.method public final offsetChildrenVertical(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/j;->offsetChildrenVertical(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 6
    .line 7
    if-ge v0, v1, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 10
    .line 11
    aget-object v1, v1, v0

    .line 12
    .line 13
    iget v2, v1, Lr/i0;->b:I

    .line 14
    .line 15
    const/high16 v3, -0x80000000

    .line 16
    .line 17
    if-eq v2, v3, :cond_0

    .line 18
    .line 19
    add-int/2addr v2, p1

    .line 20
    iput v2, v1, Lr/i0;->b:I

    .line 21
    .line 22
    :cond_0
    iget v2, v1, Lr/i0;->c:I

    .line 23
    .line 24
    if-eq v2, v3, :cond_1

    .line 25
    .line 26
    add-int/2addr v2, p1

    .line 27
    iput v2, v1, Lr/i0;->c:I

    .line 28
    .line 29
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    return-void
.end method

.method public final onAdapterChanged(Landroidx/recyclerview/widget/g;Landroidx/recyclerview/widget/g;)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Lr/g0;

    invoke-virtual {p1}, Lr/g0;->a()V

    const/4 p1, 0x0

    :goto_0
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lr/i0;->b()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/k;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/j;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Lr/j;

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/j;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 11
    .line 12
    if-ge p2, v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 15
    .line 16
    aget-object v0, v0, p2

    .line 17
    .line 18
    invoke-virtual {v0}, Lr/i0;->b()V

    .line 19
    .line 20
    .line 21
    add-int/lit8 p2, p2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/k;Lr/Y;)Landroid/view/View;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/j;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    const/4 v2, -0x1

    .line 21
    const/high16 v3, -0x80000000

    .line 22
    .line 23
    if-eq p2, v0, :cond_b

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    if-eq p2, v4, :cond_7

    .line 27
    .line 28
    const/16 v4, 0x11

    .line 29
    .line 30
    if-eq p2, v4, :cond_6

    .line 31
    .line 32
    const/16 v4, 0x21

    .line 33
    .line 34
    if-eq p2, v4, :cond_5

    .line 35
    .line 36
    const/16 v4, 0x42

    .line 37
    .line 38
    if-eq p2, v4, :cond_4

    .line 39
    .line 40
    const/16 v4, 0x82

    .line 41
    .line 42
    if-eq p2, v4, :cond_3

    .line 43
    .line 44
    :cond_2
    const/high16 p2, -0x80000000

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 48
    .line 49
    if-ne p2, v0, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 53
    .line 54
    if-nez p2, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_5
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 58
    .line 59
    if-ne p2, v0, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_6
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 63
    .line 64
    if-nez p2, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_7
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 68
    .line 69
    if-ne p2, v0, :cond_9

    .line 70
    .line 71
    :cond_8
    :goto_0
    const/4 p2, 0x1

    .line 72
    goto :goto_2

    .line 73
    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_8

    .line 78
    .line 79
    :cond_a
    :goto_1
    const/4 p2, -0x1

    .line 80
    goto :goto_2

    .line 81
    :cond_b
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 82
    .line 83
    if-ne p2, v0, :cond_c

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-eqz p2, :cond_a

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :goto_2
    if-ne p2, v3, :cond_d

    .line 94
    .line 95
    return-object v1

    .line 96
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    check-cast v3, Lr/e0;

    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    iget-object v3, v3, Lr/e0;->e:Lr/i0;

    .line 106
    .line 107
    if-ne p2, v0, :cond_e

    .line 108
    .line 109
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    goto :goto_3

    .line 114
    :cond_e
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m()I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    :goto_3
    invoke-virtual {p0, v4, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B(ILr/Y;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A(I)V

    .line 122
    .line 123
    .line 124
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Lr/s;

    .line 125
    .line 126
    iget v6, v5, Lr/s;->d:I

    .line 127
    .line 128
    add-int/2addr v6, v4

    .line 129
    iput v6, v5, Lr/s;->c:I

    .line 130
    .line 131
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 132
    .line 133
    invoke-virtual {v6}, Lr/A;->l()I

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    int-to-float v6, v6

    .line 138
    const v7, 0x3eaaaaab

    .line 139
    .line 140
    .line 141
    mul-float v6, v6, v7

    .line 142
    .line 143
    float-to-int v6, v6

    .line 144
    iput v6, v5, Lr/s;->b:I

    .line 145
    .line 146
    iput-boolean v0, v5, Lr/s;->h:Z

    .line 147
    .line 148
    const/4 v6, 0x0

    .line 149
    iput-boolean v6, v5, Lr/s;->a:Z

    .line 150
    .line 151
    invoke-virtual {p0, p3, v5, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h(Landroidx/recyclerview/widget/k;Lr/s;Lr/Y;)I

    .line 152
    .line 153
    .line 154
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 155
    .line 156
    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    .line 157
    .line 158
    invoke-virtual {v3, v4, p2}, Lr/i0;->g(II)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object p3

    .line 162
    if-eqz p3, :cond_f

    .line 163
    .line 164
    if-eq p3, p1, :cond_f

    .line 165
    .line 166
    return-object p3

    .line 167
    :cond_f
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u(I)Z

    .line 168
    .line 169
    .line 170
    move-result p3

    .line 171
    if-eqz p3, :cond_11

    .line 172
    .line 173
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 174
    .line 175
    sub-int/2addr p3, v0

    .line 176
    :goto_4
    if-ltz p3, :cond_13

    .line 177
    .line 178
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 179
    .line 180
    aget-object p4, p4, p3

    .line 181
    .line 182
    invoke-virtual {p4, v4, p2}, Lr/i0;->g(II)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object p4

    .line 186
    if-eqz p4, :cond_10

    .line 187
    .line 188
    if-eq p4, p1, :cond_10

    .line 189
    .line 190
    return-object p4

    .line 191
    :cond_10
    add-int/lit8 p3, p3, -0x1

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_11
    const/4 p3, 0x0

    .line 195
    :goto_5
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 196
    .line 197
    if-ge p3, p4, :cond_13

    .line 198
    .line 199
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 200
    .line 201
    aget-object p4, p4, p3

    .line 202
    .line 203
    invoke-virtual {p4, v4, p2}, Lr/i0;->g(II)Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object p4

    .line 207
    if-eqz p4, :cond_12

    .line 208
    .line 209
    if-eq p4, p1, :cond_12

    .line 210
    .line 211
    return-object p4

    .line 212
    :cond_12
    add-int/lit8 p3, p3, 0x1

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_13
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    .line 216
    .line 217
    xor-int/2addr p3, v0

    .line 218
    if-ne p2, v2, :cond_14

    .line 219
    .line 220
    const/4 p4, 0x1

    .line 221
    goto :goto_6

    .line 222
    :cond_14
    const/4 p4, 0x0

    .line 223
    :goto_6
    if-ne p3, p4, :cond_15

    .line 224
    .line 225
    const/4 p3, 0x1

    .line 226
    goto :goto_7

    .line 227
    :cond_15
    const/4 p3, 0x0

    .line 228
    :goto_7
    if-eqz p3, :cond_16

    .line 229
    .line 230
    invoke-virtual {v3}, Lr/i0;->c()I

    .line 231
    .line 232
    .line 233
    move-result p4

    .line 234
    goto :goto_8

    .line 235
    :cond_16
    invoke-virtual {v3}, Lr/i0;->d()I

    .line 236
    .line 237
    .line 238
    move-result p4

    .line 239
    :goto_8
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/j;->findViewByPosition(I)Landroid/view/View;

    .line 240
    .line 241
    .line 242
    move-result-object p4

    .line 243
    if-eqz p4, :cond_17

    .line 244
    .line 245
    if-eq p4, p1, :cond_17

    .line 246
    .line 247
    return-object p4

    .line 248
    :cond_17
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u(I)Z

    .line 249
    .line 250
    .line 251
    move-result p2

    .line 252
    if-eqz p2, :cond_1b

    .line 253
    .line 254
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 255
    .line 256
    sub-int/2addr p2, v0

    .line 257
    :goto_9
    if-ltz p2, :cond_1e

    .line 258
    .line 259
    iget p4, v3, Lr/i0;->e:I

    .line 260
    .line 261
    if-ne p2, p4, :cond_18

    .line 262
    .line 263
    goto :goto_b

    .line 264
    :cond_18
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 265
    .line 266
    if-eqz p3, :cond_19

    .line 267
    .line 268
    aget-object p4, p4, p2

    .line 269
    .line 270
    invoke-virtual {p4}, Lr/i0;->c()I

    .line 271
    .line 272
    .line 273
    move-result p4

    .line 274
    goto :goto_a

    .line 275
    :cond_19
    aget-object p4, p4, p2

    .line 276
    .line 277
    invoke-virtual {p4}, Lr/i0;->d()I

    .line 278
    .line 279
    .line 280
    move-result p4

    .line 281
    :goto_a
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/j;->findViewByPosition(I)Landroid/view/View;

    .line 282
    .line 283
    .line 284
    move-result-object p4

    .line 285
    if-eqz p4, :cond_1a

    .line 286
    .line 287
    if-eq p4, p1, :cond_1a

    .line 288
    .line 289
    return-object p4

    .line 290
    :cond_1a
    :goto_b
    add-int/lit8 p2, p2, -0x1

    .line 291
    .line 292
    goto :goto_9

    .line 293
    :cond_1b
    :goto_c
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 294
    .line 295
    if-ge v6, p2, :cond_1e

    .line 296
    .line 297
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 298
    .line 299
    if-eqz p3, :cond_1c

    .line 300
    .line 301
    aget-object p2, p2, v6

    .line 302
    .line 303
    invoke-virtual {p2}, Lr/i0;->c()I

    .line 304
    .line 305
    .line 306
    move-result p2

    .line 307
    goto :goto_d

    .line 308
    :cond_1c
    aget-object p2, p2, v6

    .line 309
    .line 310
    invoke-virtual {p2}, Lr/i0;->d()I

    .line 311
    .line 312
    .line 313
    move-result p2

    .line 314
    :goto_d
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/j;->findViewByPosition(I)Landroid/view/View;

    .line 315
    .line 316
    .line 317
    move-result-object p2

    .line 318
    if-eqz p2, :cond_1d

    .line 319
    .line 320
    if-eq p2, p1, :cond_1d

    .line 321
    .line 322
    return-object p2

    .line 323
    :cond_1d
    add-int/lit8 v6, v6, 0x1

    .line 324
    .line 325
    goto :goto_c

    .line 326
    :cond_1e
    return-object v1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/j;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/k;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Lr/Y;

    .line 6
    .line 7
    invoke-virtual {p0, v1, v0, p1}, Landroidx/recyclerview/widget/j;->onInitializeAccessibilityEvent(Landroidx/recyclerview/widget/k;Lr/Y;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-lez v0, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j(Z)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(Z)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/j;->getPosition(Landroid/view/View;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/j;->getPosition(Landroid/view/View;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-ge v1, v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 51
    .line 52
    .line 53
    nop

    .line 54
    :cond_2
    :goto_0
    return-void
.end method

.method public final onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q(III)V

    return-void
.end method

.method public final onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Lr/g0;

    invoke-virtual {p1}, Lr/g0;->a()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->requestLayout()V

    return-void
.end method

.method public final onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    const/16 p1, 0x8

    invoke-virtual {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q(III)V

    return-void
.end method

.method public final onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const/4 p1, 0x2

    invoke-virtual {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q(III)V

    return-void
.end method

.method public final onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    const/4 p1, 0x4

    invoke-virtual {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q(III)V

    return-void
.end method

.method public final onLayoutChildren(Landroidx/recyclerview/widget/k;Lr/Y;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t(Landroidx/recyclerview/widget/k;Lr/Y;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onLayoutCompleted(Lr/Y;)V
    .locals 0

    .line 1
    const/4 p1, -0x1

    .line 2
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 3
    .line 4
    const/high16 p1, -0x80000000

    .line 5
    .line 6
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Lr/h0;

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lr/d0;

    .line 12
    .line 13
    invoke-virtual {p1}, Lr/d0;->a()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lr/h0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Lr/h0;

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Lr/h0;

    .line 8
    .line 9
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p1, Lr/h0;->d:[I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iput v2, p1, Lr/h0;->c:I

    .line 19
    .line 20
    iput v1, p1, Lr/h0;->a:I

    .line 21
    .line 22
    iput v1, p1, Lr/h0;->b:I

    .line 23
    .line 24
    iput-object v0, p1, Lr/h0;->d:[I

    .line 25
    .line 26
    iput v2, p1, Lr/h0;->c:I

    .line 27
    .line 28
    iput v2, p1, Lr/h0;->e:I

    .line 29
    .line 30
    iput-object v0, p1, Lr/h0;->f:[I

    .line 31
    .line 32
    iput-object v0, p1, Lr/h0;->g:Ljava/util/List;

    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->requestLayout()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Lr/h0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lr/h0;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iget v2, v0, Lr/h0;->c:I

    .line 11
    .line 12
    iput v2, v1, Lr/h0;->c:I

    .line 13
    .line 14
    iget v2, v0, Lr/h0;->a:I

    .line 15
    .line 16
    iput v2, v1, Lr/h0;->a:I

    .line 17
    .line 18
    iget v2, v0, Lr/h0;->b:I

    .line 19
    .line 20
    iput v2, v1, Lr/h0;->b:I

    .line 21
    .line 22
    iget-object v2, v0, Lr/h0;->d:[I

    .line 23
    .line 24
    iput-object v2, v1, Lr/h0;->d:[I

    .line 25
    .line 26
    iget v2, v0, Lr/h0;->e:I

    .line 27
    .line 28
    iput v2, v1, Lr/h0;->e:I

    .line 29
    .line 30
    iget-object v2, v0, Lr/h0;->f:[I

    .line 31
    .line 32
    iput-object v2, v1, Lr/h0;->f:[I

    .line 33
    .line 34
    iget-boolean v2, v0, Lr/h0;->h:Z

    .line 35
    .line 36
    iput-boolean v2, v1, Lr/h0;->h:Z

    .line 37
    .line 38
    iget-boolean v2, v0, Lr/h0;->i:Z

    .line 39
    .line 40
    iput-boolean v2, v1, Lr/h0;->i:Z

    .line 41
    .line 42
    iget-boolean v2, v0, Lr/h0;->j:Z

    .line 43
    .line 44
    iput-boolean v2, v1, Lr/h0;->j:Z

    .line 45
    .line 46
    iget-object v0, v0, Lr/h0;->g:Ljava/util/List;

    .line 47
    .line 48
    iput-object v0, v1, Lr/h0;->g:Ljava/util/List;

    .line 49
    .line 50
    return-object v1

    .line 51
    :cond_0
    new-instance v0, Lr/h0;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    .line 57
    .line 58
    iput-boolean v1, v0, Lr/h0;->h:Z

    .line 59
    .line 60
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    .line 61
    .line 62
    iput-boolean v1, v0, Lr/h0;->i:Z

    .line 63
    .line 64
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:Z

    .line 65
    .line 66
    iput-boolean v1, v0, Lr/h0;->j:Z

    .line 67
    .line 68
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Lr/g0;

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    iget-object v3, v1, Lr/g0;->a:[I

    .line 74
    .line 75
    if-eqz v3, :cond_1

    .line 76
    .line 77
    iput-object v3, v0, Lr/h0;->f:[I

    .line 78
    .line 79
    array-length v3, v3

    .line 80
    iput v3, v0, Lr/h0;->e:I

    .line 81
    .line 82
    iget-object v1, v1, Lr/g0;->b:Ljava/util/List;

    .line 83
    .line 84
    iput-object v1, v0, Lr/h0;->g:Ljava/util/List;

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    iput v2, v0, Lr/h0;->e:I

    .line 88
    .line 89
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getChildCount()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    const/4 v3, -0x1

    .line 94
    if-lez v1, :cond_7

    .line 95
    .line 96
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    .line 97
    .line 98
    if-eqz v1, :cond_2

    .line 99
    .line 100
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    :goto_1
    iput v1, v0, Lr/h0;->a:I

    .line 110
    .line 111
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 112
    .line 113
    const/4 v4, 0x1

    .line 114
    if-eqz v1, :cond_3

    .line 115
    .line 116
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(Z)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    goto :goto_2

    .line 121
    :cond_3
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j(Z)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    :goto_2
    if-nez v1, :cond_4

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_4
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/j;->getPosition(Landroid/view/View;)I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    :goto_3
    iput v3, v0, Lr/h0;->b:I

    .line 133
    .line 134
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 135
    .line 136
    iput v1, v0, Lr/h0;->c:I

    .line 137
    .line 138
    new-array v1, v1, [I

    .line 139
    .line 140
    iput-object v1, v0, Lr/h0;->d:[I

    .line 141
    .line 142
    :goto_4
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 143
    .line 144
    if-ge v2, v1, :cond_8

    .line 145
    .line 146
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    .line 147
    .line 148
    const/high16 v3, -0x80000000

    .line 149
    .line 150
    if-eqz v1, :cond_5

    .line 151
    .line 152
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 153
    .line 154
    aget-object v1, v1, v2

    .line 155
    .line 156
    invoke-virtual {v1, v3}, Lr/i0;->f(I)I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eq v1, v3, :cond_6

    .line 161
    .line 162
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 163
    .line 164
    invoke-virtual {v3}, Lr/A;->g()I

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    :goto_5
    sub-int/2addr v1, v3

    .line 169
    goto :goto_6

    .line 170
    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 171
    .line 172
    aget-object v1, v1, v2

    .line 173
    .line 174
    invoke-virtual {v1, v3}, Lr/i0;->h(I)I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eq v1, v3, :cond_6

    .line 179
    .line 180
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 181
    .line 182
    invoke-virtual {v3}, Lr/A;->k()I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    goto :goto_5

    .line 187
    :cond_6
    :goto_6
    iget-object v3, v0, Lr/h0;->d:[I

    .line 188
    .line 189
    aput v1, v3, v2

    .line 190
    .line 191
    add-int/lit8 v2, v2, 0x1

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_7
    iput v3, v0, Lr/h0;->a:I

    .line 195
    .line 196
    iput v3, v0, Lr/h0;->b:I

    .line 197
    .line 198
    iput v2, v0, Lr/h0;->c:I

    .line 199
    .line 200
    :cond_8
    return-object v0
.end method

.method public final onScrollStateChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d()Z

    :cond_0
    return-void
.end method

.method public final p(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lr/i0;->h(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lr/i0;->h(I)I

    move-result v2

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final q(III)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m()I

    move-result v0

    :goto_0
    const/16 v1, 0x8

    if-ne p3, v1, :cond_2

    if-ge p1, p2, :cond_1

    add-int/lit8 v2, p2, 0x1

    :goto_1
    move v3, p1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, p1, 0x1

    move v3, p2

    goto :goto_2

    :cond_2
    add-int v2, p1, p2

    goto :goto_1

    :goto_2
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Lr/g0;

    invoke-virtual {v4, v3}, Lr/g0;->c(I)I

    const/4 v5, 0x1

    if-eq p3, v5, :cond_5

    const/4 v6, 0x2

    if-eq p3, v6, :cond_4

    if-eq p3, v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v4, p1, v5}, Lr/g0;->e(II)V

    invoke-virtual {v4, p2, v5}, Lr/g0;->d(II)V

    goto :goto_3

    :cond_4
    invoke-virtual {v4, p1, p2}, Lr/g0;->e(II)V

    goto :goto_3

    :cond_5
    invoke-virtual {v4, p1, p2}, Lr/g0;->d(II)V

    :goto_3
    if-gt v2, v0, :cond_6

    return-void

    :cond_6
    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m()I

    move-result p1

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n()I

    move-result p1

    :goto_4
    if-gt v3, p1, :cond_8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->requestLayout()V

    :cond_8
    return-void
.end method

.method public final r()Landroid/view/View;
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, v0, -0x1

    .line 6
    .line 7
    new-instance v2, Ljava/util/BitSet;

    .line 8
    .line 9
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x1

    .line 18
    invoke-virtual {v2, v4, v3, v5}, Ljava/util/BitSet;->set(IIZ)V

    .line 19
    .line 20
    .line 21
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 22
    .line 23
    const/4 v6, -0x1

    .line 24
    if-ne v3, v5, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v3, -0x1

    .line 35
    :goto_0
    iget-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 36
    .line 37
    if-eqz v7, :cond_1

    .line 38
    .line 39
    const/4 v0, -0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v1, 0x0

    .line 42
    :goto_1
    if-ge v1, v0, :cond_2

    .line 43
    .line 44
    const/4 v6, 0x1

    .line 45
    :cond_2
    if-eq v1, v0, :cond_d

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/j;->getChildAt(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    check-cast v8, Lr/e0;

    .line 56
    .line 57
    iget-object v9, v8, Lr/e0;->e:Lr/i0;

    .line 58
    .line 59
    iget v9, v9, Lr/i0;->e:I

    .line 60
    .line 61
    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    if-eqz v9, :cond_7

    .line 66
    .line 67
    iget-object v9, v8, Lr/e0;->e:Lr/i0;

    .line 68
    .line 69
    iget-boolean v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 70
    .line 71
    const/high16 v11, -0x80000000

    .line 72
    .line 73
    if-eqz v10, :cond_4

    .line 74
    .line 75
    iget v10, v9, Lr/i0;->c:I

    .line 76
    .line 77
    if-eq v10, v11, :cond_3

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    invoke-virtual {v9}, Lr/i0;->a()V

    .line 81
    .line 82
    .line 83
    iget v10, v9, Lr/i0;->c:I

    .line 84
    .line 85
    :goto_2
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 86
    .line 87
    invoke-virtual {v11}, Lr/A;->g()I

    .line 88
    .line 89
    .line 90
    move-result v11

    .line 91
    if-ge v10, v11, :cond_6

    .line 92
    .line 93
    iget-object v0, v9, Lr/i0;->a:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    sub-int/2addr v1, v5

    .line 100
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Landroid/view/View;

    .line 105
    .line 106
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Lr/e0;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_4
    iget v10, v9, Lr/i0;->b:I

    .line 117
    .line 118
    if-eq v10, v11, :cond_5

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_5
    iget-object v10, v9, Lr/i0;->a:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    check-cast v10, Landroid/view/View;

    .line 128
    .line 129
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 130
    .line 131
    .line 132
    move-result-object v11

    .line 133
    check-cast v11, Lr/e0;

    .line 134
    .line 135
    iget-object v12, v9, Lr/i0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 136
    .line 137
    iget-object v12, v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 138
    .line 139
    invoke-virtual {v12, v10}, Lr/A;->e(Landroid/view/View;)I

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    iput v10, v9, Lr/i0;->b:I

    .line 144
    .line 145
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    iget v10, v9, Lr/i0;->b:I

    .line 149
    .line 150
    :goto_4
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 151
    .line 152
    invoke-virtual {v11}, Lr/A;->k()I

    .line 153
    .line 154
    .line 155
    move-result v11

    .line 156
    if-le v10, v11, :cond_6

    .line 157
    .line 158
    iget-object v0, v9, Lr/i0;->a:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    check-cast v0, Landroid/view/View;

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :goto_5
    return-object v7

    .line 168
    :cond_6
    iget-object v9, v8, Lr/e0;->e:Lr/i0;

    .line 169
    .line 170
    iget v9, v9, Lr/i0;->e:I

    .line 171
    .line 172
    invoke-virtual {v2, v9}, Ljava/util/BitSet;->clear(I)V

    .line 173
    .line 174
    .line 175
    :cond_7
    add-int/2addr v1, v6

    .line 176
    if-eq v1, v0, :cond_2

    .line 177
    .line 178
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/j;->getChildAt(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    iget-boolean v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 183
    .line 184
    if-eqz v10, :cond_9

    .line 185
    .line 186
    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 187
    .line 188
    invoke-virtual {v10, v7}, Lr/A;->b(Landroid/view/View;)I

    .line 189
    .line 190
    .line 191
    move-result v10

    .line 192
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 193
    .line 194
    invoke-virtual {v11, v9}, Lr/A;->b(Landroid/view/View;)I

    .line 195
    .line 196
    .line 197
    move-result v11

    .line 198
    if-ge v10, v11, :cond_8

    .line 199
    .line 200
    return-object v7

    .line 201
    :cond_8
    if-ne v10, v11, :cond_2

    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_9
    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 205
    .line 206
    invoke-virtual {v10, v7}, Lr/A;->e(Landroid/view/View;)I

    .line 207
    .line 208
    .line 209
    move-result v10

    .line 210
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 211
    .line 212
    invoke-virtual {v11, v9}, Lr/A;->e(Landroid/view/View;)I

    .line 213
    .line 214
    .line 215
    move-result v11

    .line 216
    if-le v10, v11, :cond_a

    .line 217
    .line 218
    return-object v7

    .line 219
    :cond_a
    if-ne v10, v11, :cond_2

    .line 220
    .line 221
    :goto_6
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 222
    .line 223
    .line 224
    move-result-object v9

    .line 225
    check-cast v9, Lr/e0;

    .line 226
    .line 227
    iget-object v8, v8, Lr/e0;->e:Lr/i0;

    .line 228
    .line 229
    iget v8, v8, Lr/i0;->e:I

    .line 230
    .line 231
    iget-object v9, v9, Lr/e0;->e:Lr/i0;

    .line 232
    .line 233
    iget v9, v9, Lr/i0;->e:I

    .line 234
    .line 235
    sub-int/2addr v8, v9

    .line 236
    if-gez v8, :cond_b

    .line 237
    .line 238
    const/4 v8, 0x1

    .line 239
    goto :goto_7

    .line 240
    :cond_b
    const/4 v8, 0x0

    .line 241
    :goto_7
    if-gez v3, :cond_c

    .line 242
    .line 243
    const/4 v9, 0x1

    .line 244
    goto :goto_8

    .line 245
    :cond_c
    const/4 v9, 0x0

    .line 246
    :goto_8
    if-eq v8, v9, :cond_2

    .line 247
    .line 248
    return-object v7

    .line 249
    :cond_d
    const/4 v0, 0x0

    .line 250
    return-object v0
.end method

.method public final s(Landroid/view/View;II)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/j;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lr/e0;

    .line 11
    .line 12
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 13
    .line 14
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 15
    .line 16
    add-int/2addr v2, v3

    .line 17
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 18
    .line 19
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 20
    .line 21
    add-int/2addr v3, v4

    .line 22
    invoke-static {p2, v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D(III)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 27
    .line 28
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 29
    .line 30
    add-int/2addr v2, v3

    .line 31
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 32
    .line 33
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 34
    .line 35
    add-int/2addr v3, v0

    .line 36
    invoke-static {p3, v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D(III)I

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    invoke-virtual {p0, p1, p2, p3, v1}, Landroidx/recyclerview/widget/j;->shouldMeasureChild(Landroid/view/View;IILr/N;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public final scrollBy(ILandroidx/recyclerview/widget/k;Lr/Y;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v(ILr/Y;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Lr/s;

    .line 15
    .line 16
    invoke-virtual {p0, p2, v0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h(Landroidx/recyclerview/widget/k;Lr/s;Lr/Y;)I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    iget v2, v0, Lr/s;->b:I

    .line 21
    .line 22
    if-ge v2, p3, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    if-gez p1, :cond_2

    .line 26
    .line 27
    neg-int p1, p3

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    move p1, p3

    .line 30
    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 31
    .line 32
    neg-int v2, p1

    .line 33
    invoke-virtual {p3, v2}, Lr/A;->p(I)V

    .line 34
    .line 35
    .line 36
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 37
    .line 38
    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    .line 39
    .line 40
    iput v1, v0, Lr/s;->b:I

    .line 41
    .line 42
    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w(Landroidx/recyclerview/widget/k;Lr/s;)V

    .line 43
    .line 44
    .line 45
    return p1

    .line 46
    :cond_3
    :goto_1
    return v1
.end method

.method public final scrollHorizontallyBy(ILandroidx/recyclerview/widget/k;Lr/Y;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/k;Lr/Y;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final scrollToPosition(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Lr/h0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, v0, Lr/h0;->a:I

    .line 6
    .line 7
    if-eq v1, p1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Lr/h0;->d:[I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput v1, v0, Lr/h0;->c:I

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    iput v1, v0, Lr/h0;->a:I

    .line 17
    .line 18
    iput v1, v0, Lr/h0;->b:I

    .line 19
    .line 20
    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 21
    .line 22
    const/high16 p1, -0x80000000

    .line 23
    .line 24
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->requestLayout()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final scrollVerticallyBy(ILandroidx/recyclerview/widget/k;Lr/Y;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/k;Lr/Y;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v0

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getMinimumHeight()I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/j;->chooseSize(III)I

    move-result p1

    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    mul-int p3, p3, v0

    add-int/2addr p3, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/j;->chooseSize(III)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p1, v0}, Landroidx/recyclerview/widget/j;->chooseSize(III)I

    move-result p2

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    mul-int p1, p1, v0

    add-int/2addr p1, v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getMinimumHeight()I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/j;->chooseSize(III)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/j;->setMeasuredDimension(II)V

    return-void
.end method

.method public final smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Lr/Y;I)V
    .locals 0

    .line 1
    new-instance p2, Lr/y;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p2, p1}, Lr/y;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput p3, p2, Landroidx/recyclerview/widget/m;->a:I

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/j;->startSmoothScroll(Landroidx/recyclerview/widget/m;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final supportsPredictiveItemAnimations()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Lr/h0;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final t(Landroidx/recyclerview/widget/k;Lr/Y;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Lr/h0;

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Lr/d0;

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 15
    .line 16
    if-eq v3, v4, :cond_1

    .line 17
    .line 18
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lr/Y;->b()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/j;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/k;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5}, Lr/d0;->a()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-boolean v3, v5, Lr/d0;->e:Z

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x1

    .line 35
    if-eqz v3, :cond_3

    .line 36
    .line 37
    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 38
    .line 39
    if-ne v3, v4, :cond_3

    .line 40
    .line 41
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Lr/h0;

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v3, 0x0

    .line 47
    goto :goto_1

    .line 48
    :cond_3
    :goto_0
    const/4 v3, 0x1

    .line 49
    :goto_1
    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Lr/g0;

    .line 50
    .line 51
    iget-object v9, v5, Lr/d0;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 52
    .line 53
    const/high16 v10, -0x80000000

    .line 54
    .line 55
    if-eqz v3, :cond_22

    .line 56
    .line 57
    invoke-virtual {v5}, Lr/d0;->a()V

    .line 58
    .line 59
    .line 60
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Lr/h0;

    .line 61
    .line 62
    if-eqz v11, :cond_a

    .line 63
    .line 64
    iget v12, v11, Lr/h0;->c:I

    .line 65
    .line 66
    const/4 v13, 0x0

    .line 67
    if-lez v12, :cond_7

    .line 68
    .line 69
    iget v14, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 70
    .line 71
    if-ne v12, v14, :cond_6

    .line 72
    .line 73
    const/4 v11, 0x0

    .line 74
    :goto_2
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 75
    .line 76
    if-ge v11, v12, :cond_7

    .line 77
    .line 78
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 79
    .line 80
    aget-object v12, v12, v11

    .line 81
    .line 82
    invoke-virtual {v12}, Lr/i0;->b()V

    .line 83
    .line 84
    .line 85
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Lr/h0;

    .line 86
    .line 87
    iget-object v14, v12, Lr/h0;->d:[I

    .line 88
    .line 89
    aget v14, v14, v11

    .line 90
    .line 91
    if-eq v14, v10, :cond_5

    .line 92
    .line 93
    iget-boolean v12, v12, Lr/h0;->i:Z

    .line 94
    .line 95
    if-eqz v12, :cond_4

    .line 96
    .line 97
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 98
    .line 99
    invoke-virtual {v12}, Lr/A;->g()I

    .line 100
    .line 101
    .line 102
    move-result v12

    .line 103
    :goto_3
    add-int/2addr v14, v12

    .line 104
    goto :goto_4

    .line 105
    :cond_4
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 106
    .line 107
    invoke-virtual {v12}, Lr/A;->k()I

    .line 108
    .line 109
    .line 110
    move-result v12

    .line 111
    goto :goto_3

    .line 112
    :cond_5
    :goto_4
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 113
    .line 114
    aget-object v12, v12, v11

    .line 115
    .line 116
    iput v14, v12, Lr/i0;->b:I

    .line 117
    .line 118
    iput v14, v12, Lr/i0;->c:I

    .line 119
    .line 120
    add-int/lit8 v11, v11, 0x1

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_6
    iput-object v13, v11, Lr/h0;->d:[I

    .line 124
    .line 125
    iput v6, v11, Lr/h0;->c:I

    .line 126
    .line 127
    iput v6, v11, Lr/h0;->e:I

    .line 128
    .line 129
    iput-object v13, v11, Lr/h0;->f:[I

    .line 130
    .line 131
    iput-object v13, v11, Lr/h0;->g:Ljava/util/List;

    .line 132
    .line 133
    iget v12, v11, Lr/h0;->b:I

    .line 134
    .line 135
    iput v12, v11, Lr/h0;->a:I

    .line 136
    .line 137
    :cond_7
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Lr/h0;

    .line 138
    .line 139
    iget-boolean v12, v11, Lr/h0;->j:Z

    .line 140
    .line 141
    iput-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:Z

    .line 142
    .line 143
    iget-boolean v11, v11, Lr/h0;->h:Z

    .line 144
    .line 145
    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Lr/h0;

    .line 149
    .line 150
    if-eqz v12, :cond_8

    .line 151
    .line 152
    iget-boolean v13, v12, Lr/h0;->h:Z

    .line 153
    .line 154
    if-eq v13, v11, :cond_8

    .line 155
    .line 156
    iput-boolean v11, v12, Lr/h0;->h:Z

    .line 157
    .line 158
    :cond_8
    iput-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    .line 159
    .line 160
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/j;->requestLayout()V

    .line 161
    .line 162
    .line 163
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z()V

    .line 164
    .line 165
    .line 166
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Lr/h0;

    .line 167
    .line 168
    iget v12, v11, Lr/h0;->a:I

    .line 169
    .line 170
    if-eq v12, v4, :cond_9

    .line 171
    .line 172
    iput v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 173
    .line 174
    iget-boolean v12, v11, Lr/h0;->i:Z

    .line 175
    .line 176
    :goto_5
    iput-boolean v12, v5, Lr/d0;->c:Z

    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_9
    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :goto_6
    iget v12, v11, Lr/h0;->e:I

    .line 183
    .line 184
    if-le v12, v7, :cond_b

    .line 185
    .line 186
    iget-object v12, v11, Lr/h0;->f:[I

    .line 187
    .line 188
    iput-object v12, v8, Lr/g0;->a:[I

    .line 189
    .line 190
    iget-object v11, v11, Lr/h0;->g:Ljava/util/List;

    .line 191
    .line 192
    iput-object v11, v8, Lr/g0;->b:Ljava/util/List;

    .line 193
    .line 194
    goto :goto_7

    .line 195
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z()V

    .line 196
    .line 197
    .line 198
    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 199
    .line 200
    iput-boolean v11, v5, Lr/d0;->c:Z

    .line 201
    .line 202
    :cond_b
    :goto_7
    iget-boolean v11, v2, Lr/Y;->g:Z

    .line 203
    .line 204
    if-nez v11, :cond_1d

    .line 205
    .line 206
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 207
    .line 208
    if-ne v11, v4, :cond_c

    .line 209
    .line 210
    goto/16 :goto_12

    .line 211
    .line 212
    :cond_c
    if-ltz v11, :cond_1c

    .line 213
    .line 214
    invoke-virtual/range {p2 .. p2}, Lr/Y;->b()I

    .line 215
    .line 216
    .line 217
    move-result v12

    .line 218
    if-lt v11, v12, :cond_d

    .line 219
    .line 220
    goto/16 :goto_11

    .line 221
    .line 222
    :cond_d
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Lr/h0;

    .line 223
    .line 224
    if-eqz v11, :cond_f

    .line 225
    .line 226
    iget v12, v11, Lr/h0;->a:I

    .line 227
    .line 228
    if-eq v12, v4, :cond_f

    .line 229
    .line 230
    iget v11, v11, Lr/h0;->c:I

    .line 231
    .line 232
    if-ge v11, v7, :cond_e

    .line 233
    .line 234
    goto :goto_8

    .line 235
    :cond_e
    iput v10, v5, Lr/d0;->b:I

    .line 236
    .line 237
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 238
    .line 239
    iput v11, v5, Lr/d0;->a:I

    .line 240
    .line 241
    goto/16 :goto_16

    .line 242
    .line 243
    :cond_f
    :goto_8
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 244
    .line 245
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/j;->findViewByPosition(I)Landroid/view/View;

    .line 246
    .line 247
    .line 248
    move-result-object v11

    .line 249
    if-eqz v11, :cond_17

    .line 250
    .line 251
    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 252
    .line 253
    if-eqz v12, :cond_10

    .line 254
    .line 255
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n()I

    .line 256
    .line 257
    .line 258
    move-result v12

    .line 259
    goto :goto_9

    .line 260
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m()I

    .line 261
    .line 262
    .line 263
    move-result v12

    .line 264
    :goto_9
    iput v12, v5, Lr/d0;->a:I

    .line 265
    .line 266
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    .line 267
    .line 268
    if-eq v12, v10, :cond_12

    .line 269
    .line 270
    iget-boolean v12, v5, Lr/d0;->c:Z

    .line 271
    .line 272
    if-eqz v12, :cond_11

    .line 273
    .line 274
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 275
    .line 276
    invoke-virtual {v12}, Lr/A;->g()I

    .line 277
    .line 278
    .line 279
    move-result v12

    .line 280
    iget v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    .line 281
    .line 282
    sub-int/2addr v12, v13

    .line 283
    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 284
    .line 285
    invoke-virtual {v13, v11}, Lr/A;->b(Landroid/view/View;)I

    .line 286
    .line 287
    .line 288
    move-result v11

    .line 289
    :goto_a
    sub-int/2addr v12, v11

    .line 290
    :goto_b
    iput v12, v5, Lr/d0;->b:I

    .line 291
    .line 292
    goto/16 :goto_16

    .line 293
    .line 294
    :cond_11
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 295
    .line 296
    invoke-virtual {v12}, Lr/A;->k()I

    .line 297
    .line 298
    .line 299
    move-result v12

    .line 300
    iget v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    .line 301
    .line 302
    add-int/2addr v12, v13

    .line 303
    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 304
    .line 305
    invoke-virtual {v13, v11}, Lr/A;->e(Landroid/view/View;)I

    .line 306
    .line 307
    .line 308
    move-result v11

    .line 309
    goto :goto_a

    .line 310
    :cond_12
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 311
    .line 312
    invoke-virtual {v12, v11}, Lr/A;->c(Landroid/view/View;)I

    .line 313
    .line 314
    .line 315
    move-result v12

    .line 316
    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 317
    .line 318
    invoke-virtual {v13}, Lr/A;->l()I

    .line 319
    .line 320
    .line 321
    move-result v13

    .line 322
    if-le v12, v13, :cond_14

    .line 323
    .line 324
    iget-boolean v11, v5, Lr/d0;->c:Z

    .line 325
    .line 326
    if-eqz v11, :cond_13

    .line 327
    .line 328
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 329
    .line 330
    invoke-virtual {v11}, Lr/A;->g()I

    .line 331
    .line 332
    .line 333
    move-result v11

    .line 334
    goto :goto_c

    .line 335
    :cond_13
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 336
    .line 337
    invoke-virtual {v11}, Lr/A;->k()I

    .line 338
    .line 339
    .line 340
    move-result v11

    .line 341
    :goto_c
    iput v11, v5, Lr/d0;->b:I

    .line 342
    .line 343
    goto/16 :goto_16

    .line 344
    .line 345
    :cond_14
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 346
    .line 347
    invoke-virtual {v12, v11}, Lr/A;->e(Landroid/view/View;)I

    .line 348
    .line 349
    .line 350
    move-result v12

    .line 351
    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 352
    .line 353
    invoke-virtual {v13}, Lr/A;->k()I

    .line 354
    .line 355
    .line 356
    move-result v13

    .line 357
    sub-int/2addr v12, v13

    .line 358
    if-gez v12, :cond_15

    .line 359
    .line 360
    neg-int v11, v12

    .line 361
    goto :goto_c

    .line 362
    :cond_15
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 363
    .line 364
    invoke-virtual {v12}, Lr/A;->g()I

    .line 365
    .line 366
    .line 367
    move-result v12

    .line 368
    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 369
    .line 370
    invoke-virtual {v13, v11}, Lr/A;->b(Landroid/view/View;)I

    .line 371
    .line 372
    .line 373
    move-result v11

    .line 374
    sub-int/2addr v12, v11

    .line 375
    if-gez v12, :cond_16

    .line 376
    .line 377
    goto :goto_b

    .line 378
    :cond_16
    iput v10, v5, Lr/d0;->b:I

    .line 379
    .line 380
    goto/16 :goto_16

    .line 381
    .line 382
    :cond_17
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 383
    .line 384
    iput v11, v5, Lr/d0;->a:I

    .line 385
    .line 386
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    .line 387
    .line 388
    if-ne v12, v10, :cond_1a

    .line 389
    .line 390
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(I)I

    .line 391
    .line 392
    .line 393
    move-result v11

    .line 394
    if-ne v11, v7, :cond_18

    .line 395
    .line 396
    const/4 v11, 0x1

    .line 397
    goto :goto_d

    .line 398
    :cond_18
    const/4 v11, 0x0

    .line 399
    :goto_d
    iput-boolean v11, v5, Lr/d0;->c:Z

    .line 400
    .line 401
    if-eqz v11, :cond_19

    .line 402
    .line 403
    iget-object v11, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 404
    .line 405
    invoke-virtual {v11}, Lr/A;->g()I

    .line 406
    .line 407
    .line 408
    move-result v11

    .line 409
    goto :goto_e

    .line 410
    :cond_19
    iget-object v11, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 411
    .line 412
    invoke-virtual {v11}, Lr/A;->k()I

    .line 413
    .line 414
    .line 415
    move-result v11

    .line 416
    :goto_e
    iput v11, v5, Lr/d0;->b:I

    .line 417
    .line 418
    goto :goto_10

    .line 419
    :cond_1a
    iget-boolean v11, v5, Lr/d0;->c:Z

    .line 420
    .line 421
    if-eqz v11, :cond_1b

    .line 422
    .line 423
    iget-object v11, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 424
    .line 425
    invoke-virtual {v11}, Lr/A;->g()I

    .line 426
    .line 427
    .line 428
    move-result v11

    .line 429
    sub-int/2addr v11, v12

    .line 430
    :goto_f
    iput v11, v5, Lr/d0;->b:I

    .line 431
    .line 432
    goto :goto_10

    .line 433
    :cond_1b
    iget-object v11, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 434
    .line 435
    invoke-virtual {v11}, Lr/A;->k()I

    .line 436
    .line 437
    .line 438
    move-result v11

    .line 439
    add-int/2addr v11, v12

    .line 440
    goto :goto_f

    .line 441
    :goto_10
    iput-boolean v7, v5, Lr/d0;->d:Z

    .line 442
    .line 443
    goto :goto_16

    .line 444
    :cond_1c
    :goto_11
    iput v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 445
    .line 446
    iput v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    .line 447
    .line 448
    :cond_1d
    :goto_12
    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    .line 449
    .line 450
    if-eqz v11, :cond_20

    .line 451
    .line 452
    invoke-virtual/range {p2 .. p2}, Lr/Y;->b()I

    .line 453
    .line 454
    .line 455
    move-result v11

    .line 456
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/j;->getChildCount()I

    .line 457
    .line 458
    .line 459
    move-result v12

    .line 460
    sub-int/2addr v12, v7

    .line 461
    :goto_13
    if-ltz v12, :cond_1f

    .line 462
    .line 463
    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/j;->getChildAt(I)Landroid/view/View;

    .line 464
    .line 465
    .line 466
    move-result-object v13

    .line 467
    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/j;->getPosition(Landroid/view/View;)I

    .line 468
    .line 469
    .line 470
    move-result v13

    .line 471
    if-ltz v13, :cond_1e

    .line 472
    .line 473
    if-ge v13, v11, :cond_1e

    .line 474
    .line 475
    goto :goto_15

    .line 476
    :cond_1e
    add-int/lit8 v12, v12, -0x1

    .line 477
    .line 478
    goto :goto_13

    .line 479
    :cond_1f
    const/4 v13, 0x0

    .line 480
    goto :goto_15

    .line 481
    :cond_20
    invoke-virtual/range {p2 .. p2}, Lr/Y;->b()I

    .line 482
    .line 483
    .line 484
    move-result v11

    .line 485
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/j;->getChildCount()I

    .line 486
    .line 487
    .line 488
    move-result v12

    .line 489
    const/4 v13, 0x0

    .line 490
    :goto_14
    if-ge v13, v12, :cond_1f

    .line 491
    .line 492
    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/j;->getChildAt(I)Landroid/view/View;

    .line 493
    .line 494
    .line 495
    move-result-object v14

    .line 496
    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/j;->getPosition(Landroid/view/View;)I

    .line 497
    .line 498
    .line 499
    move-result v14

    .line 500
    if-ltz v14, :cond_21

    .line 501
    .line 502
    if-ge v14, v11, :cond_21

    .line 503
    .line 504
    move v13, v14

    .line 505
    goto :goto_15

    .line 506
    :cond_21
    add-int/lit8 v13, v13, 0x1

    .line 507
    .line 508
    goto :goto_14

    .line 509
    :goto_15
    iput v13, v5, Lr/d0;->a:I

    .line 510
    .line 511
    iput v10, v5, Lr/d0;->b:I

    .line 512
    .line 513
    :goto_16
    iput-boolean v7, v5, Lr/d0;->e:Z

    .line 514
    .line 515
    :cond_22
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Lr/h0;

    .line 516
    .line 517
    if-nez v11, :cond_24

    .line 518
    .line 519
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 520
    .line 521
    if-ne v11, v4, :cond_24

    .line 522
    .line 523
    iget-boolean v11, v5, Lr/d0;->c:Z

    .line 524
    .line 525
    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    .line 526
    .line 527
    if-ne v11, v12, :cond_23

    .line 528
    .line 529
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 530
    .line 531
    .line 532
    move-result v11

    .line 533
    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:Z

    .line 534
    .line 535
    if-eq v11, v12, :cond_24

    .line 536
    .line 537
    :cond_23
    invoke-virtual {v8}, Lr/g0;->a()V

    .line 538
    .line 539
    .line 540
    iput-boolean v7, v5, Lr/d0;->d:Z

    .line 541
    .line 542
    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/j;->getChildCount()I

    .line 543
    .line 544
    .line 545
    move-result v8

    .line 546
    if-lez v8, :cond_33

    .line 547
    .line 548
    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Lr/h0;

    .line 549
    .line 550
    if-eqz v8, :cond_25

    .line 551
    .line 552
    iget v8, v8, Lr/h0;->c:I

    .line 553
    .line 554
    if-ge v8, v7, :cond_33

    .line 555
    .line 556
    :cond_25
    iget-boolean v8, v5, Lr/d0;->d:Z

    .line 557
    .line 558
    if-eqz v8, :cond_27

    .line 559
    .line 560
    const/4 v3, 0x0

    .line 561
    :goto_17
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 562
    .line 563
    if-ge v3, v8, :cond_33

    .line 564
    .line 565
    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 566
    .line 567
    aget-object v8, v8, v3

    .line 568
    .line 569
    invoke-virtual {v8}, Lr/i0;->b()V

    .line 570
    .line 571
    .line 572
    iget v8, v5, Lr/d0;->b:I

    .line 573
    .line 574
    if-eq v8, v10, :cond_26

    .line 575
    .line 576
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 577
    .line 578
    aget-object v9, v9, v3

    .line 579
    .line 580
    iput v8, v9, Lr/i0;->b:I

    .line 581
    .line 582
    iput v8, v9, Lr/i0;->c:I

    .line 583
    .line 584
    :cond_26
    add-int/lit8 v3, v3, 0x1

    .line 585
    .line 586
    goto :goto_17

    .line 587
    :cond_27
    if-nez v3, :cond_29

    .line 588
    .line 589
    iget-object v3, v5, Lr/d0;->f:[I

    .line 590
    .line 591
    if-nez v3, :cond_28

    .line 592
    .line 593
    goto :goto_19

    .line 594
    :cond_28
    const/4 v3, 0x0

    .line 595
    :goto_18
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 596
    .line 597
    if-ge v3, v8, :cond_33

    .line 598
    .line 599
    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 600
    .line 601
    aget-object v8, v8, v3

    .line 602
    .line 603
    invoke-virtual {v8}, Lr/i0;->b()V

    .line 604
    .line 605
    .line 606
    iget-object v9, v5, Lr/d0;->f:[I

    .line 607
    .line 608
    aget v9, v9, v3

    .line 609
    .line 610
    iput v9, v8, Lr/i0;->b:I

    .line 611
    .line 612
    iput v9, v8, Lr/i0;->c:I

    .line 613
    .line 614
    add-int/lit8 v3, v3, 0x1

    .line 615
    .line 616
    goto :goto_18

    .line 617
    :cond_29
    :goto_19
    const/4 v3, 0x0

    .line 618
    :goto_1a
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 619
    .line 620
    if-ge v3, v8, :cond_30

    .line 621
    .line 622
    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 623
    .line 624
    aget-object v8, v8, v3

    .line 625
    .line 626
    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 627
    .line 628
    iget v12, v5, Lr/d0;->b:I

    .line 629
    .line 630
    if-eqz v11, :cond_2a

    .line 631
    .line 632
    invoke-virtual {v8, v10}, Lr/i0;->f(I)I

    .line 633
    .line 634
    .line 635
    move-result v13

    .line 636
    goto :goto_1b

    .line 637
    :cond_2a
    invoke-virtual {v8, v10}, Lr/i0;->h(I)I

    .line 638
    .line 639
    .line 640
    move-result v13

    .line 641
    :goto_1b
    invoke-virtual {v8}, Lr/i0;->b()V

    .line 642
    .line 643
    .line 644
    if-ne v13, v10, :cond_2b

    .line 645
    .line 646
    goto :goto_1c

    .line 647
    :cond_2b
    iget-object v14, v8, Lr/i0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 648
    .line 649
    if-eqz v11, :cond_2c

    .line 650
    .line 651
    iget-object v15, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 652
    .line 653
    invoke-virtual {v15}, Lr/A;->g()I

    .line 654
    .line 655
    .line 656
    move-result v15

    .line 657
    if-lt v13, v15, :cond_2f

    .line 658
    .line 659
    :cond_2c
    if-nez v11, :cond_2d

    .line 660
    .line 661
    iget-object v11, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 662
    .line 663
    invoke-virtual {v11}, Lr/A;->k()I

    .line 664
    .line 665
    .line 666
    move-result v11

    .line 667
    if-le v13, v11, :cond_2d

    .line 668
    .line 669
    goto :goto_1c

    .line 670
    :cond_2d
    if-eq v12, v10, :cond_2e

    .line 671
    .line 672
    add-int/2addr v13, v12

    .line 673
    :cond_2e
    iput v13, v8, Lr/i0;->c:I

    .line 674
    .line 675
    iput v13, v8, Lr/i0;->b:I

    .line 676
    .line 677
    :cond_2f
    :goto_1c
    add-int/lit8 v3, v3, 0x1

    .line 678
    .line 679
    goto :goto_1a

    .line 680
    :cond_30
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 681
    .line 682
    array-length v8, v3

    .line 683
    iget-object v11, v5, Lr/d0;->f:[I

    .line 684
    .line 685
    if-eqz v11, :cond_31

    .line 686
    .line 687
    array-length v11, v11

    .line 688
    if-ge v11, v8, :cond_32

    .line 689
    .line 690
    :cond_31
    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 691
    .line 692
    array-length v9, v9

    .line 693
    new-array v9, v9, [I

    .line 694
    .line 695
    iput-object v9, v5, Lr/d0;->f:[I

    .line 696
    .line 697
    :cond_32
    const/4 v9, 0x0

    .line 698
    :goto_1d
    if-ge v9, v8, :cond_33

    .line 699
    .line 700
    iget-object v11, v5, Lr/d0;->f:[I

    .line 701
    .line 702
    aget-object v12, v3, v9

    .line 703
    .line 704
    invoke-virtual {v12, v10}, Lr/i0;->h(I)I

    .line 705
    .line 706
    .line 707
    move-result v12

    .line 708
    aput v12, v11, v9

    .line 709
    .line 710
    add-int/lit8 v9, v9, 0x1

    .line 711
    .line 712
    goto :goto_1d

    .line 713
    :cond_33
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/j;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/k;)V

    .line 714
    .line 715
    .line 716
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Lr/s;

    .line 717
    .line 718
    iput-boolean v6, v3, Lr/s;->a:Z

    .line 719
    .line 720
    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Lr/A;

    .line 721
    .line 722
    invoke-virtual {v8}, Lr/A;->l()I

    .line 723
    .line 724
    .line 725
    move-result v8

    .line 726
    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 727
    .line 728
    div-int v9, v8, v9

    .line 729
    .line 730
    iput v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 731
    .line 732
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Lr/A;

    .line 733
    .line 734
    invoke-virtual {v9}, Lr/A;->i()I

    .line 735
    .line 736
    .line 737
    move-result v9

    .line 738
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 739
    .line 740
    .line 741
    iget v8, v5, Lr/d0;->a:I

    .line 742
    .line 743
    invoke-virtual {v0, v8, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B(ILr/Y;)V

    .line 744
    .line 745
    .line 746
    iget-boolean v8, v5, Lr/d0;->c:Z

    .line 747
    .line 748
    if-eqz v8, :cond_34

    .line 749
    .line 750
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A(I)V

    .line 751
    .line 752
    .line 753
    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h(Landroidx/recyclerview/widget/k;Lr/s;Lr/Y;)I

    .line 754
    .line 755
    .line 756
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A(I)V

    .line 757
    .line 758
    .line 759
    :goto_1e
    iget v4, v5, Lr/d0;->a:I

    .line 760
    .line 761
    iget v8, v3, Lr/s;->d:I

    .line 762
    .line 763
    add-int/2addr v4, v8

    .line 764
    iput v4, v3, Lr/s;->c:I

    .line 765
    .line 766
    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h(Landroidx/recyclerview/widget/k;Lr/s;Lr/Y;)I

    .line 767
    .line 768
    .line 769
    goto :goto_1f

    .line 770
    :cond_34
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A(I)V

    .line 771
    .line 772
    .line 773
    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h(Landroidx/recyclerview/widget/k;Lr/s;Lr/Y;)I

    .line 774
    .line 775
    .line 776
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A(I)V

    .line 777
    .line 778
    .line 779
    goto :goto_1e

    .line 780
    :goto_1f
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Lr/A;

    .line 781
    .line 782
    invoke-virtual {v3}, Lr/A;->i()I

    .line 783
    .line 784
    .line 785
    move-result v3

    .line 786
    const/high16 v4, 0x40000000    # 2.0f

    .line 787
    .line 788
    if-ne v3, v4, :cond_35

    .line 789
    .line 790
    goto/16 :goto_25

    .line 791
    .line 792
    :cond_35
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/j;->getChildCount()I

    .line 793
    .line 794
    .line 795
    move-result v3

    .line 796
    const/4 v4, 0x0

    .line 797
    const/4 v8, 0x0

    .line 798
    :goto_20
    if-ge v8, v3, :cond_37

    .line 799
    .line 800
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/j;->getChildAt(I)Landroid/view/View;

    .line 801
    .line 802
    .line 803
    move-result-object v9

    .line 804
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Lr/A;

    .line 805
    .line 806
    invoke-virtual {v11, v9}, Lr/A;->c(Landroid/view/View;)I

    .line 807
    .line 808
    .line 809
    move-result v11

    .line 810
    int-to-float v11, v11

    .line 811
    cmpg-float v12, v11, v4

    .line 812
    .line 813
    if-gez v12, :cond_36

    .line 814
    .line 815
    goto :goto_21

    .line 816
    :cond_36
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 817
    .line 818
    .line 819
    move-result-object v9

    .line 820
    check-cast v9, Lr/e0;

    .line 821
    .line 822
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 823
    .line 824
    .line 825
    invoke-static {v4, v11}, Ljava/lang/Math;->max(FF)F

    .line 826
    .line 827
    .line 828
    move-result v4

    .line 829
    :goto_21
    add-int/lit8 v8, v8, 0x1

    .line 830
    .line 831
    goto :goto_20

    .line 832
    :cond_37
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 833
    .line 834
    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 835
    .line 836
    int-to-float v9, v9

    .line 837
    mul-float v4, v4, v9

    .line 838
    .line 839
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 840
    .line 841
    .line 842
    move-result v4

    .line 843
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Lr/A;

    .line 844
    .line 845
    invoke-virtual {v9}, Lr/A;->i()I

    .line 846
    .line 847
    .line 848
    move-result v9

    .line 849
    if-ne v9, v10, :cond_38

    .line 850
    .line 851
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Lr/A;

    .line 852
    .line 853
    invoke-virtual {v9}, Lr/A;->l()I

    .line 854
    .line 855
    .line 856
    move-result v9

    .line 857
    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    .line 858
    .line 859
    .line 860
    move-result v4

    .line 861
    :cond_38
    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 862
    .line 863
    div-int v9, v4, v9

    .line 864
    .line 865
    iput v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 866
    .line 867
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Lr/A;

    .line 868
    .line 869
    invoke-virtual {v9}, Lr/A;->i()I

    .line 870
    .line 871
    .line 872
    move-result v9

    .line 873
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 874
    .line 875
    .line 876
    iget v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 877
    .line 878
    if-ne v4, v8, :cond_39

    .line 879
    .line 880
    goto :goto_25

    .line 881
    :cond_39
    const/4 v4, 0x0

    .line 882
    :goto_22
    if-ge v4, v3, :cond_3c

    .line 883
    .line 884
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/j;->getChildAt(I)Landroid/view/View;

    .line 885
    .line 886
    .line 887
    move-result-object v9

    .line 888
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 889
    .line 890
    .line 891
    move-result-object v10

    .line 892
    check-cast v10, Lr/e0;

    .line 893
    .line 894
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 895
    .line 896
    .line 897
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 898
    .line 899
    .line 900
    move-result v11

    .line 901
    if-eqz v11, :cond_3a

    .line 902
    .line 903
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 904
    .line 905
    if-ne v11, v7, :cond_3a

    .line 906
    .line 907
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 908
    .line 909
    sub-int/2addr v11, v7

    .line 910
    iget-object v10, v10, Lr/e0;->e:Lr/i0;

    .line 911
    .line 912
    iget v10, v10, Lr/i0;->e:I

    .line 913
    .line 914
    sub-int/2addr v11, v10

    .line 915
    neg-int v10, v11

    .line 916
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 917
    .line 918
    mul-int v11, v11, v10

    .line 919
    .line 920
    mul-int v10, v10, v8

    .line 921
    .line 922
    sub-int/2addr v11, v10

    .line 923
    :goto_23
    invoke-virtual {v9, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 924
    .line 925
    .line 926
    goto :goto_24

    .line 927
    :cond_3a
    iget-object v10, v10, Lr/e0;->e:Lr/i0;

    .line 928
    .line 929
    iget v10, v10, Lr/i0;->e:I

    .line 930
    .line 931
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 932
    .line 933
    mul-int v11, v11, v10

    .line 934
    .line 935
    mul-int v10, v10, v8

    .line 936
    .line 937
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 938
    .line 939
    sub-int/2addr v11, v10

    .line 940
    if-ne v12, v7, :cond_3b

    .line 941
    .line 942
    goto :goto_23

    .line 943
    :cond_3b
    invoke-virtual {v9, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 944
    .line 945
    .line 946
    :goto_24
    add-int/lit8 v4, v4, 0x1

    .line 947
    .line 948
    goto :goto_22

    .line 949
    :cond_3c
    :goto_25
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/j;->getChildCount()I

    .line 950
    .line 951
    .line 952
    move-result v3

    .line 953
    if-lez v3, :cond_3e

    .line 954
    .line 955
    iget-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 956
    .line 957
    if-eqz v3, :cond_3d

    .line 958
    .line 959
    invoke-virtual {v0, v1, v2, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k(Landroidx/recyclerview/widget/k;Lr/Y;Z)V

    .line 960
    .line 961
    .line 962
    invoke-virtual {v0, v1, v2, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l(Landroidx/recyclerview/widget/k;Lr/Y;Z)V

    .line 963
    .line 964
    .line 965
    goto :goto_26

    .line 966
    :cond_3d
    invoke-virtual {v0, v1, v2, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l(Landroidx/recyclerview/widget/k;Lr/Y;Z)V

    .line 967
    .line 968
    .line 969
    invoke-virtual {v0, v1, v2, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k(Landroidx/recyclerview/widget/k;Lr/Y;Z)V

    .line 970
    .line 971
    .line 972
    :cond_3e
    :goto_26
    if-eqz p3, :cond_3f

    .line 973
    .line 974
    iget-boolean v3, v2, Lr/Y;->g:Z

    .line 975
    .line 976
    if-nez v3, :cond_3f

    .line 977
    .line 978
    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    .line 979
    .line 980
    if-eqz v3, :cond_3f

    .line 981
    .line 982
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/j;->getChildCount()I

    .line 983
    .line 984
    .line 985
    move-result v3

    .line 986
    if-lez v3, :cond_3f

    .line 987
    .line 988
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r()Landroid/view/View;

    .line 989
    .line 990
    .line 991
    move-result-object v3

    .line 992
    if-eqz v3, :cond_3f

    .line 993
    .line 994
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Lr/j;

    .line 995
    .line 996
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/j;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 997
    .line 998
    .line 999
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d()Z

    .line 1000
    .line 1001
    .line 1002
    move-result v3

    .line 1003
    if-eqz v3, :cond_3f

    .line 1004
    .line 1005
    goto :goto_27

    .line 1006
    :cond_3f
    const/4 v7, 0x0

    .line 1007
    :goto_27
    iget-boolean v3, v2, Lr/Y;->g:Z

    .line 1008
    .line 1009
    if-eqz v3, :cond_40

    .line 1010
    .line 1011
    invoke-virtual {v5}, Lr/d0;->a()V

    .line 1012
    .line 1013
    .line 1014
    :cond_40
    iget-boolean v3, v5, Lr/d0;->c:Z

    .line 1015
    .line 1016
    iput-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    .line 1017
    .line 1018
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 1019
    .line 1020
    .line 1021
    move-result v3

    .line 1022
    iput-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:Z

    .line 1023
    .line 1024
    if-eqz v7, :cond_41

    .line 1025
    .line 1026
    invoke-virtual {v5}, Lr/d0;->a()V

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v0, v1, v2, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t(Landroidx/recyclerview/widget/k;Lr/Y;Z)V

    .line 1030
    .line 1031
    .line 1032
    :cond_41
    return-void
.end method

.method public final u(I)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-eq p1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    if-ne p1, v1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    if-ne p1, v0, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-ne p1, v0, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2
.end method

.method public final v(ILr/Y;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lez p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, -0x1

    .line 15
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Lr/s;

    .line 16
    .line 17
    iput-boolean v0, v3, Lr/s;->a:Z

    .line 18
    .line 19
    invoke-virtual {p0, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B(ILr/Y;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A(I)V

    .line 23
    .line 24
    .line 25
    iget p2, v3, Lr/s;->d:I

    .line 26
    .line 27
    add-int/2addr v1, p2

    .line 28
    iput v1, v3, Lr/s;->c:I

    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, v3, Lr/s;->b:I

    .line 35
    .line 36
    return-void
.end method

.method public final w(Landroidx/recyclerview/widget/k;Lr/s;)V
    .locals 4

    .line 1
    iget-boolean v0, p2, Lr/s;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    iget-boolean v0, p2, Lr/s;->i:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    iget v0, p2, Lr/s;->b:I

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    iget v0, p2, Lr/s;->e:I

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    iget p2, p2, Lr/s;->g:I

    .line 21
    .line 22
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x(ILandroidx/recyclerview/widget/k;)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :cond_1
    iget p2, p2, Lr/s;->f:I

    .line 28
    .line 29
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y(ILandroidx/recyclerview/widget/k;)V

    .line 30
    .line 31
    .line 32
    goto :goto_4

    .line 33
    :cond_2
    iget v0, p2, Lr/s;->e:I

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x1

    .line 37
    if-ne v0, v1, :cond_6

    .line 38
    .line 39
    iget v0, p2, Lr/s;->f:I

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 42
    .line 43
    aget-object v1, v1, v2

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Lr/i0;->h(I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 50
    .line 51
    if-ge v3, v2, :cond_4

    .line 52
    .line 53
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 54
    .line 55
    aget-object v2, v2, v3

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Lr/i0;->h(I)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-le v2, v1, :cond_3

    .line 62
    .line 63
    move v1, v2

    .line 64
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    sub-int/2addr v0, v1

    .line 68
    if-gez v0, :cond_5

    .line 69
    .line 70
    iget p2, p2, Lr/s;->g:I

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_5
    iget v1, p2, Lr/s;->g:I

    .line 74
    .line 75
    iget p2, p2, Lr/s;->b:I

    .line 76
    .line 77
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    sub-int p2, v1, p2

    .line 82
    .line 83
    :goto_1
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x(ILandroidx/recyclerview/widget/k;)V

    .line 84
    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_6
    iget v0, p2, Lr/s;->g:I

    .line 88
    .line 89
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 90
    .line 91
    aget-object v1, v1, v2

    .line 92
    .line 93
    invoke-virtual {v1, v0}, Lr/i0;->f(I)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    :goto_2
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 98
    .line 99
    if-ge v3, v2, :cond_8

    .line 100
    .line 101
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Lr/i0;

    .line 102
    .line 103
    aget-object v2, v2, v3

    .line 104
    .line 105
    invoke-virtual {v2, v0}, Lr/i0;->f(I)I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-ge v2, v1, :cond_7

    .line 110
    .line 111
    move v1, v2

    .line 112
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_8
    iget v0, p2, Lr/s;->g:I

    .line 116
    .line 117
    sub-int/2addr v1, v0

    .line 118
    if-gez v1, :cond_9

    .line 119
    .line 120
    iget p2, p2, Lr/s;->f:I

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_9
    iget v0, p2, Lr/s;->f:I

    .line 124
    .line 125
    iget p2, p2, Lr/s;->b:I

    .line 126
    .line 127
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    add-int/2addr p2, v0

    .line 132
    :goto_3
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y(ILandroidx/recyclerview/widget/k;)V

    .line 133
    .line 134
    .line 135
    :cond_a
    :goto_4
    return-void
.end method

.method public final x(ILandroidx/recyclerview/widget/k;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    :goto_0
    if-ltz v0, :cond_4

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/j;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Lr/A;->e(Landroid/view/View;)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-lt v3, p1, :cond_4

    .line 20
    .line 21
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Lr/A;->o(Landroid/view/View;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-lt v3, p1, :cond_4

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lr/e0;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object v4, v3, Lr/e0;->e:Lr/i0;

    .line 39
    .line 40
    iget-object v4, v4, Lr/i0;->a:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-ne v4, v1, :cond_0

    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    iget-object v3, v3, Lr/e0;->e:Lr/i0;

    .line 50
    .line 51
    iget-object v4, v3, Lr/i0;->a:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    add-int/lit8 v6, v5, -0x1

    .line 58
    .line 59
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Lr/e0;

    .line 70
    .line 71
    const/4 v7, 0x0

    .line 72
    iput-object v7, v6, Lr/e0;->e:Lr/i0;

    .line 73
    .line 74
    iget-object v7, v6, Lr/N;->a:Landroidx/recyclerview/widget/o;

    .line 75
    .line 76
    invoke-virtual {v7}, Landroidx/recyclerview/widget/o;->isRemoved()Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-nez v7, :cond_1

    .line 81
    .line 82
    iget-object v6, v6, Lr/N;->a:Landroidx/recyclerview/widget/o;

    .line 83
    .line 84
    invoke-virtual {v6}, Landroidx/recyclerview/widget/o;->isUpdated()Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_2

    .line 89
    .line 90
    :cond_1
    iget v6, v3, Lr/i0;->d:I

    .line 91
    .line 92
    iget-object v7, v3, Lr/i0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 93
    .line 94
    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 95
    .line 96
    invoke-virtual {v7, v4}, Lr/A;->c(Landroid/view/View;)I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    sub-int/2addr v6, v4

    .line 101
    iput v6, v3, Lr/i0;->d:I

    .line 102
    .line 103
    :cond_2
    const/high16 v4, -0x80000000

    .line 104
    .line 105
    if-ne v5, v1, :cond_3

    .line 106
    .line 107
    iput v4, v3, Lr/i0;->b:I

    .line 108
    .line 109
    :cond_3
    iput v4, v3, Lr/i0;->c:I

    .line 110
    .line 111
    invoke-virtual {p0, v2, p2}, Landroidx/recyclerview/widget/j;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/k;)V

    .line 112
    .line 113
    .line 114
    add-int/lit8 v0, v0, -0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_4
    return-void
.end method

.method public final y(ILandroidx/recyclerview/widget/k;)V
    .locals 6

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_4

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/j;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Lr/A;->b(Landroid/view/View;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-gt v2, p1, :cond_4

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Lr/A;->n(Landroid/view/View;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-gt v2, p1, :cond_4

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lr/e0;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object v3, v2, Lr/e0;->e:Lr/i0;

    .line 38
    .line 39
    iget-object v3, v3, Lr/i0;->a:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/4 v4, 0x1

    .line 46
    if-ne v3, v4, :cond_0

    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    iget-object v2, v2, Lr/e0;->e:Lr/i0;

    .line 50
    .line 51
    iget-object v3, v2, Lr/i0;->a:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/view/View;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Lr/e0;

    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    iput-object v5, v4, Lr/e0;->e:Lr/i0;

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    const/high16 v5, -0x80000000

    .line 73
    .line 74
    if-nez v3, :cond_1

    .line 75
    .line 76
    iput v5, v2, Lr/i0;->c:I

    .line 77
    .line 78
    :cond_1
    iget-object v3, v4, Lr/N;->a:Landroidx/recyclerview/widget/o;

    .line 79
    .line 80
    invoke-virtual {v3}, Landroidx/recyclerview/widget/o;->isRemoved()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-nez v3, :cond_2

    .line 85
    .line 86
    iget-object v3, v4, Lr/N;->a:Landroidx/recyclerview/widget/o;

    .line 87
    .line 88
    invoke-virtual {v3}, Landroidx/recyclerview/widget/o;->isUpdated()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_3

    .line 93
    .line 94
    :cond_2
    iget v3, v2, Lr/i0;->d:I

    .line 95
    .line 96
    iget-object v4, v2, Lr/i0;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 97
    .line 98
    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lr/A;

    .line 99
    .line 100
    invoke-virtual {v4, v0}, Lr/A;->c(Landroid/view/View;)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    sub-int/2addr v3, v0

    .line 105
    iput v3, v2, Lr/i0;->d:I

    .line 106
    .line 107
    :cond_3
    iput v5, v2, Lr/i0;->b:I

    .line 108
    .line 109
    invoke-virtual {p0, v1, p2}, Landroidx/recyclerview/widget/j;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/k;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    return-void
.end method

.method public final z()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    .line 14
    .line 15
    xor-int/2addr v0, v1

    .line 16
    :goto_0
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_1
    :goto_1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :goto_2
    return-void
.end method
