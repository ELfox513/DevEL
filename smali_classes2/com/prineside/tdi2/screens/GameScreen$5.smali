.class Lcom/prineside/tdi2/screens/GameScreen$5;
.super Lcom/badlogic/gdx/utils/Timer$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/GameScreen;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic q:Lcom/prineside/tdi2/GameSystemProvider;

.field public final synthetic r:Lcom/prineside/tdi2/screens/GameScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/GameScreen;Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/GameScreen$5;->r:Lcom/prineside/tdi2/screens/GameScreen;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Timer$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    move-object/from16 v0, p0

    const-class v1, Lcom/prineside/tdi2/ui/components/GameOverOverlay$GameOverItemStack;

    iget-object v2, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-boolean v3, v2, Lcom/prineside/tdi2/systems/StateSystem;->replayMode:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GraphicsSystem;->gameOverOverlay:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-virtual {v1, v2, v4}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;->show(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/MapPrestigeConfig;)V

    goto/16 :goto_1b

    :cond_0
    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->getQuestsIssuedPrizes()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->getGameLootIssuedItems()Lcom/prineside/tdi2/IssuedItems;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v6, Lcom/prineside/tdi2/enums/StatisticsType;->AFPTG:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v7

    double-to-int v5, v7

    const/16 v7, 0x14

    invoke-static {v5, v7}, Ljava/lang/StrictMath;->min(II)I

    move-result v7

    mul-int/lit8 v7, v7, 0xf

    add-int/lit16 v7, v7, 0x258

    mul-int v5, v5, v7

    add-int/lit16 v5, v5, 0x258

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v8, Lcom/prineside/tdi2/enums/StatisticsType;->PRT:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v7

    double-to-int v7, v7

    const/4 v8, 0x1

    if-lt v7, v5, :cond_1

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v5, v6, v9, v10}, Lcom/prineside/tdi2/managers/StatisticsManager;->registerDelta(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    new-instance v5, Lcom/prineside/tdi2/ItemStack;

    sget-object v6, Lcom/prineside/tdi2/Item$D;->ACCELERATOR:Lcom/prineside/tdi2/items/AcceleratorItem;

    invoke-direct {v5, v6, v8}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    iget-object v6, v2, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v6, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v6}, Lcom/prineside/tdi2/systems/GameStateSystem;->isDailyQuestAndNotCompleted()Z

    move-result v6

    if-eqz v6, :cond_2

    const v5, 0x3dcccccd    # 0.1f

    :cond_2
    iget-object v6, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v6}, Lcom/prineside/tdi2/systems/GameStateSystem;->calculatePrizeGreenPapers()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v5

    float-to-int v6, v6

    if-lez v6, :cond_3

    iget-object v7, v2, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    sget-object v9, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    invoke-static {v7, v9, v6}, Lcom/prineside/tdi2/managers/ProgressManager;->addItemToStacksArray(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    :cond_3
    sget-object v7, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v9, v7

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_5

    aget-object v12, v7, v11

    iget-object v13, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v13, v13, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v13, v12}, Lcom/prineside/tdi2/systems/GameStateSystem;->getResources(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v13

    int-to-float v13, v13

    mul-float v13, v13, v5

    float-to-int v13, v13

    if-eqz v13, :cond_4

    iget-object v14, v2, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    sget-object v15, Lcom/prineside/tdi2/Item$D;->F_RESOURCE:Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;

    invoke-virtual {v15, v12}, Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;->create(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/prineside/tdi2/items/ResourceItem;

    move-result-object v12

    invoke-static {v14, v12, v13}, Lcom/prineside/tdi2/managers/ProgressManager;->addItemToStacksArray(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_5
    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->isDoubleGainEnabled()Z

    move-result v1

    const/4 v5, 0x0

    :goto_1
    iget v7, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v9, 0x2

    if-ge v5, v7, :cond_d

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/IssuedItems;

    const/4 v11, 0x0

    :goto_2
    iget-object v12, v7, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget v13, v12, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v11, v13, :cond_c

    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/prineside/tdi2/ItemStack;

    if-eqz v1, :cond_6

    invoke-virtual {v12}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v13

    invoke-virtual {v13}, Lcom/prineside/tdi2/Item;->isAffectedByDoubleGain()Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v13, 0x1

    goto :goto_3

    :cond_6
    const/4 v13, 0x0

    :goto_3
    if-eqz v13, :cond_7

    invoke-virtual {v12}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v14

    invoke-static {v14, v9}, Lcom/prineside/tdi2/utils/PMath;->multiplyWithoutOverflow(II)I

    move-result v14

    invoke-virtual {v12, v14}, Lcom/prineside/tdi2/ItemStack;->setCount(I)V

    :cond_7
    const/4 v14, 0x0

    :goto_4
    iget v15, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v14, v15, :cond_9

    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/prineside/tdi2/ui/components/GameOverOverlay$GameOverItemStack;

    iget-boolean v10, v15, Lcom/prineside/tdi2/ItemStack;->covered:Z

    iget-boolean v4, v12, Lcom/prineside/tdi2/ItemStack;->covered:Z

    if-ne v10, v4, :cond_8

    iget-boolean v4, v15, Lcom/prineside/tdi2/ui/components/GameOverOverlay$GameOverItemStack;->isDoubled:Z

    if-ne v4, v13, :cond_8

    invoke-virtual {v15}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v4

    invoke-virtual {v12}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/prineside/tdi2/Item;->sameAs(Lcom/prineside/tdi2/Item;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/ui/components/GameOverOverlay$GameOverItemStack;

    invoke-virtual {v15}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v10

    invoke-virtual {v12}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v14

    invoke-static {v10, v14}, Lcom/prineside/tdi2/utils/PMath;->addWithoutOverflow(II)I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/prineside/tdi2/ItemStack;->setCount(I)V

    const/4 v4, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    :goto_5
    if-nez v4, :cond_b

    new-instance v4, Lcom/prineside/tdi2/ui/components/GameOverOverlay$GameOverItemStack;

    invoke-direct {v4, v12}, Lcom/prineside/tdi2/ui/components/GameOverOverlay$GameOverItemStack;-><init>(Lcom/prineside/tdi2/ItemStack;)V

    if-eqz v13, :cond_a

    iput-boolean v8, v4, Lcom/prineside/tdi2/ui/components/GameOverOverlay$GameOverItemStack;->isDoubled:Z

    :cond_a
    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_b
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    goto :goto_2

    :cond_c
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_d
    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/StatisticsType;->GPG:Lcom/prineside/tdi2/enums/StatisticsType;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/ProgressManager;->isDoubleGainEnabled()Z

    move-result v5

    if-eqz v5, :cond_e

    mul-int/lit8 v6, v6, 0x2

    :cond_e
    int-to-double v5, v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v1, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->playRealTime:F

    const v4, 0x47a8c000    # 86400.0f

    const/4 v5, 0x0

    cmpg-float v6, v1, v5

    if-ltz v6, :cond_10

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v6

    if-eqz v6, :cond_f

    goto :goto_6

    :cond_f
    cmpl-float v5, v1, v4

    if-lez v5, :cond_11

    const v1, 0x47a8c000    # 86400.0f

    goto :goto_7

    :cond_10
    :goto_6
    const/4 v1, 0x0

    :cond_11
    :goto_7
    iget-object v4, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v5, Lcom/prineside/tdi2/enums/StatisticsType;->PRT:Lcom/prineside/tdi2/enums/StatisticsType;

    float-to-double v6, v1

    invoke-virtual {v4, v5, v6, v7}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    const/4 v1, 0x0

    :goto_8
    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v4, :cond_13

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/IssuedItems;

    const/4 v5, 0x0

    :goto_9
    iget-object v6, v4, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget v7, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v7, :cond_12

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v7, v6}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/prineside/tdi2/ItemStack;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_13
    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v4, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    if-eqz v4, :cond_14

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    sget-object v5, Lcom/prineside/tdi2/enums/DifficultyMode;->NORMAL:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-ne v1, v5, :cond_14

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/AuthManager;->localXpPlayedLevels:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_14
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->replayManager:Lcom/prineside/tdi2/managers/ReplayManager;

    iget-object v4, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v5, v5, Lcom/prineside/tdi2/systems/GameStateSystem;->gameStartPreferencesSnapshot:[B

    invoke-virtual {v1, v4, v5, v8}, Lcom/prineside/tdi2/managers/ReplayManager;->saveReplay(Lcom/prineside/tdi2/GameSystemProvider;[BZ)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->replayManager:Lcom/prineside/tdi2/managers/ReplayManager;

    new-instance v5, Lcom/prineside/tdi2/screens/GameScreen$5$1;

    invoke-direct {v5, v0}, Lcom/prineside/tdi2/screens/GameScreen$5$1;-><init>(Lcom/prineside/tdi2/screens/GameScreen$5;)V

    invoke-virtual {v4, v1, v5}, Lcom/prineside/tdi2/managers/ReplayManager;->sendReplayToServer(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    sget-object v4, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->USER_MAPS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v1, v4, :cond_19

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v1

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->PRESTIGE_MODE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getBooleanValue(Lcom/prineside/tdi2/enums/GameValueType;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/AbilitySystem;->abilitiesUsed:[I

    array-length v4, v1

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v4, :cond_16

    aget v6, v1, v5

    if-eqz v6, :cond_15

    const/16 v21, 0x0

    goto :goto_b

    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_16
    const/16 v21, 0x1

    :goto_b
    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/enums/GameValueType;->PRESTIGE_DUST_DROP_RATE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v4

    new-instance v6, Lcom/prineside/tdi2/MapPrestigeConfig;

    iget-object v7, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v9, v7, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v9, v9, Lcom/prineside/tdi2/systems/GameStateSystem;->userMapId:Ljava/lang/String;

    iget-object v7, v7, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v7}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v7

    invoke-virtual {v7}, Lcom/prineside/tdi2/Map;->getPrestigeScore()D

    move-result-wide v10

    mul-double v18, v10, v4

    iget-object v4, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v4, v4, Lcom/prineside/tdi2/systems/GameStateSystem;->averageDifficulty:I

    invoke-virtual {v1}, Lcom/prineside/tdi2/tiles/TargetTile;->isUseStockGameValues()Z

    move-result v22

    invoke-virtual {v1}, Lcom/prineside/tdi2/tiles/TargetTile;->isWalkableTiles()Z

    move-result v23

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->modifier:Lcom/prineside/tdi2/systems/ModifierSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiersBuiltByTypeAllTime:[I

    sget-object v5, Lcom/prineside/tdi2/enums/ModifierType;->BOUNTY:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v1, v1, v5

    if-nez v1, :cond_17

    const/16 v24, 0x1

    goto :goto_c

    :cond_17
    const/16 v24, 0x0

    :goto_c
    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v5, Lcom/prineside/tdi2/enums/StatisticsType;->MB:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v1, v10, v12

    if-nez v1, :cond_18

    const/16 v25, 0x1

    goto :goto_d

    :cond_18
    const/16 v25, 0x0

    :goto_d
    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->getScore()J

    move-result-wide v26

    move-object/from16 v16, v6

    move-object/from16 v17, v9

    move/from16 v20, v4

    invoke-direct/range {v16 .. v27}, Lcom/prineside/tdi2/MapPrestigeConfig;-><init>(Ljava/lang/String;DIZZZZZJ)V

    goto :goto_e

    :cond_19
    const/4 v6, 0x0

    :goto_e
    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->getCompletedQuests()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    iget v4, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const-string v5, "GameScreen"

    if-lez v4, :cond_21

    iget-object v4, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    if-eqz v4, :cond_1e

    const/4 v4, 0x0

    :goto_f
    iget v7, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v7, :cond_1e

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v9, 0x0

    :goto_10
    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v11, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v11, v11, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v11, v11, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v10

    iget-object v10, v10, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v10, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    const-string v11, "saving quest "

    if-ge v9, v10, :cond_1b

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v12, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v12, v12, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v12, v12, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v10

    iget-object v10, v10, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget-object v10, v10, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v10, [Lcom/prineside/tdi2/BasicLevelQuestConfig;

    aget-object v10, v10, v9

    iget-object v12, v10, Lcom/prineside/tdi2/BasicLevelQuestConfig;->id:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    invoke-virtual {v10, v8}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->setCompleted(Z)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_1a
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_1b
    :goto_11
    const/4 v9, 0x0

    :goto_12
    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v12, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v12, v12, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v12, v12, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v10

    iget-object v10, v10, Lcom/prineside/tdi2/BasicLevel;->waveQuests:Lcom/badlogic/gdx/utils/Array;

    iget v10, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v9, v10, :cond_1d

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v12, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v12, v12, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v12, v12, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v10

    iget-object v10, v10, Lcom/prineside/tdi2/BasicLevel;->waveQuests:Lcom/badlogic/gdx/utils/Array;

    iget-object v10, v10, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v10, [Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    aget-object v10, v10, v9

    iget-object v12, v10, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->id:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    invoke-virtual {v10, v8}, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->setCompleted(Z)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_1c
    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :cond_1d
    :goto_13
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_f

    :cond_1e
    iget-object v4, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/GameStateSystem;->dailyQuestLevel:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    if-eqz v4, :cond_1f

    const-string v4, "saved today\'s daily quest as completed"

    invoke-static {v5, v4}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/GameStateSystem;->dailyQuestLevel:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->setCompleted()V

    :cond_1f
    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->dailyQuestManager:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/DailyQuestManager;->getDailyLootCurrentQuest()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    :goto_14
    iget v9, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v9, :cond_21

    iget-object v9, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v9, [Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->dailyQuestManager:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/DailyQuestManager;->setDailyLootQuestCompleted()Lcom/prineside/tdi2/IssuedItems;

    move-result-object v1

    if-eqz v1, :cond_21

    const/4 v4, 0x0

    :goto_15
    iget-object v7, v1, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget v7, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v7, :cond_21

    new-instance v7, Lcom/prineside/tdi2/ui/components/GameOverOverlay$GameOverItemStack;

    iget-object v9, v1, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget-object v9, v9, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v9, [Lcom/prineside/tdi2/ItemStack;

    aget-object v9, v9, v4

    invoke-direct {v7, v9}, Lcom/prineside/tdi2/ui/components/GameOverOverlay$GameOverItemStack;-><init>(Lcom/prineside/tdi2/ItemStack;)V

    iput-boolean v8, v7, Lcom/prineside/tdi2/ui/components/GameOverOverlay$GameOverItemStack;->isDailyLoot:Z

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_20
    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_21
    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GraphicsSystem;->gameOverOverlay:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    invoke-virtual {v1, v2, v6}, Lcom/prineside/tdi2/ui/components/GameOverOverlay;->show(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/MapPrestigeConfig;)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    sget-object v4, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->BASIC_LEVELS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v2, v4, :cond_25

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/WaveSystem;->getCompletedWavesCount()I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v4, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v2

    iget v2, v2, Lcom/prineside/tdi2/BasicLevel;->maxReachedWave:I

    if-le v1, v2, :cond_22

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v4, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v2

    iput v1, v2, Lcom/prineside/tdi2/BasicLevel;->maxReachedWave:I

    :cond_22
    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->getScore()J

    move-result-wide v1

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v6, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v6, v6, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v4

    iget-wide v6, v4, Lcom/prineside/tdi2/BasicLevel;->maxScore:J

    cmp-long v4, v1, v6

    if-lez v4, :cond_23

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v2, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v1

    iget-object v2, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->getScore()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/prineside/tdi2/BasicLevel;->maxScore:J

    :cond_23
    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->PRT:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getCurrentGameStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v1

    double-to-int v1, v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v4, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v2

    iget v2, v2, Lcom/prineside/tdi2/BasicLevel;->maxPlayingTime:I

    if-le v1, v2, :cond_24

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v4, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v2

    iput v1, v2, Lcom/prineside/tdi2/BasicLevel;->maxPlayingTime:I

    :cond_24
    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_quest:Lcom/prineside/tdi2/systems/QuestSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/QuestSystem;->saveBasicLevelQuestValues()V

    :cond_25
    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/StatisticsSystem;->flushStatistics()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v1, v8}, Lcom/prineside/tdi2/managers/ResearchManager;->checkResearchesStatus(Z)V

    const/4 v1, 0x0

    :goto_16
    iget v2, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_2a

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/IssuedItems;

    iget-object v4, v4, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    const/4 v6, 0x0

    :goto_17
    iget v7, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v7, :cond_29

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/ItemStack;

    const/4 v9, 0x0

    :goto_18
    iget v10, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v9, v10, :cond_27

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v10}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v10

    invoke-virtual {v7}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/Item;->sameAs(Lcom/prineside/tdi2/Item;)Z

    move-result v10

    if-eqz v10, :cond_26

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v9}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v9

    invoke-virtual {v7}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v11

    invoke-static {v9, v11}, Lcom/prineside/tdi2/utils/PMath;->addWithoutOverflow(II)I

    move-result v9

    invoke-virtual {v10, v9}, Lcom/prineside/tdi2/ItemStack;->setCount(I)V

    const/4 v9, 0x1

    goto :goto_19

    :cond_26
    add-int/lit8 v9, v9, 0x1

    goto :goto_18

    :cond_27
    const/4 v9, 0x0

    :goto_19
    if-nez v9, :cond_28

    new-instance v9, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v9, v7}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/ItemStack;)V

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_28
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_29
    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/IssuedItems;

    iget-object v4, v4, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/IssuedItems;

    iget-object v4, v4, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/IssuedItems;

    invoke-virtual {v2, v4, v8}, Lcom/prineside/tdi2/managers/ProgressManager;->addIssuedPrizes(Lcom/prineside/tdi2/IssuedItems;Z)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_16

    :cond_2a
    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->dailyQuestLevel:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    if-nez v2, :cond_2d

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-virtual {v1}, Lcom/prineside/tdi2/tiles/TargetTile;->isDisableAbilities()Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/AbilitySystem;->abilitiesConfiguration:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    const/4 v10, 0x0

    :goto_1a
    iget-object v2, v1, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;->slots:[Lcom/prineside/tdi2/enums/AbilityType;

    array-length v3, v2

    if-ge v10, v3, :cond_2c

    aget-object v2, v2, v10

    if-eqz v2, :cond_2b

    iget-object v3, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    iget-object v3, v3, Lcom/prineside/tdi2/systems/AbilitySystem;->abilitiesUsed:[I

    aget v3, v3, v10

    neg-int v3, v3

    if-gez v3, :cond_2b

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    neg-int v3, v3

    invoke-virtual {v4, v2, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->removeAbilities(Lcom/prineside/tdi2/enums/AbilityType;I)Z

    move-result v2

    if-nez v2, :cond_2b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeAbilities false "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    add-int/lit8 v10, v10, 0x1

    goto :goto_1a

    :cond_2c
    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen$5;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-boolean v1, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->rarityBoostEnabled:Z

    if-eqz v1, :cond_2d

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    const-string v2, "rarity_boost"

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2, v8}, Lcom/prineside/tdi2/ActionResolver;->logCurrencySpent(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v2, Lcom/prineside/tdi2/Item$D;->RARITY_BOOST:Lcom/prineside/tdi2/items/RarityBoostItem;

    invoke-virtual {v1, v2, v8}, Lcom/prineside/tdi2/managers/ProgressManager;->removeItems(Lcom/prineside/tdi2/Item;I)Z

    :cond_2d
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AchievementManager;->updateGlobal()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->save()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->save()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->userMapManager:Lcom/prineside/tdi2/managers/UserMapManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UserMapManager;->save()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/StatisticsManager;->save()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AuthManager;->handleAutoSave()V

    :goto_1b
    return-void
.end method
