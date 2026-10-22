.class public final synthetic Lcom/sid/tvos/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/MainActivity;

.field public final synthetic c:Landroid/net/Uri;

.field public final synthetic d:Lcom/sid/tvos/MainActivity$SettingsPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;Landroid/net/Uri;Lcom/sid/tvos/MainActivity$SettingsPanel;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/sid/tvos/v;->a:I

    iput-object p1, p0, Lcom/sid/tvos/v;->b:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lcom/sid/tvos/v;->c:Landroid/net/Uri;

    iput-object p3, p0, Lcom/sid/tvos/v;->d:Lcom/sid/tvos/MainActivity$SettingsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/sid/tvos/v;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sid/tvos/v;->c:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sid/tvos/v;->d:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iget-object v2, p0, Lcom/sid/tvos/v;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v2, v0, v1}, Lcom/sid/tvos/MainActivity;->G0(Lcom/sid/tvos/MainActivity;Landroid/net/Uri;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sid/tvos/v;->c:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sid/tvos/v;->d:Lcom/sid/tvos/MainActivity$SettingsPanel;

    iget-object v2, p0, Lcom/sid/tvos/v;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v2, v0, v1}, Lcom/sid/tvos/MainActivity;->L1(Lcom/sid/tvos/MainActivity;Landroid/net/Uri;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
