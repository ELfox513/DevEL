.class Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1$1;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1$1$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AuthManager;->getSessionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1$1$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1$1;

    iget-object v2, v2, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1$1;->a:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->getPreferencesSnapshot()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/prineside/tdi2/managers/PreferencesManager;->loadFromBytes([BZ)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/AuthManager;->setSessionIdForced(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->reapplyAllPreferences()V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1$1$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1$1;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1$1;->b:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1;->b:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2;->a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1;->b:Lcom/prineside/tdi2/screens/AccountScreen$19$1;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/AccountScreen$19$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$19;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/AccountScreen$19;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/AccountScreen;->i(Lcom/prineside/tdi2/screens/AccountScreen;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    new-instance v2, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1$1$1$1;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1$1$1$1;-><init>(Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$2$1$1$1$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/managers/AuthManager;->loadStateFromServer(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
