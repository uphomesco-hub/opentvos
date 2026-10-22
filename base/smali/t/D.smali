.class public final synthetic Lt/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:I

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Landroid/widget/PopupWindow;

.field public final synthetic f:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;Landroid/view/View;ILandroid/view/View;Landroid/widget/PopupWindow;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/D;->a:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lt/D;->b:Landroid/view/View;

    iput p3, p0, Lt/D;->c:I

    iput-object p4, p0, Lt/D;->d:Landroid/view/View;

    iput-object p5, p0, Lt/D;->e:Landroid/widget/PopupWindow;

    iput-object p6, p0, Lt/D;->f:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v4, p0, Lt/D;->e:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lt/D;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lt/D;->a:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lt/D;->b:Landroid/view/View;

    iget v2, p0, Lt/D;->c:I

    iget-object v3, p0, Lt/D;->d:Landroid/view/View;

    invoke-static/range {v0 .. v5}, Lcom/sid/tvos/MainActivity;->W(Lcom/sid/tvos/MainActivity;Landroid/view/View;ILandroid/view/View;Landroid/widget/PopupWindow;Landroid/widget/LinearLayout;)V

    return-void
.end method
