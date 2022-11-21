.class public Lcom/prineside/tdi2/screens/MainMenuScreen;
.super Lcom/prineside/tdi2/Screen;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/screens/MainMenuScreen$MenuButton;
    }
.end annotation


# instance fields
.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public final b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public c:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public d:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public h:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public i:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public j:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public m:F

.field public n:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

.field public o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public p:I

.field public final q:Lcom/badlogic/gdx/math/Vector2;

.field public final r:Lcom/prineside/tdi2/Game$ScreenResizeListener;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/prineside/tdi2/Screen;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v1, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v2, 0x65

    const-string v3, "MainMenuScreen trophies"

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    const/16 v2, 0x66

    const-string v3, "MainMenuScreen main"

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->p:I

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->q:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/prineside/tdi2/screens/MainMenuScreen$1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/screens/MainMenuScreen$1;-><init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->r:Lcom/prineside/tdi2/Game$ScreenResizeListener;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v1}, Lcom/prineside/tdi2/ActionResolver;->isAppModified()Z

    move-result v1

    const-string v2, "MainMenuScreen"

    if-nez v1, :cond_1

    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "app is not modified"

    invoke-static {v2, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "app is modified"

    invoke-static {v2, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/MusicManager;->continuePlayingMenuMusicTrack()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ResearchManager;->updateAndValidateStarBranch()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager;->hideAllComponents()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager;->setAsInputHandler()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->resourcesAndMoney:Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;->setVisible(Z)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->inventoryOverlay:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->hide(Z)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->profileSummary:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-virtual {v1, v2, v2}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->setVisible(ZZ)Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/MainMenuScreen;->k()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->givePendingBonuses()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->checkSpecialTrophiesGiven()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->showNewlyIssuedPrizesPopup()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/Game;->addScreenResizeListener(Lcom/prineside/tdi2/Game$ScreenResizeListener;)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget v2, v1, Lcom/prineside/tdi2/managers/AuthManager;->lastStateUpdateTimestamp:I

    sub-int/2addr v0, v2

    const/16 v2, 0x1e

    if-le v0, v2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0}, Lcom/prineside/tdi2/managers/AuthManager;->loadStateFromServer(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_2
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AchievementManager;->updateGlobal()V

    new-instance v0, Lcom/prineside/tdi2/screens/MainMenuScreen$2;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/screens/MainMenuScreen$2;-><init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v1, Lcom/prineside/tdi2/enums/StatisticsType;->PRT:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v0

    const-wide v2, 0x4082c00000000000L    # 600.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_3

    new-instance v0, Lcom/prineside/tdi2/screens/MainMenuScreen$3;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/screens/MainMenuScreen$3;-><init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;

    :cond_3
    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/screens/MainMenuScreen;Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/MainMenuScreen;->j(Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/screens/MainMenuScreen;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/MainMenuScreen;->k()V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/screens/MainMenuScreen;)Lcom/prineside/tdi2/ui/actors/ComplexButton;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->j:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    return-object p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/screens/MainMenuScreen;)Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->n:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    return-object p0
.end method

.method public static synthetic e(Lcom/prineside/tdi2/screens/MainMenuScreen;)Lcom/prineside/tdi2/ui/actors/ComplexButton;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->h:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    return-object p0
.end method

.method public static synthetic f(Lcom/prineside/tdi2/screens/MainMenuScreen;)Lcom/prineside/tdi2/ui/actors/ComplexButton;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->i:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    return-object p0
.end method

.method public static synthetic g(Lcom/prineside/tdi2/screens/MainMenuScreen;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p0
.end method

.method public static synthetic h(Lcom/prineside/tdi2/screens/MainMenuScreen;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p0
.end method

.method public static synthetic i(Lcom/prineside/tdi2/screens/MainMenuScreen;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p0
.end method

.method private synthetic j(Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;)V
    .locals 4

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->validate()V

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->n:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->getLevelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->c:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->wasCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "main-menu-check-outline"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v1, 0x42400000    # 48.0f

    invoke-virtual {v0, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v1, 0x43780000    # 248.0f

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "count-bubble"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v1, 0x42010000    # 32.25f

    const/high16 v2, 0x42130000    # 36.75f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v1, 0x43888000    # 273.0f

    const/high16 v2, 0x427c0000    # 63.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :goto_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "ui-main-menu-dq-preview"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v1, 0x43020000    # 130.0f

    const/high16 v2, 0x42c60000    # 99.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v1, 0x432a0000    # 170.0f

    const/high16 v2, 0x430a0000    # 138.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->getLevelName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/BasicLevel;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Map;->getPreview()Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;

    move-result-object p1

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    const/high16 p1, 0x431b0000    # 155.0f

    const/high16 v1, 0x42e60000    # 115.0f

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 p1, 0x430b0000    # 139.0f

    const/high16 v1, 0x42e20000    # 113.0f

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->dailyQuestManager:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/DailyQuestManager;->getCurrentDayDate()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/prineside/tdi2/screens/MainMenuScreen$25;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/screens/MainMenuScreen$25;-><init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V

    invoke-virtual {p1, v0, v1}, Lcom/prineside/tdi2/managers/DailyQuestManager;->getLeaderboards(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Basic level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->getLevelName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->r:Lcom/prineside/tdi2/Game$ScreenResizeListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Game;->removeScreenResizeListener(Lcom/prineside/tdi2/Game$ScreenResizeListener;)V

    const-string v0, "MainMenuScreen"

    const-string v1, "disposed"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public draw(F)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->q:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->q:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->p:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v4, -0x3cea0000    # -150.0f

    cmpg-float v5, v3, v4

    if-ltz v5, :cond_0

    const/high16 v5, 0x43160000    # 150.0f

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_0

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    :cond_0
    add-int/2addr v1, v2

    iput v1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->p:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broken layout, fixing ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->p:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainMenuScreen"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/MainMenuScreen;->k()V

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "menu_background"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v5, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v3, v4, v5, v0}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0x4100

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isEscButtonJustPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "exit_game_confirm"

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/prineside/tdi2/f0;

    invoke-direct {v3}, Lcom/prineside/tdi2/f0;-><init>()V

    invoke-virtual {v1, v0, v3}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iput-boolean v2, v0, Lcom/prineside/tdi2/ui/shared/Dialog;->ignoreEscForFrame:Z

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->n:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->m:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->m:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v2, v1, p1

    if-ltz v2, :cond_4

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->m:F

    iget p1, v0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->endTimestamp:I

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v0

    sub-int/2addr p1, v0

    if-gtz p1, :cond_3

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/MainMenuScreen;->m()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {p1}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final k()V
    .locals 44

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x43960000    # 300.0f

    const/high16 v4, 0x43000000    # 128.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const-string v5, "MM-layout-bottomLeft"

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x18

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    new-instance v7, Lcom/prineside/tdi2/screens/MainMenuScreen$4;

    invoke-direct {v7, v0}, Lcom/prineside/tdi2/screens/MainMenuScreen$4;-><init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V

    const-string v8, ""

    invoke-direct {v2, v8, v5, v7}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v2, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->h:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const-string v5, "main_menu_news_button"

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->h:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v10, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/4 v5, 0x4

    new-array v7, v5, [Lcom/badlogic/gdx/graphics/Color;

    new-instance v11, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v11, v15, v15, v15, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/4 v14, 0x0

    aput-object v11, v7, v14

    new-instance v11, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v11, v15, v15, v15, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/4 v13, 0x1

    aput-object v11, v7, v13

    new-instance v11, Lcom/badlogic/gdx/graphics/Color;

    const/4 v12, 0x0

    invoke-direct {v11, v15, v15, v15, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/4 v5, 0x2

    aput-object v11, v7, v5

    new-instance v11, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v11, v15, v15, v15, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    aput-object v11, v7, v4

    const/16 v11, 0x8

    new-array v12, v11, [F

    fill-array-data v12, :array_0

    invoke-direct {v2, v7, v12}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>([Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v10, v2}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/4 v2, 0x0

    const/4 v12, 0x0

    const/high16 v7, 0x43400000    # 192.0f

    const/high16 v16, 0x42b80000    # 92.0f

    move v11, v2

    const/4 v2, 0x0

    const/4 v4, 0x1

    move v13, v7

    const/4 v7, 0x0

    move/from16 v14, v16

    invoke-virtual/range {v9 .. v14}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v9, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->h:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v10, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v11

    const v12, 0x3f0f5c29    # 0.56f

    invoke-virtual {v11, v15, v15, v15, v12}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v11

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v13

    const v14, 0x3ecccccd    # 0.4f

    invoke-virtual {v13, v15, v15, v15, v14}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v13

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v14

    const v5, 0x3f47ae14    # 0.78f

    invoke-virtual {v14, v15, v15, v15, v5}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v14

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x2c2c2ccc

    invoke-direct {v5, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v9, v11, v13, v14, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v5, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->h:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "icon-book-opened"

    invoke-virtual {v9, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v19

    const/high16 v20, 0x41a80000    # 21.0f

    const/high16 v21, 0x41600000    # 14.0f

    const/high16 v22, 0x42800000    # 64.0f

    const/high16 v23, 0x42800000    # 64.0f

    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v23}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v5, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->h:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v25, 0x42da0000    # 109.0f

    const/high16 v26, 0x42480000    # 50.0f

    const/high16 v27, 0x42c80000    # 100.0f

    const/high16 v28, 0x41a00000    # 20.0f

    const/16 v29, 0x8

    move-object/from16 v24, v5

    invoke-virtual/range {v24 .. v29}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v11, 0x15

    invoke-virtual {v9, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v5, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v9, 0x42da0000    # 109.0f

    const/high16 v13, 0x41a00000    # 20.0f

    invoke-virtual {v5, v9, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v9, 0x42c80000    # 100.0f

    invoke-virtual {v5, v9, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v5, v15, v15, v15, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v5, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->h:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v14, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v5, v14}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v5, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v14, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->h:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v5, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v14, 0x42b80000    # 92.0f

    invoke-virtual {v5, v3, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v3, 0x41300000    # 11.0f

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x42100000    # 36.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v3, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    new-instance v6, Lcom/prineside/tdi2/screens/MainMenuScreen$5;

    invoke-direct {v6, v0}, Lcom/prineside/tdi2/screens/MainMenuScreen$5;-><init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V

    invoke-direct {v3, v8, v5, v6}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v3, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->i:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const-string v5, "main_menu_season_button"

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->i:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v5, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v6, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/4 v14, 0x4

    new-array v9, v14, [Lcom/badlogic/gdx/graphics/Color;

    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v15, v15, v15, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    aput-object v14, v9, v7

    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v15, v15, v15, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    aput-object v14, v9, v4

    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    const/4 v4, 0x0

    invoke-direct {v14, v15, v15, v15, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/16 v17, 0x2

    aput-object v14, v9, v17

    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v15, v15, v15, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/4 v4, 0x3

    aput-object v14, v9, v4

    const/16 v4, 0x8

    new-array v14, v4, [F

    fill-array-data v14, :array_1

    invoke-direct {v6, v9, v14}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>([Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v5, v6}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/high16 v25, 0x43400000    # 192.0f

    const/high16 v26, 0x42b80000    # 92.0f

    move-object/from16 v21, v3

    move-object/from16 v22, v5

    invoke-virtual/range {v21 .. v26}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->i:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    invoke-virtual {v5, v15, v15, v15, v12}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    const v9, 0x3ecccccd    # 0.4f

    invoke-virtual {v6, v15, v15, v15, v9}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v9

    const v14, 0x3f47ae14    # 0.78f

    invoke-virtual {v9, v15, v15, v15, v14}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v9

    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v3, v5, v6, v9, v14}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->i:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-leaf"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v22

    const/high16 v23, 0x41a80000    # 21.0f

    const/high16 v24, 0x41600000    # 14.0f

    const/high16 v25, 0x42800000    # 64.0f

    const/high16 v26, 0x42800000    # 64.0f

    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v26}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->i:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v31, 0x42da0000    # 109.0f

    const/high16 v32, 0x42480000    # 50.0f

    const/high16 v33, 0x42c80000    # 100.0f

    const/high16 v34, 0x41a00000    # 20.0f

    const/16 v35, 0x8

    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v35}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v3, v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v3, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v5, 0x42da0000    # 109.0f

    invoke-virtual {v3, v5, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-virtual {v3, v5, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v15, v15, v15, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->i:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v5, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v5, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->i:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x42b80000    # 92.0f

    const/high16 v6, 0x43960000    # 300.0f

    invoke-virtual {v3, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x42800000    # 64.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x42100000    # 36.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/screens/MainMenuScreen;->n()V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v6, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/prineside/tdi2/screens/MainMenuScreen$MenuButton;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "icon-music-player"

    invoke-virtual {v6, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v9, v9, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v14, "mainMenu_musicPlayerButton"

    invoke-virtual {v9, v14}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v14, Lcom/prineside/tdi2/screens/MainMenuScreen$7;

    invoke-direct {v14, v0}, Lcom/prineside/tdi2/screens/MainMenuScreen$7;-><init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V

    invoke-direct {v5, v7, v6, v9, v14}, Lcom/prineside/tdi2/screens/MainMenuScreen$MenuButton;-><init>(ZLcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    const-string v6, "main_menu_music_player_button"

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v6, 0x43060000    # 134.0f

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->ratingManager:Lcom/prineside/tdi2/managers/RatingManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/RatingManager;->shouldWeAskForReview()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto/16 :goto_0

    :cond_0
    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/SettingsManager;->isInDebugMode()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ratingManager "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->ratingManager:Lcom/prineside/tdi2/managers/RatingManager;

    iget v9, v9, Lcom/prineside/tdi2/managers/RatingManager;->showPromptAfterTime:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v14, Lcom/prineside/tdi2/enums/StatisticsType;->PRT:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v9, v14}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v13

    double-to-int v9, v13

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "MainMenuScreen"

    invoke-static {v9, v5}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v9, v9, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v5, v13, v14, v11}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    :cond_1
    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v9, "rate_this_game"

    invoke-virtual {v5, v9}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/high16 v9, 0x43800000    # 256.0f

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x18

    invoke-virtual {v11, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v11

    const-string v14, "."

    invoke-static {v5, v9, v11, v14}, Lcom/prineside/tdi2/utils/StringFormatter;->fitToWidth(Ljava/lang/CharSequence;FLcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v9, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v11, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    new-instance v13, Lcom/prineside/tdi2/screens/MainMenuScreen$8;

    invoke-direct {v13, v0}, Lcom/prineside/tdi2/screens/MainMenuScreen$8;-><init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V

    invoke-direct {v9, v5, v11, v13}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "icon-star"

    invoke-virtual {v5, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v31

    const/high16 v32, 0x42cc0000    # 102.0f

    const/high16 v33, 0x42380000    # 46.0f

    const/high16 v34, 0x42800000    # 64.0f

    const/high16 v35, 0x42800000    # 64.0f

    move-object/from16 v30, v9

    invoke-virtual/range {v30 .. v35}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/16 v31, 0x0

    const/high16 v32, 0x41980000    # 19.0f

    const/high16 v33, 0x43860000    # 268.0f

    const/high16 v34, 0x41900000    # 18.0f

    const/16 v35, 0x1

    invoke-virtual/range {v30 .. v35}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v5, Lcom/prineside/tdi2/utils/QuadDrawableStack;

    new-instance v11, Lcom/badlogic/gdx/utils/Array;

    const/4 v13, 0x2

    new-array v14, v13, [Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    new-instance v13, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    new-instance v6, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    new-array v12, v4, [F

    fill-array-data v12, :array_2

    invoke-direct {v6, v2, v12}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/high16 v34, 0x43030000    # 131.0f

    const/high16 v35, 0x42fc0000    # 126.0f

    move-object/from16 v30, v13

    move-object/from16 v31, v6

    invoke-direct/range {v30 .. v35}, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;FFFF)V

    aput-object v13, v14, v7

    new-instance v6, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    new-instance v12, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-array v13, v4, [F

    fill-array-data v13, :array_3

    invoke-direct {v12, v2, v13}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v38, 0x43030000    # 131.0f

    const/16 v39, 0x0

    const/high16 v40, 0x43030000    # 131.0f

    const/high16 v41, 0x43000000    # 128.0f

    move-object/from16 v36, v6

    move-object/from16 v37, v12

    invoke-direct/range {v36 .. v41}, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;FFFF)V

    const/4 v2, 0x1

    aput-object v6, v14, v2

    invoke-direct {v11, v14}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    invoke-direct {v5, v11}, Lcom/prineside/tdi2/utils/QuadDrawableStack;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    const/high16 v32, 0x40400000    # 3.0f

    const/high16 v33, 0x40400000    # 3.0f

    const/high16 v34, 0x43830000    # 262.0f

    const/high16 v35, 0x43000000    # 128.0f

    move-object/from16 v30, v9

    move-object/from16 v31, v5

    invoke-virtual/range {v30 .. v35}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    const v6, 0x3f0f5c29    # 0.56f

    invoke-virtual {v5, v15, v15, v15, v6}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    const v11, 0x3ecccccd    # 0.4f

    invoke-virtual {v6, v15, v15, v15, v11}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    const v11, 0x3f47ae14    # 0.78f

    invoke-virtual {v2, v15, v15, v15, v11}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    new-instance v11, Lcom/badlogic/gdx/graphics/Color;

    const v12, 0x2c2c2ccc

    invoke-direct {v11, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v9, v5, v6, v2, v11}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v5, 0x43860000    # 268.0f

    const/high16 v6, 0x43060000    # 134.0f

    invoke-virtual {v2, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :goto_0
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/prineside/tdi2/screens/MainMenuScreen$MenuButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-tools"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v9, "mainMenu_settingsButton"

    invoke-virtual {v6, v9}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/prineside/tdi2/screens/MainMenuScreen$9;

    invoke-direct {v9, v0}, Lcom/prineside/tdi2/screens/MainMenuScreen$9;-><init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V

    const/4 v11, 0x1

    invoke-direct {v2, v11, v5, v6, v9}, Lcom/prineside/tdi2/screens/MainMenuScreen$MenuButton;-><init>(ZLcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v5, 0x43060000    # 134.0f

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "mainMenu_handbookButton"

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/prineside/tdi2/screens/MainMenuScreen$MenuButton;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "icon-book-closed"

    invoke-virtual {v6, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    new-instance v9, Lcom/prineside/tdi2/screens/MainMenuScreen$10;

    invoke-direct {v9, v0}, Lcom/prineside/tdi2/screens/MainMenuScreen$10;-><init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V

    invoke-direct {v5, v7, v6, v2, v9}, Lcom/prineside/tdi2/screens/MainMenuScreen$MenuButton;-><init>(ZLcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v5, 0x43060000    # 134.0f

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/prineside/tdi2/screens/MainMenuScreen$MenuButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-info-square"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v9, "mainMenu_aboutButton"

    invoke-virtual {v6, v9}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/prineside/tdi2/screens/MainMenuScreen$11;

    invoke-direct {v9, v0}, Lcom/prineside/tdi2/screens/MainMenuScreen$11;-><init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V

    const/4 v11, 0x1

    invoke-direct {v2, v11, v5, v6, v9}, Lcom/prineside/tdi2/screens/MainMenuScreen$MenuButton;-><init>(ZLcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x43060000    # 134.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const-string v3, "MM-layout-bottomCenter"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x43ab0000    # 342.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v3, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v9, "receive_server_items_button"

    invoke-virtual {v6, v9}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v11, 0x1e

    invoke-virtual {v9, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    new-instance v11, Lcom/prineside/tdi2/screens/MainMenuScreen$12;

    invoke-direct {v11, v0}, Lcom/prineside/tdi2/screens/MainMenuScreen$12;-><init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V

    invoke-direct {v3, v6, v9, v11}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v3, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->j:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->j:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/16 v31, 0x0

    const/high16 v32, 0x42000000    # 32.0f

    const/high16 v33, 0x43a70000    # 334.0f

    const/high16 v34, 0x41d80000    # 27.0f

    const/16 v35, 0x1

    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v35}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->j:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v11, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v12, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v6, v9, v11, v12}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->j:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v9, Lcom/prineside/tdi2/utils/QuadDrawableStack;

    new-instance v11, Lcom/badlogic/gdx/utils/Array;

    const/4 v13, 0x2

    new-array v14, v13, [Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    new-instance v13, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    new-instance v15, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-array v5, v4, [F

    fill-array-data v5, :array_4

    invoke-direct {v15, v12, v5}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/high16 v34, 0x42fe0000    # 127.0f

    const/high16 v35, 0x42a00000    # 80.0f

    move-object/from16 v30, v13

    move-object/from16 v31, v15

    invoke-direct/range {v30 .. v35}, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;FFFF)V

    aput-object v13, v14, v7

    new-instance v5, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    new-instance v13, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-array v15, v4, [F

    fill-array-data v15, :array_5

    invoke-direct {v13, v12, v15}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v38, 0x42fe0000    # 127.0f

    const/16 v39, 0x0

    const/high16 v40, 0x42fe0000    # 127.0f

    const/high16 v41, 0x429a0000    # 77.0f

    move-object/from16 v36, v5

    move-object/from16 v37, v13

    invoke-direct/range {v36 .. v41}, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;FFFF)V

    const/4 v13, 0x1

    aput-object v5, v14, v13

    invoke-direct {v11, v14}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    invoke-direct {v9, v11}, Lcom/prineside/tdi2/utils/QuadDrawableStack;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    const/high16 v32, 0x42200000    # 40.0f

    const/high16 v34, 0x437e0000    # 254.0f

    move-object/from16 v30, v3

    move-object/from16 v31, v9

    invoke-virtual/range {v30 .. v35}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->j:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v5, 0x43a70000    # 334.0f

    const/high16 v9, 0x42a00000    # 80.0f

    invoke-virtual {v3, v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->j:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v9, 0x41800000    # 16.0f

    invoke-virtual {v3, v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->j:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->center()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x42a00000    # 80.0f

    const/high16 v9, 0x43ab0000    # 342.0f

    invoke-virtual {v3, v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v5, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v9, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v11, Lcom/badlogic/gdx/graphics/Color;

    const/16 v13, 0xa0

    invoke-direct {v11, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v13, v4, [F

    fill-array-data v13, :array_6

    invoke-direct {v9, v11, v13}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v5, v9}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    invoke-direct {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v5, 0x42200000    # 40.0f

    const/high16 v9, 0x42940000    # 74.0f

    invoke-virtual {v3, v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v5, 0x437e0000    # 254.0f

    const/high16 v9, 0x42580000    # 54.0f

    invoke-virtual {v3, v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->j:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x15

    invoke-virtual {v5, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v3, v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v5, 0x42b80000    # 92.0f

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v5, 0x41a80000    # 21.0f

    const/high16 v9, 0x43ab0000    # 342.0f

    invoke-virtual {v3, v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v5, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->j:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "count-bubble"

    invoke-virtual {v9, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v9, 0x41e30a3e    # 28.380001f

    const v11, 0x42015c29    # 32.34f

    invoke-virtual {v5, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v9, 0x43898000    # 275.0f

    const/high16 v11, 0x42dc0000    # 110.0f

    invoke-virtual {v5, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->j:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v5, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v9, Lcom/prineside/tdi2/screens/MainMenuScreen$13;

    invoke-direct {v9, v0, v3}, Lcom/prineside/tdi2/screens/MainMenuScreen$13;-><init>(Lcom/prineside/tdi2/screens/MainMenuScreen;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)V

    invoke-interface {v5, v9}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v3

    sget-object v5, Lcom/prineside/tdi2/enums/DifficultyMode;->ENDLESS_I:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-ne v3, v5, :cond_2

    const/16 v3, 0x96

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v9}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v9

    sget-object v11, Lcom/prineside/tdi2/enums/GameValueType;->ENDLESS_MODE_DIFFICULTY:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v9, v11}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v13

    double-to-float v9, v13

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float v9, v9, v13

    invoke-static {v9}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v9

    if-eq v9, v3, :cond_2

    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v14}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v14, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v15, 0x43ab0000    # 342.0f

    invoke-virtual {v14, v15, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v13

    invoke-virtual {v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v13

    invoke-virtual {v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->center()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v13

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v13, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v13

    const/high16 v7, 0x42f00000    # 120.0f

    invoke-virtual {v13, v15, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v15, v15, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "difficulty"

    invoke-virtual {v15, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyModeDiffMultiplier(Lcom/prineside/tdi2/enums/DifficultyMode;)I

    move-result v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v15, 0x18

    invoke-virtual {v13, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v13

    invoke-direct {v7, v4, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v13, 0x428c0000    # 70.0f

    invoke-virtual {v7, v4, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x43ab0000    # 342.0f

    const/high16 v13, 0x41a00000    # 20.0f

    invoke-virtual {v7, v4, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v4, 0x0

    const v13, 0x3f0f5c29    # 0.56f

    invoke-virtual {v7, v4, v4, v4, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v14, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v15, v15, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "difficulty"

    invoke-virtual {v15, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyModeDiffMultiplier(Lcom/prineside/tdi2/enums/DifficultyMode;)I

    move-result v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v15, 0x18

    invoke-virtual {v13, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v13

    invoke-direct {v4, v3, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v3, 0x42900000    # 72.0f

    const/4 v13, 0x0

    invoke-virtual {v4, v13, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v3, 0x43ab0000    # 342.0f

    const/high16 v13, 0x41a00000    # 20.0f

    invoke-virtual {v4, v3, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v14, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v15, 0x96

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    move-object/from16 v32, v1

    const/16 v1, 0x15

    invoke-virtual {v15, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v15

    invoke-direct {v3, v13, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v1, 0x3f0f5c29    # 0.56f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v3, v13, v13, v13, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v13, 0x42100000    # 36.0f

    invoke-virtual {v3, v1, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v13, 0x41a00000    # 20.0f

    invoke-virtual {v3, v1, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x15

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v8

    invoke-direct {v1, v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v3, 0x3f0f5c29    # 0.56f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v1, v8, v8, v8, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v3, 0x436e0000    # 238.0f

    const/high16 v8, 0x42100000    # 36.0f

    invoke-virtual {v1, v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v1, v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v14, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    const/high16 v34, 0x43ab0000    # 342.0f

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyModeDiffMultiplier(Lcom/prineside/tdi2/enums/DifficultyMode;)I

    move-result v3

    int-to-float v3, v3

    const v5, 0x3c23d70a    # 0.01f

    mul-float v3, v3, v5

    float-to-double v8, v3

    const-wide/high16 v37, 0x3ff8000000000000L    # 1.5

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v39

    new-instance v3, Lcom/prineside/tdi2/screens/MainMenuScreen$14;

    invoke-direct {v3, v0, v4, v7}, Lcom/prineside/tdi2/screens/MainMenuScreen$14;-><init>(Lcom/prineside/tdi2/screens/MainMenuScreen;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)V

    move-object/from16 v33, v1

    move-wide/from16 v35, v8

    move-object/from16 v41, v3

    invoke-direct/range {v33 .. v41}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;-><init>(FDDDLcom/prineside/tdi2/utils/ObjectRetriever;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->setNotifyOnDrag(Z)V

    const/high16 v3, 0x42a00000    # 80.0f

    const/high16 v4, 0x43ab0000    # 342.0f

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v14, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_1

    :cond_2
    move-object/from16 v32, v1

    :goto_1
    new-instance v1, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyName(Lcom/prineside/tdi2/enums/DifficultyMode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    new-instance v5, Lcom/prineside/tdi2/screens/MainMenuScreen$15;

    invoke-direct {v5, v0}, Lcom/prineside/tdi2/screens/MainMenuScreen$15;-><init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V

    invoke-direct {v1, v3, v4, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    const/16 v34, 0x0

    const/high16 v35, 0x42540000    # 53.0f

    const/high16 v36, 0x43ab0000    # 342.0f

    const/high16 v37, 0x41d80000    # 27.0f

    const/16 v38, 0x1

    move-object/from16 v33, v1

    invoke-virtual/range {v33 .. v38}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->center()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x42f00000    # 120.0f

    const/high16 v4, 0x43ab0000    # 342.0f

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "game_mode"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v3, 0x3f0f5c29    # 0.56f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v4, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v3, 0x41c00000    # 24.0f

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v3, 0x41a80000    # 21.0f

    const/high16 v4, 0x43ab0000    # 342.0f

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v2, Lcom/prineside/tdi2/screens/MainMenuScreen$26;->a:[I

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    const v3, 0x3f0f5c29    # 0.56f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v4, v4, v3}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {v3, v4, v4, v4, v5}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    const v7, 0x3f47ae14    # 0.78f

    invoke-virtual {v5, v4, v4, v4, v7}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5, v12}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v2, Lcom/prineside/tdi2/utils/QuadDrawableStack;

    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    const/4 v4, 0x4

    new-array v5, v4, [Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    new-instance v4, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    new-instance v7, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/16 v8, 0x8

    new-array v9, v8, [F

    fill-array-data v9, :array_7

    invoke-direct {v7, v12, v9}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/16 v35, 0x0

    const/high16 v36, 0x41400000    # 12.0f

    const/high16 v37, 0x41980000    # 19.0f

    const/high16 v38, 0x42d40000    # 106.0f

    move-object/from16 v33, v4

    move-object/from16 v34, v7

    invoke-direct/range {v33 .. v38}, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;FFFF)V

    const/4 v7, 0x0

    aput-object v4, v5, v7

    new-instance v4, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    new-instance v7, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/16 v8, 0x8

    new-array v9, v8, [F

    fill-array-data v9, :array_8

    invoke-direct {v7, v12, v9}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v35, 0x41a00000    # 20.0f

    const/16 v36, 0x0

    const/high16 v37, 0x43030000    # 131.0f

    const/high16 v38, 0x42ea0000    # 117.0f

    move-object/from16 v33, v4

    move-object/from16 v34, v7

    invoke-direct/range {v33 .. v38}, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;FFFF)V

    const/4 v7, 0x1

    aput-object v4, v5, v7

    new-instance v4, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    new-instance v7, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/16 v8, 0x8

    new-array v9, v8, [F

    fill-array-data v9, :array_9

    invoke-direct {v7, v12, v9}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v35, 0x43170000    # 151.0f

    move-object/from16 v33, v4

    move-object/from16 v34, v7

    invoke-direct/range {v33 .. v38}, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;FFFF)V

    const/4 v7, 0x2

    aput-object v4, v5, v7

    new-instance v4, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    new-instance v7, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/16 v8, 0x8

    new-array v9, v8, [F

    fill-array-data v9, :array_a

    invoke-direct {v7, v12, v9}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const v35, 0x438d8000    # 283.0f

    const/high16 v36, 0x41400000    # 12.0f

    const/high16 v37, 0x41980000    # 19.0f

    const/high16 v38, 0x42d40000    # 106.0f

    move-object/from16 v33, v4

    move-object/from16 v34, v7

    invoke-direct/range {v33 .. v38}, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;FFFF)V

    const/4 v7, 0x3

    aput-object v4, v5, v7

    invoke-direct {v3, v5}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lcom/prineside/tdi2/utils/QuadDrawableStack;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    const/high16 v35, 0x41a00000    # 20.0f

    const/16 v36, 0x0

    const/high16 v37, 0x43970000    # 302.0f

    const/high16 v38, 0x42ec0000    # 118.0f

    move-object/from16 v33, v1

    move-object/from16 v34, v2

    invoke-virtual/range {v33 .. v38}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    goto/16 :goto_2

    :cond_3
    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    const v4, 0x3f0f5c29    # 0.56f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5, v5, v5, v4}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v4, v5, v5, v5, v7}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    const v7, 0x3f47ae14    # 0.78f

    invoke-virtual {v2, v5, v5, v5, v7}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {v1, v3, v4, v2, v12}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v2, Lcom/prineside/tdi2/utils/QuadDrawableStack;

    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    const/4 v4, 0x6

    new-array v4, v4, [Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    new-instance v5, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    new-instance v7, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/16 v8, 0x8

    new-array v9, v8, [F

    fill-array-data v9, :array_b

    invoke-direct {v7, v12, v9}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/16 v35, 0x0

    const/high16 v36, 0x41600000    # 14.0f

    const/high16 v37, 0x41980000    # 19.0f

    const/high16 v38, 0x42d40000    # 106.0f

    move-object/from16 v33, v5

    move-object/from16 v34, v7

    invoke-direct/range {v33 .. v38}, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;FFFF)V

    const/4 v7, 0x0

    aput-object v5, v4, v7

    new-instance v5, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    new-instance v7, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/16 v8, 0x8

    new-array v9, v8, [F

    fill-array-data v9, :array_c

    invoke-direct {v7, v12, v9}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v35, 0x41a00000    # 20.0f

    const/high16 v36, 0x41400000    # 12.0f

    move-object/from16 v33, v5

    move-object/from16 v34, v7

    invoke-direct/range {v33 .. v38}, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;FFFF)V

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-instance v5, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    new-instance v7, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/16 v8, 0x8

    new-array v9, v8, [F

    fill-array-data v9, :array_d

    invoke-direct {v7, v12, v9}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v35, 0x42200000    # 40.0f

    const/16 v36, 0x0

    const/high16 v37, 0x43030000    # 131.0f

    const/high16 v38, 0x42ea0000    # 117.0f

    move-object/from16 v33, v5

    move-object/from16 v34, v7

    invoke-direct/range {v33 .. v38}, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;FFFF)V

    const/4 v7, 0x2

    aput-object v5, v4, v7

    new-instance v5, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    new-instance v7, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/16 v8, 0x8

    new-array v9, v8, [F

    fill-array-data v9, :array_e

    invoke-direct {v7, v12, v9}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v35, 0x432b0000    # 171.0f

    move-object/from16 v33, v5

    move-object/from16 v34, v7

    invoke-direct/range {v33 .. v38}, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;FFFF)V

    const/4 v7, 0x3

    aput-object v5, v4, v7

    new-instance v5, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    new-instance v7, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/16 v8, 0x8

    new-array v9, v8, [F

    fill-array-data v9, :array_f

    invoke-direct {v7, v12, v9}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const v35, 0x43978000    # 303.0f

    const/high16 v36, 0x41400000    # 12.0f

    const/high16 v37, 0x41980000    # 19.0f

    const/high16 v38, 0x42d40000    # 106.0f

    move-object/from16 v33, v5

    move-object/from16 v34, v7

    invoke-direct/range {v33 .. v38}, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;FFFF)V

    const/4 v7, 0x4

    aput-object v5, v4, v7

    const/4 v5, 0x5

    new-instance v7, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    new-instance v8, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/16 v9, 0x8

    new-array v10, v9, [F

    fill-array-data v10, :array_10

    invoke-direct {v8, v12, v10}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const v35, 0x43a18000    # 323.0f

    const/high16 v36, 0x41600000    # 14.0f

    move-object/from16 v33, v7

    move-object/from16 v34, v8

    invoke-direct/range {v33 .. v38}, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;FFFF)V

    aput-object v7, v4, v5

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lcom/prineside/tdi2/utils/QuadDrawableStack;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/high16 v37, 0x43ab0000    # 342.0f

    const/high16 v38, 0x42f00000    # 120.0f

    move-object/from16 v33, v1

    move-object/from16 v34, v2

    invoke-virtual/range {v33 .. v38}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    const v3, 0x3f0f5c29    # 0.56f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v4, v4, v3}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {v3, v4, v4, v4, v5}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    const v7, 0x3f47ae14    # 0.78f

    invoke-virtual {v5, v4, v4, v4, v7}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5, v12}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v2, Lcom/prineside/tdi2/utils/QuadDrawableStack;

    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    const/4 v4, 0x2

    new-array v5, v4, [Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    new-instance v4, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    new-instance v7, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/16 v8, 0x8

    new-array v9, v8, [F

    fill-array-data v9, :array_11

    invoke-direct {v7, v12, v9}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/high16 v37, 0x43030000    # 131.0f

    const/high16 v38, 0x42ea0000    # 117.0f

    move-object/from16 v33, v4

    move-object/from16 v34, v7

    invoke-direct/range {v33 .. v38}, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;FFFF)V

    const/4 v7, 0x0

    aput-object v4, v5, v7

    new-instance v4, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    new-instance v7, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/16 v8, 0x8

    new-array v9, v8, [F

    fill-array-data v9, :array_12

    invoke-direct {v7, v12, v9}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v35, 0x43030000    # 131.0f

    move-object/from16 v33, v4

    move-object/from16 v34, v7

    invoke-direct/range {v33 .. v38}, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;FFFF)V

    const/4 v7, 0x1

    aput-object v4, v5, v7

    invoke-direct {v3, v5}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lcom/prineside/tdi2/utils/QuadDrawableStack;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    const/high16 v35, 0x42200000    # 40.0f

    const/high16 v37, 0x43830000    # 262.0f

    move-object/from16 v33, v1

    move-object/from16 v34, v2

    invoke-virtual/range {v33 .. v38}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    :goto_2
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const-string v2, "MM-layout-bottomRight"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    move-object/from16 v2, v32

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->right()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "daily_quest"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    new-instance v5, Lcom/prineside/tdi2/screens/MainMenuScreen$16;

    invoke-direct {v5, v0}, Lcom/prineside/tdi2/screens/MainMenuScreen$16;-><init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v2, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->c:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v3, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v4, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/4 v5, 0x4

    new-array v7, v5, [Lcom/badlogic/gdx/graphics/Color;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v9, v9, v9, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/4 v10, 0x0

    aput-object v5, v7, v10

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v9, v9, v9, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/4 v8, 0x1

    aput-object v5, v7, v8

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v9, v9, v9, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/4 v8, 0x2

    aput-object v5, v7, v8

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v9, v9, v9, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/4 v8, 0x3

    aput-object v5, v7, v8

    const/16 v5, 0x8

    new-array v8, v5, [F

    fill-array-data v8, :array_13

    invoke-direct {v4, v7, v8}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>([Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v3, v4}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/high16 v34, 0x42d80000    # 108.0f

    const/16 v35, 0x0

    const/high16 v36, 0x43400000    # 192.0f

    const/high16 v37, 0x42b80000    # 92.0f

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    invoke-virtual/range {v32 .. v37}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v2, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->c:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    const v4, 0x3f0f5c29    # 0.56f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5, v5, v5, v4}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v4, v5, v5, v5, v7}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    const v8, 0x3f47ae14    # 0.78f

    invoke-virtual {v7, v5, v5, v5, v8}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v8, 0x2c2c2ccc

    invoke-direct {v5, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v2, v3, v4, v7, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v2, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->c:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "icon-clock"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v33

    const/high16 v34, 0x43560000    # 214.0f

    const/high16 v35, 0x41600000    # 14.0f

    const/high16 v36, 0x42800000    # 64.0f

    const/high16 v37, 0x42800000    # 64.0f

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v37}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v2, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->c:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v39, 0x42b40000    # 90.0f

    const/high16 v40, 0x42480000    # 50.0f

    const/high16 v41, 0x42c80000    # 100.0f

    const/high16 v42, 0x41a00000    # 20.0f

    const/16 v43, 0x10

    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v43}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v3, 0x43c80000    # 400.0f

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v3, -0x3cae0000    # -210.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->c:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v3, 0x42b80000    # 92.0f

    const/high16 v4, 0x43960000    # 300.0f

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->c:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v5, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/screens/MainMenuScreen;->m()V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->c:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x42100000    # 36.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->right()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "daily_loot"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    new-instance v5, Lcom/prineside/tdi2/screens/MainMenuScreen$17;

    invoke-direct {v5, v0}, Lcom/prineside/tdi2/screens/MainMenuScreen$17;-><init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    new-instance v3, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v4, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/badlogic/gdx/graphics/Color;

    new-instance v7, Lcom/badlogic/gdx/graphics/Color;

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v7, v9, v9, v9, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/4 v10, 0x0

    aput-object v7, v5, v10

    new-instance v7, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v9, v9, v9, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/4 v8, 0x1

    aput-object v7, v5, v8

    new-instance v7, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v9, v9, v9, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/4 v8, 0x2

    aput-object v7, v5, v8

    new-instance v7, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v9, v9, v9, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/4 v8, 0x3

    aput-object v7, v5, v8

    const/16 v7, 0x8

    new-array v8, v7, [F

    fill-array-data v8, :array_14

    invoke-direct {v4, v5, v8}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>([Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v3, v4}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/high16 v34, 0x42d80000    # 108.0f

    const/16 v35, 0x0

    const/high16 v36, 0x43400000    # 192.0f

    const/high16 v37, 0x42b80000    # 92.0f

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    invoke-virtual/range {v32 .. v37}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    const v4, 0x3f0f5c29    # 0.56f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5, v5, v5, v4}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v4, v5, v5, v5, v7}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    const v8, 0x3f47ae14    # 0.78f

    invoke-virtual {v7, v5, v5, v5, v8}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v8, 0x2c2c2ccc

    invoke-direct {v5, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v2, v3, v4, v7, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "icon-calendar"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v33

    const/high16 v34, 0x43560000    # 214.0f

    const/high16 v35, 0x41600000    # 14.0f

    const/high16 v36, 0x42800000    # 64.0f

    const/high16 v37, 0x42800000    # 64.0f

    invoke-virtual/range {v32 .. v37}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v33, 0x42b40000    # 90.0f

    const/high16 v34, 0x42480000    # 50.0f

    const/high16 v35, 0x42c80000    # 100.0f

    const/high16 v36, 0x41a00000    # 20.0f

    const/16 v37, 0x10

    invoke-virtual/range {v32 .. v37}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->dailyQuestManager:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/DailyQuestManager;->getDailyLootCurrentQuest()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_resetQuests"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "daily_loot_quest_reset_quests"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getRegularQuestById(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevelQuestConfig;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v5}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->getTitle(ZZ)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "level"

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/prineside/tdi2/BasicLevelQuestConfig;->level:Lcom/prineside/tdi2/BasicLevel;

    iget-object v3, v3, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x15

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v4, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v4, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v3, 0x3f0f5c29    # 0.56f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v5, v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/16 v3, 0x10

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->dailyQuestManager:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/DailyQuestManager;->isTodayDailyLootQuestCompleted()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "main-menu-check-outline"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v4, 0x42400000    # 48.0f

    const/high16 v5, 0x42400000    # 48.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v4, 0x43780000    # 248.0f

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_4

    :cond_6
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "count-bubble"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v4, 0x42010000    # 32.25f

    const/high16 v5, 0x42130000    # 36.75f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v4, 0x43888000    # 273.0f

    const/high16 v5, 0x427c0000    # 63.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const v4, 0x3f4ccccd    # 0.8f

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v4

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v4

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :goto_4
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42b80000    # 92.0f

    const/high16 v5, 0x43960000    # 300.0f

    invoke-virtual {v3, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42100000    # 36.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->right()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v1, Lcom/prineside/tdi2/screens/MainMenuScreen$MenuButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "icon-triangle-right"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "mainMenu_continueButton"

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/prineside/tdi2/screens/MainMenuScreen$18;

    invoke-direct {v7, v0}, Lcom/prineside/tdi2/screens/MainMenuScreen$18;-><init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V

    const/4 v8, 0x0

    invoke-direct {v1, v8, v4, v5, v7}, Lcom/prineside/tdi2/screens/MainMenuScreen$MenuButton;-><init>(ZLcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/prineside/tdi2/systems/GameStateSystem;->savedGameExists()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v1, v8}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    :cond_7
    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v4, 0x43060000    # 134.0f

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "mainMenu_newGameButton"

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v4, 0x43800000    # 256.0f

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x18

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v5

    const-string v8, "."

    invoke-static {v1, v4, v5, v8}, Lcom/prineside/tdi2/utils/StringFormatter;->fitToWidth(Ljava/lang/CharSequence;FLcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v4, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    new-instance v7, Lcom/prineside/tdi2/screens/MainMenuScreen$19;

    invoke-direct {v7, v0}, Lcom/prineside/tdi2/screens/MainMenuScreen$19;-><init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V

    invoke-direct {v4, v1, v5, v7}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "icon-joystick"

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v33

    const/high16 v34, 0x42cc0000    # 102.0f

    const/high16 v35, 0x42380000    # 46.0f

    const/high16 v36, 0x42800000    # 64.0f

    const/high16 v37, 0x42800000    # 64.0f

    move-object/from16 v32, v4

    invoke-virtual/range {v32 .. v37}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/16 v33, 0x0

    const/high16 v34, 0x41980000    # 19.0f

    const/high16 v35, 0x43860000    # 268.0f

    const/high16 v36, 0x41900000    # 18.0f

    const/16 v37, 0x1

    invoke-virtual/range {v32 .. v37}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v1, Lcom/prineside/tdi2/utils/QuadDrawableStack;

    new-instance v5, Lcom/badlogic/gdx/utils/Array;

    const/4 v7, 0x2

    new-array v8, v7, [Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    new-instance v7, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    new-instance v9, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/16 v10, 0x8

    new-array v11, v10, [F

    fill-array-data v11, :array_15

    invoke-direct {v9, v12, v11}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/high16 v36, 0x43030000    # 131.0f

    const/high16 v37, 0x42fc0000    # 126.0f

    move-object/from16 v32, v7

    move-object/from16 v33, v9

    invoke-direct/range {v32 .. v37}, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;FFFF)V

    const/4 v9, 0x0

    aput-object v7, v8, v9

    new-instance v7, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    new-instance v9, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/16 v10, 0x8

    new-array v10, v10, [F

    fill-array-data v10, :array_16

    invoke-direct {v9, v12, v10}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v34, 0x43030000    # 131.0f

    const/high16 v37, 0x43000000    # 128.0f

    move-object/from16 v32, v7

    move-object/from16 v33, v9

    invoke-direct/range {v32 .. v37}, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;FFFF)V

    const/4 v9, 0x1

    aput-object v7, v8, v9

    invoke-direct {v5, v8}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    invoke-direct {v1, v5}, Lcom/prineside/tdi2/utils/QuadDrawableStack;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    const/high16 v34, 0x40400000    # 3.0f

    const/high16 v35, 0x40400000    # 3.0f

    const/high16 v36, 0x43830000    # 262.0f

    move-object/from16 v32, v4

    move-object/from16 v33, v1

    invoke-virtual/range {v32 .. v37}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    const v5, 0x3f0f5c29    # 0.56f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v1, v7, v7, v7, v5}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v5, v7, v7, v7, v8}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    const v8, 0x3f47ae14    # 0.78f

    invoke-virtual {v6, v7, v7, v7, v8}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    new-instance v7, Lcom/badlogic/gdx/graphics/Color;

    const v8, 0x2c2c2ccc

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v4, v1, v5, v6, v7}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const-string v1, "main_menu_new_game_button"

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v4, 0x43860000    # 268.0f

    const/high16 v5, 0x43060000    # 134.0f

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v1, Lcom/prineside/tdi2/screens/MainMenuScreen$MenuButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "icon-statistics"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "mainMenu_statisticsButton"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/prineside/tdi2/screens/MainMenuScreen$20;

    invoke-direct {v6, v0}, Lcom/prineside/tdi2/screens/MainMenuScreen$20;-><init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V

    const/4 v7, 0x1

    invoke-direct {v1, v7, v4, v5, v6}, Lcom/prineside/tdi2/screens/MainMenuScreen$MenuButton;-><init>(ZLcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x43060000    # 134.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/AchievementManager;->countAchievementsToRedeem()I

    move-result v4

    if-lez v4, :cond_8

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "count-bubble"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v6, 0x422c0000    # 43.0f

    const/high16 v7, 0x42440000    # 49.0f

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, 0x42c20000    # 97.0f

    const/high16 v7, 0x42b60000    # 91.0f

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v6

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v6

    invoke-static {v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x15

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v4, 0x422c0000    # 43.0f

    const/high16 v6, 0x42440000    # 49.0f

    invoke-virtual {v5, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v4, 0x42c20000    # 97.0f

    const/high16 v6, 0x42ba0000    # 93.0f

    invoke-virtual {v5, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_8
    new-instance v1, Lcom/prineside/tdi2/screens/MainMenuScreen$MenuButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "icon-research"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "mainMenu_researchesButton"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/prineside/tdi2/screens/MainMenuScreen$21;

    invoke-direct {v6, v0}, Lcom/prineside/tdi2/screens/MainMenuScreen$21;-><init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V

    const/4 v7, 0x0

    invoke-direct {v1, v7, v4, v5, v6}, Lcom/prineside/tdi2/screens/MainMenuScreen$MenuButton;-><init>(ZLcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x43060000    # 134.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/ResearchManager;->updateAfforableResearchesCount()V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/ResearchManager;->getAfforableResearchesCount()I

    move-result v4

    if-lez v4, :cond_9

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "count-bubble"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v6, 0x422c0000    # 43.0f

    const/high16 v7, 0x42440000    # 49.0f

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, 0x42c20000    # 97.0f

    const/high16 v7, 0x42b60000    # 91.0f

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v6

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v6

    invoke-static {v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x15

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v4, 0x422c0000    # 43.0f

    const/high16 v6, 0x42440000    # 49.0f

    invoke-virtual {v5, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v4, 0x42c20000    # 97.0f

    const/high16 v6, 0x42ba0000    # 93.0f

    invoke-virtual {v5, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_9
    new-instance v1, Lcom/prineside/tdi2/screens/MainMenuScreen$MenuButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "icon-edit"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "mainMenu_mapEditorButton"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v1, v7, v4, v5, v6}, Lcom/prineside/tdi2/screens/MainMenuScreen$MenuButton;-><init>(ZLcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x43060000    # 134.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->userMapManager:Lcom/prineside/tdi2/managers/UserMapManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/UserMapManager;->isMapEditorAvailable()Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v3, Lcom/prineside/tdi2/screens/MainMenuScreen$22;

    invoke-direct {v3, v0}, Lcom/prineside/tdi2/screens/MainMenuScreen$22;-><init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setClickHandler(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_a
    new-instance v3, Lcom/prineside/tdi2/screens/MainMenuScreen$23;

    invoke-direct {v3, v0}, Lcom/prineside/tdi2/screens/MainMenuScreen$23;-><init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setClickHandler(Ljava/lang/Runnable;)V

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P900:Lcom/badlogic/gdx/graphics/Color;

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    const v7, 0x3f0f5c29    # 0.56f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v8, v8, v8, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    :goto_5
    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->h:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->c:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->i:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->j:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/MainMenuScreen;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/screens/MainMenuScreen;->l()V

    return-void

    nop

    :array_0
    .array-data 4
        0x40800000    # 4.0f
        0x0
        0x0
        0x42b80000    # 92.0f
        0x43400000    # 192.0f
        0x42b00000    # 88.0f
        0x43400000    # 192.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x40800000    # 4.0f
        0x42b80000    # 92.0f
        0x43400000    # 192.0f
        0x42b80000    # 92.0f
        0x43400000    # 192.0f
        0x40800000    # 4.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x42f80000    # 124.0f
        0x43030000    # 131.0f
        0x42fc0000    # 126.0f
        0x43030000    # 131.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x42fc0000    # 126.0f
        0x43030000    # 131.0f
        0x43000000    # 128.0f
        0x42fe0000    # 127.0f
        0x40800000    # 4.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x41500000    # 13.0f
        0x0
        0x42a00000    # 80.0f
        0x42fe0000    # 127.0f
        0x429a0000    # 77.0f
        0x42fe0000    # 127.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x429a0000    # 77.0f
        0x42fe0000    # 127.0f
        0x42940000    # 74.0f
        0x42fe0000    # 127.0f
        0x41500000    # 13.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x40c00000    # 6.0f
        0x0
        0x42400000    # 48.0f
        0x437e0000    # 254.0f
        0x42580000    # 54.0f
        0x437e0000    # 254.0f
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x0
        0x42d40000    # 106.0f
        0x41700000    # 15.0f
        0x42d20000    # 105.0f
        0x41980000    # 19.0f
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x40800000    # 4.0f
        0x41400000    # 12.0f
        0x0
        0x42ea0000    # 117.0f
        0x43030000    # 131.0f
        0x42d20000    # 105.0f
        0x43030000    # 131.0f
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x0
        0x0
        0x42d20000    # 105.0f
        0x43030000    # 131.0f
        0x42ea0000    # 117.0f
        0x42fe0000    # 127.0f
        0x41400000    # 12.0f
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x0
        0x40800000    # 4.0f
        0x42d20000    # 105.0f
        0x41980000    # 19.0f
        0x42d40000    # 106.0f
        0x41700000    # 15.0f
        0x40000000    # 2.0f
    .end array-data

    :array_b
    .array-data 4
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x0
        0x42d40000    # 106.0f
        0x41700000    # 15.0f
        0x42d20000    # 105.0f
        0x41980000    # 19.0f
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x40800000    # 4.0f
        0x40000000    # 2.0f
        0x0
        0x42d40000    # 106.0f
        0x41700000    # 15.0f
        0x42d20000    # 105.0f
        0x41980000    # 19.0f
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x40800000    # 4.0f
        0x41400000    # 12.0f
        0x0
        0x42ea0000    # 117.0f
        0x43030000    # 131.0f
        0x42d20000    # 105.0f
        0x43030000    # 131.0f
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x0
        0x0
        0x42d20000    # 105.0f
        0x43030000    # 131.0f
        0x42ea0000    # 117.0f
        0x42fe0000    # 127.0f
        0x41400000    # 12.0f
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x0
        0x40800000    # 4.0f
        0x42d20000    # 105.0f
        0x41980000    # 19.0f
        0x42d40000    # 106.0f
        0x41700000    # 15.0f
        0x40000000    # 2.0f
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x0
        0x40800000    # 4.0f
        0x42d20000    # 105.0f
        0x41980000    # 19.0f
        0x42d40000    # 106.0f
        0x41700000    # 15.0f
        0x40000000    # 2.0f
    .end array-data

    :array_11
    .array-data 4
        0x40800000    # 4.0f
        0x41400000    # 12.0f
        0x0
        0x42ea0000    # 117.0f
        0x43030000    # 131.0f
        0x42d20000    # 105.0f
        0x43030000    # 131.0f
        0x0
    .end array-data

    :array_12
    .array-data 4
        0x0
        0x0
        0x0
        0x42d20000    # 105.0f
        0x43030000    # 131.0f
        0x42ea0000    # 117.0f
        0x42fe0000    # 127.0f
        0x41400000    # 12.0f
    .end array-data

    :array_13
    .array-data 4
        0x0
        0x0
        0x0
        0x42b00000    # 88.0f
        0x43400000    # 192.0f
        0x42b80000    # 92.0f
        0x433c0000    # 188.0f
        0x0
    .end array-data

    :array_14
    .array-data 4
        0x0
        0x40800000    # 4.0f
        0x0
        0x42b80000    # 92.0f
        0x433c0000    # 188.0f
        0x42b80000    # 92.0f
        0x43400000    # 192.0f
        0x0
    .end array-data

    :array_15
    .array-data 4
        0x0
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x42f80000    # 124.0f
        0x43030000    # 131.0f
        0x42fc0000    # 126.0f
        0x43030000    # 131.0f
        0x0
    .end array-data

    :array_16
    .array-data 4
        0x0
        0x0
        0x0
        0x42fc0000    # 126.0f
        0x43030000    # 131.0f
        0x43000000    # 128.0f
        0x42fe0000    # 127.0f
        0x40800000    # 4.0f
    .end array-data
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->mainMenuUiScene:Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->rebuildIfNeeded()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->mainMenuUiScene:Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->getContents()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-void
.end method

.method public final m()V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->c:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "time_left"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v2, 0x3f0f5c29    # 0.56f

    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v3, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "loading..."

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v3, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v0, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->dailyQuestManager:Lcom/prineside/tdi2/managers/DailyQuestManager;

    new-instance v1, Lcom/prineside/tdi2/screens/z;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/screens/z;-><init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/DailyQuestManager;->getCurrentDayLevel(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method

.method public final n()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->h:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->h:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->h:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "loading..."

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen;->i:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    new-instance v1, Lcom/prineside/tdi2/screens/MainMenuScreen$24;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/screens/MainMenuScreen$24;-><init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AuthManager;->getNews(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method
