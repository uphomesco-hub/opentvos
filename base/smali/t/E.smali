.class public final synthetic Lt/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/MainActivity;

.field public final synthetic c:Landroid/net/Uri;

.field public final synthetic d:I

.field public final synthetic e:[Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;Landroid/net/Uri;I[Landroid/widget/ImageView;I)V
    .locals 0

    .line 1
    iput p5, p0, Lt/E;->a:I

    iput-object p1, p0, Lt/E;->b:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lt/E;->c:Landroid/net/Uri;

    iput p3, p0, Lt/E;->d:I

    iput-object p4, p0, Lt/E;->e:[Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lt/E;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lt/E;->d:I

    iget-object v1, p0, Lt/E;->e:[Landroid/widget/ImageView;

    iget-object v2, p0, Lt/E;->b:Lcom/sid/tvos/MainActivity;

    iget-object v3, p0, Lt/E;->c:Landroid/net/Uri;

    invoke-static {v2, v3, v0, v1}, Lcom/sid/tvos/MainActivity;->W2(Lcom/sid/tvos/MainActivity;Landroid/net/Uri;I[Landroid/widget/ImageView;)V

    return-void

    :pswitch_0
    iget v0, p0, Lt/E;->d:I

    iget-object v1, p0, Lt/E;->e:[Landroid/widget/ImageView;

    iget-object v2, p0, Lt/E;->b:Lcom/sid/tvos/MainActivity;

    iget-object v3, p0, Lt/E;->c:Landroid/net/Uri;

    invoke-static {v2, v3, v0, v1}, Lcom/sid/tvos/MainActivity;->c0(Lcom/sid/tvos/MainActivity;Landroid/net/Uri;I[Landroid/widget/ImageView;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
