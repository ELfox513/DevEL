.class public Lcom/prineside/tdi2/systems/MapEditorSystem;
.super Lcom/prineside/tdi2/GameSystem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;,
        Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener;,
        Lcom/prineside/tdi2/systems/MapEditorSystem$_MapListener;
    }
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

.field public b:Lcom/prineside/tdi2/Item;

.field public basicLevel:Lcom/prineside/tdi2/BasicLevel;

.field public basicLevelEditor:Z

.field public d:I

.field public final draggingItemScreenPos:Lcom/badlogic/gdx/math/Vector2;

.field public final draggingShift:Lcom/badlogic/gdx/math/Vector2;

.field public final k:Lcom/prineside/tdi2/systems/MapEditorSystem$_MapListener;

.field public final listeners:Lcom/prineside/tdi2/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prineside/tdi2/ListenerGroup<",
            "Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener;",
            ">;"
        }
    .end annotation
.end field

.field public mapChanged:Z

.field public userMap:Lcom/prineside/tdi2/UserMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/GameSystem;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;->VIEW:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->a:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->draggingShift:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->draggingItemScreenPos:Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->basicLevelEditor:Z

    new-instance v0, Lcom/prineside/tdi2/ListenerGroup;

    const-class v1, Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    const/4 v0, -0x1

    iput v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->d:I

    new-instance v0, Lcom/prineside/tdi2/systems/MapEditorSystem$_MapListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/systems/MapEditorSystem$_MapListener;-><init>(Lcom/prineside/tdi2/systems/MapEditorSystem;Lcom/prineside/tdi2/systems/MapEditorSystem$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->k:Lcom/prineside/tdi2/systems/MapEditorSystem$_MapListener;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/systems/MapEditorSystem;Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->e(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/systems/MapEditorSystem;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MapEditorSystem;->f()V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/systems/MapEditorSystem;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic d(Lcom/prineside/tdi2/systems/MapEditorSystem;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/MapEditorSystem;->i()V

    return-void
.end method

.method private synthetic e(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;)V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->basicLevelEditor:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->basicLevel:Lcom/prineside/tdi2/BasicLevel;

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/ScreenManager;->startNewBasicLevel(Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->userMap:Lcom/prineside/tdi2/UserMap;

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/ScreenManager;->startNewUserLevel(Lcom/prineside/tdi2/UserMap;Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;)V

    :goto_0
    return-void
.end method

.method private synthetic f()V
    .locals 3

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->basicLevelEditor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->basicLevel:Lcom/prineside/tdi2/BasicLevel;

    invoke-virtual {v0}, Lcom/prineside/tdi2/BasicLevel;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->userMap:Lcom/prineside/tdi2/UserMap;

    iget-object v0, v0, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    :goto_0
    iget-object v0, v0, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/TargetTile;->isDisableAbilities()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AbilityManager;->isAnyAbilityOpened()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->abilitySelectionOverlay:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    new-instance v1, Lcom/prineside/tdi2/systems/MapEditorSystem$2;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/systems/MapEditorSystem$2;-><init>(Lcom/prineside/tdi2/systems/MapEditorSystem;)V

    new-instance v2, Lcom/prineside/tdi2/systems/f;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/systems/f;-><init>(Lcom/prineside/tdi2/systems/MapEditorSystem;)V

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->show(Ljava/lang/Runnable;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->userMap:Lcom/prineside/tdi2/UserMap;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/ScreenManager;->startNewUserLevel(Lcom/prineside/tdi2/UserMap;Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;)V

    :goto_2
    return-void
.end method

.method private synthetic g(Ljava/lang/Runnable;)V
    .locals 3

    invoke-static {}, Lcom/prineside/tdi2/systems/GameStateSystem;->savedGameExists()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "saved_game_will_be_lost_confirm"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/prineside/tdi2/systems/MapEditorSystem$3;

    invoke-direct {v2, p0, p1}, Lcom/prineside/tdi2/systems/MapEditorSystem$3;-><init>(Lcom/prineside/tdi2/systems/MapEditorSystem;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->k:Lcom/prineside/tdi2/systems/MapEditorSystem$_MapListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->remove(Lcom/prineside/tdi2/GameListener;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->b:Lcom/prineside/tdi2/Item;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->clear()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->userMap:Lcom/prineside/tdi2/UserMap;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->basicLevel:Lcom/prineside/tdi2/BasicLevel;

    invoke-super {p0}, Lcom/prineside/tdi2/GameSystem;->dispose()V

    return-void
.end method

.method public expandMap(Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expand "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MapEditorSystem"

    invoke-static {v2, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->LEFT:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    const/16 v2, 0x20

    if-eq p1, v1, :cond_0

    sget-object v3, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->RIGHT:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    if-ne p1, v3, :cond_1

    :cond_0
    iget v3, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-lt v3, v2, :cond_1

    return-void

    :cond_1
    sget-object v3, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->DOWN:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    if-eq p1, v3, :cond_2

    sget-object v4, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->UP:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    if-ne p1, v4, :cond_3

    :cond_2
    iget v4, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-lt v4, v2, :cond_3

    return-void

    :cond_3
    sget-object v2, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->RIGHT:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    const/4 v4, 0x1

    if-ne p1, v2, :cond_4

    iget p1, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    add-int/2addr p1, v4

    iget v1, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/Map;->setSize(II)V

    goto :goto_0

    :cond_4
    sget-object v5, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->UP:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    if-ne p1, v5, :cond_5

    iget p1, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    iget v1, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    add-int/2addr v1, v4

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/Map;->setSize(II)V

    goto :goto_0

    :cond_5
    if-ne p1, v1, :cond_6

    iget p1, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    add-int/2addr p1, v4

    iget v1, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/Map;->setSize(II)V

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/systems/MapEditorSystem;->shiftMap(Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;)V

    goto :goto_0

    :cond_6
    if-ne p1, v3, :cond_7

    iget p1, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    iget v1, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    add-int/2addr v1, v4

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/Map;->setSize(II)V

    invoke-virtual {p0, v5}, Lcom/prineside/tdi2/systems/MapEditorSystem;->shiftMap(Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;)V

    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {p1, v4}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->forceTilesRedraw(Z)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/Map;->rebuildPathfindingIfNeeded()V

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1, v4}, Lcom/prineside/tdi2/systems/MapSystem;->showAllPathTraces(Z)V

    iput-boolean v4, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->mapChanged:Z

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v0

    :goto_1
    if-ge p1, v0, :cond_8

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener;

    invoke-interface {v1}, Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener;->mapSizeChanged()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public finishDragging()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener;

    iget-object v3, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->b:Lcom/prineside/tdi2/Item;

    invoke-interface {v2, v3}, Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener;->stoppedDragging(Lcom/prineside/tdi2/Item;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->b:Lcom/prineside/tdi2/Item;

    return-void
.end method

.method public getDraggingItem()Lcom/prineside/tdi2/Item;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->b:Lcom/prineside/tdi2/Item;

    return-object v0
.end method

.method public getMode()Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->a:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    return-object v0
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    const-string v0, "MapEditor"

    return-object v0
.end method

.method public goToPreviousScreen()V
    .locals 4

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->mapChanged:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "edited_map_save_confirm"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/prineside/tdi2/systems/MapEditorSystem$4;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/systems/MapEditorSystem$4;-><init>(Lcom/prineside/tdi2/systems/MapEditorSystem;)V

    new-instance v3, Lcom/prineside/tdi2/systems/MapEditorSystem$5;

    invoke-direct {v3, p0}, Lcom/prineside/tdi2/systems/MapEditorSystem$5;-><init>(Lcom/prineside/tdi2/systems/MapEditorSystem;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->basicLevelEditor:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->goToLevelSelectScreen()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->goToCustomMapSelectScreen()V

    :goto_0
    return-void
.end method

.method public final h(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object v0

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/systems/MapSystem;->unregisterGate(Lcom/prineside/tdi2/Gate;)V

    :cond_1
    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p4, p4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p4}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p4

    const/4 v1, 0x0

    invoke-virtual {p4, p1, p2, p3, v1}, Lcom/prineside/tdi2/Map;->setGate(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p4}, Lcom/prineside/tdi2/Gate;->cloneGate()Lcom/prineside/tdi2/Gate;

    move-result-object p4

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/prineside/tdi2/Map;->setGate(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1, p4}, Lcom/prineside/tdi2/systems/MapSystem;->registerGate(Lcom/prineside/tdi2/Gate;)V

    :goto_0
    iget-object p4, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p4}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 p4, 0x0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    :goto_1
    if-ge p4, v1, :cond_3

    iget-object v2, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, p4}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener;

    invoke-interface {v2, p1, p2, p3, v0}, Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener;->mapGateChanged(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public final i()V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Map;->hasTileThatAllowsWalkablePlatforms()Z

    move-result v0

    iget v1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->d:I

    if-eq v1, v0, :cond_3

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_pathRendering:Lcom/prineside/tdi2/systems/PathRenderingSystem;

    xor-int/lit8 v2, v0, 0x1

    iput-boolean v2, v1, Lcom/prineside/tdi2/systems/PathRenderingSystem;->dontDrawOverPlatforms:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Tile;

    aget-object v3, v3, v2

    iget-object v4, v3, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v5, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v4, v5, :cond_1

    check-cast v3, Lcom/prineside/tdi2/tiles/PlatformTile;

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, v3, Lcom/prineside/tdi2/tiles/PlatformTile;->walkableEnabled:Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->d:I

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Map;->rebuildPathfinding()V

    :cond_3
    return-void
.end method

.method public postSetup()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->k:Lcom/prineside/tdi2/systems/MapEditorSystem$_MapListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/systems/MapEditorSystem$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/systems/MapEditorSystem$1;-><init>(Lcom/prineside/tdi2/systems/MapEditorSystem;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reduceMap(Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->LEFT:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    sget-object v3, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->RIGHT:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    if-ne p1, v3, :cond_1

    :cond_0
    iget v3, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ne v3, v2, :cond_1

    return-void

    :cond_1
    sget-object v3, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->DOWN:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    if-eq p1, v3, :cond_2

    sget-object v4, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->UP:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    if-ne p1, v4, :cond_3

    :cond_2
    iget v4, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ne v4, v2, :cond_3

    return-void

    :cond_3
    sget-object v4, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->RIGHT:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    if-ne p1, v4, :cond_4

    invoke-virtual {p0, v4}, Lcom/prineside/tdi2/systems/MapEditorSystem;->shiftMap(Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;)V

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->shiftMap(Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;)V

    iget p1, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    sub-int/2addr p1, v2

    iget v1, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/Map;->setSize(II)V

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->UP:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    if-ne p1, v4, :cond_5

    invoke-virtual {p0, v4}, Lcom/prineside/tdi2/systems/MapEditorSystem;->shiftMap(Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;)V

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/systems/MapEditorSystem;->shiftMap(Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;)V

    iget p1, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    iget v1, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/Map;->setSize(II)V

    goto :goto_0

    :cond_5
    if-ne p1, v1, :cond_6

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->shiftMap(Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;)V

    iget p1, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    sub-int/2addr p1, v2

    iget v1, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/Map;->setSize(II)V

    goto :goto_0

    :cond_6
    if-ne p1, v3, :cond_7

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/systems/MapEditorSystem;->shiftMap(Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;)V

    iget p1, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    iget v1, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/Map;->setSize(II)V

    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->forceTilesRedraw(Z)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/Map;->rebuildPathfindingIfNeeded()V

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/systems/MapSystem;->showAllPathTraces(Z)V

    iput-boolean v2, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->mapChanged:Z

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v0

    :goto_1
    if-ge p1, v0, :cond_8

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener;

    invoke-interface {v1}, Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener;->mapSizeChanged()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public saveMap()V
    .locals 3

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->basicLevelEditor:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->basicLevel:Lcom/prineside/tdi2/BasicLevel;

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/BasicLevelManager;->setMap(Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/Map;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->userMap:Lcom/prineside/tdi2/UserMap;

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Map;->cpy()Lcom/prineside/tdi2/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->userMapManager:Lcom/prineside/tdi2/managers/UserMapManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UserMapManager;->save()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->save()V

    :goto_0
    return-void
.end method

.method public setDraggingItemScreenPos(FF)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->draggingItemScreenPos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    iget-object p2, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->draggingShift:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0, p2}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener;

    invoke-interface {v0}, Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener;->draggingPositionChanged()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public setMapGate(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object v0

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/systems/MapSystem;->unregisterGate(Lcom/prineside/tdi2/Gate;)V

    :cond_1
    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p4, p4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p4}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p4

    const/4 v1, 0x0

    invoke-virtual {p4, p1, p2, p3, v1}, Lcom/prineside/tdi2/Map;->setGate(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p4}, Lcom/prineside/tdi2/Gate;->cloneGate()Lcom/prineside/tdi2/Gate;

    move-result-object p4

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/prineside/tdi2/Map;->setGate(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1, p4}, Lcom/prineside/tdi2/systems/MapSystem;->registerGate(Lcom/prineside/tdi2/Gate;)V

    :goto_0
    iget-object p4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p4, p4, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    const/4 v1, 0x1

    invoke-virtual {p4, v1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->forceTilesRedraw(Z)V

    iget-object p4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p4, p4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p4}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p4

    invoke-virtual {p4}, Lcom/prineside/tdi2/Map;->updateCache()V

    iget-object p4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p4, p4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p4}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p4

    invoke-virtual {p4}, Lcom/prineside/tdi2/Map;->rebuildPathfindingIfNeeded()V

    iget-object p4, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p4}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 p4, 0x0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v2

    :goto_1
    if-ge p4, v2, :cond_3

    iget-object v3, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3, p4}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener;

    invoke-interface {v3, p1, p2, p3, v0}, Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener;->mapGateChanged(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    iput-boolean v1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->mapChanged:Z

    return-void
.end method

.method public setMapTile(IILcom/prineside/tdi2/Tile;)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/systems/MapSystem;->unregisterTile(Lcom/prineside/tdi2/Tile;)V

    :cond_1
    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p3}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p3, p1, p2, v1}, Lcom/prineside/tdi2/Map;->setTile(IILcom/prineside/tdi2/Tile;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/prineside/tdi2/Tile;->cloneTile()Lcom/prineside/tdi2/Tile;

    move-result-object p3

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/prineside/tdi2/Map;->setTile(IILcom/prineside/tdi2/Tile;)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1, p3}, Lcom/prineside/tdi2/systems/MapSystem;->registerTile(Lcom/prineside/tdi2/Tile;)V

    :goto_0
    iget-object p3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->forceTilesRedraw(Z)V

    iget-object p3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p3}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p3

    invoke-virtual {p3}, Lcom/prineside/tdi2/Map;->updateCache()V

    iget-object p3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p3}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p3

    invoke-virtual {p3}, Lcom/prineside/tdi2/Map;->rebuildPathfindingIfNeeded()V

    iget-object p3, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p3}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 p3, 0x0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v2

    :goto_1
    if-ge p3, v2, :cond_3

    iget-object v3, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3, p3}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener;

    invoke-interface {v3, p1, p2, v0}, Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener;->mapTileChanged(IILcom/prineside/tdi2/Tile;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    iput-boolean v1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->mapChanged:Z

    return-void
.end method

.method public setMapTileLite(IILcom/prineside/tdi2/Tile;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/systems/MapSystem;->unregisterTile(Lcom/prineside/tdi2/Tile;)V

    :cond_1
    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p3}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p3, p1, p2, v1}, Lcom/prineside/tdi2/Map;->setTile(IILcom/prineside/tdi2/Tile;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/prineside/tdi2/Tile;->cloneTile()Lcom/prineside/tdi2/Tile;

    move-result-object p3

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/prineside/tdi2/Map;->setTile(IILcom/prineside/tdi2/Tile;)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1, p3}, Lcom/prineside/tdi2/systems/MapSystem;->registerTile(Lcom/prineside/tdi2/Tile;)V

    :goto_0
    iget-object p3, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p3}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 p3, 0x0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    :goto_1
    if-ge p3, v1, :cond_3

    iget-object v2, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, p3}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener;

    invoke-interface {v2, p1, p2, v0}, Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener;->mapTileChanged(IILcom/prineside/tdi2/Tile;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public setMode(Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->a:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->b:Lcom/prineside/tdi2/Item;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/MapEditorSystem;->finishDragging()V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->a:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->a:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 p1, 0x0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    :goto_0
    if-ge p1, v1, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener;

    invoke-interface {v2, v0}, Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener;->modeChanged(Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    :cond_2
    return-void
.end method

.method public setup()V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->draggingShift:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v1, -0x3cc00000    # -192.0f

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    :cond_1
    return-void
.end method

.method public shiftMap(Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;)V
    .locals 11

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/systems/MapEditorSystem$6;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1d

    const/4 v4, 0x2

    if-eq p1, v4, :cond_13

    const/4 v5, 0x3

    if-eq p1, v5, :cond_a

    const/4 v5, 0x4

    if-eq p1, v5, :cond_0

    goto/16 :goto_1c

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget v5, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge p1, v5, :cond_3

    iget v5, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    sub-int/2addr v5, v3

    invoke-virtual {v0, p1, v5}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    invoke-virtual {v6, v5, v3}, Lcom/prineside/tdi2/systems/InventorySystem;->addTile(Lcom/prineside/tdi2/Tile;I)Lcom/prineside/tdi2/ItemStack;

    :cond_1
    iget v5, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    sub-int/2addr v5, v4

    :goto_1
    if-ltz v5, :cond_2

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v0, p1, v5}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v7

    invoke-virtual {p0, p1, v6, v7}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMapTileLite(IILcom/prineside/tdi2/Tile;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v2, v1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMapTileLite(IILcom/prineside/tdi2/Tile;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iget v4, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-gt p1, v4, :cond_26

    sget-object v4, Lcom/prineside/tdi2/Gate$Side;->values:[Lcom/prineside/tdi2/Gate$Side;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    iget v8, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    invoke-virtual {v0, p1, v8, v7}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v8, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v8, v8, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    invoke-virtual {v8, v7, v3}, Lcom/prineside/tdi2/systems/InventorySystem;->addGate(Lcom/prineside/tdi2/Gate;I)Lcom/prineside/tdi2/ItemStack;

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    iget v4, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    sub-int/2addr v4, v3

    sget-object v5, Lcom/prineside/tdi2/Gate$Side;->LEFT:Lcom/prineside/tdi2/Gate$Side;

    invoke-virtual {v0, p1, v4, v5}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v6, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    invoke-virtual {v6, v4, v3}, Lcom/prineside/tdi2/systems/InventorySystem;->addGate(Lcom/prineside/tdi2/Gate;I)Lcom/prineside/tdi2/ItemStack;

    iget v4, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    sub-int/2addr v4, v3

    invoke-virtual {p0, p1, v4, v5, v1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->h(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V

    :cond_6
    iget v4, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    sub-int/2addr v4, v3

    :goto_4
    if-ltz v4, :cond_8

    sget-object v5, Lcom/prineside/tdi2/Gate$Side;->values:[Lcom/prineside/tdi2/Gate$Side;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v6, :cond_7

    aget-object v8, v5, v7

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v0, p1, v4, v8}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object v10

    invoke-virtual {p0, p1, v9, v8, v10}, Lcom/prineside/tdi2/systems/MapEditorSystem;->h(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_8
    sget-object v4, Lcom/prineside/tdi2/Gate$Side;->values:[Lcom/prineside/tdi2/Gate$Side;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_9

    aget-object v7, v4, v6

    invoke-virtual {p0, p1, v2, v7, v1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->h(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_a
    const/4 p1, 0x0

    :goto_7
    iget v4, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge p1, v4, :cond_d

    invoke-virtual {v0, p1, v2}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v5, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    invoke-virtual {v5, v4, v3}, Lcom/prineside/tdi2/systems/InventorySystem;->addTile(Lcom/prineside/tdi2/Tile;I)Lcom/prineside/tdi2/ItemStack;

    :cond_b
    const/4 v4, 0x1

    :goto_8
    iget v5, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ge v4, v5, :cond_c

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v0, p1, v4}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v6

    invoke-virtual {p0, p1, v5, v6}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMapTileLite(IILcom/prineside/tdi2/Tile;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_c
    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, p1, v5, v1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMapTileLite(IILcom/prineside/tdi2/Tile;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_d
    const/4 p1, 0x0

    :goto_9
    iget v4, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-gt p1, v4, :cond_26

    sget-object v4, Lcom/prineside/tdi2/Gate$Side;->values:[Lcom/prineside/tdi2/Gate$Side;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v5, :cond_f

    aget-object v7, v4, v6

    invoke-virtual {v0, p1, v2, v7}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object v7

    if-eqz v7, :cond_e

    iget-object v8, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v8, v8, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    invoke-virtual {v8, v7, v3}, Lcom/prineside/tdi2/systems/InventorySystem;->addGate(Lcom/prineside/tdi2/Gate;I)Lcom/prineside/tdi2/ItemStack;

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_f
    const/4 v4, 0x1

    :goto_b
    iget v5, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-gt v4, v5, :cond_11

    sget-object v5, Lcom/prineside/tdi2/Gate$Side;->values:[Lcom/prineside/tdi2/Gate$Side;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v6, :cond_10

    aget-object v8, v5, v7

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v0, p1, v4, v8}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object v10

    invoke-virtual {p0, p1, v9, v8, v10}, Lcom/prineside/tdi2/systems/MapEditorSystem;->h(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_11
    sget-object v4, Lcom/prineside/tdi2/Gate$Side;->values:[Lcom/prineside/tdi2/Gate$Side;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v5, :cond_12

    aget-object v7, v4, v6

    iget v8, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    invoke-virtual {p0, p1, v8, v7, v1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->h(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_12
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_13
    const/4 p1, 0x0

    :goto_e
    iget v5, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ge p1, v5, :cond_16

    iget v5, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    sub-int/2addr v5, v3

    invoke-virtual {v0, v5, p1}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v5

    if-eqz v5, :cond_14

    iget-object v6, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    invoke-virtual {v6, v5, v3}, Lcom/prineside/tdi2/systems/InventorySystem;->addTile(Lcom/prineside/tdi2/Tile;I)Lcom/prineside/tdi2/ItemStack;

    :cond_14
    iget v5, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    sub-int/2addr v5, v4

    :goto_f
    if-ltz v5, :cond_15

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v0, v5, p1}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v7

    invoke-virtual {p0, v6, p1, v7}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMapTileLite(IILcom/prineside/tdi2/Tile;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_f

    :cond_15
    invoke-virtual {p0, v2, p1, v1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMapTileLite(IILcom/prineside/tdi2/Tile;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_e

    :cond_16
    const/4 p1, 0x0

    :goto_10
    iget v4, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-gt p1, v4, :cond_26

    sget-object v4, Lcom/prineside/tdi2/Gate$Side;->values:[Lcom/prineside/tdi2/Gate$Side;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_11
    if-ge v6, v5, :cond_18

    aget-object v7, v4, v6

    iget v8, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    invoke-virtual {v0, v8, p1, v7}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object v7

    if-eqz v7, :cond_17

    iget-object v8, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v8, v8, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    invoke-virtual {v8, v7, v3}, Lcom/prineside/tdi2/systems/InventorySystem;->addGate(Lcom/prineside/tdi2/Gate;I)Lcom/prineside/tdi2/ItemStack;

    :cond_17
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_18
    iget v4, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    sub-int/2addr v4, v3

    sget-object v5, Lcom/prineside/tdi2/Gate$Side;->BOTTOM:Lcom/prineside/tdi2/Gate$Side;

    invoke-virtual {v0, v4, p1, v5}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object v4

    if-eqz v4, :cond_19

    iget-object v6, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    invoke-virtual {v6, v4, v3}, Lcom/prineside/tdi2/systems/InventorySystem;->addGate(Lcom/prineside/tdi2/Gate;I)Lcom/prineside/tdi2/ItemStack;

    iget v4, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    sub-int/2addr v4, v3

    invoke-virtual {p0, v4, p1, v5, v1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->h(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V

    :cond_19
    iget v4, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    sub-int/2addr v4, v3

    :goto_12
    if-ltz v4, :cond_1b

    sget-object v5, Lcom/prineside/tdi2/Gate$Side;->values:[Lcom/prineside/tdi2/Gate$Side;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_13
    if-ge v7, v6, :cond_1a

    aget-object v8, v5, v7

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v0, v4, p1, v8}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object v10

    invoke-virtual {p0, v9, p1, v8, v10}, Lcom/prineside/tdi2/systems/MapEditorSystem;->h(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_1a
    add-int/lit8 v4, v4, -0x1

    goto :goto_12

    :cond_1b
    sget-object v4, Lcom/prineside/tdi2/Gate$Side;->values:[Lcom/prineside/tdi2/Gate$Side;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_14
    if-ge v6, v5, :cond_1c

    aget-object v7, v4, v6

    invoke-virtual {p0, v2, p1, v7, v1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->h(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_1c
    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    :cond_1d
    const/4 p1, 0x0

    :goto_15
    iget v4, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ge p1, v4, :cond_20

    invoke-virtual {v0, v2, p1}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v4

    if-eqz v4, :cond_1e

    iget-object v5, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    invoke-virtual {v5, v4, v3}, Lcom/prineside/tdi2/systems/InventorySystem;->addTile(Lcom/prineside/tdi2/Tile;I)Lcom/prineside/tdi2/ItemStack;

    :cond_1e
    const/4 v4, 0x1

    :goto_16
    iget v5, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge v4, v5, :cond_1f

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v0, v4, p1}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v6

    invoke-virtual {p0, v5, p1, v6}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMapTileLite(IILcom/prineside/tdi2/Tile;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_1f
    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5, p1, v1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMapTileLite(IILcom/prineside/tdi2/Tile;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_15

    :cond_20
    const/4 p1, 0x0

    :goto_17
    iget v4, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-gt p1, v4, :cond_26

    sget-object v4, Lcom/prineside/tdi2/Gate$Side;->values:[Lcom/prineside/tdi2/Gate$Side;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_18
    if-ge v6, v5, :cond_22

    aget-object v7, v4, v6

    invoke-virtual {v0, v2, p1, v7}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object v7

    if-eqz v7, :cond_21

    iget-object v8, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v8, v8, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    invoke-virtual {v8, v7, v3}, Lcom/prineside/tdi2/systems/InventorySystem;->addGate(Lcom/prineside/tdi2/Gate;I)Lcom/prineside/tdi2/ItemStack;

    :cond_21
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_22
    const/4 v4, 0x1

    :goto_19
    iget v5, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-gt v4, v5, :cond_24

    sget-object v5, Lcom/prineside/tdi2/Gate$Side;->values:[Lcom/prineside/tdi2/Gate$Side;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1a
    if-ge v7, v6, :cond_23

    aget-object v8, v5, v7

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v0, v4, p1, v8}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object v10

    invoke-virtual {p0, v9, p1, v8, v10}, Lcom/prineside/tdi2/systems/MapEditorSystem;->h(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_24
    sget-object v4, Lcom/prineside/tdi2/Gate$Side;->values:[Lcom/prineside/tdi2/Gate$Side;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1b
    if-ge v6, v5, :cond_25

    aget-object v7, v4, v6

    iget v8, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    invoke-virtual {p0, v8, p1, v7, v1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->h(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_25
    add-int/lit8 p1, p1, 0x1

    goto :goto_17

    :cond_26
    :goto_1c
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {p1, v3}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->forceTilesRedraw(Z)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/Map;->rebuildPathfindingIfNeeded()V

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1, v3}, Lcom/prineside/tdi2/systems/MapSystem;->showAllPathTraces(Z)V

    iput-boolean v3, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->mapChanged:Z

    return-void
.end method

.method public startDraggingItem(Lcom/prineside/tdi2/Item;)Z
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->a:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    sget-object v1, Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;->DRAG:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    const/4 v2, 0x0

    const-string v3, "MapEditorSystem"

    if-eq v0, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->a:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", can\'t drag"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, p1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->b:Lcom/prineside/tdi2/Item;

    if-eqz v0, :cond_1

    const-string v0, "already dragging, canceling previous"

    invoke-static {v3, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/MapEditorSystem;->finishDragging()V

    :cond_1
    iput-object p1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->b:Lcom/prineside/tdi2/Item;

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result p1

    :goto_0
    if-ge v2, p1, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener;

    invoke-interface {v0}, Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener;->startedDragging()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    const/4 p1, 0x1

    return p1
.end method

.method public startMap()Z
    .locals 5

    const-string v0, "MapEditorSystem"

    const-string v1, "starting the map..."

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Map;->validate()V
    :try_end_0
    .catch Lcom/prineside/tdi2/Map$InvalidMapException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/MapEditorSystem;->saveMap()V

    new-instance v0, Lcom/prineside/tdi2/systems/d;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/systems/d;-><init>(Lcom/prineside/tdi2/systems/MapEditorSystem;)V

    new-instance v1, Lcom/prineside/tdi2/systems/e;

    invoke-direct {v1, p0, v0}, Lcom/prineside/tdi2/systems/e;-><init>(Lcom/prineside/tdi2/systems/MapEditorSystem;Ljava/lang/Runnable;)V

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener;

    invoke-interface {v4, v0}, Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener;->mapValidationFailed(Lcom/prineside/tdi2/Map$InvalidMapException;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return v2
.end method
