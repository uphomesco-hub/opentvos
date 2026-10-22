.class public final synthetic Lt/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sid/tvos/MainActivity;

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;ILjava/util/List;ZLjava/util/List;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lt/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/x;->b:Lcom/sid/tvos/MainActivity;

    iput p2, p0, Lt/x;->c:I

    iput-object p3, p0, Lt/x;->e:Ljava/lang/Object;

    iput-boolean p4, p0, Lt/x;->d:Z

    iput-object p5, p0, Lt/x;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;Ljava/lang/Object;ZILjava/lang/Object;I)V
    .locals 0

    .line 2
    iput p6, p0, Lt/x;->a:I

    iput-object p1, p0, Lt/x;->b:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lt/x;->e:Ljava/lang/Object;

    iput-boolean p3, p0, Lt/x;->d:Z

    iput p4, p0, Lt/x;->c:I

    iput-object p5, p0, Lt/x;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lt/x;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lt/x;->c:I

    iget-object v1, p0, Lt/x;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lt/x;->b:Lcom/sid/tvos/MainActivity;

    iget-object v3, p0, Lt/x;->e:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-boolean v4, p0, Lt/x;->d:Z

    invoke-static {v2, v3, v4, v0, v1}, Lcom/sid/tvos/MainActivity;->N3(Lcom/sid/tvos/MainActivity;Ljava/lang/String;ZILjava/lang/String;)V

    return-void

    :pswitch_0
    iget-boolean v0, p0, Lt/x;->d:Z

    iget-object v1, p0, Lt/x;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lt/x;->b:Lcom/sid/tvos/MainActivity;

    iget v3, p0, Lt/x;->c:I

    iget-object v4, p0, Lt/x;->e:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/sid/tvos/MainActivity;->i(Lcom/sid/tvos/MainActivity;ILjava/util/List;ZLjava/util/List;)V

    return-void

    :pswitch_1
    iget v0, p0, Lt/x;->c:I

    iget-object v1, p0, Lt/x;->f:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lt/x;->b:Lcom/sid/tvos/MainActivity;

    iget-object v3, p0, Lt/x;->e:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    iget-boolean v4, p0, Lt/x;->d:Z

    invoke-static {v2, v3, v4, v0, v1}, Lcom/sid/tvos/MainActivity;->l(Lcom/sid/tvos/MainActivity;Landroid/graphics/Bitmap;ZILandroid/graphics/drawable/Drawable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
