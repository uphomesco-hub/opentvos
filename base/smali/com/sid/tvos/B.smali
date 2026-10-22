.class public final synthetic Lcom/sid/tvos/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sid/tvos/MainActivity$IntChoice;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/B;->a:Lcom/sid/tvos/MainActivity;

    iput p2, p0, Lcom/sid/tvos/B;->b:I

    return-void
.end method


# virtual methods
.method public final pick(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sid/tvos/B;->a:Lcom/sid/tvos/MainActivity;

    iget v1, p0, Lcom/sid/tvos/B;->b:I

    invoke-static {v0, v1, p1}, Lcom/sid/tvos/MainActivity;->H(Lcom/sid/tvos/MainActivity;II)V

    return-void
.end method
