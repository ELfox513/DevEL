.class public final synthetic Lcom/prineside/tdi2/screens/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/HotkeyScreen;

.field public final synthetic b:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/HotkeyScreen;Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/screens/l;->a:Lcom/prineside/tdi2/screens/HotkeyScreen;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/l;->b:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/l;->a:Lcom/prineside/tdi2/screens/HotkeyScreen;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/l;->b:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/screens/HotkeyScreen;->b(Lcom/prineside/tdi2/screens/HotkeyScreen;Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)V

    return-void
.end method
