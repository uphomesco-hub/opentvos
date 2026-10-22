.class public final synthetic Lcom/sid/tvos/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sid/tvos/Stage$Callback;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity;

.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;IZZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/G;->a:Lcom/sid/tvos/MainActivity;

    iput p2, p0, Lcom/sid/tvos/G;->b:I

    iput-boolean p3, p0, Lcom/sid/tvos/G;->c:Z

    iput-boolean p4, p0, Lcom/sid/tvos/G;->d:Z

    iput p5, p0, Lcom/sid/tvos/G;->e:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 6

    .line 1
    iget-boolean v3, p0, Lcom/sid/tvos/G;->d:Z

    iget v4, p0, Lcom/sid/tvos/G;->e:I

    iget-object v0, p0, Lcom/sid/tvos/G;->a:Lcom/sid/tvos/MainActivity;

    iget v1, p0, Lcom/sid/tvos/G;->b:I

    iget-boolean v2, p0, Lcom/sid/tvos/G;->c:Z

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/sid/tvos/MainActivity;->H3(Lcom/sid/tvos/MainActivity;IZZILandroid/graphics/Bitmap;)V

    return-void
.end method
