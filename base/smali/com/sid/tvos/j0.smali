.class public final synthetic Lcom/sid/tvos/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/SharedPreferences;

.field public final synthetic c:Landroid/os/Handler;

.field public final synthetic d:Lcom/sid/tvos/Weather$PlaceCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/SharedPreferences;Landroid/os/Handler;Lcom/sid/tvos/Weather$PlaceCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sid/tvos/j0;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sid/tvos/j0;->b:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/sid/tvos/j0;->c:Landroid/os/Handler;

    iput-object p4, p0, Lcom/sid/tvos/j0;->d:Lcom/sid/tvos/Weather$PlaceCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sid/tvos/j0;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sid/tvos/j0;->d:Lcom/sid/tvos/Weather$PlaceCallback;

    iget-object v2, p0, Lcom/sid/tvos/j0;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/sid/tvos/j0;->b:Landroid/content/SharedPreferences;

    invoke-static {v2, v3, v0, v1}, Lcom/sid/tvos/Weather;->b(Ljava/lang/String;Landroid/content/SharedPreferences;Landroid/os/Handler;Lcom/sid/tvos/Weather$PlaceCallback;)V

    return-void
.end method
