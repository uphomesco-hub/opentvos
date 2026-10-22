.class public final synthetic Lt/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/MainActivity;

.field public final synthetic c:Z

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;Ljava/lang/Object;ZII)V
    .locals 0

    .line 1
    iput p5, p0, Lt/j;->a:I

    iput-object p1, p0, Lt/j;->b:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lt/j;->e:Ljava/lang/Object;

    iput-boolean p3, p0, Lt/j;->c:Z

    iput p4, p0, Lt/j;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lt/j;->a:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lt/j;->c:Z

    iget v1, p0, Lt/j;->d:I

    iget-object v2, p0, Lt/j;->b:Lcom/sid/tvos/MainActivity;

    iget-object v3, p0, Lt/j;->e:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-static {v2, v3, v0, v1}, Lcom/sid/tvos/MainActivity;->P2(Lcom/sid/tvos/MainActivity;Landroid/graphics/Bitmap;ZI)V

    return-void

    :pswitch_0
    iget-boolean v0, p0, Lt/j;->c:Z

    iget v1, p0, Lt/j;->d:I

    iget-object v2, p0, Lt/j;->b:Lcom/sid/tvos/MainActivity;

    iget-object v3, p0, Lt/j;->e:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    invoke-static {v1, v3, v2, v0}, Lcom/sid/tvos/MainActivity;->G1(ILandroid/view/View;Lcom/sid/tvos/MainActivity;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
