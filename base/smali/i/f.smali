.class public abstract Li/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lb/e;

.field public static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lb/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lb/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Li/f;->a:Lb/e;

    .line 7
    .line 8
    new-instance v8, Li/i;

    .line 9
    .line 10
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "fonts-androidx"

    .line 14
    .line 15
    iput-object v0, v8, Li/i;->a:Ljava/lang/String;

    .line 16
    .line 17
    const/16 v0, 0xa

    .line 18
    .line 19
    iput v0, v8, Li/i;->b:I

    .line 20
    .line 21
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 22
    .line 23
    const/16 v1, 0x2710

    .line 24
    .line 25
    int-to-long v4, v1

    .line 26
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 27
    .line 28
    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 29
    .line 30
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 31
    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x1

    .line 35
    move-object v1, v0

    .line 36
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lb/j;

    .line 44
    .line 45
    invoke-direct {v0}, Lb/j;-><init>()V

    .line 46
    .line 47
    .line 48
    return-void
.end method
