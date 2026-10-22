.class public final synthetic Lcom/sid/tvos/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sid/tvos/MainActivity$TrackColours;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[F


# direct methods
.method public synthetic constructor <init>(I[F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sid/tvos/C;->a:I

    iput-object p2, p0, Lcom/sid/tvos/C;->b:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final colours()[I
    .locals 1

    .line 1
    iget v0, p0, Lcom/sid/tvos/C;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sid/tvos/C;->b:[F

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->L([F)[I

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/sid/tvos/C;->b:[F

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->q0([F)[I

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/sid/tvos/C;->b:[F

    invoke-static {v0}, Lcom/sid/tvos/MainActivity;->R([F)[I

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
