.class public final synthetic Lt/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;ZLjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/b0;->a:Lcom/sid/tvos/MainActivity;

    iput-boolean p2, p0, Lt/b0;->b:Z

    iput-object p3, p0, Lt/b0;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lt/b0;->b:Z

    iget-object v1, p0, Lt/b0;->c:Ljava/util/List;

    iget-object v2, p0, Lt/b0;->a:Lcom/sid/tvos/MainActivity;

    invoke-static {v2, v0, v1}, Lcom/sid/tvos/MainActivity;->n2(Lcom/sid/tvos/MainActivity;ZLjava/util/List;)V

    return-void
.end method
