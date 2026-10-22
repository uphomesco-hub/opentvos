.class public final Lk/v;
.super Lx/c;
.source "SourceFile"


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lv/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/v;->d:Landroid/view/View;

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
    new-instance v0, Lk/v;

    .line 7
    .line 8
    iget-object v1, p0, Lk/v;->d:Landroid/view/View;

    .line 9
    .line 10
    invoke-direct {v0, v1, p2}, Lk/v;-><init>(Landroid/view/View;Lv/a;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, v0, Lk/v;->b:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lw/a;->a:Lw/a;

    .line 2
    .line 3
    iget v1, p0, Lk/v;->c:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lk/v;->d:Landroid/view/View;

    .line 7
    .line 8
    if-eqz v1, :cond_5

    .line 9
    .line 10
    sget-object v4, Lu/b;->a:Lu/b;

    .line 11
    .line 12
    const/4 v5, 0x2

    .line 13
    if-eq v1, v2, :cond_1

    .line 14
    .line 15
    if-ne v1, v5, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Ly/a;->x(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    iget-object v1, p0, Lk/v;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Lz/a;

    .line 32
    .line 33
    invoke-static {p1}, Ly/a;->x(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    instance-of p1, v3, Landroid/view/ViewGroup;

    .line 37
    .line 38
    if-eqz p1, :cond_4

    .line 39
    .line 40
    check-cast v3, Landroid/view/ViewGroup;

    .line 41
    .line 42
    const-string p1, "$this$descendants"

    .line 43
    .line 44
    invoke-static {v3, p1}, Ly/a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Lk/u;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-direct {p1, v3, v2}, Lk/u;-><init>(Landroid/view/ViewGroup;Lv/a;)V

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, Lk/v;->b:Ljava/lang/Object;

    .line 54
    .line 55
    iput v5, p0, Lk/v;->c:I

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    new-instance v2, Lz/a;

    .line 61
    .line 62
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v2, v2}, Lx/c;->c(Ljava/lang/Object;Lv/a;)Lv/a;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, v2, Lz/a;->d:Lv/a;

    .line 70
    .line 71
    invoke-virtual {v2}, Lz/a;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_2

    .line 76
    .line 77
    move-object p1, v4

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    iput-object v2, v1, Lz/a;->c:Ljava/util/Iterator;

    .line 80
    .line 81
    iput v5, v1, Lz/a;->a:I

    .line 82
    .line 83
    iput-object p0, v1, Lz/a;->d:Lv/a;

    .line 84
    .line 85
    move-object p1, v0

    .line 86
    :goto_0
    if-ne p1, v0, :cond_3

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    move-object p1, v4

    .line 90
    :goto_1
    if-ne p1, v0, :cond_4

    .line 91
    .line 92
    return-object v0

    .line 93
    :cond_4
    :goto_2
    return-object v4

    .line 94
    :cond_5
    invoke-static {p1}, Ly/a;->x(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lk/v;->b:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p1, Lz/a;

    .line 100
    .line 101
    iput-object p1, p0, Lk/v;->b:Ljava/lang/Object;

    .line 102
    .line 103
    iput v2, p0, Lk/v;->c:I

    .line 104
    .line 105
    iput-object v3, p1, Lz/a;->b:Ljava/lang/Object;

    .line 106
    .line 107
    const/4 v1, 0x3

    .line 108
    iput v1, p1, Lz/a;->a:I

    .line 109
    .line 110
    iput-object p0, p1, Lz/a;->d:Lv/a;

    .line 111
    .line 112
    return-object v0
.end method
