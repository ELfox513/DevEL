.class Lcom/prineside/tdi2/managers/AuthManager$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/AuthManager;->loadSavedGameFromServer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/AuthManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/AuthManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$12;->a:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finished(ZLjava/lang/String;)V
    .locals 5

    const-string v0, "savedGame"

    const-string v1, "AuthManager"

    if-eqz p1, :cond_6

    :try_start_0
    iget-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$12;->a:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {p1}, Lcom/prineside/tdi2/managers/AuthManager;->y(Lcom/prineside/tdi2/managers/AuthManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v1, p2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    const-string v2, "status"

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p2

    const-string v2, "gameBuild"

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result p2

    const/16 v2, 0xb8

    if-le p2, v2, :cond_1

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "cant_load_from_cloud_need_update"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-times"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/enums/StaticSoundType;->FAIL:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p2, p1, v0, v2, v3}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    return-void

    :cond_1
    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {p2}, Lcom/prineside/tdi2/managers/AuthManager;->getSessionId()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/prineside/tdi2/managers/AuthManager$12;->a:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {v2}, Lcom/prineside/tdi2/managers/AuthManager;->y(Lcom/prineside/tdi2/managers/AuthManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    iget-object v3, p0, Lcom/prineside/tdi2/managers/AuthManager$12;->a:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {v3}, Lcom/prineside/tdi2/managers/AuthManager;->y(Lcom/prineside/tdi2/managers/AuthManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loading saved game from compact base64 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/prineside/tdi2/managers/PreferencesManager;->loadFromCompactBase64(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/prineside/tdi2/managers/AuthManager$12;->a:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    const-string v4, "slotId"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    const-string v0, "slotTimestamp"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v2, v3, p1}, Lcom/prineside/tdi2/managers/AuthManager;->h(Lcom/prineside/tdi2/managers/AuthManager;II)V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$12;->a:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/managers/AuthManager;->setSessionIdForced(Ljava/lang/String;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/PreferencesManager;->reapplyAllPreferences()V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/prineside/tdi2/managers/AuthManager;->loadStateFromServer(Ljava/lang/String;Ljava/lang/Runnable;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/ScreenManager;->goToAccountScreen()V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/ProgressManager;->requireDelayedSave()V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$12;->a:Lcom/prineside/tdi2/managers/AuthManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/prineside/tdi2/managers/AuthManager;->i(Lcom/prineside/tdi2/managers/AuthManager;Z)Z

    iget-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$12;->a:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {p1}, Lcom/prineside/tdi2/managers/AuthManager;->y(Lcom/prineside/tdi2/managers/AuthManager;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "new session: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {p2}, Lcom/prineside/tdi2/managers/AuthManager;->getSessionId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "game_loaded_from_cloud"

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "icon-info"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/enums/StaticSoundType;->NOTIFICATION:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p2, p1, v2, v0, v3}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can\'t load game: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Failed to parse response"

    invoke-static {v1, p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_6
    const-string p1, "Failed to load saved game from server"

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
