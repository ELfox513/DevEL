.class public Lcom/prineside/tdi2/managers/ScreenManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/ScreenManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/ScreenManager$ScreenManagerListener;,
        Lcom/prineside/tdi2/managers/ScreenManager$Serializer;
    }
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/Screen;

.field public final b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/managers/ScreenManager$ScreenManagerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZI)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ScreenManager;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ScreenManager;->a:Lcom/prineside/tdi2/Screen;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Screen;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ScreenManager;->a:Lcom/prineside/tdi2/Screen;

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v0}, Lcom/prineside/tdi2/ActionResolver;->getInitConfigManager()Lcom/prineside/tdi2/ActionResolver$InitConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->saveIfRequired()V

    return-void
.end method

.method public addListener(Lcom/prineside/tdi2/managers/ScreenManager$ScreenManagerListener;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ScreenManager;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ScreenManager;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getCurrentScreen()Lcom/prineside/tdi2/Screen;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ScreenManager;->a:Lcom/prineside/tdi2/Screen;

    return-object v0
.end method

.method public goToAboutScreen()V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScreenManager;->a()V

    new-instance v0, Lcom/prineside/tdi2/screens/AboutScreen;

    invoke-direct {v0}, Lcom/prineside/tdi2/screens/AboutScreen;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ScreenManager;->setScreen(Lcom/prineside/tdi2/Screen;)V

    return-void
.end method

.method public goToAccountScreen()V
    .locals 4

    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->FAIL:Lcom/prineside/tdi2/enums/StaticSoundType;

    const-string v2, "Not available in modding mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3, v1}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScreenManager;->a()V

    new-instance v0, Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-direct {v0}, Lcom/prineside/tdi2/screens/AccountScreen;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ScreenManager;->setScreen(Lcom/prineside/tdi2/Screen;)V

    return-void
.end method

.method public goToAccountScreen(Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;)V
    .locals 3

    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    sget-object v0, Lcom/prineside/tdi2/enums/StaticSoundType;->FAIL:Lcom/prineside/tdi2/enums/StaticSoundType;

    const-string v1, "Not available in modding mode"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2, v0}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScreenManager;->a()V

    new-instance v0, Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-direct {v0, p1}, Lcom/prineside/tdi2/screens/AccountScreen;-><init>(Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;)V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ScreenManager;->setScreen(Lcom/prineside/tdi2/Screen;)V

    return-void
.end method

.method public goToCrashReportScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScreenManager;->a()V

    new-instance v6, Lcom/prineside/tdi2/screens/CrashReportScreen;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/prineside/tdi2/screens/CrashReportScreen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/prineside/tdi2/managers/ScreenManager;->setScreen(Lcom/prineside/tdi2/Screen;)V

    return-void
.end method

.method public goToCustomMapSelectScreen()V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScreenManager;->a()V

    new-instance v0, Lcom/prineside/tdi2/screens/CustomMapSelectScreen;

    invoke-direct {v0}, Lcom/prineside/tdi2/screens/CustomMapSelectScreen;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ScreenManager;->setScreen(Lcom/prineside/tdi2/Screen;)V

    return-void
.end method

.method public goToHotkeyEditorScreen()V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScreenManager;->a()V

    new-instance v0, Lcom/prineside/tdi2/screens/HotkeyScreen;

    invoke-direct {v0}, Lcom/prineside/tdi2/screens/HotkeyScreen;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ScreenManager;->setScreen(Lcom/prineside/tdi2/Screen;)V

    return-void
.end method

.method public goToLanguageSelectScreen()V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScreenManager;->a()V

    new-instance v0, Lcom/prineside/tdi2/screens/LanguageSelectScreen;

    invoke-direct {v0}, Lcom/prineside/tdi2/screens/LanguageSelectScreen;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ScreenManager;->setScreen(Lcom/prineside/tdi2/Screen;)V

    return-void
.end method

.method public goToLevelSelectScreen()V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScreenManager;->a()V

    new-instance v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-direct {v0}, Lcom/prineside/tdi2/screens/LevelSelectScreen;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ScreenManager;->setScreen(Lcom/prineside/tdi2/Screen;)V

    return-void
.end method

.method public goToLevelSelectScreen(Lcom/prineside/tdi2/BasicLevel;)V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScreenManager;->a()V

    new-instance v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-direct {v0, p1}, Lcom/prineside/tdi2/screens/LevelSelectScreen;-><init>(Lcom/prineside/tdi2/BasicLevel;)V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ScreenManager;->setScreen(Lcom/prineside/tdi2/Screen;)V

    return-void
.end method

.method public goToLoadingScreen(Lcom/prineside/tdi2/utils/GameSyncLoader;)V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScreenManager;->a()V

    new-instance v0, Lcom/prineside/tdi2/screens/LoadingScreen;

    invoke-direct {v0, p1}, Lcom/prineside/tdi2/screens/LoadingScreen;-><init>(Lcom/prineside/tdi2/utils/GameSyncLoader;)V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ScreenManager;->setScreen(Lcom/prineside/tdi2/Screen;)V

    return-void
.end method

.method public goToMainMenu()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Game;->assertInMainThread()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/StatisticsManager;->save()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScreenManager;->a()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/LocaleManager;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScreenManager;->goToLanguageSelectScreen()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/prineside/tdi2/screens/MainMenuScreen;

    invoke-direct {v0}, Lcom/prineside/tdi2/screens/MainMenuScreen;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ScreenManager;->setScreen(Lcom/prineside/tdi2/Screen;)V

    :goto_0
    return-void
.end method

