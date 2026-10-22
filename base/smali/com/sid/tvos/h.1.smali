.class public final synthetic Lcom/sid/tvos/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:[Ljava/lang/String;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:I

.field public final synthetic e:Lcom/sid/tvos/Images$Callback;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;[Ljava/lang/String;Landroid/content/Context;ILcom/sid/tvos/Images$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/h;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/sid/tvos/h;->b:[Ljava/lang/String;

    iput-object p3, p0, Lcom/sid/tvos/h;->c:Landroid/content/Context;

    iput p4, p0, Lcom/sid/tvos/h;->d:I

    iput-object p5, p0, Lcom/sid/tvos/h;->e:Lcom/sid/tvos/Images$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/sid/tvos/h;->d:I

    iget-object v1, p0, Lcom/sid/tvos/h;->e:Lcom/sid/tvos/Images$Callback;

    iget-object v2, p0, Lcom/sid/tvos/h;->a:Ljava/io/File;

    iget-object v3, p0, Lcom/sid/tvos/h;->b:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sid/tvos/h;->c:Landroid/content/Context;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/sid/tvos/Images;->b(Ljava/io/File;[Ljava/lang/String;Landroid/content/Context;ILcom/sid/tvos/Images$Callback;)V

    return-void
.end method
