.class public final Lp/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:Lb/j;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ll/e;

.field public d:Lp/b;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lp/c;->f:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

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
    iput-object v0, p0, Lp/c;->a:Lb/j;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lp/c;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ll/e;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Ll/e;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lp/c;->c:Ll/e;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lp/c;->e:Z

    .line 27
    .line 28
    return-void
.end method
