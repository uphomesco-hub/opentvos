.class public final synthetic Lcom/sid/tvos/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/sid/tvos/z;->a:I

    iput-object p1, p0, Lcom/sid/tvos/z;->b:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/sid/tvos/z;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sid/tvos/z;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sid/tvos/z;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sid/tvos/z;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sid/tvos/MainActivity$TextCallback;

    invoke-static {v0, v1, p1, p2}, Lcom/sid/tvos/MainActivity;->M(Landroid/widget/EditText;Lcom/sid/tvos/MainActivity$TextCallback;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sid/tvos/z;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sid/tvos/z;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sid/tvos/MainActivity$NameCallback;

    invoke-static {v0, v1, p1, p2}, Lcom/sid/tvos/MainActivity;->k1(Landroid/widget/EditText;Lcom/sid/tvos/MainActivity$NameCallback;Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
