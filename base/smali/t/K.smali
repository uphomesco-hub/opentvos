.class public final synthetic Lt/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity;

.field public final synthetic b:[Landroid/widget/PopupWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;[Landroid/widget/PopupWindow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/K;->a:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lt/K;->b:[Landroid/widget/PopupWindow;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lt/K;->a:Lcom/sid/tvos/MainActivity;

    iget-object v1, p0, Lt/K;->b:[Landroid/widget/PopupWindow;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/sid/tvos/MainActivity;->m1(Lcom/sid/tvos/MainActivity;[Landroid/widget/PopupWindow;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
