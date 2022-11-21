.class Lcom/prineside/tdi2/screens/MainMenuScreen$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/MainMenuScreen;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/MainMenuScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$24;->a:Lcom/prineside/tdi2/screens/MainMenuScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;)V
    .locals 12

    const/high16 v0, 0x3f000000    # 0.5f

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$24;->a:Lcom/prineside/tdi2/screens/MainMenuScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MainMenuScreen;->e(Lcom/prineside/tdi2/screens/MainMenuScreen;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$24;->a:Lcom/prineside/tdi2/screens/MainMenuScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MainMenuScreen;->e(Lcom/prineside/tdi2/screens/MainMenuScreen;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    move-result-object p1

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$24;->a:Lcom/prineside/tdi2/screens/MainMenuScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MainMenuScreen;->f(Lcom/prineside/tdi2/screens/MainMenuScreen;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$24;->a:Lcom/prineside/tdi2/screens/MainMenuScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MainMenuScreen;->f(Lcom/prineside/tdi2/screens/MainMenuScreen;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    move-result-object p1

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget-boolean v3, v2, Lcom/prineside/tdi2/managers/AuthManager;->gameUpdateNotificationShown:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2

    iput-boolean v4, v2, Lcom/prineside/tdi2/managers/AuthManager;->gameUpdateNotificationShown:Z

    iget v2, p1, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->networkRequiredVersion:I

    const/16 v3, 0xb8

    if-ge v3, v2, :cond_1

    iget-object v2, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "update_game_for_leaderboards"

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "icon-exclamation-triangle"

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lcom/prineside/tdi2/enums/StaticSoundType;->NOTIFICATION:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v2, v1, v3, v5, v6}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    goto :goto_0

    :cond_1
    iget v2, p1, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->lastVersion:I

    if-ge v3, v2, :cond_2

    iget-object v2, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "game_update_available"

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "icon-info-square"

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lcom/prineside/tdi2/enums/StaticSoundType;->NOTIFICATION:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v2, v1, v3, v5, v6}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    :cond_2
    :goto_0
    iget-object v1, p1, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->body:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "..."

    const/16 v6, 0x18

    const/4 v7, 0x0

    if-le v3, v6, :cond_3

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-object v3, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$24;->a:Lcom/prineside/tdi2/screens/MainMenuScreen;

    invoke-static {v3}, Lcom/prineside/tdi2/screens/MainMenuScreen;->e(Lcom/prineside/tdi2/screens/MainMenuScreen;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/badlogic/gdx/utils/StringBuilder;

    aget-object v1, v1, v7

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v1

    const/16 v3, 0x30

    if-le v1, v3, :cond_7

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    array-length v6, v1

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_6

    aget-object v9, v1, v8

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    if-le v10, v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v10

    if-eqz v10, :cond_5

    const/16 v10, 0x20

    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_5
    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_7
    iget-object v1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$24;->a:Lcom/prineside/tdi2/screens/MainMenuScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/MainMenuScreen;->g(Lcom/prineside/tdi2/screens/MainMenuScreen;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v1

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$24;->a:Lcom/prineside/tdi2/screens/MainMenuScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/MainMenuScreen;->f(Lcom/prineside/tdi2/screens/MainMenuScreen;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "season_formatted"

    new-array v5, v4, [Ljava/lang/Object;

    iget v6, p1, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->seasonNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget v1, p1, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->seasonPosition:I

    if-lez v1, :cond_8

    iget v1, p1, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->seasonPlayerCount:I

    if-lez v1, :cond_8

    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    iget v2, p1, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->seasonPosition:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget v2, p1, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->seasonPlayerCount:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget v2, p1, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->seasonPosition:I

    int-to-float v2, v2

    iget v3, p1, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->seasonPlayerCount:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v2

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "top_percent"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-virtual {v3, v5, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$24;->a:Lcom/prineside/tdi2/screens/MainMenuScreen;

    invoke-static {v2}, Lcom/prineside/tdi2/screens/MainMenuScreen;->h(Lcom/prineside/tdi2/screens/MainMenuScreen;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$24;->a:Lcom/prineside/tdi2/screens/MainMenuScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/MainMenuScreen;->h(Lcom/prineside/tdi2/screens/MainMenuScreen;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "not_ranked"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$24;->a:Lcom/prineside/tdi2/screens/MainMenuScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/MainMenuScreen;->h(Lcom/prineside/tdi2/screens/MainMenuScreen;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "sign_in_to_get_ranked"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->LAST_AUTO_SHOWN_NEWS_ID:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v5

    double-to-int v1, v5

    iget v3, p1, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->id:I

    if-ge v1, v3, :cond_a

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    int-to-double v5, v3

    invoke-virtual {v1, v2, v5, v6}, Lcom/prineside/tdi2/managers/SettingsManager;->setCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;D)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager;->getWebBrowser()Lcom/prineside/tdi2/ui/shared/WebBrowser;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/ui/shared/WebBrowser;->webView:Lcom/prineside/tdi2/ui/actors/WebView;

    const-string v2, "GET"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/prineside/tdi2/Config;->XDX_VIEW_NEWS_URL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->id:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/prineside/tdi2/ui/actors/WebView;->loadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/UiManager;->getWebBrowser()Lcom/prineside/tdi2/ui/shared/WebBrowser;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->setVisible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    const-string v1, "MainMenuScreen"

    const-string v2, "failed to set last news"

    invoke-static {v1, v2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$24;->a:Lcom/prineside/tdi2/screens/MainMenuScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MainMenuScreen;->e(Lcom/prineside/tdi2/screens/MainMenuScreen;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$24;->a:Lcom/prineside/tdi2/screens/MainMenuScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MainMenuScreen;->e(Lcom/prineside/tdi2/screens/MainMenuScreen;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    move-result-object p1

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$24;->a:Lcom/prineside/tdi2/screens/MainMenuScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MainMenuScreen;->f(Lcom/prineside/tdi2/screens/MainMenuScreen;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$24;->a:Lcom/prineside/tdi2/screens/MainMenuScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MainMenuScreen;->f(Lcom/prineside/tdi2/screens/MainMenuScreen;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    move-result-object p1

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/screens/MainMenuScreen$24;->retrieved(Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;)V

    return-void
.end method
