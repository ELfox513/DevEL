.class Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$1;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$1$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$1$1;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$1$1;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/managers/AuthManager;->setSessionIdForced(Ljava/lang/String;)V

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    invoke-virtual {p2}, Lcom/prineside/tdi2/managers/PreferencesManager;->reapplyAllPreferences()V

    iget-object p2, p0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$1$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$1;

    iget-object p2, p2, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$1;->b:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1;

    iget-object p2, p2, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1;->b:Lcom/prineside/tdi2/screens/AccountScreen$19$1;

    iget-object p2, p2, Lcom/prineside/tdi2/screens/AccountScreen$19$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$19;

    iget-object p2, p2, Lcom/prineside/tdi2/screens/AccountScreen$19;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {p2}, Lcom/prineside/tdi2/screens/AccountScreen;->h(Lcom/prineside/tdi2/screens/AccountScreen;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    new-instance v0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$1$1$1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$1$1$1;-><init>(Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$1$1;)V

    invoke-virtual {p2, p1, v0}, Lcom/prineside/tdi2/managers/AuthManager;->loadStateFromServer(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p1, "AccountScreen"

    const-string p2, "Failed to load backup"

    invoke-static {p1, p2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
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

    iget-object v2, p0, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$1$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$1;

    iget-object v2, v2, Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$1;->a:Ljava/lang/String;

    new-instance v3, Lcom/prineside/tdi2/screens/b;

    invoke-direct {v3, p0, v0}, Lcom/prineside/tdi2/screens/b;-><init>(Lcom/prineside/tdi2/screens/AccountScreen$19$1$1$1$1;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/prineside/tdi2/managers/PreferencesManager;->loadFromUrl(Ljava/lang/String;ZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method
