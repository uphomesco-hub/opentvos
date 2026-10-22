.class abstract Lcom/sid/tvos/LauncherActions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final ICONS:[I

.field static final IDS:[Ljava/lang/String;

.field private static final NAMES:[I

.field static final pending:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v8, "status"

    const-string v9, "icons"

    const-string v0, "dark"

    const-string v1, "standby"

    const-string v2, "standby_style"

    const-string v3, "cc"

    const-string v4, "settings"

    const-string v5, "glass"

    const-string v6, "cw"

    const-string v7, "cw_art"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sid/tvos/LauncherActions;->IDS:[Ljava/lang/String;

    sget v1, Lcom/sid/tvos/R$string;->la_dark:I

    sget v2, Lcom/sid/tvos/R$string;->la_standby:I

    sget v3, Lcom/sid/tvos/R$string;->la_standby_style:I

    sget v4, Lcom/sid/tvos/R$string;->la_cc:I

    sget v5, Lcom/sid/tvos/R$string;->la_settings:I

    sget v6, Lcom/sid/tvos/R$string;->la_glass:I

    sget v7, Lcom/sid/tvos/R$string;->la_cw:I

    sget v8, Lcom/sid/tvos/R$string;->la_cw_art:I

    sget v9, Lcom/sid/tvos/R$string;->la_status:I

    sget v10, Lcom/sid/tvos/R$string;->la_icons:I

    filled-new-array/range {v1 .. v10}, [I

    move-result-object v0

    sput-object v0, Lcom/sid/tvos/LauncherActions;->NAMES:[I

    sget v1, Lcom/sid/tvos/R$drawable;->ic_darkmode:I

    sget v2, Lcom/sid/tvos/R$drawable;->ic_standby:I

    sget v3, Lcom/sid/tvos/R$drawable;->ic_clock:I

    sget v4, Lcom/sid/tvos/R$drawable;->ic_controls:I

    sget v5, Lcom/sid/tvos/R$drawable;->ic_settings_gear:I

    sget v6, Lcom/sid/tvos/R$drawable;->ic_glass:I

    sget v7, Lcom/sid/tvos/R$drawable;->ic_cw:I

    sget v8, Lcom/sid/tvos/R$drawable;->ic_poster:I

    sget v9, Lcom/sid/tvos/R$drawable;->ic_statusbar:I

    sget v10, Lcom/sid/tvos/R$drawable;->ic_iconpack:I

    filled-new-array/range {v1 .. v10}, [I

    move-result-object v0

    sput-object v0, Lcom/sid/tvos/LauncherActions;->ICONS:[I

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/sid/tvos/LauncherActions;->pending:Ljava/util/Set;

    return-void
.end method

.method public static name(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/sid/tvos/LauncherActions;->IDS:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/sid/tvos/LauncherActions;->NAMES:[I

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static run(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "settings"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "cc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "standby"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sid/tvos/LauncherActions;->toggle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    sget-object p0, Lcom/sid/tvos/MainActivity;->live:Lcom/sid/tvos/MainActivity;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/sid/tvos/MainActivity;->isFront()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/sid/tvos/MainActivity;->applyLauncherSetting(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/sid/tvos/LauncherActions;->pending:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sid/tvos/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "launcher_action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x30000000

    :goto_2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/sid/tvos/StandByActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7116cd53 -> :sswitch_2
        0xc60 -> :sswitch_1
        0x5582bc23 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static toggle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, ": "

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "standby_style"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_1
    const-string v3, "icons"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_2
    const-string v3, "glass"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_3
    const-string v3, "dark"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "cw"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_5
    const-string v3, "status"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_6
    const-string v3, "cw_art"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sid/tvos/R$array;->standby_layouts:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/sid/tvos/Appearance;->standByLayout(Landroid/content/Context;)I

    move-result v3

    add-int/2addr v3, v1

    array-length v1, v2

    rem-int/2addr v3, v1

    const-string v1, "standby_layout"

    invoke-static {p0, v1, v3}, Lcom/sid/tvos/Appearance;->setStandBy(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/sid/tvos/LauncherActions;->name(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v2, v3

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lcom/sid/tvos/IconPack;->current(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tvos"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    const-string v3, "original"

    :goto_1
    invoke-static {p0, v3}, Lcom/sid/tvos/IconPack;->set(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/sid/tvos/LauncherActions;->name(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_8

    sget p1, Lcom/sid/tvos/R$string;->icons_tvos:I

    goto :goto_2

    :cond_8
    sget p1, Lcom/sid/tvos/R$string;->icons_original:I

    :goto_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p0}, Lcom/sid/tvos/Appearance;->liquid(Landroid/content/Context;)Z

    move-result v2

    xor-int/2addr v1, v2

    if-eqz v1, :cond_9

    const-string v2, "liquid"

    goto :goto_3

    :cond_9
    const-string v2, "frosted"

    :goto_3
    invoke-static {p0, v2}, Lcom/sid/tvos/Appearance;->setGlass(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/sid/tvos/LauncherActions;->name(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_a

    sget p1, Lcom/sid/tvos/R$string;->glass_liquid:I

    goto :goto_4

    :cond_a
    sget p1, Lcom/sid/tvos/R$string;->glass_frosted:I

    :goto_4
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p0}, Lcom/sid/tvos/Appearance;->dark(Landroid/content/Context;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {p0, v1}, Lcom/sid/tvos/Appearance;->setDark(Landroid/content/Context;Z)V

    invoke-static {p0}, Lcom/sid/tvos/DarkSchedule;->holdManual(Landroid/content/Context;)V

    goto :goto_6

    :pswitch_4
    invoke-static {p0}, Lcom/sid/tvos/Appearance;->cwOn(Landroid/content/Context;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {p0, v1}, Lcom/sid/tvos/Appearance;->setCwOn(Landroid/content/Context;Z)V

    goto :goto_6

    :pswitch_5
    invoke-static {p0}, Lcom/sid/tvos/Appearance;->statusMinimal(Landroid/content/Context;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {p0, v1}, Lcom/sid/tvos/Appearance;->setStatusMinimal(Landroid/content/Context;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/sid/tvos/LauncherActions;->name(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_b

    sget p1, Lcom/sid/tvos/R$string;->status_minimal:I

    goto :goto_5

    :cond_b
    sget p1, Lcom/sid/tvos/R$string;->status_full:I

    :goto_5
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {p0}, Lcom/sid/tvos/Appearance;->cwArt(Landroid/content/Context;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {p0, v1}, Lcom/sid/tvos/Appearance;->setCwArt(Landroid/content/Context;Z)V

    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/sid/tvos/LauncherActions;->name(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_c

    sget p1, Lcom/sid/tvos/R$string;->state_on:I

    goto :goto_7

    :cond_c
    sget p1, Lcom/sid/tvos/R$string;->state_off:I

    :goto_7
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x5056a3e8 -> :sswitch_6
        -0x3532300e -> :sswitch_5
        0xc74 -> :sswitch_4
        0x2eef76 -> :sswitch_3
        0x5de077c -> :sswitch_2
        0x5f6531a -> :sswitch_1
        0x5bf93d9f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
