.class public final synthetic Lcom/sid/tvos/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/Remaps$CaptureListener;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/Remaps$CaptureListener;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/h0;->a:Lcom/sid/tvos/Remaps$CaptureListener;

    iput p2, p0, Lcom/sid/tvos/h0;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sid/tvos/h0;->a:Lcom/sid/tvos/Remaps$CaptureListener;

    iget v1, p0, Lcom/sid/tvos/h0;->b:I

    invoke-static {v0, v1}, Lcom/sid/tvos/RemapService;->b(Lcom/sid/tvos/Remaps$CaptureListener;I)V

    return-void
.end method
