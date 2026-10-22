.class public final synthetic Lcom/sid/tvos/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/sid/tvos/WatchNext$Item;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;IILcom/sid/tvos/WatchNext$Item;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/n;->a:Lcom/sid/tvos/MainActivity;

    iput p2, p0, Lcom/sid/tvos/n;->b:I

    iput p3, p0, Lcom/sid/tvos/n;->c:I

    iput-object p4, p0, Lcom/sid/tvos/n;->d:Lcom/sid/tvos/WatchNext$Item;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/sid/tvos/n;->c:I

    iget-object v1, p0, Lcom/sid/tvos/n;->d:Lcom/sid/tvos/WatchNext$Item;

    iget-object v2, p0, Lcom/sid/tvos/n;->a:Lcom/sid/tvos/MainActivity;

    iget v3, p0, Lcom/sid/tvos/n;->b:I

    invoke-static {v2, v3, v0, v1}, Lcom/sid/tvos/MainActivity;->p1(Lcom/sid/tvos/MainActivity;IILcom/sid/tvos/WatchNext$Item;)V

    return-void
.end method
