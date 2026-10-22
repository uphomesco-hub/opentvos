.class public final synthetic Lt/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, p2}, Lcom/sid/tvos/MainActivity;->m(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method
