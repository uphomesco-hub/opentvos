.class public final synthetic Lt/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/MainActivity;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILcom/sid/tvos/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lt/n;->a:I

    iput-object p2, p0, Lt/n;->b:Lcom/sid/tvos/MainActivity;

    iput-object p3, p0, Lt/n;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lt/n;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lt/n;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lt/n;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->A2(Lcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lt/n;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lt/n;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->j3(Lcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lt/n;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lt/n;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->Q1(Lcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lt/n;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lt/n;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->j(Lcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lt/n;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lt/n;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->p3(Lcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
