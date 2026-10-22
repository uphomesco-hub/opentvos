.class public final synthetic Lt/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:[I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;ILjava/util/List;II[II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/U;->a:Lcom/sid/tvos/MainActivity;

    iput p2, p0, Lt/U;->b:I

    iput-object p3, p0, Lt/U;->c:Ljava/util/List;

    iput p4, p0, Lt/U;->d:I

    iput p5, p0, Lt/U;->e:I

    iput-object p6, p0, Lt/U;->f:[I

    iput p7, p0, Lt/U;->g:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v5, p0, Lt/U;->f:[I

    iget v6, p0, Lt/U;->g:I

    iget-object v0, p0, Lt/U;->a:Lcom/sid/tvos/MainActivity;

    iget v1, p0, Lt/U;->b:I

    iget-object v2, p0, Lt/U;->c:Ljava/util/List;

    iget v3, p0, Lt/U;->d:I

    iget v4, p0, Lt/U;->e:I

    invoke-static/range {v0 .. v6}, Lcom/sid/tvos/MainActivity;->w(Lcom/sid/tvos/MainActivity;ILjava/util/List;II[II)V

    return-void
.end method
