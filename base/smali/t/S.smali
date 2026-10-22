.class public final synthetic Lt/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Landroid/view/KeyEvent$Callback;

.field public final synthetic d:Landroid/os/Parcelable;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;JLandroid/app/ActivityManager$MemoryInfo;Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lt/S;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/S;->c:Landroid/view/KeyEvent$Callback;

    iput-wide p2, p0, Lt/S;->b:J

    iput-object p4, p0, Lt/S;->d:Landroid/os/Parcelable;

    iput-object p5, p0, Lt/S;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;J)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lt/S;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/S;->c:Landroid/view/KeyEvent$Callback;

    iput-object p2, p0, Lt/S;->d:Landroid/os/Parcelable;

    iput-object p3, p0, Lt/S;->e:Ljava/lang/Object;

    iput-wide p4, p0, Lt/S;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lt/S;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lt/S;->d:Landroid/os/Parcelable;

    check-cast v0, Landroid/app/ActivityManager$MemoryInfo;

    iget-object v1, p0, Lt/S;->e:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lt/S;->c:Landroid/view/KeyEvent$Callback;

    check-cast v2, Landroid/view/View;

    iget-wide v3, p0, Lt/S;->b:J

    invoke-static {v2, v3, v4, v0, v1}, Lcom/sid/tvos/MainActivity;->P(Landroid/view/View;JLandroid/app/ActivityManager$MemoryInfo;Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lt/S;->e:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-wide v1, p0, Lt/S;->b:J

    iget-object v3, p0, Lt/S;->c:Landroid/view/KeyEvent$Callback;

    check-cast v3, Lcom/sid/tvos/MainActivity;

    iget-object v4, p0, Lt/S;->d:Landroid/os/Parcelable;

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-static {v3, v4, v0, v1, v2}, Lcom/sid/tvos/MainActivity;->s(Lcom/sid/tvos/MainActivity;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
