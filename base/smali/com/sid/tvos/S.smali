.class public final synthetic Lcom/sid/tvos/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/sid/tvos/S;->a:I

    iput-object p1, p0, Lcom/sid/tvos/S;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sid/tvos/S;->b:Ljava/lang/Object;

    iget v1, p0, Lcom/sid/tvos/S;->a:I

    packed-switch v1, :pswitch_data_0

    sget v1, Lcom/sid/tvos/MainActivity$1;->a:I

    check-cast v0, Lcom/sid/tvos/MainActivity;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->B4(Lcom/sid/tvos/MainActivity;)V

    return-void

    :pswitch_0
    check-cast v0, Lcom/sid/tvos/MainActivity$SettingsPanel;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->f(Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void

    :pswitch_1
    check-cast v0, Lcom/sid/tvos/MainActivity$SettingsPanel;

    invoke-virtual {v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->refreshGlass()V

    return-void

    :pswitch_2
    check-cast v0, Lcom/sid/tvos/MainActivity$SettingsPanel;

    invoke-static {v0}, Lcom/sid/tvos/MainActivity$SettingsPanel;->p(Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
