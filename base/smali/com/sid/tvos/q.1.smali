.class public final synthetic Lcom/sid/tvos/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sid/tvos/Images$Callback;
.implements Lcom/sid/tvos/MainActivity$IntChoice;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/MainActivity;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILcom/sid/tvos/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sid/tvos/q;->a:I

    iput-object p2, p0, Lcom/sid/tvos/q;->b:Lcom/sid/tvos/MainActivity;

    iput-object p3, p0, Lcom/sid/tvos/q;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImage(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sid/tvos/q;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/q;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/sid/tvos/MainActivity;->D0(Landroid/graphics/Bitmap;Lcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    return-void
.end method

.method public pick(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sid/tvos/q;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sid/tvos/q;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/q;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/sid/tvos/MainActivity;->o1(ILcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sid/tvos/q;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/q;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/sid/tvos/MainActivity;->m0(ILcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
