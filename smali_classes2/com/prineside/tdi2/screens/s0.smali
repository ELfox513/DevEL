.class public final synthetic Lcom/prineside/tdi2/screens/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/SettingsScreen;

.field public final synthetic b:Lcom/prineside/tdi2/ActionResolver$InitConfigManager;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/SettingsScreen;Lcom/prineside/tdi2/ActionResolver$InitConfigManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/screens/s0;->a:Lcom/prineside/tdi2/screens/SettingsScreen;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/s0;->b:Lcom/prineside/tdi2/ActionResolver$InitConfigManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/s0;->a:Lcom/prineside/tdi2/screens/SettingsScreen;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/s0;->b:Lcom/prineside/tdi2/ActionResolver$InitConfigManager;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/screens/SettingsScreen;->f(Lcom/prineside/tdi2/screens/SettingsScreen;Lcom/prineside/tdi2/ActionResolver$InitConfigManager;)V

    return-void
.end method
