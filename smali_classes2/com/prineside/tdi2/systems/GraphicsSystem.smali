.class public Lcom/prineside/tdi2/systems/GraphicsSystem;
.super Lcom/prineside/tdi2/GameSystem;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/GraphicsSystem$_Game_StateSystemListener;,
        Lcom/prineside/tdi2/systems/GraphicsSystem$ScreenshotModeConfig;
    }
.end annotation


# instance fields
.field public _stateEditor:Lcom/prineside/tdi2/ui/components/GameStateEditor;

.field public _statisticsChart:Lcom/prineside/tdi2/ui/components/StatisticsChart;

.field public final a:Lcom/prineside/tdi2/systems/GraphicsSystem$_Game_StateSystemListener;

.field public abilityMenu:Lcom/prineside/tdi2/ui/components/AbilityMenu;

.field public bossTileMenu:Lcom/prineside/tdi2/ui/components/BossTileMenu;

.field public buildMenu:Lcom/prineside/tdi2/ui/components/BuildMenu;

.field public camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

.field public coreMenu:Lcom/prineside/tdi2/ui/components/CoreMenu;

.field public flyingItemsOverlay:Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;

.field public gameBackground:Lcom/prineside/tdi2/ui/actors/GameBackground;

.field public gameOverOverlay:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

.field public gameValueMenu:Lcom/prineside/tdi2/ui/components/GameValueMenu;

.field public gateMenu:Lcom/prineside/tdi2/ui/components/GateMenu;

.field public liveLeaderboard:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

.field public mainUi:Lcom/prineside/tdi2/ui/components/MainUi;

.field public minerMenu:Lcom/prineside/tdi2/ui/components/MinerMenu;

.field public modifierMenu:Lcom/prineside/tdi2/ui/components/ModifierMenu;

.field public newEnemyOverlay:Lcom/prineside/tdi2/ui/components/NewEnemyOverlay;

.field public panZoomTooltip:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;

.field public pauseMenu:Lcom/prineside/tdi2/ui/components/PauseMenu;

.field public questList:Lcom/prineside/tdi2/ui/components/QuestList;

.field public roadMenu:Lcom/prineside/tdi2/ui/components/RoadMenu;

.field public screenBorderGradient:Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;

.field public sideMenu:Lcom/prineside/tdi2/ui/actors/SideMenu;

.field public spawnMenu:Lcom/prineside/tdi2/ui/components/SpawnMenu;

.field public storylineMessages:Lcom/prineside/tdi2/ui/components/StorylineMessages;

.field public subtitles:Lcom/prineside/tdi2/ui/components/Subtitles;

.field public targetMenu:Lcom/prineside/tdi2/ui/components/TargetMenu;

.field public tooltip:Lcom/prineside/tdi2/ui/components/Tooltip;

.field public towerMenu:Lcom/prineside/tdi2/ui/components/TowerMenu;

.field public uiElementsEmphasizer:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

