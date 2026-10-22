.class public final synthetic Lcom/sid/tvos/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/sid/tvos/MainActivity;

.field public final synthetic b:Lcom/sid/tvos/AppAdapter$Entry;

.field public final synthetic c:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/I;->a:Lcom/sid/tvos/MainActivity;

    iput-object p2, p0, Lcom/sid/tvos/I;->b:Lcom/sid/tvos/AppAdapter$Entry;

    iput-object p3, p0, Lcom/sid/tvos/I;->c:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sid/tvos/I;->b:Lcom/sid/tvos/AppAdapter$Entry;

    iget-object v1, p0, Lcom/sid/tvos/I;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sid/tvos/I;->a:Lcom/sid/tvos/MainActivity;

    invoke-static {v2, v0, v1, p1}, Lcom/sid/tvos/MainActivity;->C3(Lcom/sid/tvos/MainActivity;Lcom/sid/tvos/AppAdapter$Entry;Landroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method