.method public goToMapEditorScreen(Lcom/prineside/tdi2/BasicLevel;)V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScreenManager;->a()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->mapEditingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-direct {v0, p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;-><init>(Lcom/prineside/tdi2/BasicLevel;)V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ScreenManager;->setScreen(Lcom/prineside/tdi2/Screen;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    const-string v0, "Not available on this OS or you are not in developer mode"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public goToMapEditorScreen(Lcom/prineside/tdi2/UserMap;)V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScreenManager;->a()V

    new-instance v0, Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-direct {v0, p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;-><init>(Lcom/prineside/tdi2/UserMap;)V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ScreenManager;->setScreen(Lcom/prineside/tdi2/Screen;)V

    return-void
.end method

.method public goToMoneyScreen()V
    .locals 4

    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->FAIL:Lcom/prineside/tdi2/enums/StaticSoundType;

    const-string v2, "Not available in modding mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3, v1}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    return-void

    :cond_0
    new-instance v0, Lcom/prineside/tdi2/screens/MoneyScreen;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ScreenManager;->a:Lcom/prineside/tdi2/Screen;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/screens/MoneyScreen;-><init>(Lcom/badlogic/gdx/Screen;)V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ScreenManager;->setScreen(Lcom/prineside/tdi2/Screen;)V

    return-void
.end method

.method public goToResearchesScreen()V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScreenManager;->a()V

    new-instance v0, Lcom/prineside/tdi2/screens/ResearchesScreen;

    invoke-direct {v0}, Lcom/prineside/tdi2/screens/ResearchesScreen;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ScreenManager;->setScreen(Lcom/prineside/tdi2/Screen;)V

    return-void
.end method

.method public goToResearchesScreen(Lcom/prineside/tdi2/enums/ResearchType;)V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScreenManager;->a()V

    new-instance v0, Lcom/prineside/tdi2/screens/ResearchesScreen;

    invoke-direct {v0, p1}, Lcom/prineside/tdi2/screens/ResearchesScreen;-><init>(Lcom/prineside/tdi2/enums/ResearchType;)V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ScreenManager;->setScreen(Lcom/prineside/tdi2/Screen;)V

    return-void
.end method

.method public goToSettingsScreen()V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScreenManager;->a()V

    new-instance v0, Lcom/prineside/tdi2/screens/SettingsScreen;

    invoke-direct {v0}, Lcom/prineside/tdi2/screens/SettingsScreen;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ScreenManager;->setScreen(Lcom/prineside/tdi2/Screen;)V

    return-void
.end method

.method public goToStatisticsScreen()V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScreenManager;->a()V

    new-instance v0, Lcom/prineside/tdi2/screens/StatisticsScreen;

    invoke-direct {v0}, Lcom/prineside/tdi2/screens/StatisticsScreen;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ScreenManager;->setScreen(Lcom/prineside/tdi2/Screen;)V

    return-void
.end method

.method public setNoScreen()V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScreenManager;->a()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ScreenManager;->setScreen(Lcom/prineside/tdi2/Screen;)V

    return-void
.end method

.method public setScreen(Lcom/prineside/tdi2/Screen;)V
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScreenManager;->a()V

    invoke-static {}, Lcom/prineside/luaj/Lua;->resetCache()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/Game;->setScreen(Lcom/badlogic/gdx/Screen;)V

    iput-object p1, p0, Lcom/prineside/tdi2/managers/ScreenManager;->a:Lcom/prineside/tdi2/Screen;

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting screen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScreenManager"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/managers/ScreenManager;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/ScreenManager;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/managers/ScreenManager$ScreenManagerListener;

    invoke-interface {v0}, Lcom/prineside/tdi2/managers/ScreenManager$ScreenManagerListener;->screenChanged()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/managers/ScreenManager;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

.method public startNewBasicLevel(Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;)V
    .locals 9

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScreenManager;->a()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v3

    new-instance v0, Lcom/prineside/tdi2/screens/GameScreen;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyModeDiffMultiplier(Lcom/prineside/tdi2/enums/DifficultyMode;)I

    move-result v4

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v8}, Lcom/prineside/tdi2/screens/GameScreen;-><init>(Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/enums/DifficultyMode;ILcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;JLcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;)V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ScreenManager;->setScreen(Lcom/prineside/tdi2/Screen;)V

    return-void
.end method

.method public startNewDailyLevel(Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;)V
    .locals 1

    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScreenManager;->a()V

    new-instance v0, Lcom/prineside/tdi2/screens/GameScreen;

    invoke-direct {v0, p1}, Lcom/prineside/tdi2/screens/GameScreen;-><init>(Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;)V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ScreenManager;->setScreen(Lcom/prineside/tdi2/Screen;)V

    return-void
.end method

.method public startNewUserLevel(Lcom/prineside/tdi2/UserMap;Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;)V
    .locals 11

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScreenManager;->a()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v3

    new-instance v0, Lcom/prineside/tdi2/screens/GameScreen;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyModeDiffMultiplier(Lcom/prineside/tdi2/enums/DifficultyMode;)I

    move-result v4

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->userMapManager:Lcom/prineside/tdi2/managers/UserMapManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UserMapManager;->getDefaultBosses()[Lcom/prineside/tdi2/enums/BossType;

    move-result-object v8

    const-wide/16 v6, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v10}, Lcom/prineside/tdi2/screens/GameScreen;-><init>(Lcom/prineside/tdi2/UserMap;Lcom/prineside/tdi2/enums/DifficultyMode;ILcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;J[Lcom/prineside/tdi2/enums/BossType;Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/ScreenManager;->setScreen(Lcom/prineside/tdi2/Screen;)V

    return-void
.end method