.field public xmMusicTrackMenu:Lcom/prineside/tdi2/ui/components/XmMusicTrackMenu;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/GameSystem;-><init>()V

    new-instance v0, Lcom/prineside/tdi2/systems/GraphicsSystem$_Game_StateSystemListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/systems/GraphicsSystem$_Game_StateSystemListener;-><init>(Lcom/prineside/tdi2/systems/GraphicsSystem;Lcom/prineside/tdi2/systems/GraphicsSystem$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->a:Lcom/prineside/tdi2/systems/GraphicsSystem$_Game_StateSystemListener;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/GameSystem;-><init>()V

    new-instance p1, Lcom/prineside/tdi2/systems/GraphicsSystem$_Game_StateSystemListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/prineside/tdi2/systems/GraphicsSystem$_Game_StateSystemListener;-><init>(Lcom/prineside/tdi2/systems/GraphicsSystem;Lcom/prineside/tdi2/systems/GraphicsSystem$1;)V

    iput-object p1, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->a:Lcom/prineside/tdi2/systems/GraphicsSystem$_Game_StateSystemListener;

    new-instance p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p1, v0, v1}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>(FF)V

    iput-object p1, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->gameBackground:Lcom/prineside/tdi2/ui/actors/GameBackground;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/GameBackground;->dispose()V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->screenBorderGradient:Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->pauseMenu:Lcom/prineside/tdi2/ui/components/PauseMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/PauseMenu;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->mainUi:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/MainUi;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->sideMenu:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->abilityMenu:Lcom/prineside/tdi2/ui/components/AbilityMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/AbilityMenu;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->towerMenu:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->roadMenu:Lcom/prineside/tdi2/ui/components/RoadMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/RoadMenu;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->modifierMenu:Lcom/prineside/tdi2/ui/components/ModifierMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/ModifierMenu;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->minerMenu:Lcom/prineside/tdi2/ui/components/MinerMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/MinerMenu;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->buildMenu:Lcom/prineside/tdi2/ui/components/BuildMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->spawnMenu:Lcom/prineside/tdi2/ui/components/SpawnMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/SpawnMenu;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->xmMusicTrackMenu:Lcom/prineside/tdi2/ui/components/XmMusicTrackMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/XmMusicTrackMenu;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->gateMenu:Lcom/prineside/tdi2/ui/components/GateMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/GateMenu;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->_statisticsChart:Lcom/prineside/tdi2/ui/components/StatisticsChart;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->dispose()V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->_stateEditor:Lcom/prineside/tdi2/ui/components/GameStateEditor;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/GameStateEditor;->dispose()V

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->questList:Lcom/prineside/tdi2/ui/components/QuestList;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/QuestList;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->liveLeaderboard:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->storylineMessages:Lcom/prineside/tdi2/ui/components/StorylineMessages;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/StorylineMessages;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->subtitles:Lcom/prineside/tdi2/ui/components/Subtitles;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/Subtitles;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->panZoomTooltip:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->flyingItemsOverlay:Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->uiElementsEmphasizer:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->newEnemyOverlay:Lcom/prineside/tdi2/ui/components/NewEnemyOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/NewEnemyOverlay;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->tooltip:Lcom/prineside/tdi2/ui/components/Tooltip;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/Tooltip;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->gameOverOverlay:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->gameBackground:Lcom/prineside/tdi2/ui/actors/GameBackground;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->screenBorderGradient:Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->pauseMenu:Lcom/prineside/tdi2/ui/components/PauseMenu;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->mainUi:Lcom/prineside/tdi2/ui/components/MainUi;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->questList:Lcom/prineside/tdi2/ui/components/QuestList;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->_statisticsChart:Lcom/prineside/tdi2/ui/components/StatisticsChart;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->_stateEditor:Lcom/prineside/tdi2/ui/components/GameStateEditor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->liveLeaderboard:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->abilityMenu:Lcom/prineside/tdi2/ui/components/AbilityMenu;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->sideMenu:Lcom/prineside/tdi2/ui/actors/SideMenu;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->towerMenu:Lcom/prineside/tdi2/ui/components/TowerMenu;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->roadMenu:Lcom/prineside/tdi2/ui/components/RoadMenu;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->modifierMenu:Lcom/prineside/tdi2/ui/components/ModifierMenu;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->minerMenu:Lcom/prineside/tdi2/ui/components/MinerMenu;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->buildMenu:Lcom/prineside/tdi2/ui/components/BuildMenu;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->spawnMenu:Lcom/prineside/tdi2/ui/components/SpawnMenu;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->targetMenu:Lcom/prineside/tdi2/ui/components/TargetMenu;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->bossTileMenu:Lcom/prineside/tdi2/ui/components/BossTileMenu;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->gameValueMenu:Lcom/prineside/tdi2/ui/components/GameValueMenu;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->coreMenu:Lcom/prineside/tdi2/ui/components/CoreMenu;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->xmMusicTrackMenu:Lcom/prineside/tdi2/ui/components/XmMusicTrackMenu;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->gateMenu:Lcom/prineside/tdi2/ui/components/GateMenu;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->storylineMessages:Lcom/prineside/tdi2/ui/components/StorylineMessages;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->subtitles:Lcom/prineside/tdi2/ui/components/Subtitles;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->panZoomTooltip:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->flyingItemsOverlay:Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->uiElementsEmphasizer:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->newEnemyOverlay:Lcom/prineside/tdi2/ui/components/NewEnemyOverlay;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->tooltip:Lcom/prineside/tdi2/ui/components/Tooltip;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->gameOverOverlay:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-super {p0}, Lcom/prineside/tdi2/GameSystem;->dispose()V

    return-void
.end method

