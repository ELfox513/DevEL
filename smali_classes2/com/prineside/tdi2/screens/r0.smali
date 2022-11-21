.class public final synthetic Lcom/prineside/tdi2/screens/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/SettingsScreen;

.field public final synthetic b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final synthetic c:Lcom/prineside/tdi2/ActionResolver$InitConfigManager;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/SettingsScreen;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Lcom/prineside/tdi2/ActionResolver$InitConfigManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/screens/r0;->a:Lcom/prineside/tdi2/screens/SettingsScreen;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/r0;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iput-object p3, p0, Lcom/prineside/tdi2/screens/r0;->c:Lcom/prineside/tdi2/ActionResolver$InitConfigManager;

    return-void
.end method


# virtual methods
.method public final retrieved(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/screens/r0;->a:Lcom/prineside/tdi2/screens/SettingsScreen;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/r0;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/r0;->c:Lcom/prineside/tdi2/ActionResolver$InitConfigManager;

    check-cast p1, Ljava/lang/Double;

    invoke-static {v0, v1, v2, p1}, Lcom/prineside/tdi2/screens/SettingsScreen;->b(Lcom/prineside/tdi2/screens/SettingsScreen;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Lcom/prineside/tdi2/ActionResolver$InitConfigManager;Ljava/lang/Double;)V

    return-void
.end method
