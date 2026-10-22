.class public final synthetic Lcom/sid/tvos/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sid/tvos/Weather$Callback;
.implements Lcom/sid/tvos/CwBackground$Opener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/sid/tvos/f;->a:I

    iput-object p1, p0, Lcom/sid/tvos/f;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWeather(IIZLjava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/sid/tvos/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sid/tvos/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sid/tvos/StandByActivity;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/sid/tvos/StandByActivity;->a(Lcom/sid/tvos/StandByActivity;IIZLjava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sid/tvos/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sid/tvos/ClockDream$1;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/sid/tvos/ClockDream$1;->a(Lcom/sid/tvos/ClockDream$1;IIZLjava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sid/tvos/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sid/tvos/ClockDream;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/sid/tvos/ClockDream;->a(Lcom/sid/tvos/ClockDream;IIZLjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public open()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sid/tvos/f;->b:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Lcom/sid/tvos/CwBackground;->b(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
