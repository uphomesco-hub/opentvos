.class public final synthetic Lt/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/g;->a:Lcom/sid/tvos/MainActivity;

    iput p2, p0, Lt/g;->b:I

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lt/g;->a:Lcom/sid/tvos/MainActivity;

    iget v1, p0, Lt/g;->b:I

    invoke-static {v1, p1, v0, p2}, Lcom/sid/tvos/MainActivity;->H0(ILandroid/view/View;Lcom/sid/tvos/MainActivity;Z)V

    return-void
.end method
