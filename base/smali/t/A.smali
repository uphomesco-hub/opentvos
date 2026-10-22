.class public final synthetic Lt/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/A;->a:Lcom/sid/tvos/MainActivity;

    iput p2, p0, Lt/A;->b:I

    iput p3, p0, Lt/A;->c:I

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget v1, p0, Lt/A;->b:I

    iget v2, p0, Lt/A;->c:I

    iget-object v0, p0, Lt/A;->a:Lcom/sid/tvos/MainActivity;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sid/tvos/MainActivity;->x1(Lcom/sid/tvos/MainActivity;IILandroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
