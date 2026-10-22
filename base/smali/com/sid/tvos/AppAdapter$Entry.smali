.class final Lcom/sid/tvos/AppAdapter$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sid/tvos/AppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field ambient:I

.field final banner:Landroid/graphics/drawable/Drawable;

.field final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sid/tvos/AppAdapter$Entry;",
            ">;"
        }
    .end annotation
.end field

.field final component:Landroid/content/ComponentName;

.field final icon:Landroid/graphics/drawable/Drawable;

.field final label:Ljava/lang/String;

.field final pkg:Ljava/lang/String;

.field slot:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sid/tvos/AppAdapter$Entry;->slot:I

    iput-object p1, p0, Lcom/sid/tvos/AppAdapter$Entry;->label:Ljava/lang/String;

    iput-object p2, p0, Lcom/sid/tvos/AppAdapter$Entry;->component:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/sid/tvos/AppAdapter$Entry;->banner:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/sid/tvos/AppAdapter$Entry;->icon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sid/tvos/AppAdapter$Entry;->children:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sid/tvos/AppAdapter$Entry;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sid/tvos/AppAdapter$Entry;->slot:I

    iput-object p1, p0, Lcom/sid/tvos/AppAdapter$Entry;->label:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sid/tvos/AppAdapter$Entry;->component:Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/sid/tvos/AppAdapter$Entry;->pkg:Ljava/lang/String;

    iput-object p1, p0, Lcom/sid/tvos/AppAdapter$Entry;->banner:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/sid/tvos/AppAdapter$Entry;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/sid/tvos/AppAdapter$Entry;->children:Ljava/util/List;

    return-void
.end method

.method public static placeholder(I)Lcom/sid/tvos/AppAdapter$Entry;
    .locals 3

    new-instance v0, Lcom/sid/tvos/AppAdapter$Entry;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sid/tvos/AppAdapter$Entry;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput p0, v0, Lcom/sid/tvos/AppAdapter$Entry;->slot:I

    return-object v0
.end method


# virtual methods
.method public isFolder()Z
    .locals 1

    iget-object v0, p0, Lcom/sid/tvos/AppAdapter$Entry;->children:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaceholder()Z
    .locals 1

    iget v0, p0, Lcom/sid/tvos/AppAdapter$Entry;->slot:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public key()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sid/tvos/AppAdapter$Entry;->isPlaceholder()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "empty:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sid/tvos/AppAdapter$Entry;->slot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sid/tvos/AppAdapter$Entry;->isFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "folder:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sid/tvos/AppAdapter$Entry;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sid/tvos/AppAdapter$Entry;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
