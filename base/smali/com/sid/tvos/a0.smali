.class public final synthetic Lcom/sid/tvos/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/sid/tvos/a0;->a:I

    iput-object p1, p0, Lcom/sid/tvos/a0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sid/tvos/a0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sid/tvos/a0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sid/tvos/a0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sid/tvos/Weather$PlaceCallback;

    iget-object v1, p0, Lcom/sid/tvos/a0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sid/tvos/Weather;->d(Lcom/sid/tvos/Weather$PlaceCallback;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sid/tvos/a0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sid/tvos/WatchNext$Callback;

    iget-object v1, p0, Lcom/sid/tvos/a0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/sid/tvos/WatchNext;->a(Lcom/sid/tvos/WatchNext$Callback;Ljava/util/Map;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sid/tvos/a0;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/sid/tvos/a0;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sid/tvos/WatchNext$Callback;

    invoke-static {v0, v1}, Lcom/sid/tvos/WatchNext;->b(Landroid/content/Context;Lcom/sid/tvos/WatchNext$Callback;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/sid/tvos/a0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sid/tvos/Stage$Callback;

    iget-object v1, p0, Lcom/sid/tvos/a0;->c:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/sid/tvos/Stage;->a(Lcom/sid/tvos/Stage$Callback;Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/sid/tvos/a0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sid/tvos/MainActivity$SettingsPanel;

    iget-object v1, p0, Lcom/sid/tvos/a0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->j(Lcom/sid/tvos/MainActivity$SettingsPanel;Ljava/lang/Runnable;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/sid/tvos/a0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sid/tvos/MainActivity$SettingsPanel;

    iget-object v1, p0, Lcom/sid/tvos/a0;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity$SettingsPanel;->i(Lcom/sid/tvos/MainActivity$SettingsPanel;Landroid/view/View;)V

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
