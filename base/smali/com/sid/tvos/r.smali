.class public final synthetic Lcom/sid/tvos/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sid/tvos/Images$Callback;


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

    iput-object p1, p0, Lcom/sid/tvos/r;->a:Lcom/sid/tvos/MainActivity;

    iput p2, p0, Lcom/sid/tvos/r;->b:I

    iput p3, p0, Lcom/sid/tvos/r;->c:I

    iput-object p4, p0, Lcom/sid/tvos/r;->d:Lcom/sid/tvos/WatchNext$Item;

    return-void
.end method


# virtual methods
.method public final onImage(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/sid/tvos/r;->c:I

    iget-object v1, p0, Lcom/sid/tvos/r;->d:Lcom/sid/tvos/WatchNext$Item;

    iget-object v2, p0, Lcom/sid/tvos/r;->a:Lcom/sid/tvos/MainActivity;

    iget v3, p0, Lcom/sid/tvos/r;->b:I

    invoke-static {v2, v3, v0, p1, v1}, Lcom/sid/tvos/MainActivity;->E3(Lcom/sid/tvos/MainActivity;IILandroid/graphics/Bitmap;Lcom/sid/tvos/WatchNext$Item;)V

    return-void
.end method
