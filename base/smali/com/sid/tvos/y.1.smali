.class public final synthetic Lcom/sid/tvos/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sid/tvos/MainActivity$IntChoice;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILcom/sid/tvos/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sid/tvos/y;->a:Lcom/sid/tvos/MainActivity;

    iput p1, p0, Lcom/sid/tvos/y;->b:I

    iput-object p3, p0, Lcom/sid/tvos/y;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final pick(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/sid/tvos/y;->b:I

    iget-object v1, p0, Lcom/sid/tvos/y;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/sid/tvos/y;->a:Lcom/sid/tvos/MainActivity;

    invoke-static {v2, v0, v1, p1}, Lcom/sid/tvos/MainActivity;->f0(Lcom/sid/tvos/MainActivity;ILjava/lang/String;I)V

    return-void
.end method
