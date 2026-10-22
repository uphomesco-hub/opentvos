.class public final Lp/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final l:Lp/d;

.field public static final m:Lp/d;

.field public static final n:Lp/d;

.field public static final o:Lp/d;

.field public static final p:Lp/d;

.field public static final q:Lp/d;

.field public static final r:Lp/d;

.field public static final s:Lp/d;


# instance fields
.field public a:F

.field public b:F

.field public final c:Ljava/lang/Object;

.field public final d:Ly/a;

.field public e:Z

.field public f:J

.field public final g:F

.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;

.field public j:Lp/g;

.field public k:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp/d;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lp/d;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lp/f;->l:Lp/d;

    .line 8
    .line 9
    new-instance v0, Lp/d;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-direct {v0, v1}, Lp/d;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lp/f;->m:Lp/d;

    .line 16
    .line 17
    new-instance v0, Lp/d;

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    invoke-direct {v0, v1}, Lp/d;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lp/f;->n:Lp/d;

    .line 24
    .line 25
    new-instance v0, Lp/d;

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    invoke-direct {v0, v1}, Lp/d;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lp/f;->o:Lp/d;

    .line 32
    .line 33
    new-instance v0, Lp/d;

    .line 34
    .line 35
    const/4 v1, 0x5

    .line 36
    invoke-direct {v0, v1}, Lp/d;-><init>(I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lp/f;->p:Lp/d;

    .line 40
    .line 41
    new-instance v0, Lp/d;

    .line 42
    .line 43
    const/4 v1, 0x6

    .line 44
    invoke-direct {v0, v1}, Lp/d;-><init>(I)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lp/f;->q:Lp/d;

    .line 48
    .line 49
    new-instance v0, Lp/d;

    .line 50
    .line 51
    const/4 v1, 0x7

    .line 52
    invoke-direct {v0, v1}, Lp/d;-><init>(I)V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lp/f;->r:Lp/d;

    .line 56
    .line 57
    new-instance v0, Lp/d;

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-direct {v0, v1}, Lp/d;-><init>(I)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lp/f;->s:Lp/d;

    .line 64
    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ly/a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lp/f;->a:F

    .line 6
    .line 7
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 8
    .line 9
    .line 10
    iput v0, p0, Lp/f;->b:F

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lp/f;->e:Z

    .line 14
    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    iput-wide v1, p0, Lp/f;->f:J

    .line 18
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lp/f;->h:Ljava/util/ArrayList;

    .line 25
    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lp/f;->i:Ljava/util/ArrayList;

    .line 32
    .line 33
    iput-object p1, p0, Lp/f;->c:Ljava/lang/Object;

    .line 34
    .line 35
    iput-object p2, p0, Lp/f;->d:Ly/a;

    .line 36
    .line 37
    sget-object p1, Lp/f;->p:Lp/d;

    .line 38
    .line 39
    if-eq p2, p1, :cond_4

    .line 40
    .line 41
    sget-object p1, Lp/f;->q:Lp/d;

    .line 42
    .line 43
    if-eq p2, p1, :cond_4

    .line 44
    .line 45
    sget-object p1, Lp/f;->r:Lp/d;

    .line 46
    .line 47
    if-ne p2, p1, :cond_0

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_0
    sget-object p1, Lp/f;->s:Lp/d;

    .line 51
    .line 52
    const/high16 v1, 0x3b800000    # 0.00390625f

    .line 53
    .line 54
    if-ne p2, p1, :cond_2

    .line 55
    .line 56
    :cond_1
    :goto_0
    iput v1, p0, Lp/f;->g:F

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_2
    sget-object p1, Lp/f;->n:Lp/d;

    .line 60
    .line 61
    if-eq p2, p1, :cond_1

    .line 62
    .line 63
    sget-object p1, Lp/f;->o:Lp/d;

    .line 64
    .line 65
    if-ne p2, p1, :cond_3

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 69
    .line 70
    :goto_1
    iput p1, p0, Lp/f;->g:F

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_4
    :goto_2
    const p1, 0x3dcccccd    # 0.1f

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :goto_3
    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lp/f;->j:Lp/g;

    .line 79
    .line 80
    iput v0, p0, Lp/f;->k:F

    .line 81
    .line 82
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lp/f;->e:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lp/f;->b()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void

    .line 19
    :cond_1
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 20
    .line 21
    const-string v1, "Animations may only be canceled on the main thread"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0
.end method

.method public final b()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lp/f;->e:Z

    .line 3
    .line 4
    sget-object v1, Lp/c;->f:Ljava/lang/ThreadLocal;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    new-instance v2, Lp/c;

    .line 13
    .line 14
    invoke-direct {v2}, Lp/c;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lp/c;

    .line 25
    .line 26
    iget-object v2, v1, Lp/c;->a:Lb/j;

    .line 27
    .line 28
    invoke-virtual {v2, p0}, Lb/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iget-object v2, v1, Lp/c;->b:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/4 v4, 0x1

    .line 38
    const/4 v5, 0x0

    .line 39
    if-ltz v3, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iput-boolean v4, v1, Lp/c;->e:Z

    .line 45
    .line 46
    :cond_1
    const-wide/16 v1, 0x0

    .line 47
    .line 48
    iput-wide v1, p0, Lp/f;->f:J

    .line 49
    .line 50
    :goto_0
    iget-object v1, p0, Lp/f;->h:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-ge v0, v2, :cond_3

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-nez v2, :cond_2

    .line 63
    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Ln/a;->b(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    throw v5

    .line 75
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    sub-int/2addr v0, v4

    .line 80
    :goto_1
    if-ltz v0, :cond_5

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    if-nez v2, :cond_4

    .line 87
    .line 88
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_5
    return-void
.end method

.method public final c(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp/f;->d:Ly/a;

    .line 2
    .line 3
    iget-object v1, p0, Lp/f;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ly/a;->w(Ljava/lang/Object;F)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    :goto_0
    iget-object v0, p0, Lp/f;->i:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge p1, v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Ln/a;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    throw p1

    .line 35
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    add-int/lit8 p1, p1, -0x1

    .line 40
    .line 41
    :goto_1
    if-ltz p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    return-void
.end method
