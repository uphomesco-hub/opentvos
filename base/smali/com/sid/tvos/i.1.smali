.class public final synthetic Lcom/sid/tvos/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:I

.field public final synthetic e:Z

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/sid/tvos/Images$Callback;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;IZLjava/lang/String;Lcom/sid/tvos/Images$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/i;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/sid/tvos/i;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sid/tvos/i;->c:Landroid/content/Context;

    iput p4, p0, Lcom/sid/tvos/i;->d:I

    iput-boolean p5, p0, Lcom/sid/tvos/i;->e:Z

    iput-object p6, p0, Lcom/sid/tvos/i;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/sid/tvos/i;->g:Lcom/sid/tvos/Images$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v5, p0, Lcom/sid/tvos/i;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/sid/tvos/i;->g:Lcom/sid/tvos/Images$Callback;

    iget-object v0, p0, Lcom/sid/tvos/i;->a:Ljava/io/File;

    iget-object v1, p0, Lcom/sid/tvos/i;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sid/tvos/i;->c:Landroid/content/Context;

    iget v3, p0, Lcom/sid/tvos/i;->d:I

    iget-boolean v4, p0, Lcom/sid/tvos/i;->e:Z

    invoke-static/range {v0 .. v6}, Lcom/sid/tvos/Images;->d(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;IZLjava/lang/String;Lcom/sid/tvos/Images$Callback;)V

    return-void
.end method
