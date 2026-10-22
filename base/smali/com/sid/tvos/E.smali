.class public final synthetic Lcom/sid/tvos/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sid/tvos/MainActivity$IntLabel;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sid/tvos/E;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final text(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/sid/tvos/E;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lcom/sid/tvos/MainActivity;->c2(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p1}, Lcom/sid/tvos/MainActivity;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p1}, Lcom/sid/tvos/MainActivity;->n0(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
