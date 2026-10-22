.class public final synthetic Lt/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lt/m;->a:I

    iput-object p1, p0, Lt/m;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget v0, p0, Lt/m;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    iget-object v0, p0, Lt/m;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/PackageManager;

    invoke-static {v0, p1, p2}, Lcom/sid/tvos/MainActivity;->Y0(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result p1

    return p1

    :pswitch_0
    check-cast p1, Landroid/media/tv/TvInputInfo;

    check-cast p2, Landroid/media/tv/TvInputInfo;

    iget-object v0, p0, Lt/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sid/tvos/MainActivity;

    invoke-static {v0, p1, p2}, Lcom/sid/tvos/MainActivity;->L2(Lcom/sid/tvos/MainActivity;Landroid/media/tv/TvInputInfo;Landroid/media/tv/TvInputInfo;)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
