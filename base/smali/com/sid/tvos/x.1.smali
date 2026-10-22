.class public final synthetic Lcom/sid/tvos/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sid/tvos/MainActivity$IntChoice;
.implements Lcom/sid/tvos/MainActivity$TextCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/MainActivity;

.field public final synthetic c:Lcom/sid/tvos/MainActivity$SettingsPanel;


# direct methods
.method public synthetic constructor <init>(ILcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sid/tvos/x;->a:I

    iput-object p3, p0, Lcom/sid/tvos/x;->b:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lcom/sid/tvos/x;->c:Lcom/sid/tvos/MainActivity$SettingsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onText(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sid/tvos/x;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sid/tvos/x;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/x;->c:Lcom/sid/tvos/MainActivity$SettingsPanel;

    invoke-static {v1, v0, p1}, Lcom/sid/tvos/MainActivity;->z1(Lcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sid/tvos/x;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/x;->c:Lcom/sid/tvos/MainActivity$SettingsPanel;

    invoke-static {v1, v0, p1}, Lcom/sid/tvos/MainActivity;->r3(Lcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public pick(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sid/tvos/x;->b:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lcom/sid/tvos/x;->c:Lcom/sid/tvos/MainActivity$SettingsPanel;

    invoke-static {p1, v1, v0}, Lcom/sid/tvos/MainActivity;->O1(ILcom/sid/tvos/MainActivity$SettingsPanel;Lcom/sid/tvos/MainActivity;)V

    return-void
.end method
