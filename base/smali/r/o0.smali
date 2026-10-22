.class public final Lr/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lb/j;

.field public final b:Lb/d;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lb/j;

    .line 5
    .line 6
    invoke-direct {v0}, Lb/j;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lr/o0;->a:Lb/j;

    .line 10
    .line 11
    new-instance v0, Lb/d;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, v0, Lb/d;->a:Z

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    :goto_0
    const/16 v3, 0x20

    .line 21
    .line 22
    const/16 v4, 0x50

    .line 23
    .line 24
    if-ge v2, v3, :cond_1

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    shl-int/2addr v3, v2

    .line 28
    add-int/lit8 v3, v3, -0xc

    .line 29
    .line 30
    if-gt v4, v3, :cond_0

    .line 31
    .line 32
    move v4, v3

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    :goto_1
    div-int/lit8 v4, v4, 0x8

    .line 38
    .line 39
    new-array v2, v4, [J

    .line 40
    .line 41
    iput-object v2, v0, Lb/d;->b:[J

    .line 42
    .line 43
    new-array v2, v4, [Ljava/lang/Object;

    .line 44
    .line 45
    iput-object v2, v0, Lb/d;->c:[Ljava/lang/Object;

    .line 46
    .line 47
    iput v1, v0, Lb/d;->d:I

    .line 48
    .line 49
    iput-object v0, p0, Lr/o0;->b:Lb/d;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final a(JLandroidx/recyclerview/widget/o;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lr/o0;->b:Lb/d;

    .line 2
    .line 3
    iget-object v1, v0, Lb/d;->b:[J

    .line 4
    .line 5
    iget v2, v0, Lb/d;->d:I

    .line 6
    .line 7
    invoke-static {v1, v2, p1, p2}, Lb/c;->a([JIJ)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ltz v1, :cond_0

    .line 12
    .line 13
    iget-object p1, v0, Lb/d;->c:[Ljava/lang/Object;

    .line 14
    .line 15
    aput-object p3, p1, v1

    .line 16
    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    :cond_0
    not-int v1, v1

    .line 20
    iget v2, v0, Lb/d;->d:I

    .line 21
    .line 22
    if-ge v1, v2, :cond_1

    .line 23
    .line 24
    iget-object v3, v0, Lb/d;->c:[Ljava/lang/Object;

    .line 25
    .line 26
    aget-object v4, v3, v1

    .line 27
    .line 28
    sget-object v5, Lb/d;->e:Ljava/lang/Object;

    .line 29
    .line 30
    if-ne v4, v5, :cond_1

    .line 31
    .line 32
    iget-object v0, v0, Lb/d;->b:[J

    .line 33
    .line 34
    aput-wide p1, v0, v1

    .line 35
    .line 36
    aput-object p3, v3, v1

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    iget-boolean v3, v0, Lb/d;->a:Z

    .line 40
    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    iget-object v3, v0, Lb/d;->b:[J

    .line 44
    .line 45
    array-length v3, v3

    .line 46
    if-lt v2, v3, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Lb/d;->a()V

    .line 49
    .line 50
    .line 51
    iget-object v1, v0, Lb/d;->b:[J

    .line 52
    .line 53
    iget v2, v0, Lb/d;->d:I

    .line 54
    .line 55
    invoke-static {v1, v2, p1, p2}, Lb/c;->a([JIJ)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    not-int v1, v1

    .line 60
    :cond_2
    iget v2, v0, Lb/d;->d:I

    .line 61
    .line 62
    iget-object v3, v0, Lb/d;->b:[J

    .line 63
    .line 64
    array-length v3, v3

    .line 65
    const/4 v4, 0x1

    .line 66
    if-lt v2, v3, :cond_5

    .line 67
    .line 68
    add-int/2addr v2, v4

    .line 69
    mul-int/lit8 v2, v2, 0x8

    .line 70
    .line 71
    const/4 v3, 0x4

    .line 72
    :goto_0
    const/16 v5, 0x20

    .line 73
    .line 74
    if-ge v3, v5, :cond_4

    .line 75
    .line 76
    shl-int v5, v4, v3

    .line 77
    .line 78
    add-int/lit8 v5, v5, -0xc

    .line 79
    .line 80
    if-gt v2, v5, :cond_3

    .line 81
    .line 82
    move v2, v5

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    :goto_1
    div-int/lit8 v2, v2, 0x8

    .line 88
    .line 89
    new-array v3, v2, [J

    .line 90
    .line 91
    new-array v2, v2, [Ljava/lang/Object;

    .line 92
    .line 93
    iget-object v5, v0, Lb/d;->b:[J

    .line 94
    .line 95
    array-length v6, v5

    .line 96
    const/4 v7, 0x0

    .line 97
    invoke-static {v5, v7, v3, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    .line 99
    .line 100
    iget-object v5, v0, Lb/d;->c:[Ljava/lang/Object;

    .line 101
    .line 102
    array-length v6, v5

    .line 103
    invoke-static {v5, v7, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    .line 105
    .line 106
    iput-object v3, v0, Lb/d;->b:[J

    .line 107
    .line 108
    iput-object v2, v0, Lb/d;->c:[Ljava/lang/Object;

    .line 109
    .line 110
    :cond_5
    iget v2, v0, Lb/d;->d:I

    .line 111
    .line 112
    sub-int/2addr v2, v1

    .line 113
    if-eqz v2, :cond_6

    .line 114
    .line 115
    iget-object v3, v0, Lb/d;->b:[J

    .line 116
    .line 117
    add-int/lit8 v5, v1, 0x1

    .line 118
    .line 119
    invoke-static {v3, v1, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    .line 121
    .line 122
    iget-object v2, v0, Lb/d;->c:[Ljava/lang/Object;

    .line 123
    .line 124
    iget v3, v0, Lb/d;->d:I

    .line 125
    .line 126
    sub-int/2addr v3, v1

    .line 127
    invoke-static {v2, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    .line 129
    .line 130
    :cond_6
    iget-object v2, v0, Lb/d;->b:[J

    .line 131
    .line 132
    aput-wide p1, v2, v1

    .line 133
    .line 134
    iget-object p1, v0, Lb/d;->c:[Ljava/lang/Object;

    .line 135
    .line 136
    aput-object p3, p1, v1

    .line 137
    .line 138
    iget p1, v0, Lb/d;->d:I

    .line 139
    .line 140
    add-int/2addr p1, v4

    .line 141
    iput p1, v0, Lb/d;->d:I

    .line 142
    .line 143
    :goto_2
    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/o;Lr/I;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr/o0;->a:Lb/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lb/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lr/m0;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lr/m0;->a()Lr/m0;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, p1, v1}, Lb/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    iput-object p2, v1, Lr/m0;->c:Lr/I;

    .line 19
    .line 20
    iget p1, v1, Lr/m0;->a:I

    .line 21
    .line 22
    or-int/lit8 p1, p1, 0x8

    .line 23
    .line 24
    iput p1, v1, Lr/m0;->a:I

    .line 25
    .line 26
    return-void
.end method

.method public final c(Landroidx/recyclerview/widget/o;I)Lr/I;
    .locals 5

    .line 1
    iget-object v0, p0, Lr/o0;->a:Lb/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lb/j;->e(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v1, 0x0

    .line 8
    if-gez p1, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    iget-object v2, v0, Lb/j;->b:[Ljava/lang/Object;

    .line 12
    .line 13
    shl-int/lit8 v3, p1, 0x1

    .line 14
    .line 15
    add-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    aget-object v2, v2, v3

    .line 18
    .line 19
    check-cast v2, Lr/m0;

    .line 20
    .line 21
    if-eqz v2, :cond_4

    .line 22
    .line 23
    iget v3, v2, Lr/m0;->a:I

    .line 24
    .line 25
    and-int v4, v3, p2

    .line 26
    .line 27
    if-eqz v4, :cond_4

    .line 28
    .line 29
    not-int v4, p2

    .line 30
    and-int/2addr v3, v4

    .line 31
    iput v3, v2, Lr/m0;->a:I

    .line 32
    .line 33
    const/4 v4, 0x4

    .line 34
    if-ne p2, v4, :cond_1

    .line 35
    .line 36
    iget-object p2, v2, Lr/m0;->b:Lr/I;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/16 v4, 0x8

    .line 40
    .line 41
    if-ne p2, v4, :cond_3

    .line 42
    .line 43
    iget-object p2, v2, Lr/m0;->c:Lr/I;

    .line 44
    .line 45
    :goto_0
    and-int/lit8 v3, v3, 0xc

    .line 46
    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lb/j;->h(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    iput p1, v2, Lr/m0;->a:I

    .line 54
    .line 55
    iput-object v1, v2, Lr/m0;->b:Lr/I;

    .line 56
    .line 57
    iput-object v1, v2, Lr/m0;->c:Lr/I;

    .line 58
    .line 59
    sget-object p1, Lr/m0;->d:Li/e;

    .line 60
    .line 61
    invoke-virtual {p1, v2}, Li/e;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    return-object p2

    .line 65
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    const-string p2, "Must provide flag PRE or POST"

    .line 68
    .line 69
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :cond_4
    return-object v1
.end method

.method public final d(Landroidx/recyclerview/widget/o;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr/o0;->a:Lb/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lb/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lr/m0;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget v0, p1, Lr/m0;->a:I

    .line 13
    .line 14
    and-int/lit8 v0, v0, -0x2

    .line 15
    .line 16
    iput v0, p1, Lr/m0;->a:I

    .line 17
    .line 18
    return-void
.end method

.method public final e(Landroidx/recyclerview/widget/o;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lr/o0;->b:Lb/d;

    .line 2
    .line 3
    iget-boolean v1, v0, Lb/d;->a:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lb/d;->a()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget v1, v0, Lb/d;->d:I

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    sub-int/2addr v1, v2

    .line 14
    :goto_0
    if-ltz v1, :cond_3

    .line 15
    .line 16
    iget-boolean v3, v0, Lb/d;->a:Z

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lb/d;->a()V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v3, v0, Lb/d;->c:[Ljava/lang/Object;

    .line 24
    .line 25
    aget-object v4, v3, v1

    .line 26
    .line 27
    if-ne p1, v4, :cond_2

    .line 28
    .line 29
    sget-object v5, Lb/d;->e:Ljava/lang/Object;

    .line 30
    .line 31
    if-eq v4, v5, :cond_3

    .line 32
    .line 33
    aput-object v5, v3, v1

    .line 34
    .line 35
    iput-boolean v2, v0, Lb/d;->a:Z

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    :goto_1
    iget-object v0, p0, Lr/o0;->a:Lb/j;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lb/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lr/m0;

    .line 48
    .line 49
    if-eqz p1, :cond_4

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    iput v0, p1, Lr/m0;->a:I

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    iput-object v0, p1, Lr/m0;->b:Lr/I;

    .line 56
    .line 57
    iput-object v0, p1, Lr/m0;->c:Lr/I;

    .line 58
    .line 59
    sget-object v0, Lr/m0;->d:Li/e;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Li/e;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_4
    return-void
.end method
