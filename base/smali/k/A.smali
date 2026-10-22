.class public abstract Lk/A;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lk/I;

    invoke-direct {v0}, Lk/I;-><init>()V

    invoke-direct {p0, v0}, Lk/A;-><init>(Lk/I;)V

    return-void
.end method

.method public constructor <init>(Lk/I;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract b()Lk/I;
.end method

.method public abstract c(Lf/c;)V
.end method

.method public abstract d(Lf/c;)V
.end method
