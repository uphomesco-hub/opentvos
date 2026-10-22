.class public final Lp/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/b;->a:Ljava/lang/Object;

    iput-object p2, p0, Lp/b;->b:Ljava/lang/Object;

    iput-object p3, p0, Lp/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ll/e;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/b;->a:Ljava/lang/Object;

    .line 3
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lp/b;->b:Ljava/lang/Object;

    new-instance p1, Lp/a;

    invoke-direct {p1, p0}, Lp/a;-><init>(Lp/b;)V

    iput-object p1, p0, Lp/b;->c:Ljava/lang/Object;

    return-void
.end method
