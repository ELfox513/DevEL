.class Lcom/prineside/tdi2/screens/AccountScreen$18$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/AccountScreen$18;->retrieved(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Lcom/badlogic/gdx/utils/JsonValue;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/AccountScreen$18;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/AccountScreen$18;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$18$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    const/4 p1, 0x3

    if-lt v1, p1, :cond_2

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "save_game_to_any_slot_first"

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/AuthManager;->setAutoSavesEnabled(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$18$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$18;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$18;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/AccountScreen;->g(Lcom/prineside/tdi2/screens/AccountScreen;)Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "game_will_be_auto_saved_to_new_slot"

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-info"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/prineside/tdi2/enums/StaticSoundType;->NOTIFICATION:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/AuthManager;->setAutoSavesEnabled(Z)V

    :goto_1
    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$18$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$18;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$18;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/AccountScreen;->f(Lcom/prineside/tdi2/screens/AccountScreen;)V

    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/screens/AccountScreen$18$1;->retrieved(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-void
.end method
