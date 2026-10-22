.class public final synthetic Lcom/sid/tvos/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/MainActivity;

.field public final synthetic c:Lcom/sid/tvos/MainActivity$SettingsPanel;


# direct methods
.method public synthetic constructor <init>(ILcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sid/tvos/t;->a:I

    iput-object p3, p0, Lcom/sid/tvos/t;->b:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lcom/sid/tvos/t;->c:Lcom/sid/tvos/MainActivity$SettingsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sid/tvos/t;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sid/tvos/t;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/t;->c:Lcom/sid/tvos/MainActivity$SettingsPanel;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->d3(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sid/tvos/t;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/t;->c:Lcom/sid/tvos/MainActivity$SettingsPanel;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->Z1(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sid/tvos/t;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/t;->c:Lcom/sid/tvos/MainActivity$SettingsPanel;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->z(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/sid/tvos/t;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/t;->c:Lcom/sid/tvos/MainActivity$SettingsPanel;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->r2(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/sid/tvos/t;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/t;->c:Lcom/sid/tvos/MainActivity$SettingsPanel;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->l1(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/sid/tvos/t;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/t;->c:Lcom/sid/tvos/MainActivity$SettingsPanel;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->E(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/sid/tvos/t;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/t;->c:Lcom/sid/tvos/MainActivity$SettingsPanel;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->T1(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/sid/tvos/t;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/t;->c:Lcom/sid/tvos/MainActivity$SettingsPanel;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->B3(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/sid/tvos/t;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/t;->c:Lcom/sid/tvos/MainActivity$SettingsPanel;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->e0(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/sid/tvos/t;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/t;->c:Lcom/sid/tvos/MainActivity$SettingsPanel;

    invoke-static {v0, v1}, Lcom/sid/tvos/MainActivity;->s1(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