.method public draw(F)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->towerMenu:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->towerMenu:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/components/TowerMenu;->draw(F)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->modifierMenu:Lcom/prineside/tdi2/ui/components/ModifierMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/ModifierMenu;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->modifierMenu:Lcom/prineside/tdi2/ui/components/ModifierMenu;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/components/ModifierMenu;->draw(F)V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->minerMenu:Lcom/prineside/tdi2/ui/components/MinerMenu;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/components/MinerMenu;->draw(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->mainUi:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/components/MainUi;->draw(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->abilityMenu:Lcom/prineside/tdi2/ui/components/AbilityMenu;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/components/AbilityMenu;->draw(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->targetMenu:Lcom/prineside/tdi2/ui/components/TargetMenu;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/components/TargetMenu;->draw(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->coreMenu:Lcom/prineside/tdi2/ui/components/CoreMenu;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/components/CoreMenu;->draw(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->subtitles:Lcom/prineside/tdi2/ui/components/Subtitles;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/components/Subtitles;->draw(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->_statisticsChart:Lcom/prineside/tdi2/ui/components/StatisticsChart;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->draw(F)V

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->_stateEditor:Lcom/prineside/tdi2/ui/components/GameStateEditor;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/components/GameStateEditor;->draw(F)V

    :cond_3
    return-void
.end method

.method public drawBackground(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->gameBackground:Lcom/prineside/tdi2/ui/actors/GameBackground;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/prineside/tdi2/ui/actors/GameBackground;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_0
    return-void
.end method

.method public fadeOutUi()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->mainUi:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/MainUi;->finalFadeOut()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->questList:Lcom/prineside/tdi2/ui/components/QuestList;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/QuestList;->finalFadeOut()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->liveLeaderboard:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->finalFadeOut()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->sideMenu:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->finalFadeOut()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->abilityMenu:Lcom/prineside/tdi2/ui/components/AbilityMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/AbilityMenu;->finalFadeOut()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->subtitles:Lcom/prineside/tdi2/ui/components/Subtitles;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/Subtitles;->finalFadeOut()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->_statisticsChart:Lcom/prineside/tdi2/ui/components/StatisticsChart;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->finalFadeOut()V

    :cond_0
    return-void
.end method

.method public getMainUi()Lcom/prineside/tdi2/ui/components/MainUi;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->mainUi:Lcom/prineside/tdi2/ui/components/MainUi;

    return-object v0
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    const-string v0, "Graphics"

    return-object v0
.end method

.method public postSetup()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->mainUi:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/MainUi;->postSetup()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->buildMenu:Lcom/prineside/tdi2/ui/components/BuildMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->postSetup()V

    return-void
.end method

.method public profileUpdate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setUiScreenshotMode(Lcom/prineside/tdi2/systems/GraphicsSystem$ScreenshotModeConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->mainUi:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/components/MainUi;->setUiScreenshotMode(Lcom/prineside/tdi2/systems/GraphicsSystem$ScreenshotModeConfig;)V

    return-void
.end method

.method public setup()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->a:Lcom/prineside/tdi2/systems/GraphicsSystem$_Game_StateSystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    new-instance v0, Lcom/prineside/tdi2/ui/components/PauseMenu;

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ui/components/PauseMenu;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->pauseMenu:Lcom/prineside/tdi2/ui/components/PauseMenu;

    new-instance v0, Lcom/prineside/tdi2/ui/components/MainUi;

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ui/components/MainUi;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->mainUi:Lcom/prineside/tdi2/ui/components/MainUi;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->BACKGROUND_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    new-instance v0, Lcom/prineside/tdi2/ui/actors/GameBackground;

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ui/actors/GameBackground;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->gameBackground:Lcom/prineside/tdi2/ui/actors/GameBackground;

    :cond_0
    new-instance v0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->screenBorderGradient:Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;

    new-instance v0, Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/actors/SideMenu;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->sideMenu:Lcom/prineside/tdi2/ui/actors/SideMenu;

    new-instance v0, Lcom/prineside/tdi2/ui/components/RoadMenu;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->sideMenu:Lcom/prineside/tdi2/ui/actors/SideMenu;

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {v0, v1, v4}, Lcom/prineside/tdi2/ui/components/RoadMenu;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->roadMenu:Lcom/prineside/tdi2/ui/components/RoadMenu;

    new-instance v0, Lcom/prineside/tdi2/ui/components/TowerMenu;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->sideMenu:Lcom/prineside/tdi2/ui/actors/SideMenu;

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {v0, v1, v4}, Lcom/prineside/tdi2/ui/components/TowerMenu;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->towerMenu:Lcom/prineside/tdi2/ui/components/TowerMenu;

    new-instance v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->sideMenu:Lcom/prineside/tdi2/ui/actors/SideMenu;

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {v0, v1, v4}, Lcom/prineside/tdi2/ui/components/ModifierMenu;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->modifierMenu:Lcom/prineside/tdi2/ui/components/ModifierMenu;

    new-instance v0, Lcom/prineside/tdi2/ui/components/MinerMenu;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->sideMenu:Lcom/prineside/tdi2/ui/actors/SideMenu;

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {v0, v1, v4}, Lcom/prineside/tdi2/ui/components/MinerMenu;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->minerMenu:Lcom/prineside/tdi2/ui/components/MinerMenu;

    new-instance v0, Lcom/prineside/tdi2/ui/components/BuildMenu;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->sideMenu:Lcom/prineside/tdi2/ui/actors/SideMenu;

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {v0, v1, v4}, Lcom/prineside/tdi2/ui/components/BuildMenu;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->buildMenu:Lcom/prineside/tdi2/ui/components/BuildMenu;

    new-instance v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->sideMenu:Lcom/prineside/tdi2/ui/actors/SideMenu;

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {v0, v1, v4}, Lcom/prineside/tdi2/ui/components/SpawnMenu;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->spawnMenu:Lcom/prineside/tdi2/ui/components/SpawnMenu;

    new-instance v0, Lcom/prineside/tdi2/ui/components/TargetMenu;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->sideMenu:Lcom/prineside/tdi2/ui/actors/SideMenu;

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {v0, v1, v4}, Lcom/prineside/tdi2/ui/components/TargetMenu;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->targetMenu:Lcom/prineside/tdi2/ui/components/TargetMenu;

    new-instance v0, Lcom/prineside/tdi2/ui/components/BossTileMenu;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->sideMenu:Lcom/prineside/tdi2/ui/actors/SideMenu;

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {v0, v1, v4}, Lcom/prineside/tdi2/ui/components/BossTileMenu;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->bossTileMenu:Lcom/prineside/tdi2/ui/components/BossTileMenu;

    new-instance v0, Lcom/prineside/tdi2/ui/components/CoreMenu;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->sideMenu:Lcom/prineside/tdi2/ui/actors/SideMenu;

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {v0, v1, v4}, Lcom/prineside/tdi2/ui/components/CoreMenu;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->coreMenu:Lcom/prineside/tdi2/ui/components/CoreMenu;

    new-instance v0, Lcom/prineside/tdi2/ui/components/GameValueMenu;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->sideMenu:Lcom/prineside/tdi2/ui/actors/SideMenu;

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {v0, v1, v4}, Lcom/prineside/tdi2/ui/components/GameValueMenu;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->gameValueMenu:Lcom/prineside/tdi2/ui/components/GameValueMenu;

    new-instance v0, Lcom/prineside/tdi2/ui/components/XmMusicTrackMenu;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->sideMenu:Lcom/prineside/tdi2/ui/actors/SideMenu;

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {v0, v1, v4}, Lcom/prineside/tdi2/ui/components/XmMusicTrackMenu;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->xmMusicTrackMenu:Lcom/prineside/tdi2/ui/components/XmMusicTrackMenu;

    new-instance v0, Lcom/prineside/tdi2/ui/components/GateMenu;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->sideMenu:Lcom/prineside/tdi2/ui/actors/SideMenu;

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {v0, v1, v4}, Lcom/prineside/tdi2/ui/components/GateMenu;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->gateMenu:Lcom/prineside/tdi2/ui/components/GateMenu;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "ui-tile-menu-background"

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v1, 0x44160000    # 600.0f

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->sideMenu:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ui/actors/SideMenu;->getBackgroundContainer()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->sideMenu:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->addOffscreenBackground()V

    new-instance v0, Lcom/prineside/tdi2/ui/components/QuestList;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/components/QuestList;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->questList:Lcom/prineside/tdi2/ui/components/QuestList;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->STATISTICS_CHART_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    new-instance v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ui/components/StatisticsChart;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->_statisticsChart:Lcom/prineside/tdi2/ui/components/StatisticsChart;

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->STATE_EDITOR_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_2

    new-instance v0, Lcom/prineside/tdi2/ui/components/GameStateEditor;

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ui/components/GameStateEditor;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->_stateEditor:Lcom/prineside/tdi2/ui/components/GameStateEditor;

    :cond_2
    new-instance v0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->liveLeaderboard:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    new-instance v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ui/components/AbilityMenu;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->abilityMenu:Lcom/prineside/tdi2/ui/components/AbilityMenu;

    new-instance v0, Lcom/prineside/tdi2/ui/components/StorylineMessages;

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ui/components/StorylineMessages;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->storylineMessages:Lcom/prineside/tdi2/ui/components/StorylineMessages;

    new-instance v0, Lcom/prineside/tdi2/ui/components/Subtitles;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/components/Subtitles;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->subtitles:Lcom/prineside/tdi2/ui/components/Subtitles;

    new-instance v0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->panZoomTooltip:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;

    new-instance v0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->flyingItemsOverlay:Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;

    new-instance v0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->uiElementsEmphasizer:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    new-instance v0, Lcom/prineside/tdi2/ui/components/NewEnemyOverlay;

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ui/components/NewEnemyOverlay;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->newEnemyOverlay:Lcom/prineside/tdi2/ui/components/NewEnemyOverlay;

    new-instance v0, Lcom/prineside/tdi2/ui/components/Tooltip;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/components/Tooltip;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->tooltip:Lcom/prineside/tdi2/ui/components/Tooltip;

    new-instance v0, Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GraphicsSystem;->gameOverOverlay:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    return-void
.end method
