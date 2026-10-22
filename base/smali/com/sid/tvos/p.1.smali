.class public final synthetic Lcom/sid/tvos/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sid/tvos/MainActivity$PageBuilder;
.implements Lcom/sid/tvos/MainActivity$IntChoice;
.implements Lcom/sid/tvos/PhoneUpload$Callback;
.implements Lcom/sid/tvos/Weather$Callback;
.implements Lcom/sid/tvos/WatchNext$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/sid/tvos/p;->a:I

    iput-object p1, p0, Lcom/sid/tvos/p;->b:Lcom/sid/tvos/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sid/tvos/p;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1}, Lcom/sid/tvos/MainActivity;->V1(Lcom/sid/tvos/MainActivity;Ljava/util/Map;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sid/tvos/p;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1}, Lcom/sid/tvos/MainActivity;->s3(Lcom/sid/tvos/MainActivity;Z)V

    return-void
.end method

.method public build(Lcom/sid/tvos/MainActivity$SettingsPanel;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/sid/tvos/p;->a:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/sid/tvos/p;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1}, Lcom/sid/tvos/MainActivity;->B1(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/sid/tvos/p;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1}, Lcom/sid/tvos/MainActivity;->y(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/sid/tvos/p;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1}, Lcom/sid/tvos/MainActivity;->g2(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void

    :sswitch_2
    iget-object v0, p0, Lcom/sid/tvos/p;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1}, Lcom/sid/tvos/MainActivity;->B0(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/MainActivity$SettingsPanel;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public onWeather(IIZLjava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/sid/tvos/p;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sid/tvos/p;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/sid/tvos/MainActivity;->y4(Lcom/sid/tvos/MainActivity;IIZLjava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sid/tvos/p;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/sid/tvos/MainActivity;->C1(Lcom/sid/tvos/MainActivity;IIZLjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public pick(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/sid/tvos/p;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sid/tvos/p;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1}, Lcom/sid/tvos/MainActivity;->c1(Lcom/sid/tvos/MainActivity;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sid/tvos/p;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1}, Lcom/sid/tvos/MainActivity;->R0(Lcom/sid/tvos/MainActivity;I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sid/tvos/p;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1}, Lcom/sid/tvos/MainActivity;->N1(Lcom/sid/tvos/MainActivity;I)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/sid/tvos/p;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1}, Lcom/sid/tvos/MainActivity;->X(Lcom/sid/tvos/MainActivity;I)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/sid/tvos/p;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1}, Lcom/sid/tvos/MainActivity;->U2(Lcom/sid/tvos/MainActivity;I)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/sid/tvos/p;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1}, Lcom/sid/tvos/MainActivity;->u0(Lcom/sid/tvos/MainActivity;I)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/sid/tvos/p;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1}, Lcom/sid/tvos/MainActivity;->q(Lcom/sid/tvos/MainActivity;I)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/sid/tvos/p;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1}, Lcom/sid/tvos/MainActivity;->U0(Lcom/sid/tvos/MainActivity;I)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/sid/tvos/p;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1}, Lcom/sid/tvos/MainActivity;->i0(Lcom/sid/tvos/MainActivity;I)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/sid/tvos/p;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1}, Lcom/sid/tvos/MainActivity;->k(Lcom/sid/tvos/MainActivity;I)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/sid/tvos/p;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1}, Lcom/sid/tvos/MainActivity;->X1(Lcom/sid/tvos/MainActivity;I)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lcom/sid/tvos/p;->b:Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1}, Lcom/sid/tvos/MainActivity;->G(Lcom/sid/tvos/MainActivity;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
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
