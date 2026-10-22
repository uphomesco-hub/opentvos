.class public final synthetic Lcom/sid/tvos/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/Weather$Callback;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/Weather$Callback;IIZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/i0;->a:Lcom/sid/tvos/Weather$Callback;

    iput p2, p0, Lcom/sid/tvos/i0;->b:I

    iput p3, p0, Lcom/sid/tvos/i0;->c:I

    iput-boolean p4, p0, Lcom/sid/tvos/i0;->d:Z

    iput-object p5, p0, Lcom/sid/tvos/i0;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/sid/tvos/i0;->d:Z

    iget-object v1, p0, Lcom/sid/tvos/i0;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/sid/tvos/i0;->a:Lcom/sid/tvos/Weather$Callback;

    iget v3, p0, Lcom/sid/tvos/i0;->b:I

    iget v4, p0, Lcom/sid/tvos/i0;->c:I

    invoke-static {v2, v3, v4, v0, v1}, Lcom/sid/tvos/Weather;->c(Lcom/sid/tvos/Weather$Callback;IIZLjava/lang/String;)V

    return-void
.end method
