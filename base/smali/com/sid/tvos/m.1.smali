.class public final synthetic Lcom/sid/tvos/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/sid/tvos/m;->a:I

    iput-object p1, p0, Lcom/sid/tvos/m;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sid/tvos/m;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sid/tvos/m;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/sid/tvos/m;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sid/tvos/m;->c:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sid/tvos/m;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sid/tvos/Weather$Callback;

    iget-object v2, p0, Lcom/sid/tvos/m;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/SharedPreferences;

    invoke-static {v2, v0, v1}, Lcom/sid/tvos/Weather;->a(Landroid/content/SharedPreferences;Landroid/os/Handler;Lcom/sid/tvos/Weather$Callback;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sid/tvos/m;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/sid/tvos/m;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sid/tvos/PhoneUpload$Callback;

    iget-object v2, p0, Lcom/sid/tvos/m;->b:Ljava/lang/Object;

    check-cast v2, Ljava/net/ServerSocket;

    invoke-static {v2, v0, v1}, Lcom/sid/tvos/PhoneUpload;->a(Ljava/net/ServerSocket;Landroid/content/Context;Lcom/sid/tvos/PhoneUpload$Callback;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sid/tvos/m;->c:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sid/tvos/m;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/sid/tvos/m;->b:Ljava/lang/Object;

    check-cast v2, Lcom/sid/tvos/MainActivity$SettingsPanel;

    invoke-static {v2, v0, v1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->m(Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/sid/tvos/m;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sid/tvos/m;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sid/tvos/MainActivity$PageBuilder;

    iget-object v2, p0, Lcom/sid/tvos/m;->b:Ljava/lang/Object;

    check-cast v2, Lcom/sid/tvos/MainActivity$SettingsPanel;

    invoke-static {v2, v0, v1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->v(Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/String;Lcom/sid/tvos/MainActivity$PageBuilder;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/sid/tvos/m;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sid/tvos/m;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sid/tvos/MainActivity$SettingsPanel;

    iget-object v2, p0, Lcom/sid/tvos/m;->b:Ljava/lang/Object;

    check-cast v2, Lcom/sid/tvos/MainActivity;

    invoke-static {v1, v2, v0}, Lcom/sid/tvos/MainActivity;->l0(Lcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/sid/tvos/m;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/sid/tvos/m;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sid/tvos/WatchNext$Item;

    iget-object v2, p0, Lcom/sid/tvos/m;->b:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v0, v1}, Lcom/sid/tvos/MainActivity;->h2(Landroid/view/View;Landroid/view/View;Lcom/sid/tvos/WatchNext$Item;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
