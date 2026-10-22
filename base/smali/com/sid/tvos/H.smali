.class public final synthetic Lcom/sid/tvos/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/MainActivity;

.field public final synthetic c:Lcom/sid/tvos/AppAdapter$Entry;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;IILandroid/widget/ImageView;I)V
    .locals 0

    .line 1
    iput p6, p0, Lcom/sid/tvos/H;->a:I

    iput-object p1, p0, Lcom/sid/tvos/H;->b:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lcom/sid/tvos/H;->c:Lcom/sid/tvos/AppAdapter$Entry;

    iput p3, p0, Lcom/sid/tvos/H;->d:I

    iput p4, p0, Lcom/sid/tvos/H;->e:I

    iput-object p5, p0, Lcom/sid/tvos/H;->f:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/sid/tvos/H;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/sid/tvos/H;->e:I

    iget-object v1, p0, Lcom/sid/tvos/H;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sid/tvos/H;->b:Lcom/sid/tvos/MainActivity;

    iget-object v3, p0, Lcom/sid/tvos/H;->c:Lcom/sid/tvos/AppAdapter$Entry;

    iget v4, p0, Lcom/sid/tvos/H;->d:I

    invoke-static {v2, v3, v4, v0, v1}, Lcom/sid/tvos/MainActivity;->V0(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;IILandroid/widget/ImageView;)V

    return-void

    :pswitch_0
    iget v0, p0, Lcom/sid/tvos/H;->e:I

    iget-object v1, p0, Lcom/sid/tvos/H;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sid/tvos/H;->b:Lcom/sid/tvos/MainActivity;

    iget-object v3, p0, Lcom/sid/tvos/H;->c:Lcom/sid/tvos/AppAdapter$Entry;

    iget v4, p0, Lcom/sid/tvos/H;->d:I

    invoke-static {v2, v3, v4, v0, v1}, Lcom/sid/tvos/MainActivity;->v(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;IILandroid/widget/ImageView;)V

    return-void

    :pswitch_1
    iget v0, p0, Lcom/sid/tvos/H;->e:I

    iget-object v1, p0, Lcom/sid/tvos/H;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sid/tvos/H;->b:Lcom/sid/tvos/MainActivity;

    iget-object v3, p0, Lcom/sid/tvos/H;->c:Lcom/sid/tvos/AppAdapter$Entry;

    iget v4, p0, Lcom/sid/tvos/H;->d:I

    invoke-static {v2, v3, v4, v0, v1}, Lcom/sid/tvos/MainActivity;->w3(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;IILandroid/widget/ImageView;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
