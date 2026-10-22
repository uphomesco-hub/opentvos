.class public final Lk/u;
.super Lx/c;
.source "SourceFile"


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public c:Landroid/view/ViewGroup;

.field public d:Landroid/view/View;

.field public e:I

.field public f:I

.field public g:I

.field public final synthetic h:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lv/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/u;->h:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lx/c;-><init>(Lv/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Lv/a;)Lv/a;
    .locals 2

    .line 1
    const-string v0, "completion"

    .line 2
    .line 3
    invoke-static {p2, v0}, Ly/a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lk/u;

    .line 7
    .line 8
    iget-object v1, p0, Lk/u;->h:Landroid/view/ViewGroup;

    .line 9
    .line 10
    invoke-direct {v0, v1, p2}, Lk/u;-><init>(Landroid/view/ViewGroup;Lv/a;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, v0, Lk/u;->b:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    sget-object v0, Lw/a;->a:Lw/a;

    .line 2
    .line 3
    iget v1, p0, Lk/u;->g:I

    .line 4
    .line 5
    sget-object v2, Lu/b;->a:Lu/b;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v1, :cond_6

    .line 9
    .line 10
    const/4 v4, 0x2

    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v4, :cond_0

    .line 14
    .line 15
    iget v1, p0, Lk/u;->f:I

    .line 16
    .line 17
    iget v4, p0, Lk/u;->e:I

    .line 18
    .line 19
    iget-object v5, p0, Lk/u;->c:Landroid/view/ViewGroup;

    .line 20
    .line 21
    iget-object v6, p0, Lk/u;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v6, Lz/a;

    .line 24
    .line 25
    invoke-static {p1}, Ly/a;->x(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    iget v1, p0, Lk/u;->f:I

    .line 38
    .line 39
    iget v5, p0, Lk/u;->e:I

    .line 40
    .line 41
    iget-object v6, p0, Lk/u;->d:Landroid/view/View;

    .line 42
    .line 43
    iget-object v7, p0, Lk/u;->c:Landroid/view/ViewGroup;

    .line 44
    .line 45
    iget-object v8, p0, Lk/u;->b:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v8, Lz/a;

    .line 48
    .line 49
    invoke-static {p1}, Ly/a;->x(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    instance-of p1, v6, Landroid/view/ViewGroup;

    .line 53
    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    check-cast v6, Landroid/view/ViewGroup;

    .line 57
    .line 58
    const-string p1, "$this$descendants"

    .line 59
    .line 60
    invoke-static {v6, p1}, Ly/a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance p1, Lk/u;

    .line 64
    .line 65
    const/4 v9, 0x0

    .line 66
    invoke-direct {p1, v6, v9}, Lk/u;-><init>(Landroid/view/ViewGroup;Lv/a;)V

    .line 67
    .line 68
    .line 69
    iput-object v8, p0, Lk/u;->b:Ljava/lang/Object;

    .line 70
    .line 71
    iput-object v7, p0, Lk/u;->c:Landroid/view/ViewGroup;

    .line 72
    .line 73
    iput-object v9, p0, Lk/u;->d:Landroid/view/View;

    .line 74
    .line 75
    iput v5, p0, Lk/u;->e:I

    .line 76
    .line 77
    iput v1, p0, Lk/u;->f:I

    .line 78
    .line 79
    iput v4, p0, Lk/u;->g:I

    .line 80
    .line 81
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    new-instance v6, Lz/a;

    .line 85
    .line 86
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v6, v6}, Lx/c;->c(Ljava/lang/Object;Lv/a;)Lv/a;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput-object p1, v6, Lz/a;->d:Lv/a;

    .line 94
    .line 95
    invoke-virtual {v6}, Lz/a;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_2

    .line 100
    .line 101
    move-object p1, v2

    .line 102
    goto :goto_0

    .line 103
    :cond_2
    iput-object v6, v8, Lz/a;->c:Ljava/util/Iterator;

    .line 104
    .line 105
    iput v4, v8, Lz/a;->a:I

    .line 106
    .line 107
    iput-object p0, v8, Lz/a;->d:Lv/a;

    .line 108
    .line 109
    move-object p1, v0

    .line 110
    :goto_0
    if-ne p1, v0, :cond_3

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    move-object p1, v2

    .line 114
    :goto_1
    if-ne p1, v0, :cond_4

    .line 115
    .line 116
    return-object v0

    .line 117
    :cond_4
    move v4, v5

    .line 118
    move-object v5, v7

    .line 119
    move-object v6, v8

    .line 120
    :goto_2
    move-object v7, v5

    .line 121
    move-object v8, v6

    .line 122
    move v5, v4

    .line 123
    :cond_5
    add-int/2addr v5, v3

    .line 124
    goto :goto_3

    .line 125
    :cond_6
    invoke-static {p1}, Ly/a;->x(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lk/u;->b:Ljava/lang/Object;

    .line 129
    .line 130
    move-object v8, p1

    .line 131
    check-cast v8, Lz/a;

    .line 132
    .line 133
    iget-object v7, p0, Lk/u;->h:Landroid/view/ViewGroup;

    .line 134
    .line 135
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    const/4 v5, 0x0

    .line 140
    :goto_3
    if-ge v5, v1, :cond_7

    .line 141
    .line 142
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    const-string v2, "getChildAt(index)"

    .line 147
    .line 148
    invoke-static {p1, v2}, Ly/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iput-object v8, p0, Lk/u;->b:Ljava/lang/Object;

    .line 152
    .line 153
    iput-object v7, p0, Lk/u;->c:Landroid/view/ViewGroup;

    .line 154
    .line 155
    iput-object p1, p0, Lk/u;->d:Landroid/view/View;

    .line 156
    .line 157
    iput v5, p0, Lk/u;->e:I

    .line 158
    .line 159
    iput v1, p0, Lk/u;->f:I

    .line 160
    .line 161
    iput v3, p0, Lk/u;->g:I

    .line 162
    .line 163
    iput-object p1, v8, Lz/a;->b:Ljava/lang/Object;

    .line 164
    .line 165
    const/4 p1, 0x3

    .line 166
    iput p1, v8, Lz/a;->a:I

    .line 167
    .line 168
    iput-object p0, v8, Lz/a;->d:Lv/a;

    .line 169
    .line 170
    return-object v0

    .line 171
    :cond_7
    return-object v2
.end method
