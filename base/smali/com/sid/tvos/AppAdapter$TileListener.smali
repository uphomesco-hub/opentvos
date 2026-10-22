.class interface abstract Lcom/sid/tvos/AppAdapter$TileListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sid/tvos/AppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TileListener"
.end annotation


# virtual methods
.method public abstract onFolderOpen(Lcom/sid/tvos/AppAdapter$Entry;)V
.end method

.method public abstract onLaunch(Lcom/sid/tvos/AppAdapter$Entry;Landroid/view/View;)V
.end method

.method public abstract onTileFocused(ILandroid/view/View;)V
.end method

.method public abstract onTileHorizontalKey(II)Z
.end method

.method public abstract onTileLongPress(Lcom/sid/tvos/AppAdapter$Entry;Landroid/view/View;)V
.end method

.method public abstract onTileVerticalKey(II)Z
.end method
