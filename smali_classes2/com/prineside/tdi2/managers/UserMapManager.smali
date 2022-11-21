.class public Lcom/prineside/tdi2/managers/UserMapManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/UserMapManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/UserMapManager$Serializer;
    }
.end annotation


# instance fields
.field public final userMapsOrdered:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/UserMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/UserMap;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UserMapManager;->userMapsOrdered:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/UserMapManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/UserMapManager;->reload()V

    return-void
.end method


# virtual methods
.method public addUserMap(Ljava/lang/String;)Lcom/prineside/tdi2/UserMap;
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/UserMap;

    invoke-direct {v0, p1}, Lcom/prineside/tdi2/UserMap;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/UserMapManager;->userMapsOrdered:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/UserMapManager;->save()V

    return-object v0
.end method

.method public getDefaultBosses()[Lcom/prineside/tdi2/enums/BossType;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/enums/BossType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    sget-object v2, Lcom/prineside/tdi2/enums/EnemyType;->BROOT_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/EnemyManager;->isEnemyTypeNewForPlayer(Lcom/prineside/tdi2/enums/EnemyType;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/prineside/tdi2/enums/BossType;->BROOT:Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    sget-object v2, Lcom/prineside/tdi2/enums/EnemyType;->SNAKE_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/EnemyManager;->isEnemyTypeNewForPlayer(Lcom/prineside/tdi2/enums/EnemyType;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/prineside/tdi2/enums/BossType;->SNAKE:Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_1
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    sget-object v2, Lcom/prineside/tdi2/enums/EnemyType;->CONSTRUCTOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/EnemyManager;->isEnemyTypeNewForPlayer(Lcom/prineside/tdi2/enums/EnemyType;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/prineside/tdi2/enums/BossType;->CONSTRUCTOR:Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_2
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    sget-object v2, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/EnemyManager;->isEnemyTypeNewForPlayer(Lcom/prineside/tdi2/enums/EnemyType;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/prineside/tdi2/enums/BossType;->MOBCHAIN:Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_3
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    sget-object v2, Lcom/prineside/tdi2/enums/EnemyType;->METAPHOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/EnemyManager;->isEnemyTypeNewForPlayer(Lcom/prineside/tdi2/enums/EnemyType;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/prineside/tdi2/enums/BossType;->METAPHOR:Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_4
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/enums/BossType;

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxMapSize()I
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->USER_MAP_MAX_SIZE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v0

    return v0
.end method

.method public getUserMap(Ljava/lang/String;)Lcom/prineside/tdi2/UserMap;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/UserMapManager;->userMapsOrdered:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/UserMap;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/prineside/tdi2/UserMap;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/managers/UserMapManager;->userMapsOrdered:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/UserMap;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public isMapEditorAvailable()Z
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->MAP_EDITOR:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getBooleanValue(Lcom/prineside/tdi2/enums/GameValueType;)Z

    move-result v0

    return v0
.end method

.method public prestigeSellMap(Lcom/prineside/tdi2/MapPrestigeConfig;)V
    .locals 12

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->userMapManager:Lcom/prineside/tdi2/managers/UserMapManager;

    iget-object v1, p1, Lcom/prineside/tdi2/MapPrestigeConfig;->userMapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UserMapManager;->getUserMap(Ljava/lang/String;)Lcom/prineside/tdi2/UserMap;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    const-string v0, "Map not found"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/tdi2/MapPrestigeConfig;->getFinalPrestigeTokens()I

    move-result v1

    if-gtz v1, :cond_1

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    const-string v0, "You will get no tokens"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v0, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    iget-object v5, v5, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    if-ge v2, v6, :cond_4

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/Tile;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/prineside/tdi2/Tile;->getPrestigeScore()D

    move-result-wide v10

    cmpg-double v6, v10, v7

    if-gtz v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v7, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    invoke-virtual {v7, v5}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v5

    invoke-virtual {v6, v5, v9}, Lcom/prineside/tdi2/managers/ProgressManager;->removeItems(Lcom/prineside/tdi2/Item;I)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    iget-object v2, v0, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    iget-object v2, v2, Lcom/prineside/tdi2/Map;->gatesArray:Lcom/badlogic/gdx/utils/Array;

    iget v5, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v5, :cond_7

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Gate;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/prineside/tdi2/Gate;->getPrestigeScore()D

    move-result-wide v5

    cmpg-double v10, v5, v7

    if-gtz v10, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v6, Lcom/prineside/tdi2/Item$D;->F_GATE:Lcom/prineside/tdi2/items/GateItem$GateItemFactory;

    invoke-virtual {v6, v2}, Lcom/prineside/tdi2/items/GateItem$GateItemFactory;->create(Lcom/prineside/tdi2/Gate;)Lcom/prineside/tdi2/items/GateItem;

    move-result-object v2

    invoke-virtual {v5, v2, v9}, Lcom/prineside/tdi2/managers/ProgressManager;->removeItems(Lcom/prineside/tdi2/Item;I)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v4, v4, 0x1

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map prestige: removed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " map pieces"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserMapManager"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/prineside/tdi2/MapPrestigeConfig;->getFinalPrestigeTokens()I

    move-result v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v2, Lcom/prineside/tdi2/Item$D;->PRESTIGE_TOKEN:Lcom/prineside/tdi2/items/PrestigeTokenItem;

    invoke-virtual {v1, v2, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/prineside/tdi2/Item;I)V

    new-instance v1, Lcom/prineside/tdi2/IssuedItems;

    sget-object v2, Lcom/prineside/tdi2/IssuedItems$IssueReason;->MAP_PRESTIGE:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/prineside/tdi2/IssuedItems;-><init>(Lcom/prineside/tdi2/IssuedItems$IssueReason;I)V

    iput-object p1, v1, Lcom/prineside/tdi2/IssuedItems;->mapPrestigeConfig:Lcom/prineside/tdi2/MapPrestigeConfig;

    iget-object v2, v1, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    new-instance v3, Lcom/prineside/tdi2/ItemStack;

    sget-object v4, Lcom/prineside/tdi2/Item$D;->PRESTIGE_TOKEN:Lcom/prineside/tdi2/items/PrestigeTokenItem;

    invoke-direct {v3, v4, v0}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v2, v1, v9}, Lcom/prineside/tdi2/managers/ProgressManager;->addIssuedPrizes(Lcom/prineside/tdi2/IssuedItems;Z)V

    iget-object p1, p1, Lcom/prineside/tdi2/MapPrestigeConfig;->userMapId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/UserMapManager;->removeUserMap(Ljava/lang/String;)V

    const/16 p1, 0x32

    if-lt v0, p1, :cond_8

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v1, Lcom/prineside/tdi2/enums/StatisticsType;->PMS:Lcom/prineside/tdi2/enums/StatisticsType;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v1, v2, v3}, Lcom/prineside/tdi2/managers/StatisticsManager;->registerDelta(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    :cond_8
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v1, Lcom/prineside/tdi2/enums/StatisticsType;->PPG:Lcom/prineside/tdi2/enums/StatisticsType;

    int-to-double v2, v0

    invoke-virtual {p1, v1, v2, v3}, Lcom/prineside/tdi2/managers/StatisticsManager;->registerDelta(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object v0, Lcom/prineside/tdi2/enums/AchievementType;->PRESTIGE:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {p1, v0, v9}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    return-void
.end method

.method public final reload()V
    .locals 7

    const-string v0, "UserMapManager"

    iget-object v1, p0, Lcom/prineside/tdi2/managers/UserMapManager;->userMapsOrdered:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v2, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_USER_MAPS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v1

    const-string v2, "slots"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const-string v3, "[]"

    invoke-virtual {v1, v2, v3}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v5}, Lcom/prineside/tdi2/UserMap;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/UserMap;

    move-result-object v5

    iget-object v6, p0, Lcom/prineside/tdi2/managers/UserMapManager;->userMapsOrdered:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "failed to parse map"

    invoke-static {v0, v5, v4}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v4, 0x1

    goto :goto_0

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to parse json: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, 0x1

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/UserMapManager;->userMapsOrdered:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/prineside/tdi2/managers/UserMapManager$2;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/UserMapManager$2;-><init>(Lcom/prineside/tdi2/managers/UserMapManager;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/UserMapManager;->save()V

    :cond_2
    return-void
.end method

.method public removeUserMap(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/UserMapManager;->userMapsOrdered:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/UserMap;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/prineside/tdi2/UserMap;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/managers/UserMapManager;->userMapsOrdered:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/UserMapManager;->save()V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public rename(Lcom/prineside/tdi2/UserMap;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p1, Lcom/prineside/tdi2/UserMap;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p2, p1, Lcom/prineside/tdi2/UserMap;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/UserMapManager;->save()V

    return-void
.end method

.method public save()V
    .locals 5

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_USER_MAPS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/prineside/tdi2/managers/UserMapManager;->userMapsOrdered:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v4, :cond_1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v4, p0, Lcom/prineside/tdi2/managers/UserMapManager;->userMapsOrdered:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/UserMap;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Lcom/prineside/tdi2/UserMap;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "slots"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    return-void
.end method

.method public setup()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    new-instance v1, Lcom/prineside/tdi2/managers/UserMapManager$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/UserMapManager$1;-><init>(Lcom/prineside/tdi2/managers/UserMapManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->addListener(Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/UserMapManager;->reload()V

    return-void
.end method
