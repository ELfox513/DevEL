.class public Lcom/prineside/tdi2/screens/GameScreen;
.super Lcom/prineside/tdi2/Screen;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/screens/GameScreen$_WaveSystemListener;,
        Lcom/prineside/tdi2/screens/GameScreen$_GameStateSystemListener;
    }
.end annotation


# static fields
.field public static final o:Lcom/badlogic/gdx/utils/StringBuilder;

.field public static final p:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public S:Lcom/prineside/tdi2/GameSystemProvider;

.field public final a:Lcom/esotericsoftware/kryo/io/Output;

.field public b:Z

.field public c:F

.field public d:F

.field public e:Z

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public final j:Lcom/prineside/tdi2/screens/GameScreen$_WaveSystemListener;

.field public final k:Lcom/prineside/tdi2/screens/GameScreen$_GameStateSystemListener;

.field public l:Lcom/prineside/luaj/LuaValue;

.field public final loader:Lcom/prineside/tdi2/utils/GameSyncLoader;

.field public m:[F

.field public n:I

.field public validationS:Lcom/prineside/tdi2/GameSystemProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/screens/GameScreen;->o:Lcom/badlogic/gdx/utils/StringBuilder;

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/screens/GameScreen;->p:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/enums/DifficultyMode;ILcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;JLcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;)V
    .locals 14

    invoke-virtual {p1}, Lcom/prineside/tdi2/BasicLevel;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/TargetTile;->isDisableAbilities()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/prineside/tdi2/BasicLevel;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Map;->getMaxedAbilitiesConfiguration()Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object/from16 v5, p4

    :goto_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getEncryptedCasesCount()I

    move-result v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getMaxEncryptedCasesInInventory()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getEncryptedCasesCount()I

    move-result v7

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getLootBoostTimeLeft()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->RARITY_BOOST:Lcom/prineside/tdi2/items/RarityBoostItem;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsCount(Lcom/prineside/tdi2/Item;)I

    move-result v0

    if-lez v0, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    const/4 v13, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v10, p5

    move-object/from16 v12, p7

    invoke-direct/range {v1 .. v13}, Lcom/prineside/tdi2/screens/GameScreen;-><init>(Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/enums/DifficultyMode;ILcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;ZIZZJLcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/enums/DifficultyMode;ILcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;ZIZZJLcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)V
    .locals 16

    move-object/from16 v15, p0

    move-object/from16 v8, p1

    invoke-direct/range {p0 .. p0}, Lcom/prineside/tdi2/Screen;-><init>()V

    new-instance v0, Lcom/prineside/tdi2/utils/GameSyncLoader;

    invoke-direct {v0}, Lcom/prineside/tdi2/utils/GameSyncLoader;-><init>()V

    iput-object v0, v15, Lcom/prineside/tdi2/screens/GameScreen;->loader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v0, Lcom/esotericsoftware/kryo/io/Output;

    const/high16 v1, 0x10000

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/esotericsoftware/kryo/io/Output;-><init>(II)V

    iput-object v0, v15, Lcom/prineside/tdi2/screens/GameScreen;->a:Lcom/esotericsoftware/kryo/io/Output;

    const/4 v0, 0x0

    iput-boolean v0, v15, Lcom/prineside/tdi2/screens/GameScreen;->b:Z

    iput-boolean v0, v15, Lcom/prineside/tdi2/screens/GameScreen;->e:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v15, Lcom/prineside/tdi2/screens/GameScreen;->f:F

    new-instance v0, Lcom/prineside/tdi2/screens/GameScreen$_WaveSystemListener;

    const/4 v1, 0x0

    invoke-direct {v0, v15, v1}, Lcom/prineside/tdi2/screens/GameScreen$_WaveSystemListener;-><init>(Lcom/prineside/tdi2/screens/GameScreen;Lcom/prineside/tdi2/screens/GameScreen$1;)V

    iput-object v0, v15, Lcom/prineside/tdi2/screens/GameScreen;->j:Lcom/prineside/tdi2/screens/GameScreen$_WaveSystemListener;

    new-instance v0, Lcom/prineside/tdi2/screens/GameScreen$_GameStateSystemListener;

    invoke-direct {v0, v15, v1}, Lcom/prineside/tdi2/screens/GameScreen$_GameStateSystemListener;-><init>(Lcom/prineside/tdi2/screens/GameScreen;Lcom/prineside/tdi2/screens/GameScreen$1;)V

    iput-object v0, v15, Lcom/prineside/tdi2/screens/GameScreen;->k:Lcom/prineside/tdi2/screens/GameScreen$_GameStateSystemListener;

    const/16 v0, 0x258

    new-array v0, v0, [F

    iput-object v0, v15, Lcom/prineside/tdi2/screens/GameScreen;->m:[F

    const-wide/16 v0, -0x1

    cmp-long v2, p9, v0

    if-nez v2, :cond_0

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v0

    move-wide v6, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v6, p9

    :goto_0
    iget-object v0, v8, Lcom/prineside/tdi2/BasicLevel;->forcedDifficulty:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-eqz v0, :cond_1

    move-object v10, v0

    goto :goto_1

    :cond_1
    move-object/from16 v10, p2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "starting level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameScreen"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    sget-object v12, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->BASIC_LEVELS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move-object/from16 v8, p1

    move/from16 v11, p3

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-virtual/range {v0 .. v15}, Lcom/prineside/tdi2/screens/GameScreen;->d(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;ZIZZJLcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/UserMap;Lcom/prineside/tdi2/enums/DifficultyMode;ILcom/prineside/tdi2/systems/GameStateSystem$GameMode;[Lcom/prineside/tdi2/enums/BossType;Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;J)V
    .locals 4

    invoke-direct {p0}, Lcom/prineside/tdi2/Screen;-><init>()V

    new-instance v0, Lcom/prineside/tdi2/utils/GameSyncLoader;

    invoke-direct {v0}, Lcom/prineside/tdi2/utils/GameSyncLoader;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/GameScreen;->loader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v0, Lcom/esotericsoftware/kryo/io/Output;

    const/high16 v1, 0x10000

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/esotericsoftware/kryo/io/Output;-><init>(II)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/GameScreen;->a:Lcom/esotericsoftware/kryo/io/Output;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/screens/GameScreen;->b:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/screens/GameScreen;->e:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/prineside/tdi2/screens/GameScreen;->f:F

    new-instance v1, Lcom/prineside/tdi2/screens/GameScreen$_WaveSystemListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/prineside/tdi2/screens/GameScreen$_WaveSystemListener;-><init>(Lcom/prineside/tdi2/screens/GameScreen;Lcom/prineside/tdi2/screens/GameScreen$1;)V

    iput-object v1, p0, Lcom/prineside/tdi2/screens/GameScreen;->j:Lcom/prineside/tdi2/screens/GameScreen$_WaveSystemListener;

    new-instance v1, Lcom/prineside/tdi2/screens/GameScreen$_GameStateSystemListener;

    invoke-direct {v1, p0, v2}, Lcom/prineside/tdi2/screens/GameScreen$_GameStateSystemListener;-><init>(Lcom/prineside/tdi2/screens/GameScreen;Lcom/prineside/tdi2/screens/GameScreen$1;)V

    iput-object v1, p0, Lcom/prineside/tdi2/screens/GameScreen;->k:Lcom/prineside/tdi2/screens/GameScreen$_GameStateSystemListener;

    const/16 v1, 0x258

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/prineside/tdi2/screens/GameScreen;->m:[F

    :goto_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v1, Lcom/prineside/tdi2/Game;->managers:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/Manager;

    invoke-interface {v1}, Lcom/prineside/tdi2/Manager;->clearPools()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager;->hideAllComponents()V

    iput-object p1, p0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iput-wide p2, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameStartTimestamp:J

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lcom/prineside/tdi2/systems/GameStateSystem;->setGameSpeed(F)V

    iget-object p2, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object p2, p2, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object p3, p0, Lcom/prineside/tdi2/screens/GameScreen;->k:Lcom/prineside/tdi2/screens/GameScreen$_GameStateSystemListener;

    invoke-virtual {p2, p3}, Lcom/prineside/tdi2/ListenerGroup;->contains(Lcom/prineside/tdi2/GameListener;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object p2, p0, Lcom/prineside/tdi2/screens/GameScreen;->k:Lcom/prineside/tdi2/screens/GameScreen$_GameStateSystemListener;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/UserMap;Lcom/prineside/tdi2/enums/DifficultyMode;ILcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;J[Lcom/prineside/tdi2/enums/BossType;Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)V
    .locals 16

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    invoke-direct/range {p0 .. p0}, Lcom/prineside/tdi2/Screen;-><init>()V

    new-instance v0, Lcom/prineside/tdi2/utils/GameSyncLoader;

    invoke-direct {v0}, Lcom/prineside/tdi2/utils/GameSyncLoader;-><init>()V

    iput-object v0, v15, Lcom/prineside/tdi2/screens/GameScreen;->loader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v0, Lcom/esotericsoftware/kryo/io/Output;

    const/high16 v1, 0x10000

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/esotericsoftware/kryo/io/Output;-><init>(II)V

    iput-object v0, v15, Lcom/prineside/tdi2/screens/GameScreen;->a:Lcom/esotericsoftware/kryo/io/Output;

    const/4 v0, 0x0

    iput-boolean v0, v15, Lcom/prineside/tdi2/screens/GameScreen;->b:Z

    iput-boolean v0, v15, Lcom/prineside/tdi2/screens/GameScreen;->e:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v15, Lcom/prineside/tdi2/screens/GameScreen;->f:F

    new-instance v1, Lcom/prineside/tdi2/screens/GameScreen$_WaveSystemListener;

    const/4 v2, 0x0

    invoke-direct {v1, v15, v2}, Lcom/prineside/tdi2/screens/GameScreen$_WaveSystemListener;-><init>(Lcom/prineside/tdi2/screens/GameScreen;Lcom/prineside/tdi2/screens/GameScreen$1;)V

    iput-object v1, v15, Lcom/prineside/tdi2/screens/GameScreen;->j:Lcom/prineside/tdi2/screens/GameScreen$_WaveSystemListener;

    new-instance v1, Lcom/prineside/tdi2/screens/GameScreen$_GameStateSystemListener;

    invoke-direct {v1, v15, v2}, Lcom/prineside/tdi2/screens/GameScreen$_GameStateSystemListener;-><init>(Lcom/prineside/tdi2/screens/GameScreen;Lcom/prineside/tdi2/screens/GameScreen$1;)V

    iput-object v1, v15, Lcom/prineside/tdi2/screens/GameScreen;->k:Lcom/prineside/tdi2/screens/GameScreen$_GameStateSystemListener;

    const/16 v1, 0x258

    new-array v1, v1, [F

    iput-object v1, v15, Lcom/prineside/tdi2/screens/GameScreen;->m:[F

    const-wide/16 v1, -0x1

    cmp-long v3, p5, v1

    if-nez v3, :cond_0

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v1

    move-wide v6, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v6, p5

    :goto_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v2, Lcom/prineside/tdi2/Item$D;->RARITY_BOOST:Lcom/prineside/tdi2/items/RarityBoostItem;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsCount(Lcom/prineside/tdi2/Item;)I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getLootBoostTimeLeft()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    iget-object v1, v14, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    iget-object v1, v1, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-virtual {v1}, Lcom/prineside/tdi2/tiles/TargetTile;->isDisableAbilities()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v14, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Map;->getMaxedAbilitiesConfiguration()Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object/from16 v1, p4

    :goto_3
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/ProgressManager;->getEncryptedCasesCount()I

    move-result v3

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v8}, Lcom/prineside/tdi2/managers/ProgressManager;->getMaxEncryptedCasesInInventory()I

    move-result v8

    if-ge v3, v8, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getEncryptedCasesCount()I

    move-result v3

    const/4 v8, 0x0

    sget-object v12, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->USER_MAPS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    invoke-virtual/range {v0 .. v15}, Lcom/prineside/tdi2/screens/GameScreen;->d(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;ZIZZJLcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/UserMap;Lcom/prineside/tdi2/enums/DifficultyMode;ILcom/prineside/tdi2/systems/GameStateSystem$GameMode;[Lcom/prineside/tdi2/enums/BossType;Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->achievement:Lcom/prineside/tdi2/systems/AchievementSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/AchievementSystem;->isActive()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object v2, Lcom/prineside/tdi2/enums/AchievementType;->HUNDRED_TILE_CUSTOM_MAP:Lcom/prineside/tdi2/enums/AchievementType;

    move-object/from16 v3, p1

    iget-object v4, v3, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    iget-object v4, v4, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2, v4}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object v2, Lcom/prineside/tdi2/enums/AchievementType;->FIVE_HUNDRED_TILE_CUSTOM_MAP:Lcom/prineside/tdi2/enums/AchievementType;

    iget-object v3, v3, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    iget-object v3, v3, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2, v3}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    :cond_5
    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;)V
    .locals 15

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->getLevelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/enums/DifficultyMode;->NORMAL:Lcom/prineside/tdi2/enums/DifficultyMode;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->getLevelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/BasicLevel;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Map;->getMaxedAbilitiesConfiguration()Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    move-result-object v6

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getEncryptedCasesCount()I

    move-result v8

    const/16 v5, 0x64

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/prineside/tdi2/screens/GameScreen;-><init>(Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/enums/DifficultyMode;ILcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;ZIZZJLcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)V

    move-object v0, p0

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    move-object/from16 v2, p1

    iput-object v2, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->dailyQuestLevel:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/screens/GameScreen;)Lcom/prineside/tdi2/screens/GameScreen$_WaveSystemListener;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/GameScreen;->j:Lcom/prineside/tdi2/screens/GameScreen$_WaveSystemListener;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/screens/GameScreen;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/screens/GameScreen;->c:F

    return p1
.end method

.method public static configureSystemsBeforeSetup(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;ZIZZJLcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/UserMap;Lcom/prineside/tdi2/enums/DifficultyMode;ILcom/prineside/tdi2/systems/GameStateSystem$GameMode;[Lcom/prineside/tdi2/enums/BossType;Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move-object/from16 v4, p13

    move-object/from16 v5, p14

    if-eqz v5, :cond_c

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->managers:Lcom/badlogic/gdx/utils/Array;

    iget v9, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v9, :cond_0

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/Manager;

    invoke-interface {v8}, Lcom/prineside/tdi2/Manager;->clearPools()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/prineside/tdi2/systems/StateSystem;->inUpdateStage:Z

    move-object/from16 v9, p1

    iput-object v9, v7, Lcom/prineside/tdi2/systems/GameStateSystem;->startingAbilitiesConfiguration:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    move/from16 v9, p2

    iput-boolean v9, v7, Lcom/prineside/tdi2/systems/GameStateSystem;->canLootCases:Z

    move/from16 v9, p3

    iput v9, v7, Lcom/prineside/tdi2/systems/GameStateSystem;->encryptedChestsInInventory:I

    move/from16 v9, p4

    iput-boolean v9, v7, Lcom/prineside/tdi2/systems/GameStateSystem;->lootBoostEnabled:Z

    move/from16 v9, p5

    iput-boolean v9, v7, Lcom/prineside/tdi2/systems/GameStateSystem;->rarityBoostEnabled:Z

    move-wide/from16 v9, p6

    iput-wide v9, v7, Lcom/prineside/tdi2/systems/GameStateSystem;->gameStartTimestamp:J

    iput-object v3, v7, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    move/from16 v9, p11

    invoke-static {v3, v9, v5}, Lcom/prineside/tdi2/managers/ProgressManager;->clampModeDifficulty(Lcom/prineside/tdi2/enums/DifficultyMode;ILcom/prineside/tdi2/GameValueProvider;)I

    move-result v9

    iput v9, v7, Lcom/prineside/tdi2/systems/GameStateSystem;->modeDifficultyMultiplier:I

    iget-object v7, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    move-object/from16 v9, p12

    iput-object v9, v7, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    const/4 v9, 0x0

    if-nez v1, :cond_1

    move-object v10, v9

    goto :goto_1

    :cond_1
    iget-object v10, v1, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    :goto_1
    iput-object v10, v7, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v9, v2, Lcom/prineside/tdi2/UserMap;->id:Ljava/lang/String;

    :goto_2
    iput-object v9, v7, Lcom/prineside/tdi2/systems/GameStateSystem;->userMapId:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    iget-object v9, v2, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    invoke-virtual {v9}, Lcom/prineside/tdi2/Map;->generateSeed()I

    move-result v9

    :goto_3
    iput v9, v7, Lcom/prineside/tdi2/systems/GameStateSystem;->userMapOriginalSeed:I

    const/4 v7, 0x2

    const v9, 0x3c23d70a    # 0.01f

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/prineside/tdi2/BasicLevel;->enemyWaves:[Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;

    if-eqz v2, :cond_4

    iget-object v4, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    sget-object v12, Lcom/prineside/tdi2/systems/WaveSystem$Mode;->PREDEFINED:Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    iput-object v12, v4, Lcom/prineside/tdi2/systems/WaveSystem;->mode:Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    iput-object v2, v4, Lcom/prineside/tdi2/systems/WaveSystem;->predefinedWaveTemplates:[Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;

    :cond_4
    iget-object v2, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v4, v1, Lcom/prineside/tdi2/BasicLevel;->seed:I

    int-to-long v12, v4

    invoke-virtual {v2, v12, v13}, Lcom/prineside/tdi2/systems/GameStateSystem;->setSeed(J)V

    invoke-virtual/range {p8 .. p8}, Lcom/prineside/tdi2/BasicLevel;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Map;->cpy()Lcom/prineside/tdi2/Map;

    move-result-object v2

    iget-object v4, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v4, v4, Lcom/prineside/tdi2/systems/GameStateSystem;->modeDifficultyMultiplier:I

    int-to-float v4, v4

    mul-float v4, v4, v9

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/Map;->multiplyPortalsDifficulty(F)V

    iget-object v4, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Map;->getAverageDifficulty()I

    move-result v9

    iput v9, v4, Lcom/prineside/tdi2/systems/GameStateSystem;->averageDifficulty:I

    iget-object v4, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v4, v2}, Lcom/prineside/tdi2/systems/MapSystem;->setMap(Lcom/prineside/tdi2/Map;)V

    invoke-virtual/range {p8 .. p8}, Lcom/prineside/tdi2/BasicLevel;->getComplexityWaveMilestones()[I

    move-result-object v4

    iget-object v9, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    aget v6, v4, v6

    aget v12, v4, v8

    aget v4, v4, v7

    invoke-virtual {v9, v6, v12, v4}, Lcom/prineside/tdi2/systems/WaveSystem;->setDifficultyGrowWaves(III)V

    iget-object v4, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Map;->getBossWaves()Lcom/badlogic/gdx/utils/IntMap;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/prineside/tdi2/systems/WaveSystem;->setBossWaves(Lcom/badlogic/gdx/utils/IntMap;)V

    iget v2, v1, Lcom/prineside/tdi2/BasicLevel;->gameStartsCount:I

    add-int/2addr v2, v8

    iput v2, v1, Lcom/prineside/tdi2/BasicLevel;->gameStartsCount:I

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/BasicLevelManager;->save()V

    iget-object v2, v0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/StatisticsType;->GS:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v2, v4, v10, v11}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    goto :goto_5

    :cond_5
    if-eqz v2, :cond_9

    iget-object v2, v2, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Map;->cpy()Lcom/prineside/tdi2/Map;

    move-result-object v2

    iget-object v12, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v12, v12, Lcom/prineside/tdi2/systems/GameStateSystem;->modeDifficultyMultiplier:I

    int-to-float v12, v12

    mul-float v12, v12, v9

    invoke-virtual {v2, v12}, Lcom/prineside/tdi2/Map;->multiplyPortalsDifficulty(F)V

    invoke-virtual {v2}, Lcom/prineside/tdi2/Map;->getComplexityWaveMilestones()[I

    move-result-object v9

    iget-object v12, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    aget v13, v9, v6

    aget v14, v9, v8

    aget v7, v9, v7

    invoke-virtual {v12, v13, v14, v7}, Lcom/prineside/tdi2/systems/WaveSystem;->setDifficultyGrowWaves(III)V

    invoke-virtual {v2}, Lcom/prineside/tdi2/Map;->getBossWaves()Lcom/badlogic/gdx/utils/IntMap;

    move-result-object v7

    if-nez v7, :cond_8

    if-eqz v4, :cond_8

    new-instance v7, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v7}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    const/16 v9, 0x28

    :goto_4
    const/4 v12, 0x0

    :cond_6
    const/16 v13, 0x7d0

    if-ge v9, v13, :cond_7

    aget-object v13, v4, v12

    invoke-virtual {v7, v9, v13}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x14

    add-int/2addr v12, v8

    array-length v13, v4

    if-ne v12, v13, :cond_6

    goto :goto_4

    :cond_7
    iget-object v6, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iput-object v4, v6, Lcom/prineside/tdi2/systems/GameStateSystem;->allowedBossesForCustomMaps:[Lcom/prineside/tdi2/enums/BossType;

    :cond_8
    iget-object v4, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/systems/WaveSystem;->setBossWaves(Lcom/badlogic/gdx/utils/IntMap;)V

    iget-object v4, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v4, v2}, Lcom/prineside/tdi2/systems/MapSystem;->setMap(Lcom/prineside/tdi2/Map;)V

    iget-object v4, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Map;->getAverageDifficulty()I

    move-result v6

    iput v6, v4, Lcom/prineside/tdi2/systems/GameStateSystem;->averageDifficulty:I

    iget-object v4, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Map;->generateSeed()I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Lcom/prineside/tdi2/systems/GameStateSystem;->setSeed(J)V

    iget-object v2, v0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/StatisticsType;->GS:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v2, v4, v10, v11}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    iget-object v2, v0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/StatisticsType;->GSUM:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v2, v4, v10, v11}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    :cond_9
    :goto_5
    iget-object v2, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/systems/GameValueSystem;->setGlobalSnapshot(Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;)V

    if-nez p15, :cond_a

    const-string v2, "GameScreen"

    const-string v4, "inventoryStatistics not specified, generating with manager"

    invoke-static {v2, v4}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/ProgressManager;->getInventoryStatistics()Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    move-result-object v2

    goto :goto_6

    :cond_a
    move-object/from16 v2, p15

    :goto_6
    iget-object v4, v0, Lcom/prineside/tdi2/GameSystemProvider;->loot:Lcom/prineside/tdi2/systems/LootSystem;

    iput-object v2, v4, Lcom/prineside/tdi2/systems/LootSystem;->inventoryStatistics:Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    invoke-static/range {p10 .. p10}, Lcom/prineside/tdi2/enums/DifficultyMode;->isEndless(Lcom/prineside/tdi2/enums/DifficultyMode;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v1, :cond_b

    iget-boolean v1, v1, Lcom/prineside/tdi2/BasicLevel;->hasLeaderboards:Z

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-virtual {v1}, Lcom/prineside/tdi2/tiles/TargetTile;->getGameValues()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    new-instance v2, Lcom/prineside/tdi2/GameValueConfig;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->ENEMIES_WALK_ON_PLATFORMS:Lcom/prineside/tdi2/enums/GameValueType;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-wide/from16 p3, v4

    move/from16 p5, v6

    move/from16 p6, v7

    invoke-direct/range {p1 .. p6}, Lcom/prineside/tdi2/GameValueConfig;-><init>(Lcom/prineside/tdi2/enums/GameValueType;DZZ)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/TargetTile;->getGameValues()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    new-instance v1, Lcom/prineside/tdi2/GameValueConfig;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->ENEMIES_MAX_PATH_SEARCHES:Lcom/prineside/tdi2/enums/GameValueType;

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object p0, v1

    move-object/from16 p1, v2

    move-wide/from16 p2, v3

    move/from16 p4, v5

    move/from16 p5, v6

    invoke-direct/range {p0 .. p5}, Lcom/prineside/tdi2/GameValueConfig;-><init>(Lcom/prineside/tdi2/enums/GameValueType;DZZ)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_b
    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "gvSnapshot not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method


# virtual methods
.method public final c()V
    .locals 13

    iget-object v0, p0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->CFG:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;

    iget-boolean v1, v1, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;->headless:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->headlessValidatedReplayRecord:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/prineside/tdi2/screens/GameScreen;->b:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/prineside/tdi2/screens/GameScreen;->b:Z

    iget-object v2, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iput-boolean v1, v2, Lcom/prineside/tdi2/systems/StateSystem;->inUpdateStage:Z

    iget-object v2, v0, Lcom/prineside/tdi2/GameSystemProvider;->_quest:Lcom/prineside/tdi2/systems/QuestSystem;

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameValueSystem;->getTickRateDeltaTime()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/systems/QuestSystem;->update(F)V

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v2, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->headlessValidatedReplayRecord:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    const-string v3, "GameScreen"

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-wide v4, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->validationStartTimestamp:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    const v1, 0x3a83126f    # 0.001f

    mul-float v6, v0, v1

    iget v0, v2, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    int-to-float v0, v0

    div-float/2addr v0, v6

    float-to-int v7, v0

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->isMaxEndlessReplayTimeReached()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "max duration of endless replay reached"

    invoke-static {v3, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->VALID:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->headlessValidatedReplayRecord:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    iget v1, v1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->defeatedWaves:I

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/WaveSystem;->getCompletedWavesCount()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->INVALID:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v1, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->headlessValidatedReplayRecord:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    iget-wide v1, v1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->score:J

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->getScore()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-eqz v0, :cond_5

    sget-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->INVALID:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-boolean v0, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->validationFingerprintMismatchPrinted:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->INVALID:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->VALID:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v8, v2, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/WaveSystem;->getCompletedWavesCount()I

    move-result v9

    iget-object v1, p0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->getScore()J

    move-result-wide v10

    iget-object v1, p0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v12, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->headlessValidatedReplayRecord:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;-><init>(Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;FIIIJLcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v2, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->pxpExperience:I

    iput v2, v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->xp:I

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->EK:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->enemiesKilled:I

    iget-object v1, p0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->RG:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->resourcesMined:I

    iget-object v1, p0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iput-object v1, v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->validationResultHandler:Lcom/prineside/tdi2/utils/ObjectRetriever;

    invoke-interface {v1, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void

    :cond_7
    iget-boolean v0, v0, Lcom/prineside/tdi2/systems/StateSystem;->replayMode:Z

    if-nez v0, :cond_8

    invoke-static {}, Lcom/prineside/tdi2/systems/GameStateSystem;->deleteSavedGame()V

    :cond_8
    iget-object v0, p0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/WaveSystem;->status:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    sget-object v2, Lcom/prineside/tdi2/systems/WaveSystem$Status;->NOT_STARTED:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    if-ne v0, v2, :cond_9

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->goToMainMenu()V

    goto/16 :goto_2

    :cond_9
    const-string v0, "Game Over ========"

    invoke-static {v3, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reason: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->gameOverReason:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updates count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v2, v2, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Random state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/systems/GameStateSystem;->getRandomState(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->getRandomState(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/prineside/tdi2/systems/GraphicsSystem;->pauseMenu:Lcom/prineside/tdi2/ui/components/PauseMenu;

    invoke-virtual {v0, v4}, Lcom/prineside/tdi2/ui/components/PauseMenu;->setVisible(Z)V

    :cond_a
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->hide()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->getGameSpeed()F

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/screens/GameScreen;->g:F

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    iput v3, p0, Lcom/prineside/tdi2/screens/GameScreen;->g:F

    :cond_b
    iget-object v2, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/systems/GameStateSystem;->setGameSpeed(F)V

    iget-object v2, v0, Lcom/prineside/tdi2/GameSystemProvider;->_input:Lcom/prineside/tdi2/systems/InputSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/InputSystem;->enableOnlyStage()V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v5, v1}, Lcom/prineside/tdi2/managers/MusicManager;->setVolume(FFZ)V

    iget-object v2, v0, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/GraphicsSystem;->fadeOutUi()V

    const v2, 0x3e19999a    # 0.15f

    iput v2, p0, Lcom/prineside/tdi2/screens/GameScreen;->f:F

    iget-object v2, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->gameOverReason:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    sget-object v5, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;->NO_ENEMIES_LEFT:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    if-eq v2, v5, :cond_c

    sget-object v5, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;->MANUAL:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    if-eq v2, v5, :cond_c

    iget-object v2, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/TargetTile;->startExplosionEffect()V

    :cond_c
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/SettingsManager;->isUiAnimationsEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    const/high16 v4, 0x3fc00000    # 1.5f

    :cond_d
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, v4

    mul-float v4, v4, v3

    new-instance v3, Lcom/prineside/tdi2/screens/GameScreen$4;

    invoke-direct {v3, p0, v0}, Lcom/prineside/tdi2/screens/GameScreen$4;-><init>(Lcom/prineside/tdi2/screens/GameScreen;Lcom/prineside/tdi2/GameSystemProvider;)V

    invoke-static {v3, v2}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;

    new-instance v2, Lcom/prineside/tdi2/screens/GameScreen$5;

    invoke-direct {v2, p0, v0}, Lcom/prineside/tdi2/screens/GameScreen$5;-><init>(Lcom/prineside/tdi2/screens/GameScreen;Lcom/prineside/tdi2/GameSystemProvider;)V

    invoke-static {v2, v4}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;

    :goto_2
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ResearchManager;->checkResearchesStatus(Z)V

    return-void
.end method

.method public final d(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;ZIZZJLcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/UserMap;Lcom/prineside/tdi2/enums/DifficultyMode;ILcom/prineside/tdi2/systems/GameStateSystem$GameMode;[Lcom/prineside/tdi2/enums/BossType;Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v15, p8

    move-object/from16 v14, p9

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ResearchManager;->updateAndValidateStarBranch()V

    const/16 v17, 0x0

    const/4 v13, 0x1

    if-nez p14, :cond_2

    const-string v1, "GameScreen"

    const-string v2, "gvSnapshot not specified, generating with manager"

    invoke-static {v1, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v15, :cond_0

    invoke-virtual/range {p8 .. p8}, Lcom/prineside/tdi2/BasicLevel;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, v14, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    :goto_0
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v1, v1, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-virtual {v1}, Lcom/prineside/tdi2/tiles/TargetTile;->isUseStockGameValues()Z

    move-result v6

    if-eqz v14, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, p10

    move-object/from16 v5, p8

    invoke-virtual/range {v1 .. v7}, Lcom/prineside/tdi2/managers/GameValueManager;->createSnapshot(Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;Lcom/prineside/tdi2/enums/DifficultyMode;ZLcom/prineside/tdi2/BasicLevel;ZZ)Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v1

    move-object/from16 v18, v1

    goto :goto_2

    :cond_2
    move-object/from16 v18, p14

    :goto_2
    new-instance v1, Lcom/prineside/tdi2/GameSystemProvider;

    new-instance v2, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;

    sget-object v12, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;->GAME:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v3

    invoke-direct {v2, v12, v3}, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;-><init>(Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;Z)V

    invoke-direct {v1, v2}, Lcom/prineside/tdi2/GameSystemProvider;-><init>(Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;)V

    iput-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v1}, Lcom/prineside/tdi2/GameSystemProvider;->createSystems()V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object v0, v12

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 p14, v0

    move-object v0, v15

    move-object/from16 v15, v18

    move-object/from16 v16, p15

    invoke-static/range {v1 .. v16}, Lcom/prineside/tdi2/screens/GameScreen;->configureSystemsBeforeSetup(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;ZIZZJLcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/UserMap;Lcom/prineside/tdi2/enums/DifficultyMode;ILcom/prineside/tdi2/systems/GameStateSystem$GameMode;[Lcom/prineside/tdi2/enums/BossType;Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)V

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/prineside/tdi2/BasicLevel;->hasLeaderboards:Z

    if-eqz v1, :cond_3

    const/16 v17, 0x1

    :cond_3
    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v1

    const-wide/16 v19, 0x0

    if-nez v1, :cond_4

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_SYNC_VALIDATION:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v1

    cmpl-double v3, v1, v19

    if-eqz v3, :cond_4

    if-eqz v17, :cond_4

    new-instance v1, Lcom/prineside/tdi2/GameSystemProvider;

    new-instance v2, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;

    move-object/from16 v3, p14

    const/4 v15, 0x1

    invoke-direct {v2, v3, v15}, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;-><init>(Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;Z)V

    invoke-direct {v1, v2}, Lcom/prineside/tdi2/GameSystemProvider;-><init>(Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;)V

    move-object/from16 v14, p0

    iput-object v1, v14, Lcom/prineside/tdi2/screens/GameScreen;->validationS:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v1}, Lcom/prineside/tdi2/GameSystemProvider;->createSystems()V

    iget-object v1, v14, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v2, v14, Lcom/prineside/tdi2/screens/GameScreen;->validationS:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iput-object v3, v1, Lcom/prineside/tdi2/systems/StateSystem;->duplicateActionsTo:Lcom/prineside/tdi2/systems/StateSystem;

    move-object v1, v2

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object v0, v14

    move-object/from16 v14, p13

    move-object/from16 v15, v18

    move-object/from16 v16, p15

    invoke-static/range {v1 .. v16}, Lcom/prineside/tdi2/screens/GameScreen;->configureSystemsBeforeSetup(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;ZIZZJLcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/UserMap;Lcom/prineside/tdi2/enums/DifficultyMode;ILcom/prineside/tdi2/systems/GameStateSystem$GameMode;[Lcom/prineside/tdi2/enums/BossType;Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->validationS:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v1}, Lcom/prineside/tdi2/GameSystemProvider;->setupSystems()V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->validationS:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v1}, Lcom/prineside/tdi2/GameSystemProvider;->postSetupSystems()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "icon-check"

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    const/4 v4, 0x0

    const-string v5, "Synchronization check enabled, thanks for helping us to make Infinitode 2 better!"

    invoke-virtual {v2, v5, v1, v3, v4}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    new-instance v1, Lcom/prineside/tdi2/screens/GameScreen$1;

    invoke-direct {v1, v0}, Lcom/prineside/tdi2/screens/GameScreen$1;-><init>(Lcom/prineside/tdi2/screens/GameScreen;)V

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v1, v2}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    :goto_3
    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Map;->xmMusicTrackTile:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->IGNORE_MAP_MUSIC:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v1

    cmpl-double v3, v1, v19

    if-nez v3, :cond_5

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/prineside/tdi2/managers/MusicManager;->setVolume(FFZ)V

    :cond_5
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager;->hideAllComponents()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->loadingOverlay:Lcom/prineside/tdi2/ui/shared/LoadingOverlay;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ui/shared/LoadingOverlay;->show()V

    :cond_6
    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v1}, Lcom/prineside/tdi2/GameSystemProvider;->setupSystems()V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->loader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v2, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v3, Lcom/prineside/tdi2/screens/GameScreen$2;

    invoke-direct {v3, v0}, Lcom/prineside/tdi2/screens/GameScreen$2;-><init>(Lcom/prineside/tdi2/screens/GameScreen;)V

    const-string v4, "Initialization"

    invoke-direct {v2, v4, v3}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->loader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v2, Lcom/prineside/tdi2/screens/GameScreen$3;

    invoke-direct {v2, v0}, Lcom/prineside/tdi2/screens/GameScreen$3;-><init>(Lcom/prineside/tdi2/screens/GameScreen;)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addListener(Lcom/prineside/tdi2/utils/GameSyncLoader$SyncExecutionListener;)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v2, v0, Lcom/prineside/tdi2/screens/GameScreen;->k:Lcom/prineside/tdi2/screens/GameScreen$_GameStateSystemListener;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    return-void
.end method

.method public dispose()V
    .locals 2

    invoke-super {p0}, Lcom/prineside/tdi2/Screen;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/GameSystemProvider;->dispose()V

    iput-object v1, p0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/screens/GameScreen;->validationS:Lcom/prineside/tdi2/GameSystemProvider;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/prineside/tdi2/GameSystemProvider;->dispose()V

    iput-object v1, p0, Lcom/prineside/tdi2/screens/GameScreen;->validationS:Lcom/prineside/tdi2/GameSystemProvider;

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/screens/GameScreen;->e:Z

    return-void
.end method

.method public draw(F)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->CFG:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;

    iget-boolean v1, v1, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;->headless:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    cmpg-float v4, p1, v3

    if-gez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move/from16 v4, p1

    :goto_0
    if-eqz v1, :cond_1

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "game_background"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    sget-object v6, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v7, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v8, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v9, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v6, v7, v8, v9, v5}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    sget-object v5, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v6, 0x4100

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    :cond_1
    iget-object v5, v0, Lcom/prineside/tdi2/screens/GameScreen;->loader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    invoke-virtual {v5}, Lcom/prineside/tdi2/utils/GameSyncLoader;->isDone()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->loader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    invoke-virtual {v1}, Lcom/prineside/tdi2/utils/GameSyncLoader;->iterate()Z

    goto/16 :goto_d

    :cond_2
    if-eqz v1, :cond_4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/SettingsManager;->isEscButtonJustPressed()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    if-eqz v5, :cond_3

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v5}, Lcom/prineside/tdi2/systems/GameStateSystem;->isGameOver()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    if-eqz v5, :cond_4

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v5}, Lcom/prineside/tdi2/systems/GameStateSystem;->togglePauseMenu()V

    :cond_4
    :goto_1
    const v5, 0x3e4ccccd    # 0.2f

    cmpl-float v6, v4, v5

    if-lez v6, :cond_5

    const v4, 0x3e4ccccd    # 0.2f

    :cond_5
    iget-object v5, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v5}, Lcom/prineside/tdi2/systems/StateSystem;->isFastForwarding()Z

    move-result v5

    const-wide/32 v6, 0x8235

    const/4 v8, 0x0

    if-eqz v5, :cond_12

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v9

    iget-object v2, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/systems/GameStateSystem;->setGameSpeed(F)V

    :goto_2
    iget-object v2, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v11, v2, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/StateSystem;->getFastForwardUpdateNumber()I

    move-result v2

    const-string v12, "GameScreen"

    if-ge v11, v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/screens/GameScreen;->updateSystems()V

    if-nez v1, :cond_8

    iget-object v2, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v11, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v11, v11, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    rem-int/lit16 v11, v11, 0x708

    if-nez v11, :cond_6

    invoke-static {v2}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator;->interval(Lcom/prineside/tdi2/GameSystemProvider;)V

    :cond_6
    iget-object v2, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v11, v2, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    iget v2, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->validationLastUpdateNumber:I

    if-ne v11, v2, :cond_7

    const-string v2, "reached last validation frame"

    invoke-static {v12, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    sget-object v11, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;->MANUAL:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    invoke-virtual {v2, v11}, Lcom/prineside/tdi2/systems/GameStateSystem;->triggerGameOver(Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;)V

    :cond_7
    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v13

    iget-object v2, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    move/from16 p1, v4

    iget-wide v3, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->validationStartTimestamp:J

    sub-long/2addr v13, v3

    const-wide/32 v2, 0xa4cb80

    cmp-long v4, v13, v2

    if-lez v4, :cond_9

    const-string v2, "validation running for too long, aborting"

    invoke-static {v12, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    sget-object v3, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;->MANUAL:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameStateSystem;->triggerGameOver(Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;)V

    goto :goto_3

    :cond_8
    move/from16 p1, v4

    :cond_9
    :goto_3
    iget-object v2, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->isGameOver()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/StateSystem;->stopFastForwarding()V

    goto :goto_4

    :cond_a
    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v2

    sub-long/2addr v2, v9

    cmp-long v4, v2, v6

    if-lez v4, :cond_d

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/StateSystem;->canSkipMediaUpdate()Z

    move-result v1

    if-nez v1, :cond_b

    const v1, 0x47023500    # 33333.0f

    invoke-virtual {v0, v1, v1}, Lcom/prineside/tdi2/screens/GameScreen;->updateDraw(FF)V

    :cond_b
    sget-object v1, Lcom/prineside/tdi2/screens/GameScreen;->o:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const-string v2, "Frame "

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v3, v3, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/StateSystem;->getFastForwardUpdateNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->loadingOverlay:Lcom/prineside/tdi2/ui/shared/LoadingOverlay;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v4, v3, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    int-to-float v4, v4

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/StateSystem;->getFastForwardUpdateNumber()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v4, v3

    invoke-virtual {v2, v4, v1}, Lcom/prineside/tdi2/ui/shared/LoadingOverlay;->show(FLjava/lang/CharSequence;)V

    :cond_c
    return-void

    :cond_d
    move/from16 v4, p1

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_e
    move/from16 p1, v4

    :goto_4
    iget-object v2, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v3, v2, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/StateSystem;->getFastForwardUpdateNumber()I

    move-result v2

    if-lt v3, v2, :cond_13

    iget-object v2, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/StateSystem;->stopFastForwarding()V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    if-eqz v2, :cond_f

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v2

    iget v2, v2, Lcom/prineside/tdi2/BasicLevel;->fastForwardFrame:I

    if-lez v2, :cond_f

    iget-object v2, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/systems/GameStateSystem;->setGameSpeed(F)V

    goto :goto_5

    :cond_f
    iget-object v2, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameStateSystem;->setGameSpeed(F)V

    :goto_5
    if-eqz v1, :cond_10

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->loadingOverlay:Lcom/prineside/tdi2/ui/shared/LoadingOverlay;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ui/shared/LoadingOverlay;->hide()V

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fast forward to update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/StateSystem;->getFastForwardUpdateNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " done, frame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v2, v2, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", continued game state hash "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->getApproxStateHash()I

    move-result v2

    iget-object v3, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v3, v3, Lcom/prineside/tdi2/systems/GameStateSystem;->continuedGameApproxStateHash:I

    if-ne v2, v3, :cond_11

    const-string v2, "matches :)"

    goto :goto_6

    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "differs :( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/GameStateSystem;->getApproxStateHash()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v3, v3, Lcom/prineside/tdi2/systems/GameStateSystem;->continuedGameApproxStateHash:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_12
    move/from16 p1, v4

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v1}, Lcom/prineside/tdi2/GameSystemProvider;->resetSystemsFrameProfiling()V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->isGameOver()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/screens/GameScreen;->c()V

    :cond_13
    :goto_7
    const/4 v1, 0x0

    const/4 v3, 0x0

    goto/16 :goto_c

    :cond_14
    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->getGameSpeed()F

    move-result v1

    mul-float v4, v1, p1

    const/4 v3, 0x0

    cmpg-float v5, v4, v3

    if-ltz v5, :cond_23

    iget v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->c:F

    add-float/2addr v1, v4

    iput v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->c:F

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_15

    iput v3, v0, Lcom/prineside/tdi2/screens/GameScreen;->c:F

    :cond_15
    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->getGameSpeed()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1b

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v1

    iget-object v3, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getTickRateDeltaTime()F

    move-result v3

    iget-object v5, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-boolean v5, v5, Lcom/prineside/tdi2/systems/StateSystem;->updateRequired:Z

    if-eqz v5, :cond_16

    iget v5, v0, Lcom/prineside/tdi2/screens/GameScreen;->c:F

    cmpg-float v5, v5, v3

    if-gez v5, :cond_16

    iput v3, v0, Lcom/prineside/tdi2/screens/GameScreen;->c:F

    :cond_16
    const/4 v5, 0x0

    :cond_17
    iget v9, v0, Lcom/prineside/tdi2/screens/GameScreen;->c:F

    cmpl-float v9, v9, v3

    if-ltz v9, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/screens/GameScreen;->updateSystems()V

    iget v9, v0, Lcom/prineside/tdi2/screens/GameScreen;->c:F

    sub-float/2addr v9, v3

    iput v9, v0, Lcom/prineside/tdi2/screens/GameScreen;->c:F

    add-int/lit8 v5, v5, 0x1

    iget-object v9, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v9, v9, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-boolean v10, v9, Lcom/prineside/tdi2/systems/StateSystem;->replayMode:Z

    if-eqz v10, :cond_18

    iget v10, v9, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    int-to-long v12, v10

    iget-wide v14, v9, Lcom/prineside/tdi2/systems/StateSystem;->replayFrameCount:J

    cmp-long v10, v12, v14

    if-nez v10, :cond_18

    sget-object v10, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;->MANUAL:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/systems/GameStateSystem;->triggerGameOver(Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;)V

    :cond_18
    iget-object v9, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v9, v9, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v9}, Lcom/prineside/tdi2/systems/GameStateSystem;->isGameOver()Z

    move-result v9

    if-eqz v9, :cond_19

    goto :goto_8

    :cond_19
    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v9

    sub-long/2addr v9, v1

    cmp-long v12, v9, v6

    if-lez v12, :cond_17

    int-to-float v4, v5

    mul-float v3, v3, v4

    goto :goto_9

    :cond_1a
    :goto_8
    move v3, v4

    :goto_9
    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v6

    sub-long/2addr v6, v1

    long-to-float v1, v6

    const v2, 0x3a83126f    # 0.001f

    mul-float v1, v1, v2

    move v2, v5

    move/from16 v16, v3

    move v3, v1

    move/from16 v1, v16

    goto :goto_b

    :cond_1b
    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-boolean v1, v1, Lcom/prineside/tdi2/systems/StateSystem;->updateRequired:Z

    if-eqz v1, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/screens/GameScreen;->updateSystems()V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getTickRateDeltaTime()F

    move-result v3

    move v1, v3

    goto :goto_a

    :cond_1c
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    const/4 v3, 0x0

    :goto_b
    iget-object v4, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iput-boolean v8, v4, Lcom/prineside/tdi2/systems/StateSystem;->updateRequired:Z

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/DebugManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1d

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    const-string v5, "Game updates last frame"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/DebugManager;->registerValue(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_1d
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/DebugManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v2}, Lcom/prineside/tdi2/GameSystemProvider;->flushSystemsFrameProfiling()V

    :cond_1e
    move/from16 v16, v3

    move v3, v1

    move/from16 v1, v16

    :goto_c
    iget-boolean v2, v0, Lcom/prineside/tdi2/screens/GameScreen;->e:Z

    if-eqz v2, :cond_1f

    return-void

    :cond_1f
    iget-object v2, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    move/from16 v5, p1

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/systems/GameStateSystem;->realUpdate(F)V

    const/4 v2, 0x0

    cmpg-float v4, v3, v2

    if-ltz v4, :cond_20

    const/high16 v4, 0x45610000    # 3600.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_21

    :cond_20
    const/4 v3, 0x0

    :cond_21
    invoke-virtual {v0, v3, v5}, Lcom/prineside/tdi2/screens/GameScreen;->updateDraw(FF)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/DebugManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_22

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    const-string v3, "Game speed"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/DebugManager;->registerValue(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/GameStateSystem;->getGameSpeed()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    const-string v3, "Updates time"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/DebugManager;->registerValue(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_22
    :goto_d
    return-void

    :cond_23
    move/from16 v5, p1

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expectedDeltaTime is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " game speed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " real delta "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_f

    :goto_e
    throw v2

    :goto_f
    goto :goto_e
.end method

.method public show()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    :cond_0
    return-void
.end method

.method public updateDraw(FF)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->CFG:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;

    iget-boolean v1, v1, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;->headless:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x41200000    # 10.0f

    const/4 v2, 0x0

    cmpg-float v3, p1, v2

    if-ltz v3, :cond_3

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    cmpl-float v3, p1, v1

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v1, p1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-object v3, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/GameStateSystem;->isGameOver()Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_4

    iget v3, v0, Lcom/prineside/tdi2/screens/GameScreen;->f:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v5, v5, p2

    add-float/2addr v3, v5

    iput v3, v0, Lcom/prineside/tdi2/screens/GameScreen;->f:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    iput v4, v0, Lcom/prineside/tdi2/screens/GameScreen;->f:F

    :cond_4
    iget v3, v0, Lcom/prineside/tdi2/screens/GameScreen;->f:F

    mul-float v3, v3, p2

    iget v5, v0, Lcom/prineside/tdi2/screens/GameScreen;->d:F

    iget-object v6, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v6}, Lcom/prineside/tdi2/systems/GameValueSystem;->getTickRateDeltaTime()F

    move-result v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_5

    iget-object v5, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v5}, Lcom/prineside/tdi2/systems/GameValueSystem;->getTickRateDeltaTime()F

    move-result v5

    :cond_5
    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v7, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->GRAPHICS_INTERPOLATION_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-nez v10, :cond_6

    const/4 v5, 0x0

    :cond_6
    iget-object v6, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v6}, Lcom/prineside/tdi2/systems/GameStateSystem;->isGameOver()Z

    move-result v6

    if-eqz v6, :cond_8

    iget v5, v0, Lcom/prineside/tdi2/screens/GameScreen;->g:F

    mul-float v6, p2, v5

    iget v7, v0, Lcom/prineside/tdi2/screens/GameScreen;->h:F

    add-float/2addr v6, v7

    iput v6, v0, Lcom/prineside/tdi2/screens/GameScreen;->h:F

    const/high16 v7, 0x40a00000    # 5.0f

    mul-float v7, v7, p2

    mul-float v7, v7, v5

    sub-float/2addr v5, v7

    iput v5, v0, Lcom/prineside/tdi2/screens/GameScreen;->g:F

    cmpg-float v5, v5, v2

    if-gez v5, :cond_7

    iput v2, v0, Lcom/prineside/tdi2/screens/GameScreen;->g:F

    :cond_7
    move v5, v6

    :cond_8
    cmpg-float v6, v5, v2

    if-gez v6, :cond_9

    const/4 v5, 0x0

    :cond_9
    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v6

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v8, v8, Lcom/prineside/tdi2/managers/RenderingManager;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget-object v9, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v9, v9, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v9, v9, Lcom/prineside/tdi2/systems/GraphicsSystem;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    const/16 v9, 0x302

    const/16 v10, 0x303

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    iget-object v11, v0, Lcom/prineside/tdi2/screens/GameScreen;->l:Lcom/prineside/luaj/LuaValue;

    if-nez v11, :cond_a

    invoke-static {v8}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object v11

    iput-object v11, v0, Lcom/prineside/tdi2/screens/GameScreen;->l:Lcom/prineside/luaj/LuaValue;

    goto :goto_2

    :cond_a
    check-cast v11, Lcom/prineside/luaj/lib/jse/JavaInstance;

    iget-object v11, v11, Lcom/prineside/luaj/LuaUserdata;->m_instance:Ljava/lang/Object;

    if-eq v11, v8, :cond_b

    invoke-static {v8}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object v11

    iput-object v11, v0, Lcom/prineside/tdi2/screens/GameScreen;->l:Lcom/prineside/luaj/LuaValue;

    :cond_b
    :goto_2
    iget-object v11, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v11, v11, Lcom/prineside/tdi2/GameSystemProvider;->script:Lcom/prineside/tdi2/systems/ScriptSystem;

    if-eqz v11, :cond_c

    iget-object v11, v11, Lcom/prineside/tdi2/systems/ScriptSystem;->scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    if-eqz v11, :cond_c

    iget-object v12, v0, Lcom/prineside/tdi2/screens/GameScreen;->l:Lcom/prineside/luaj/LuaValue;

    float-to-double v13, v1

    invoke-static {v13, v14}, Lcom/prineside/tdi2/utils/PMath;->cachedLuaDouble1(D)Lcom/prineside/luaj/LuaDouble;

    move-result-object v13

    const-string v14, "BeginRender"

    invoke-virtual {v11, v14, v12, v13}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->triggerEvent(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    :cond_c
    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v11

    iget-object v13, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v13, v13, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    invoke-virtual {v13, v8, v3}, Lcom/prineside/tdi2/systems/GraphicsSystem;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v14

    sub-long/2addr v14, v11

    const-string v11, "Graphics-drawBackground"

    invoke-virtual {v13, v11, v14, v15}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    iget-object v11, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v11, v11, Lcom/prineside/tdi2/GameSystemProvider;->script:Lcom/prineside/tdi2/systems/ScriptSystem;

    if-eqz v11, :cond_d

    iget-object v11, v11, Lcom/prineside/tdi2/systems/ScriptSystem;->scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    if-eqz v11, :cond_d

    iget-object v12, v0, Lcom/prineside/tdi2/screens/GameScreen;->l:Lcom/prineside/luaj/LuaValue;

    float-to-double v13, v1

    invoke-static {v13, v14}, Lcom/prineside/tdi2/utils/PMath;->cachedLuaDouble1(D)Lcom/prineside/luaj/LuaDouble;

    move-result-object v13

    const-string v14, "PostBackgroundRender"

    invoke-virtual {v11, v14, v12, v13}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->triggerEvent(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    :cond_d
    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v11

    iget-object v13, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v14, v13, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    iget-object v13, v13, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v13, v13, Lcom/prineside/tdi2/systems/GraphicsSystem;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-virtual {v14, v13}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->drawTiles(Lcom/badlogic/gdx/graphics/OrthographicCamera;)V

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v14

    sub-long/2addr v14, v11

    const-string v11, "MapRendering-drawTiles"

    invoke-virtual {v13, v11, v14, v15}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v11}, Lcom/prineside/tdi2/managers/SettingsManager;->isStainsEnabled()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v11

    iget-object v13, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v13, v13, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {v13, v8}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->drawStains(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v14

    sub-long/2addr v14, v11

    const-string v11, "MapRendering-drawStains"

    invoke-virtual {v13, v11, v14, v15}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    :cond_e
    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v11

    iget-object v13, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v14, v13, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    iget-object v13, v13, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v13, v13, Lcom/prineside/tdi2/systems/GraphicsSystem;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-virtual {v14, v13}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->drawTilesExtras(Lcom/badlogic/gdx/graphics/OrthographicCamera;)V

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v14

    sub-long/2addr v14, v11

    const-string v11, "MapRendering-drawTilesExtras"

    invoke-virtual {v13, v11, v14, v15}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    iget-object v11, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v11, v11, Lcom/prineside/tdi2/GameSystemProvider;->script:Lcom/prineside/tdi2/systems/ScriptSystem;

    if-eqz v11, :cond_f

    iget-object v11, v11, Lcom/prineside/tdi2/systems/ScriptSystem;->scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    if-eqz v11, :cond_f

    iget-object v12, v0, Lcom/prineside/tdi2/screens/GameScreen;->l:Lcom/prineside/luaj/LuaValue;

    float-to-double v13, v1

    invoke-static {v13, v14}, Lcom/prineside/tdi2/utils/PMath;->cachedLuaDouble1(D)Lcom/prineside/luaj/LuaDouble;

    move-result-object v13

    const-string v14, "PostMapTilesRender"

    invoke-virtual {v11, v14, v12, v13}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->triggerEvent(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    :cond_f
    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v11

    iget-object v13, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v13, v13, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {v13, v8, v1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v14

    sub-long/2addr v14, v11

    const-string v11, "MapRendering-drawBatch"

    invoke-virtual {v13, v11, v14, v15}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    iget-object v11, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v11, v11, Lcom/prineside/tdi2/GameSystemProvider;->script:Lcom/prineside/tdi2/systems/ScriptSystem;

    if-eqz v11, :cond_10

    iget-object v11, v11, Lcom/prineside/tdi2/systems/ScriptSystem;->scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    if-eqz v11, :cond_10

    iget-object v12, v0, Lcom/prineside/tdi2/screens/GameScreen;->l:Lcom/prineside/luaj/LuaValue;

    float-to-double v13, v1

    invoke-static {v13, v14}, Lcom/prineside/tdi2/utils/PMath;->cachedLuaDouble1(D)Lcom/prineside/luaj/LuaDouble;

    move-result-object v13

    const-string v14, "PostMapRender"

    invoke-virtual {v11, v14, v12, v13}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->triggerEvent(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    :cond_10
    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v11

    iget-object v13, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v14, v13, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    iget-object v13, v13, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v13, v13, Lcom/prineside/tdi2/systems/GraphicsSystem;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-virtual {v14, v13}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->drawTowers(Lcom/badlogic/gdx/graphics/OrthographicCamera;)V

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v14

    sub-long/2addr v14, v11

    const-string v11, "MapRendering-drawTowers"

    invoke-virtual {v13, v11, v14, v15}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    sget-object v11, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    cmpg-float v12, v5, v2

    if-gez v12, :cond_11

    const/4 v5, 0x0

    :cond_11
    cmpl-float v12, v5, v4

    if-lez v12, :cond_12

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_12
    iget-object v12, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v12, v12, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    invoke-virtual {v12, v5}, Lcom/prineside/tdi2/systems/TowerSystem;->applyDrawInterpolation(F)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v12

    iget-object v14, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v14, v14, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {v14}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->getDrawMode()Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    move-result-object v14

    sget-object v15, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DETAILED:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-ne v14, v15, :cond_13

    const v14, 0x3e570a3d    # 0.21f

    invoke-virtual {v8, v2, v2, v2, v14}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    :cond_13
    iget-object v14, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v14, v14, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    invoke-virtual {v14, v8, v1}, Lcom/prineside/tdi2/systems/TowerSystem;->drawWeapons(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object v14, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v15

    sub-long v12, v15, v12

    const-string v15, "Tower-drawWeapons"

    invoke-virtual {v14, v15, v12, v13}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v12

    iget-object v14, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v14, v14, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    invoke-virtual {v14, v8, v1}, Lcom/prineside/tdi2/systems/TowerSystem;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v15

    sub-long v12, v15, v12

    const-string v15, "Tower-drawBatch"

    invoke-virtual {v14, v15, v12, v13}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v12

    iget-object v14, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v14, v14, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    invoke-virtual {v14, v8, v1}, Lcom/prineside/tdi2/systems/MinerSystem;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v15

    sub-long v12, v15, v12

    const-string v15, "Miner-drawBatch"

    invoke-virtual {v14, v15, v12, v13}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v12

    iget-object v14, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v14, v14, Lcom/prineside/tdi2/GameSystemProvider;->modifier:Lcom/prineside/tdi2/systems/ModifierSystem;

    invoke-virtual {v14, v8, v1}, Lcom/prineside/tdi2/systems/ModifierSystem;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v15

    sub-long v12, v15, v12

    const-string v15, "Modifier-drawBatch"

    invoke-virtual {v14, v15, v12, v13}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    iget-object v12, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v12, v12, Lcom/prineside/tdi2/GameSystemProvider;->script:Lcom/prineside/tdi2/systems/ScriptSystem;

    if-eqz v12, :cond_14

    iget-object v12, v12, Lcom/prineside/tdi2/systems/ScriptSystem;->scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    if-eqz v12, :cond_14

    iget-object v13, v0, Lcom/prineside/tdi2/screens/GameScreen;->l:Lcom/prineside/luaj/LuaValue;

    float-to-double v14, v1

    invoke-static {v14, v15}, Lcom/prineside/tdi2/utils/PMath;->cachedLuaDouble1(D)Lcom/prineside/luaj/LuaDouble;

    move-result-object v14

    move-object/from16 p2, v11

    float-to-double v10, v5

    invoke-static {v10, v11}, Lcom/prineside/tdi2/utils/PMath;->cachedLuaDouble2(D)Lcom/prineside/luaj/LuaDouble;

    move-result-object v10

    const-string v11, "PostBuildingsRender"

    invoke-virtual {v12, v11, v13, v14, v10}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->triggerEvent(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    goto :goto_3

    :cond_14
    move-object/from16 p2, v11

    :goto_3
    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v10

    iget-object v12, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v12, v12, Lcom/prineside/tdi2/GameSystemProvider;->_pathRendering:Lcom/prineside/tdi2/systems/PathRenderingSystem;

    invoke-virtual {v12, v8, v3}, Lcom/prineside/tdi2/systems/PathRenderingSystem;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v13

    sub-long/2addr v13, v10

    const-string v10, "PathRendering-draw"

    invoke-virtual {v12, v10, v13, v14}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v10

    cmpg-float v12, v5, v2

    if-gez v12, :cond_15

    const/4 v5, 0x0

    :cond_15
    cmpl-float v12, v5, v4

    if-lez v12, :cond_16

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_16
    iget-object v12, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v12, v12, Lcom/prineside/tdi2/GameSystemProvider;->unit:Lcom/prineside/tdi2/systems/UnitSystem;

    invoke-virtual {v12, v8, v1, v5}, Lcom/prineside/tdi2/systems/UnitSystem;->drawGrounded(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v13

    sub-long/2addr v13, v10

    const-string v10, "Unit-drawGrounded"

    invoke-virtual {v12, v10, v13, v14}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v10

    cmpg-float v12, v5, v2

    if-gez v12, :cond_17

    const/4 v5, 0x0

    :cond_17
    cmpl-float v12, v5, v4

    if-lez v12, :cond_18

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_18
    iget-object v12, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v12, v12, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v12, v8, v1, v5}, Lcom/prineside/tdi2/systems/EnemySystem;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v13

    sub-long/2addr v13, v10

    const-string v10, "Enemy-draw"

    invoke-virtual {v12, v10, v13, v14}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v10

    cmpg-float v12, v5, v2

    if-gez v12, :cond_19

    const/4 v5, 0x0

    :cond_19
    cmpl-float v12, v5, v4

    if-lez v12, :cond_1a

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_1a
    iget-object v12, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v12, v12, Lcom/prineside/tdi2/GameSystemProvider;->unit:Lcom/prineside/tdi2/systems/UnitSystem;

    invoke-virtual {v12, v8, v1, v5}, Lcom/prineside/tdi2/systems/UnitSystem;->drawFlying(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v13

    sub-long/2addr v13, v10

    const-string v10, "Unit-drawFlying"

    invoke-virtual {v12, v10, v13, v14}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    iget-object v10, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v10, v10, Lcom/prineside/tdi2/GameSystemProvider;->script:Lcom/prineside/tdi2/systems/ScriptSystem;

    if-eqz v10, :cond_1b

    iget-object v10, v10, Lcom/prineside/tdi2/systems/ScriptSystem;->scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    if-eqz v10, :cond_1b

    iget-object v11, v0, Lcom/prineside/tdi2/screens/GameScreen;->l:Lcom/prineside/luaj/LuaValue;

    float-to-double v12, v1

    invoke-static {v12, v13}, Lcom/prineside/tdi2/utils/PMath;->cachedLuaDouble1(D)Lcom/prineside/luaj/LuaDouble;

    move-result-object v12

    float-to-double v13, v5

    invoke-static {v13, v14}, Lcom/prineside/tdi2/utils/PMath;->cachedLuaDouble2(D)Lcom/prineside/luaj/LuaDouble;

    move-result-object v13

    const-string v14, "PostUnitsRender"

    invoke-virtual {v10, v14, v11, v12, v13}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->triggerEvent(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    :cond_1b
    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v11

    iget-object v13, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v13, v13, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    invoke-virtual {v13, v8, v1}, Lcom/prineside/tdi2/systems/TowerSystem;->drawBatchAdditive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v14

    sub-long/2addr v14, v11

    const-string v11, "Tower-drawBatchAdditive"

    invoke-virtual {v13, v11, v14, v15}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v11

    iget-object v13, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v13, v13, Lcom/prineside/tdi2/GameSystemProvider;->modifier:Lcom/prineside/tdi2/systems/ModifierSystem;

    invoke-virtual {v13, v8, v1}, Lcom/prineside/tdi2/systems/ModifierSystem;->drawBatchAdditive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v14

    sub-long/2addr v14, v11

    const-string v11, "Modifier-drawBatchAdditive"

    invoke-virtual {v13, v11, v14, v15}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v11

    iget-object v13, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v13, v13, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    invoke-virtual {v13, v8, v1}, Lcom/prineside/tdi2/systems/AbilitySystem;->drawBatchAdditive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v14

    sub-long/2addr v14, v11

    const-string v11, "Ability-drawBatchAdditive"

    invoke-virtual {v13, v11, v14, v15}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v11

    iget-object v13, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v13, v13, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-virtual {v13, v8, v3, v1}, Lcom/prineside/tdi2/systems/ParticleSystem;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v14

    sub-long/2addr v14, v11

    const-string v11, "Particle-draw"

    invoke-virtual {v13, v11, v14, v15}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    const/16 v11, 0x303

    invoke-virtual {v8, v9, v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    move-object/from16 v11, p2

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v12

    iget-object v14, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v14, v14, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v14, v8, v1}, Lcom/prineside/tdi2/systems/MapSystem;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v15

    sub-long v12, v15, v12

    const-string v15, "Map-drawBatch"

    invoke-virtual {v14, v15, v12, v13}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v12

    iget-object v14, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v14, v14, Lcom/prineside/tdi2/GameSystemProvider;->_projectileTrail:Lcom/prineside/tdi2/systems/ProjectileTrailSystem;

    invoke-virtual {v14, v8, v1, v3}, Lcom/prineside/tdi2/systems/ProjectileTrailSystem;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v15

    sub-long v12, v15, v12

    const-string v15, "ProjectileTrail-draw"

    invoke-virtual {v14, v15, v12, v13}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v12

    cmpg-float v14, v5, v2

    if-gez v14, :cond_1c

    const/4 v5, 0x0

    :cond_1c
    cmpl-float v14, v5, v4

    if-lez v14, :cond_1d

    goto :goto_4

    :cond_1d
    move v4, v5

    :goto_4
    iget-object v5, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->projectile:Lcom/prineside/tdi2/systems/ProjectileSystem;

    invoke-virtual {v5, v8, v1, v4}, Lcom/prineside/tdi2/systems/ProjectileSystem;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v14

    sub-long/2addr v14, v12

    const-string v12, "Projectile-draw"

    invoke-virtual {v5, v12, v14, v15}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    iget-object v5, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->script:Lcom/prineside/tdi2/systems/ScriptSystem;

    if-eqz v5, :cond_1e

    iget-object v5, v5, Lcom/prineside/tdi2/systems/ScriptSystem;->scriptEnvironment:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    if-eqz v5, :cond_1e

    iget-object v12, v0, Lcom/prineside/tdi2/screens/GameScreen;->l:Lcom/prineside/luaj/LuaValue;

    float-to-double v13, v1

    invoke-static {v13, v14}, Lcom/prineside/tdi2/utils/PMath;->cachedLuaDouble1(D)Lcom/prineside/luaj/LuaDouble;

    move-result-object v13

    float-to-double v14, v4

    invoke-static {v14, v15}, Lcom/prineside/tdi2/utils/PMath;->cachedLuaDouble2(D)Lcom/prineside/luaj/LuaDouble;

    move-result-object v4

    const-string v14, "PostProjectilesRender"

    invoke-virtual {v5, v14, v12, v13, v4}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->triggerEvent(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    :cond_1e
    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    const/16 v4, 0x303

    invoke-virtual {v8, v9, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v4

    iget-object v9, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v9, v9, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {v9, v8, v1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->postDrawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v12

    sub-long/2addr v12, v4

    const-string v4, "MapRendering-postDrawBatch"

    invoke-virtual {v9, v4, v12, v13}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v4

    iget-object v9, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v9, v9, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    invoke-virtual {v9, v8, v1}, Lcom/prineside/tdi2/systems/AbilitySystem;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v12

    sub-long/2addr v12, v4

    const-string v4, "Ability-draw"

    invoke-virtual {v9, v4, v12, v13}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v4

    iget-object v9, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v12, v9, Lcom/prineside/tdi2/GameSystemProvider;->_input:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object v12, v12, Lcom/prineside/tdi2/systems/InputSystem;->cameraController:Lcom/prineside/tdi2/CameraController;

    iget-wide v12, v12, Lcom/prineside/tdi2/CameraController;->zoom:D

    const-wide/high16 v14, 0x4004000000000000L    # 2.5

    cmpg-double v16, v12, v14

    if-gez v16, :cond_1f

    iget-object v9, v9, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v9, v8, v1}, Lcom/prineside/tdi2/systems/EnemySystem;->drawEnemyHealth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_1f
    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v12

    sub-long/2addr v12, v4

    const-string v4, "Enemy-drawHealth"

    invoke-virtual {v9, v4, v12, v13}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v4

    iget-object v9, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v9, v9, Lcom/prineside/tdi2/GameSystemProvider;->_input:Lcom/prineside/tdi2/systems/InputSystem;

    invoke-virtual {v9, v8, v1, v3}, Lcom/prineside/tdi2/systems/InputSystem;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v12

    sub-long/2addr v12, v4

    const-string v4, "Input-draw"

    invoke-virtual {v9, v4, v12, v13}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v4

    iget-object v9, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v9, v9, Lcom/prineside/tdi2/GameSystemProvider;->_quest:Lcom/prineside/tdi2/systems/QuestSystem;

    invoke-virtual {v9, v1, v3}, Lcom/prineside/tdi2/systems/QuestSystem;->draw(FF)V

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v12

    sub-long/2addr v12, v4

    const-string v4, "Quest-draw"

    invoke-virtual {v9, v4, v12, v13}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v4

    iget-object v9, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v9, v9, Lcom/prineside/tdi2/GameSystemProvider;->script:Lcom/prineside/tdi2/systems/ScriptSystem;

    invoke-virtual {v9, v8, v1}, Lcom/prineside/tdi2/systems/ScriptSystem;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v12

    sub-long/2addr v12, v4

    const-string v4, "Script-draw"

    invoke-virtual {v9, v4, v12, v13}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v4

    iget-object v8, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v8, v8, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    invoke-virtual {v8, v3}, Lcom/prineside/tdi2/systems/GraphicsSystem;->draw(F)V

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v11

    sub-long/2addr v11, v4

    const-string v4, "Graphics-draw"

    invoke-virtual {v8, v4, v11, v12}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->_sound:Lcom/prineside/tdi2/systems/SoundSystem;

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/systems/SoundSystem;->draw(F)V

    iget v4, v0, Lcom/prineside/tdi2/screens/GameScreen;->d:F

    add-float/2addr v4, v1

    iput v4, v0, Lcom/prineside/tdi2/screens/GameScreen;->d:F

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->CFG:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;

    iget-boolean v1, v1, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;->headless:Z

    if-nez v1, :cond_20

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/StateSystem;->isFastForwarding()Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->isGameOver()Z

    move-result v1

    if-nez v1, :cond_20

    iget v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->i:F

    add-float/2addr v1, v3

    iput v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->i:F

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v3, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->STATE_AUTO_SAVE_INTERVAL:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v3

    double-to-float v1, v3

    const/high16 v3, 0x42700000    # 60.0f

    mul-float v1, v1, v3

    cmpl-float v3, v1, v2

    if-lez v3, :cond_20

    iget v3, v0, Lcom/prineside/tdi2/screens/GameScreen;->i:F

    cmpl-float v1, v3, v1

    if-lez v1, :cond_20

    iget-object v1, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->saveGame()V

    iput v2, v0, Lcom/prineside/tdi2/screens/GameScreen;->i:F

    :cond_20
    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v3

    sub-long/2addr v3, v6

    long-to-float v1, v3

    const v3, 0x3a83126f    # 0.001f

    mul-float v1, v1, v3

    iget-object v3, v0, Lcom/prineside/tdi2/screens/GameScreen;->m:[F

    iget v4, v0, Lcom/prineside/tdi2/screens/GameScreen;->n:I

    aput v1, v3, v4

    add-int/2addr v4, v10

    iput v4, v0, Lcom/prineside/tdi2/screens/GameScreen;->n:I

    array-length v3, v3

    const/4 v5, 0x0

    if-ne v4, v3, :cond_21

    iput v5, v0, Lcom/prineside/tdi2/screens/GameScreen;->n:I

    :cond_21
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/DebugManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_23

    iget-object v3, v0, Lcom/prineside/tdi2/screens/GameScreen;->m:[F

    array-length v4, v3

    :goto_5
    if-ge v5, v4, :cond_22

    aget v6, v3, v5

    add-float/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_22
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    const-string v4, "Drawing time"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/DebugManager;->registerValue(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    float-to-double v4, v1

    const/4 v1, 0x2

    invoke-static {v4, v5, v1}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DI)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    const-string v4, "ms / "

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/prineside/tdi2/screens/GameScreen;->m:[F

    array-length v4, v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5, v1}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DI)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_23
    return-void
.end method

.method public updateSystems()V
    .locals 8

    const-string v0, "icon-exclamation-triangle"

    const/4 v1, 0x0

    sput-boolean v1, Lcom/prineside/tdi2/GameSystemProvider;->DEBUG:Z

    iget-object v2, p0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v2

    iget-boolean v2, v2, Lcom/prineside/tdi2/BasicLevel;->hasLeaderboards:Z

    :cond_0
    iget-object v2, p0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v2}, Lcom/prineside/tdi2/GameSystemProvider;->updateSystems()V

    const/4 v2, 0x0

    iput v2, p0, Lcom/prineside/tdi2/screens/GameScreen;->d:F

    iget-object v2, p0, Lcom/prineside/tdi2/screens/GameScreen;->validationS:Lcom/prineside/tdi2/GameSystemProvider;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/prineside/tdi2/GameSystemProvider;->updateSystems()V

    sget-object v2, Lcom/prineside/tdi2/screens/GameScreen;->p:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/prineside/tdi2/screens/GameScreen;->validationS:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, p0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v4, v5, v2, v1}, Lcom/prineside/tdi2/GameSystemProvider;->compareSync(Lcom/prineside/tdi2/GameSystemProvider;Lcom/badlogic/gdx/utils/StringBuilder;Z)V

    iget v4, v2, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-eqz v4, :cond_2

    const-string v4, "GameScreen"

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/GameStateSystem;->headlessValidatedReplayRecord:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    iget-object v4, v4, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    :goto_0
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "desync-report-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".txt"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v4, v5, v1, v6}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/GameScreen;->validationS:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v1}, Lcom/prineside/tdi2/GameSystemProvider;->dispose()V

    iput-object v3, p0, Lcom/prineside/tdi2/screens/GameScreen;->validationS:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sync check - desync\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prineside/tdi2/Logger;->report(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    const-string v4, "Desynchronization spotted!"

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lcom/prineside/tdi2/enums/StaticSoundType;->WARNING:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v2, v4, v1, v5, v6}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    iput-object v3, p0, Lcom/prineside/tdi2/screens/GameScreen;->validationS:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Sync check - exception"

    invoke-static {v2, v1}, Lcom/prineside/tdi2/Logger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/enums/StaticSoundType;->WARNING:Lcom/prineside/tdi2/enums/StaticSoundType;

    const-string v4, "Synchronization check disabled"

    invoke-virtual {v2, v4, v0, v1, v3}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    :cond_2
    :goto_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/DebugManager;->registerGameStateUpdate()V

    return-void
.end method
