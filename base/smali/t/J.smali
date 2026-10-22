.class public final synthetic Lt/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/widget/PopupWindow;

.field public final synthetic d:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;Landroid/view/View;Landroid/widget/PopupWindow;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/J;->a:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lt/J;->b:Landroid/view/View;

    iput-object p3, p0, Lt/J;->c:Landroid/widget/PopupWindow;

    iput-object p4, p0, Lt/J;->d:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lt/J;->c:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lt/J;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lt/J;->a:Lcom/sid/tvos/MainActivity;

    iget-object v3, p0, Lt/J;->b:Landroid/view/View;

    invoke-static {v2, v3, v0, v1}, Lcom/sid/tvos/MainActivity;->Y1(Lcom/sid/tvos/MainActivity;Landroid/view/View;Landroid/widget/PopupWindow;Landroid/widget/LinearLayout;)V

    return-void
.end method
