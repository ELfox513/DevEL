.class public Lcom/prineside/tdi2/systems/GameStateSystem;
.super Lcom/prineside/tdi2/systems/StateSystem;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;,
        Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;,
        Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;,
        Lcom/prineside/tdi2/systems/GameStateSystem$_EnemySystemListener;,
        Lcom/prineside/tdi2/systems/GameStateSystem$_MinerSystemListener;,
        Lcom/prineside/tdi2/systems/GameStateSystem$_WaveSystemListener;,
        Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;,
        Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;,
        Lcom/prineside/tdi2/systems/GameStateSystem$_LifecycleListener;
    }
.end annotation


# static fields
.field public static final NOT_COMPLETED_DAILY_QUEST_PRIZE_MULTIPLIER:F = 0.1f

.field public static final SAVED_GAME_FILE_PATH:Ljava/lang/String; = "cache/saved-game.bin"

.field public static final SLOW_MOTION_GAME_SPEED:F = 0.0667f

.field public static final X:Lcom/esotericsoftware/kryo/io/Input;

.field public static final Y:Lcom/badlogic/gdx/math/RandomXS128;


# instance fields
.field public A:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public B:J
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public C:Z

.field public D:I

.field public E:I

.field public F:I

.field public G:F

.field public H:F

.field public I:F

.field public final J:Lcom/esotericsoftware/kryo/io/Output;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public final K:Lcom/esotericsoftware/kryo/io/Output;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public L:[B
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public M:I
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public N:Lcom/esotericsoftware/kryo/io/Output;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public O:[B
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public P:I
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public final Q:Ljava/lang/Object;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public R:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public T:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public U:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public V:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public W:Lcom/prineside/tdi2/systems/GameStateSystem$_LifecycleListener;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public allowedBossesForCustomMaps:[Lcom/prineside/tdi2/enums/BossType;

.field public averageDifficulty:I

.field public basicLevelName:Ljava/lang/String;

.field public canLootCases:Z

.field public continuedGameApproxStateHash:I
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public dailyQuestLevel:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

.field public encryptedChestsInInventory:I

.field public gameIsContinued:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

.field public gameOverReason:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public gameSavesDisabled:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public gameStartPreferencesSnapshot:[B
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public gameStartTimestamp:J
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public headlessValidatedReplayRecord:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public lastEnemyReachedTarget:Lcom/prineside/tdi2/enums/EnemyType;

.field public listeners:Lcom/prineside/tdi2/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prineside/tdi2/ListenerGroup<",
            "Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;",
            ">;"
        }
    .end annotation
.end field

.field public lootBoostEnabled:Z

.field public modeDifficultyMultiplier:I

.field public p:J

.field public playRealTime:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public pxpExperience:I

.field public q:Lcom/prineside/tdi2/utils/CheatSafeLong;

.field public r:Lcom/prineside/tdi2/utils/CheatSafeInt;

.field public rarityBoostEnabled:Z

.field public replayId:Ljava/lang/String;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public s:Lcom/prineside/tdi2/utils/CheatSafeInt;

.field public scoreWithEndlessTimeLimit:J

.field public snapshotSavesEnabled:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public startingAbilitiesConfiguration:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

.field public t:[Lcom/prineside/tdi2/utils/CheatSafeInt;

.field public u:Lcom/prineside/tdi2/IssuedItems;

.field public userMapId:Ljava/lang/String;

.field public userMapOriginalSeed:I

.field public v:Lcom/badlogic/gdx/utils/Array;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public validationFingerprintMismatchPrinted:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public validationLastUpdateNumber:I
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public validationResultHandler:Lcom/prineside/tdi2/utils/ObjectRetriever;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;",
            ">;"
        }
    .end annotation
.end field

.field public validationStartTimestamp:J
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public w:Lcom/badlogic/gdx/utils/Array;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/IssuedItems;",
            ">;"
        }
    .end annotation
.end field

.field public x:Lcom/badlogic/gdx/math/RandomXS128;

.field public y:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public z:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/esotericsoftware/kryo/io/Input;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/io/Input;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/systems/GameStateSystem;->X:Lcom/esotericsoftware/kryo/io/Input;

    new-instance v0, Lcom/badlogic/gdx/math/RandomXS128;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/RandomXS128;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/systems/GameStateSystem;->Y:Lcom/badlogic/gdx/math/RandomXS128;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/StateSystem;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->allowedBossesForCustomMaps:[Lcom/prineside/tdi2/enums/BossType;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->p:J

    iput-wide v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameStartTimestamp:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->snapshotSavesEnabled:Z

    new-instance v2, Lcom/prineside/tdi2/utils/CheatSafeLong;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4, v3, v4}, Lcom/prineside/tdi2/utils/CheatSafeLong;-><init>(JJ)V

    iput-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->q:Lcom/prineside/tdi2/utils/CheatSafeLong;

    new-instance v2, Lcom/prineside/tdi2/utils/CheatSafeInt;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Lcom/prineside/tdi2/utils/CheatSafeInt;-><init>(II)V

    iput-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->r:Lcom/prineside/tdi2/utils/CheatSafeInt;

    new-instance v2, Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-direct {v2, v3, v3}, Lcom/prineside/tdi2/utils/CheatSafeInt;-><init>(II)V

    iput-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->s:Lcom/prineside/tdi2/utils/CheatSafeInt;

    sget-object v2, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v2, v2

    new-array v2, v2, [Lcom/prineside/tdi2/utils/CheatSafeInt;

    iput-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->t:[Lcom/prineside/tdi2/utils/CheatSafeInt;

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->v:Lcom/badlogic/gdx/utils/Array;

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    const-class v4, Lcom/prineside/tdi2/IssuedItems;

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->w:Lcom/badlogic/gdx/utils/Array;

    iput-boolean v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->y:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->z:F

    iput v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->A:F

    iput-boolean v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->C:Z

    iput v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->D:I

    iput v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->pxpExperience:I

    const/16 v2, -0x34bd

    iput v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->E:I

    iput v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->F:I

    new-instance v2, Lcom/esotericsoftware/kryo/io/Output;

    const/16 v4, 0x400

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5}, Lcom/esotericsoftware/kryo/io/Output;-><init>(II)V

    iput-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->J:Lcom/esotericsoftware/kryo/io/Output;

    new-instance v2, Lcom/esotericsoftware/kryo/io/Output;

    invoke-direct {v2, v4, v5}, Lcom/esotericsoftware/kryo/io/Output;-><init>(II)V

    iput-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->K:Lcom/esotericsoftware/kryo/io/Output;

    new-instance v2, Lcom/esotericsoftware/kryo/io/Output;

    invoke-direct {v2, v4, v5}, Lcom/esotericsoftware/kryo/io/Output;-><init>(II)V

    iput-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->N:Lcom/esotericsoftware/kryo/io/Output;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->Q:Ljava/lang/Object;

    iput-wide v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->validationStartTimestamp:J

    iput-boolean v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->R:Z

    new-instance v0, Lcom/prineside/tdi2/ListenerGroup;

    const-class v1, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/systems/GameStateSystem;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/GameStateSystem;->f()V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/systems/GameStateSystem;)Lcom/prineside/tdi2/utils/CheatSafeInt;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->r:Lcom/prineside/tdi2/utils/CheatSafeInt;

    return-object p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/systems/GameStateSystem;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->C:Z

    return p0
.end method

.method public static continueSavedGame()Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;
    .locals 47

    const-string v1, "continueSavedGame - game values hash don\'t match "

    const-class v0, Lcom/prineside/tdi2/systems/StateSystem$ActionUpdatePair;

    const-string v2, " "

    invoke-static {}, Lcom/prineside/tdi2/systems/GameStateSystem;->savedGameExists()Z

    move-result v3

    const-string v4, "GameStateSystem"

    if-eqz v3, :cond_16

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v5, "cache/saved-game.bin"

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    :try_start_0
    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/ResearchManager;->updateAndValidateStarBranch()V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->networkManager:Lcom/prineside/tdi2/managers/NetworkManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/NetworkManager;->fullKryo:Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v3

    sget-object v6, Lcom/prineside/tdi2/systems/GameStateSystem;->X:Lcom/esotericsoftware/kryo/io/Input;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/esotericsoftware/kryo/io/Input;->setPosition(I)V

    invoke-virtual {v6, v3}, Lcom/esotericsoftware/kryo/io/Input;->setBuffer([B)V

    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v8

    invoke-static {v8}, Lcom/prineside/tdi2/Config;->isCompatibleWithBuild(I)Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Game is from build "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", not compatible with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xb8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->GAME_FROM_PREVIOUS_BUILD:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    return-object v0

    :cond_0
    const-class v8, Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {v5, v6, v8}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {v6}, Lcom/esotericsoftware/kryo/io/Input;->readLong()J

    move-result-wide v14

    invoke-virtual {v6, v3}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v25

    const-class v9, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-virtual {v5, v6, v9}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    check-cast v13, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    const-class v9, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    invoke-virtual {v5, v6, v9}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v26, v9

    check-cast v26, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    invoke-virtual {v6}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v27

    invoke-virtual {v6}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v28

    invoke-virtual {v6}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v29

    invoke-virtual {v6}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v30

    sget-object v9, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->BASIC_LEVELS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v13, v9, :cond_1

    invoke-virtual {v6}, Lcom/esotericsoftware/kryo/io/Input;->readString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v32, v8

    move-object v11, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    sget-object v9, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->USER_MAPS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v13, v9, :cond_2

    invoke-virtual {v6}, Lcom/esotericsoftware/kryo/io/Input;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v10

    const-class v11, [Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {v5, v6, v11}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/prineside/tdi2/enums/BossType;

    move-object/from16 v32, v8

    move-object/from16 v31, v11

    const/4 v11, 0x0

    move/from16 v46, v10

    move-object v10, v9

    move/from16 v9, v46

    goto :goto_1

    :cond_2
    move-object/from16 v32, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/16 v31, 0x0

    :goto_1
    invoke-virtual {v6}, Lcom/esotericsoftware/kryo/io/Input;->readLong()J

    move-result-wide v7

    const-class v12, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    invoke-virtual {v5, v6, v12}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    const-class v3, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    invoke-virtual {v5, v6, v3}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    move-object/from16 v33, v3

    invoke-virtual {v6}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v3

    move/from16 v34, v3

    move/from16 v17, v9

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v3

    invoke-virtual {v6}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v9

    move/from16 v18, v9

    move-object/from16 v19, v10

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v10

    new-instance v9, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    move-object/from16 v20, v12

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v10, :cond_3

    invoke-virtual {v5, v6, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    check-cast v0, Lcom/prineside/tdi2/systems/StateSystem$ActionUpdatePair;

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v22

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-static {v6}, Lcom/prineside/tdi2/GameSystemProvider;->unserialize(Lcom/esotericsoftware/kryo/io/Input;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object v5

    const-string v0, "restored GameSystemProvider"

    invoke-static {v4, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v0, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    const/16 v36, 0x0

    iget-object v10, v5, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v12, v10, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    const/16 v38, 0x1

    iget-object v10, v10, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    if-nez v10, :cond_4

    const/16 v39, 0x0

    goto :goto_3

    :cond_4
    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v0, v10}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v0

    move-object/from16 v39, v0

    :goto_3
    iget-object v0, v5, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/TargetTile;->isUseStockGameValues()Z

    move-result v40

    iget-object v0, v5, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->userMapId:Ljava/lang/String;

    if-eqz v0, :cond_5

    const/16 v41, 0x1

    goto :goto_4

    :cond_5
    const/16 v41, 0x0

    :goto_4
    move-object/from16 v35, v6

    move-object/from16 v37, v12

    invoke-virtual/range {v35 .. v41}, Lcom/prineside/tdi2/managers/GameValueManager;->createSnapshot(Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;Lcom/prineside/tdi2/enums/DifficultyMode;ZLcom/prineside/tdi2/BasicLevel;ZZ)Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v0

    iget-object v6, v5, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v6}, Lcom/prineside/tdi2/systems/GameValueSystem;->getGlobalSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v6

    iget v6, v6, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->hash:I

    iget v10, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->hash:I

    if-eq v6, v10, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v5}, Lcom/prineside/tdi2/systems/GameValueSystem;->getGlobalSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v5

    iget v5, v5, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->hash:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->hash:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->GAME_VALUES_CHANGED:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    return-object v0

    :cond_6
    const-string v6, "game values are fine"

    invoke-static {v4, v6}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/prineside/tdi2/GameSystemProvider;->createAndSetupNonStateAffectingSystemsAfterDeserialization()V

    new-instance v6, Lcom/prineside/tdi2/screens/GameScreen;

    invoke-direct {v6, v5, v7, v8}, Lcom/prineside/tdi2/screens/GameScreen;-><init>(Lcom/prineside/tdi2/GameSystemProvider;J)V

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v10, v6}, Lcom/prineside/tdi2/managers/ScreenManager;->setScreen(Lcom/prineside/tdi2/Screen;)V

    if-eqz v11, :cond_7

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v10

    iget-boolean v10, v10, Lcom/prineside/tdi2/BasicLevel;->hasLeaderboards:Z

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    goto :goto_5

    :cond_7
    const/4 v10, 0x0

    :goto_5
    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v12

    if-nez v12, :cond_c

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    move-object/from16 v21, v9

    :try_start_2
    sget-object v9, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_SYNC_VALIDATION:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v12, v9}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v22

    const-wide/16 v35, 0x0

    cmpl-double v9, v22, v35

    if-eqz v9, :cond_b

    if-eqz v10, :cond_b

    new-instance v9, Lcom/prineside/tdi2/GameSystemProvider;

    new-instance v10, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;

    sget-object v12, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;->GAME:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-object/from16 v22, v13

    const/4 v13, 0x1

    :try_start_3
    invoke-direct {v10, v12, v13}, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;-><init>(Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;Z)V

    invoke-direct {v9, v10}, Lcom/prineside/tdi2/GameSystemProvider;-><init>(Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;)V

    iput-object v9, v6, Lcom/prineside/tdi2/screens/GameScreen;->validationS:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v9}, Lcom/prineside/tdi2/GameSystemProvider;->createSystems()V

    iget-object v9, v6, Lcom/prineside/tdi2/screens/GameScreen;->validationS:Lcom/prineside/tdi2/GameSystemProvider;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v23
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    const/16 v24, 0x0

    const/16 v35, 0x0

    move/from16 v10, v17

    move/from16 v13, v18

    move-object/from16 v12, v21

    move-object/from16 v37, v2

    move/from16 v36, v3

    move v2, v10

    move-object/from16 v3, v19

    move-object/from16 v10, v26

    move-object/from16 v38, v1

    move-object v1, v11

    move/from16 v11, v27

    move/from16 v39, v2

    move-object v2, v12

    move-object/from16 v42, v20

    move/from16 v12, v28

    move/from16 v43, v13

    move-object/from16 v41, v22

    move/from16 v13, v29

    move-wide/from16 v44, v14

    move/from16 v14, v30

    move-wide v15, v7

    move-object/from16 v17, v23

    move-object/from16 v18, v24

    move-object/from16 v19, v32

    move/from16 v20, v25

    move-object/from16 v21, v41

    move-object/from16 v22, v35

    move-object/from16 v23, v0

    move-object/from16 v24, v33

    :try_start_4
    invoke-static/range {v9 .. v24}, Lcom/prineside/tdi2/screens/GameScreen;->configureSystemsBeforeSetup(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;ZIZZJLcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/UserMap;Lcom/prineside/tdi2/enums/DifficultyMode;ILcom/prineside/tdi2/systems/GameStateSystem$GameMode;[Lcom/prineside/tdi2/enums/BossType;Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)V

    iget-object v0, v6, Lcom/prineside/tdi2/screens/GameScreen;->validationS:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v0}, Lcom/prineside/tdi2/GameSystemProvider;->setupSystems()V

    iget-object v0, v6, Lcom/prineside/tdi2/screens/GameScreen;->validationS:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v0}, Lcom/prineside/tdi2/GameSystemProvider;->postSetupSystems()V

    const/4 v0, 0x0

    :goto_6
    iget v9, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v9, :cond_8

    iget-object v9, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v9, [Lcom/prineside/tdi2/systems/StateSystem$ActionUpdatePair;

    aget-object v9, v9, v0

    iget-object v10, v6, Lcom/prineside/tdi2/screens/GameScreen;->validationS:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v10, v10, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v11, v9, Lcom/prineside/tdi2/systems/StateSystem$ActionUpdatePair;->action:Lcom/prineside/tdi2/Action;

    iget v9, v9, Lcom/prineside/tdi2/systems/StateSystem$ActionUpdatePair;->update:I

    invoke-virtual {v10, v11, v9}, Lcom/prineside/tdi2/systems/StateSystem;->pushAction(Lcom/prineside/tdi2/Action;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    iget-object v0, v5, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v9, v6, Lcom/prineside/tdi2/screens/GameScreen;->validationS:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v9, v9, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iput-object v9, v0, Lcom/prineside/tdi2/systems/StateSystem;->duplicateActionsTo:Lcom/prineside/tdi2/systems/StateSystem;

    :goto_7
    iget-object v0, v6, Lcom/prineside/tdi2/screens/GameScreen;->validationS:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v9, v0, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    iget-object v10, v5, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v10, v10, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    if-eq v9, v10, :cond_9

    iget-object v0, v0, Lcom/prineside/tdi2/systems/StateSystem;->d:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;

    iget-object v0, v6, Lcom/prineside/tdi2/screens/GameScreen;->validationS:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v0}, Lcom/prineside/tdi2/GameSystemProvider;->updateSystems()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    :cond_9
    :try_start_5
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    iget-object v9, v6, Lcom/prineside/tdi2/screens/GameScreen;->validationS:Lcom/prineside/tdi2/GameSystemProvider;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v15, 0x0

    :try_start_6
    invoke-virtual {v9, v5, v0, v15}, Lcom/prineside/tdi2/GameSystemProvider;->compareSync(Lcom/prineside/tdi2/GameSystemProvider;Lcom/badlogic/gdx/utils/StringBuilder;Z)V

    iget v9, v0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-eqz v9, :cond_a

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v9

    if-nez v9, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sync check - desync on continue\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/tdi2/Logger;->report(Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v9, v9, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    const-string v10, "Desynchronization spotted!"

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "icon-exclamation-triangle"

    invoke-virtual {v0, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    sget-object v11, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v12, Lcom/prineside/tdi2/enums/StaticSoundType;->WARNING:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v9, v10, v0, v11, v12}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    const/4 v9, 0x0

    iput-object v9, v6, Lcom/prineside/tdi2/screens/GameScreen;->validationS:Lcom/prineside/tdi2/GameSystemProvider;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    const/4 v15, 0x0

    :goto_8
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v9, "Sync check - exception"

    invoke-static {v4, v9, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v9, "Sync check - failed on continue"

    invoke-static {v9, v0}, Lcom/prineside/tdi2/Logger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    const/4 v9, 0x0

    :try_start_8
    iput-object v9, v6, Lcom/prineside/tdi2/screens/GameScreen;->validationS:Lcom/prineside/tdi2/GameSystemProvider;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :cond_a
    :goto_9
    :try_start_9
    const-string v0, "validation S synchronized"

    invoke-static {v4, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    const-string v9, "Synchronization check enabled, thanks for helping us to make Infinitode 2 better!"

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "icon-check"

    invoke-virtual {v0, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    sget-object v10, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    const/4 v11, 0x0

    :try_start_a
    invoke-virtual {v6, v9, v0, v10, v11}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$5;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/GameStateSystem$5;-><init>()V

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v0, v6}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move-object v11, v9

    goto/16 :goto_d

    :catch_3
    move-exception v0

    const/4 v11, 0x0

    goto/16 :goto_d

    :catch_4
    move-exception v0

    goto/16 :goto_c

    :catch_5
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v37, v2

    move/from16 v36, v3

    move-object v1, v11

    move-wide/from16 v44, v14

    move/from16 v39, v17

    move/from16 v43, v18

    move-object/from16 v3, v19

    move-object/from16 v42, v20

    move-object/from16 v2, v21

    move-object/from16 v41, v22

    goto/16 :goto_c

    :cond_b
    move-object/from16 v38, v1

    move-object/from16 v37, v2

    move/from16 v36, v3

    move-object v1, v11

    move-object/from16 v41, v13

    move-wide/from16 v44, v14

    move/from16 v39, v17

    move/from16 v43, v18

    move-object/from16 v3, v19

    move-object/from16 v42, v20

    move-object/from16 v2, v21

    goto :goto_a

    :catch_6
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v37, v2

    move/from16 v36, v3

    move-object v1, v11

    move-object/from16 v41, v13

    move-wide/from16 v44, v14

    move/from16 v39, v17

    move/from16 v43, v18

    move-object/from16 v3, v19

    move-object/from16 v42, v20

    move-object/from16 v2, v21

    goto :goto_c

    :cond_c
    move-object/from16 v38, v1

    move-object/from16 v37, v2

    move/from16 v36, v3

    move-object v2, v9

    move-object v1, v11

    move-object/from16 v41, v13

    move-wide/from16 v44, v14

    move/from16 v39, v17

    move/from16 v43, v18

    move-object/from16 v3, v19

    move-object/from16 v42, v20

    :goto_a
    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_b
    iget-object v0, v5, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v5, v0, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    int-to-long v5, v5

    iput-wide v5, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->B:J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :try_start_b
    sget-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->SUCCESS:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    return-object v0

    :catch_7
    move-exception v0

    goto :goto_d

    :catch_8
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v37, v2

    move/from16 v36, v3

    move-object v2, v9

    move-object v1, v11

    move-object/from16 v41, v13

    move-wide/from16 v44, v14

    move/from16 v39, v17

    move/from16 v43, v18

    move-object/from16 v3, v19

    move-object/from16 v42, v20

    :goto_c
    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v5, "failed to load the game from the snapshot, running full frame by frame loading"

    invoke-static {v4, v5}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "failed to load the game from the snapshot"

    invoke-static {v5, v0}, Lcom/prineside/tdi2/Logger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->BASIC_LEVELS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    move-object/from16 v9, v41

    if-ne v9, v0, :cond_e

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v0

    new-instance v1, Lcom/prineside/tdi2/screens/GameScreen;

    const/16 v20, 0x0

    move-object v9, v1

    move-object v10, v0

    move-object/from16 v11, v32

    move/from16 v12, v25

    move-object/from16 v13, v26

    move/from16 v14, v27

    const/4 v5, 0x0

    move/from16 v15, v28

    move/from16 v16, v29

    move/from16 v17, v30

    move-wide/from16 v18, v7

    move-object/from16 v21, v33

    invoke-direct/range {v9 .. v21}, Lcom/prineside/tdi2/screens/GameScreen;-><init>(Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/enums/DifficultyMode;ILcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;ZIZZJLcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)V

    iget-boolean v3, v0, Lcom/prineside/tdi2/BasicLevel;->dailyQuest:Z

    if-eqz v3, :cond_d

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->dailyQuestManager:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/DailyQuestManager;->getDailyQuestLevelCache()Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->getLevelName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v0, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "continue daily quest"

    invoke-static {v4, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iput-object v3, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->dailyQuestLevel:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    :cond_d
    move-object v12, v1

    goto :goto_e

    :cond_e
    const/4 v5, 0x0

    sget-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->USER_MAPS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v9, v0, :cond_11

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->userMapManager:Lcom/prineside/tdi2/managers/UserMapManager;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/UserMapManager;->getUserMap(Ljava/lang/String;)Lcom/prineside/tdi2/UserMap;

    move-result-object v10

    if-nez v10, :cond_f

    const-string v0, "continueSavedGame - user map not exists"

    invoke-static {v4, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->MAP_NOT_FOUND:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    return-object v0

    :cond_f
    iget-object v0, v10, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Map;->generateSeed()I

    move-result v0

    move/from16 v1, v39

    if-eq v1, v0, :cond_10

    const-string v0, "continueSavedGame - user map seeds differ"

    invoke-static {v4, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->MAP_CHANGED:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    return-object v0

    :cond_10
    new-instance v0, Lcom/prineside/tdi2/screens/GameScreen;

    const/16 v17, 0x0

    move-object v9, v0

    move-object/from16 v11, v32

    move/from16 v12, v25

    move-object/from16 v13, v26

    move-wide v14, v7

    move-object/from16 v16, v31

    move-object/from16 v18, v33

    invoke-direct/range {v9 .. v18}, Lcom/prineside/tdi2/screens/GameScreen;-><init>(Lcom/prineside/tdi2/UserMap;Lcom/prineside/tdi2/enums/DifficultyMode;ILcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;J[Lcom/prineside/tdi2/enums/BossType;Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)V

    move-object v12, v0

    goto :goto_e

    :cond_11
    move-object v12, v11

    :goto_e
    if-eqz v12, :cond_15

    iget-object v0, v12, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    move/from16 v3, v43

    iput v3, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->continuedGameApproxStateHash:I

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameValueSystem;->getGlobalSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v0

    iget v0, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->hash:I

    move-object/from16 v3, v42

    iget v6, v3, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->hash:I

    if-eq v0, v6, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getGlobalSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v1

    iget v1, v1, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->hash:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v6, v37

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->hash:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/prineside/tdi2/screens/GameScreen;->dispose()V

    sget-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->GAME_VALUES_CHANGED:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    return-object v0

    :cond_12
    move-object/from16 v6, v37

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->getSeed()J

    move-result-wide v7

    move-wide/from16 v9, v44

    cmp-long v0, v7, v9

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "continueSavedGame - seeds don\'t match: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->getSeed()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/prineside/tdi2/screens/GameScreen;->dispose()V

    sget-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->MAP_CHANGED:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    return-object v0

    :cond_13
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->gameIsContinued:Z

    move/from16 v3, v34

    iput v3, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->playRealTime:F

    const/4 v7, 0x0

    :goto_f
    iget v0, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v0, :cond_14

    iget-object v0, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/systems/StateSystem$ActionUpdatePair;

    aget-object v0, v0, v7

    iget-object v3, v0, Lcom/prineside/tdi2/systems/StateSystem$ActionUpdatePair;->action:Lcom/prineside/tdi2/Action;

    iget v0, v0, Lcom/prineside/tdi2/systems/StateSystem$ActionUpdatePair;->update:I

    invoke-virtual {v1, v3, v0}, Lcom/prineside/tdi2/systems/StateSystem;->pushAction(Lcom/prineside/tdi2/Action;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_14
    move/from16 v2, v36

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/StateSystem;->startFastForwarding(I)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0, v12}, Lcom/prineside/tdi2/managers/ScreenManager;->setScreen(Lcom/prineside/tdi2/Screen;)V

    iget v0, v1, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    int-to-long v2, v0

    iput-wide v2, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->B:J

    sget-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->SUCCESS:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    return-object v0

    :cond_15
    const-string v0, "screen is null"

    invoke-static {v4, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->OTHER_ERROR:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    const-string v1, "continueSavedGame - parsing failed, cleared saved game"

    invoke-static {v4, v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->OTHER_ERROR:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    return-object v0

    :cond_16
    const-string v0, "saved game not exists"

    invoke-static {v4, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->OTHER_ERROR:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    return-object v0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/systems/GameStateSystem;F)F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->I:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->I:F

    return v0
.end method

.method public static deleteSavedGame()V
    .locals 3

    const-string v0, "cache/saved-game.bin"

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GameStateSystem"

    const-string v2, "failed to delete saved game"

    invoke-static {v1, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic f()V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "cache/saved-game.bin"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->Q:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->O:[B

    iget v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->P:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3, v4}, Lcom/badlogic/gdx/files/FileHandle;->writeBytes([BIIZ)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "GameStateSystem"

    const-string v2, "failed to save game state"

    invoke-static {v1, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static headlessValidateGame(Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget v0, v11, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->build:I

    invoke-static {v0}, Lcom/prineside/tdi2/Config;->isCompatibleWithBuild(I)Z

    move-result v0

    const-string v13, "GameStateSystem"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Game is from build "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v11, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->build:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", not compatible with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xb8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;

    sget-object v2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->INVALID_RECORD:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v1, v0

    move-object/from16 v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;-><init>(Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;FIIIJLcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V

    invoke-interface {v12, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->applyPreferences()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/prineside/luaj/Lua;->resetCache()V

    :try_start_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->networkManager:Lcom/prineside/tdi2/managers/NetworkManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/NetworkManager;->fullKryo:Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->getStateBytes()[B

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/systems/GameStateSystem;->X:Lcom/esotericsoftware/kryo/io/Input;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/kryo/io/Input;->setPosition(I)V

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/kryo/io/Input;->setBuffer([B)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    const-class v4, Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {v0, v2, v4}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/io/Input;->readLong()J

    move-result-wide v5

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v7

    sget-object v8, Lcom/prineside/tdi2/enums/DifficultyMode;->NORMAL:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-ne v4, v8, :cond_1

    const/16 v7, 0x64

    :cond_1
    const-class v8, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-virtual {v0, v2, v8}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    const-class v9, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    invoke-virtual {v0, v2, v9}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v18, v9

    check-cast v18, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v19

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v20

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v21

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v22

    sget-object v9, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->BASIC_LEVELS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v8, v9, :cond_2

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/io/Input;->readString()Ljava/lang/String;

    move-result-object v14

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    sget-object v14, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->USER_MAPS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v8, v14, :cond_3

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/io/Input;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v15

    const-class v3, [Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {v0, v2, v3}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/prineside/tdi2/enums/BossType;

    move-object/from16 v23, v3

    move-object v3, v14

    const/4 v14, 0x0

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    const/4 v14, 0x0

    :goto_0
    const/4 v15, 0x0

    const/16 v23, 0x0

    :goto_1
    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/io/Input;->readLong()J

    move-result-wide v24

    const-class v10, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    invoke-virtual {v0, v2, v10}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    const-class v1, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    invoke-virtual {v0, v2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    move-object/from16 v27, v0

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v28, v0

    const/4 v11, 0x1

    :try_start_2
    invoke-virtual {v2, v11}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    invoke-virtual {v2, v11}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v11

    if-ne v8, v9, :cond_6

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v3, v14}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v15

    iget-boolean v3, v15, Lcom/prineside/tdi2/BasicLevel;->hasLeaderboards:Z

    if-nez v3, :cond_4

    const-string v0, "headlessValidateGame - basic level doesn\'t have leaderboards"

    invoke-static {v13, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;

    sget-object v2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->INVALID_RECORD:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v1, v0

    move-object/from16 v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;-><init>(Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;FIIIJLcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V

    invoke-interface {v12, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object v3, v15, Lcom/prineside/tdi2/BasicLevel;->forcedDifficulty:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-eqz v3, :cond_5

    if-eq v3, v4, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "headlessValidateGame - forced difficulty mismatch ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/prineside/tdi2/BasicLevel;->forcedDifficulty:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;

    sget-object v2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->INVALID_RECORD:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v1, v0

    move-object/from16 v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;-><init>(Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;FIIIJLcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V

    invoke-interface {v12, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void

    :cond_5
    new-instance v3, Lcom/prineside/tdi2/screens/GameScreen;

    const/4 v8, 0x0

    move-object v14, v3

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-wide/from16 v23, v24

    move-object/from16 v25, v8

    move-object/from16 v26, v1

    invoke-direct/range {v14 .. v26}, Lcom/prineside/tdi2/screens/GameScreen;-><init>(Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/enums/DifficultyMode;ILcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;ZIZZJLcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)V

    move-object v14, v3

    goto :goto_2

    :cond_6
    sget-object v9, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->USER_MAPS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v8, v9, :cond_9

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->userMapManager:Lcom/prineside/tdi2/managers/UserMapManager;

    invoke-virtual {v8, v3}, Lcom/prineside/tdi2/managers/UserMapManager;->getUserMap(Ljava/lang/String;)Lcom/prineside/tdi2/UserMap;

    move-result-object v3

    if-nez v3, :cond_7

    const-string v0, "headlessValidateGame - user map not exists"

    invoke-static {v13, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;

    sget-object v2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->INVALID_RECORD:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v1, v0

    move-object/from16 v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;-><init>(Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;FIIIJLcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V

    invoke-interface {v12, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void

    :cond_7
    iget-object v8, v3, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    invoke-virtual {v8}, Lcom/prineside/tdi2/Map;->generateSeed()I

    move-result v8

    if-eq v15, v8, :cond_8

    const-string v0, "headlessValidateGame - user map seeds differ"

    invoke-static {v13, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;

    sget-object v2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->INVALID_RECORD:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v1, v0

    move-object/from16 v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;-><init>(Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;FIIIJLcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V

    invoke-interface {v12, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void

    :cond_8
    new-instance v8, Lcom/prineside/tdi2/screens/GameScreen;

    const/16 v22, 0x0

    move-object v14, v8

    move-object v15, v3

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-wide/from16 v19, v24

    move-object/from16 v21, v23

    move-object/from16 v23, v1

    invoke-direct/range {v14 .. v23}, Lcom/prineside/tdi2/screens/GameScreen;-><init>(Lcom/prineside/tdi2/UserMap;Lcom/prineside/tdi2/enums/DifficultyMode;ILcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;J[Lcom/prineside/tdi2/enums/BossType;Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)V

    move-object v14, v8

    goto :goto_2

    :cond_9
    const/4 v14, 0x0

    :goto_2
    if-eqz v14, :cond_11

    iget-object v1, v14, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/ResearchManager;->updateAndValidateStarBranch()V

    iget-object v3, v14, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getGlobalSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v3

    iget v3, v3, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->hash:I

    iget v4, v10, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->hash:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v8, " "

    if-eq v3, v4, :cond_c

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "headlessValidateGame - game values hash don\'t match for DQ! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->hash:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getGlobalSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v1

    iget v1, v1, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->hash:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v14, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameValueSystem;->getGlobalSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getDifferences(Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/GameValueManager;->getCheatingReason(Lcom/badlogic/gdx/utils/Array;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v2, "\n"

    if-eqz v0, :cond_a

    :try_start_4
    const-string v3, "Cheating: "

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_a
    iget-object v3, v14, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getGlobalSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v3

    const-string v4, "global"

    const-string v5, "replay"

    invoke-virtual {v3, v4, v5, v10, v1}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->printDifferences(Ljava/lang/String;Ljava/lang/String;Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;Lcom/badlogic/gdx/utils/StringBuilder;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    const-string v4, "Unused stars: "

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/ResearchManager;->getUnusedStarsCount()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;

    if-eqz v0, :cond_b

    sget-object v1, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->MODIFIED_GAME:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    goto :goto_3

    :cond_b
    sget-object v1, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->INVALID_RECORD:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    :goto_3
    move-object v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v1, v11

    move-object/from16 v9, p0

    move-object v10, v0

    invoke-direct/range {v1 .. v10}, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;-><init>(Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;FIIIJLcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;Ljava/lang/String;)V

    invoke-interface {v12, v11}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    invoke-virtual {v14}, Lcom/prineside/tdi2/screens/GameScreen;->dispose()V

    return-void

    :cond_c
    iget-object v3, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-static {v3, v7, v10}, Lcom/prineside/tdi2/managers/ProgressManager;->clampModeDifficulty(Lcom/prineside/tdi2/enums/DifficultyMode;ILcom/prineside/tdi2/GameValueProvider;)I

    move-result v3

    if-eq v3, v7, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "headlessValidateGame - mode difficulty incorrect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " should be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;

    sget-object v2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->INVALID_RECORD:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v1, v0

    move-object/from16 v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;-><init>(Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;FIIIJLcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V

    invoke-interface {v12, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    invoke-virtual {v14}, Lcom/prineside/tdi2/screens/GameScreen;->dispose()V

    return-void

    :cond_d
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/ResearchManager;->getUnusedStarsCount()I

    move-result v3

    if-gez v3, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "headlessValidateGame - unused research stars "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ResearchManager;->getUnusedStarsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;

    sget-object v2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->INVALID_RECORD:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v1, v0

    move-object/from16 v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;-><init>(Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;FIIIJLcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V

    invoke-interface {v12, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    invoke-virtual {v14}, Lcom/prineside/tdi2/screens/GameScreen;->dispose()V

    return-void

    :cond_e
    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->getSeed()J

    move-result-wide v3

    cmp-long v7, v3, v5

    if-eqz v7, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "headlessValidateGame - seeds don\'t match: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->getSeed()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;

    sget-object v2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->INVALID_RECORD:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v1, v0

    move-object/from16 v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;-><init>(Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;FIIIJLcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V

    invoke-interface {v12, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    invoke-virtual {v14}, Lcom/prineside/tdi2/screens/GameScreen;->dispose()V

    return-void

    :cond_f
    move/from16 v3, v28

    iput v3, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->playRealTime:F
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v9, p0

    :try_start_5
    iput-object v9, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->headlessValidatedReplayRecord:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->validationStartTimestamp:J

    iput v0, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->validationLastUpdateNumber:I

    iput-object v12, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->validationResultHandler:Lcom/prineside/tdi2/utils/ObjectRetriever;

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v11, :cond_10

    const-class v4, Lcom/prineside/tdi2/systems/StateSystem$ActionUpdatePair;

    move-object/from16 v5, v27

    invoke-virtual {v5, v2, v4}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/systems/StateSystem$ActionUpdatePair;

    iget-object v6, v4, Lcom/prineside/tdi2/systems/StateSystem$ActionUpdatePair;->action:Lcom/prineside/tdi2/Action;

    iget v4, v4, Lcom/prineside/tdi2/systems/StateSystem$ActionUpdatePair;->update:I

    invoke-virtual {v1, v6, v4}, Lcom/prineside/tdi2/systems/StateSystem;->pushAction(Lcom/prineside/tdi2/Action;I)V

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v27, v5

    goto :goto_4

    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replay is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " frames long, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->defeatedWaves:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " waves and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v9, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->score:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " score"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0xf4240

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/systems/StateSystem;->startFastForwarding(I)V

    const-string v0, "successfully started the game"

    invoke-static {v13, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v14, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-static {v0}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator;->start(Lcom/prineside/tdi2/GameSystemProvider;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0, v14}, Lcom/prineside/tdi2/managers/ScreenManager;->setScreen(Lcom/prineside/tdi2/Screen;)V

    goto :goto_6

    :cond_11
    move-object/from16 v9, p0

    const-string v0, "screen is null"

    invoke-static {v13, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v9, p0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v9, v11

    :goto_5
    const-string v1, "headlessValidateGame - parsing failed"

    invoke-static {v13, v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;

    sget-object v2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->INVALID_RECORD:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v1, v0

    move-object/from16 v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;-><init>(Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;FIIIJLcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V

    invoke-interface {v12, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    :goto_6
    return-void

    :catchall_0
    move-exception v0

    move-object v9, v11

    move-object v1, v0

    const-string v0, "failed to apply preferences"

    invoke-static {v13, v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;

    sget-object v2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->INVALID_RECORD:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v1, v0

    move-object/from16 v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;-><init>(Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;FIIIJLcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V

    invoke-interface {v12, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method

.method public static savedGameExists()Z
    .locals 4

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "cache/saved-game.bin"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/systems/GameStateSystem;->X:Lcom/esotericsoftware/kryo/io/Input;

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/kryo/io/Input;->setPosition(I)V

    invoke-virtual {v1, v0}, Lcom/esotericsoftware/kryo/io/Input;->setBuffer([B)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    invoke-static {v0}, Lcom/prineside/tdi2/Config;->isCompatibleWithBuild(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "GameStateSystem"

    const-string v3, "savedGameExists - parsing failed, cleared saved game"

    invoke-static {v1, v3, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/prineside/tdi2/systems/GameStateSystem;->deleteSavedGame()V

    return v2
.end method

.method public static startReplay(Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->startReplay(Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;Z)V

    return-void
.end method

.method public static startReplay(Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;Z)V
    .locals 33

    move-object/from16 v0, p0

    const-string v1, "GameStateSystem"

    iget v2, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->build:I

    invoke-static {v2}, Lcom/prineside/tdi2/Config;->isCompatibleWithBuild(I)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Game is from build "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->build:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", not compatible with "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xb8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->getStateBytes()[B

    move-result-object v2

    if-eqz v2, :cond_d

    sget-object v3, Lcom/prineside/tdi2/systems/GameStateSystem;->X:Lcom/esotericsoftware/kryo/io/Input;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/esotericsoftware/kryo/io/Input;->setPosition(I)V

    invoke-virtual {v3, v2}, Lcom/esotericsoftware/kryo/io/Input;->setBuffer([B)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->networkManager:Lcom/prineside/tdi2/managers/NetworkManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/NetworkManager;->fullKryo:Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    const-class v6, Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {v2, v3, v6}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/io/Input;->readLong()J

    move-result-wide v14

    invoke-virtual {v3, v5}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v10

    const-class v6, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-virtual {v2, v3, v6}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    const-class v7, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    invoke-virtual {v2, v3, v7}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v12

    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v13

    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v16

    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v17

    sget-object v7, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->BASIC_LEVELS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v6, v7, :cond_1

    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/io/Input;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v8, v18

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->USER_MAPS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v6, v4, :cond_2

    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/io/Input;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v18

    const-class v8, [Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {v2, v3, v8}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/prineside/tdi2/enums/BossType;

    move/from16 v20, v18

    move-object/from16 v18, v8

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_0
    const/16 v18, 0x0

    const/16 v20, 0x0

    :goto_1
    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/io/Input;->readLong()J

    move-result-wide v21

    const-class v5, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    invoke-virtual {v2, v3, v5}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-object/from16 v23, v5

    const-class v5, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    invoke-virtual {v2, v3, v5}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v24, v1

    if-eqz p1, :cond_3

    const/16 v23, 0x0

    :cond_3
    :try_start_1
    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v1

    move-wide/from16 v25, v14

    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v15

    int-to-long v14, v15

    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-wide/from16 v27, v14

    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v15

    if-ne v6, v7, :cond_5

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v4, v8}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v8

    if-eqz v8, :cond_4

    new-instance v4, Lcom/prineside/tdi2/screens/GameScreen;

    move-object v7, v4

    move-object/from16 v30, v2

    move-object/from16 v29, v3

    move-wide/from16 v2, v25

    move-wide/from16 v31, v27

    move/from16 v14, v16

    move v6, v15

    move/from16 v15, v17

    move-wide/from16 v16, v21

    move-object/from16 v18, v23

    move-object/from16 v19, v5

    invoke-direct/range {v7 .. v19}, Lcom/prineside/tdi2/screens/GameScreen;-><init>(Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/enums/DifficultyMode;ILcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;ZIZZJLcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)V

    goto :goto_2

    :cond_4
    move-object/from16 v30, v2

    move-object/from16 v29, v3

    move v6, v15

    move-wide/from16 v2, v25

    move-wide/from16 v31, v27

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    const-string v5, "Basic map not exists"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    move-object/from16 v30, v2

    move-object/from16 v29, v3

    move-wide/from16 v2, v25

    move-wide/from16 v31, v27

    sget-object v7, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->USER_MAPS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v6, v7, :cond_8

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->userMapManager:Lcom/prineside/tdi2/managers/UserMapManager;

    invoke-virtual {v6, v4}, Lcom/prineside/tdi2/managers/UserMapManager;->getUserMap(Ljava/lang/String;)Lcom/prineside/tdi2/UserMap;

    move-result-object v8

    if-nez v8, :cond_6

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    const-string v1, "User map not exists"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    return-void

    :cond_6
    iget-object v4, v8, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    invoke-virtual {v4}, Lcom/prineside/tdi2/Map;->generateSeed()I

    move-result v4

    move/from16 v6, v20

    if-eq v6, v4, :cond_7

    if-nez p1, :cond_7

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    const-string v1, "User map seeds differ"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    return-void

    :cond_7
    new-instance v4, Lcom/prineside/tdi2/screens/GameScreen;

    move-object v7, v4

    move-wide/from16 v12, v21

    move-object/from16 v14, v18

    move v6, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    invoke-direct/range {v7 .. v16}, Lcom/prineside/tdi2/screens/GameScreen;-><init>(Lcom/prineside/tdi2/UserMap;Lcom/prineside/tdi2/enums/DifficultyMode;ILcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;J[Lcom/prineside/tdi2/enums/BossType;Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)V

    :goto_2
    move-object v8, v4

    goto :goto_4

    :cond_8
    move v6, v15

    :goto_3
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_c

    iget-object v4, v8, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/GameStateSystem;->getSeed()J

    move-result-wide v9

    cmp-long v5, v9, v2

    if-eqz v5, :cond_9

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Seeds don\'t match: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/GameStateSystem;->getSeed()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Lcom/prineside/tdi2/screens/GameScreen;->dispose()V

    return-void

    :cond_9
    iput v1, v4, Lcom/prineside/tdi2/systems/GameStateSystem;->playRealTime:F

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v6, :cond_a

    const-class v2, Lcom/prineside/tdi2/systems/StateSystem$ActionUpdatePair;

    move-object/from16 v3, v29

    move-object/from16 v5, v30

    invoke-virtual {v5, v3, v2}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/StateSystem$ActionUpdatePair;

    iget-object v7, v2, Lcom/prineside/tdi2/systems/StateSystem$ActionUpdatePair;->action:Lcom/prineside/tdi2/Action;

    iget v2, v2, Lcom/prineside/tdi2/systems/StateSystem$ActionUpdatePair;->update:I

    invoke-virtual {v4, v7, v2}, Lcom/prineside/tdi2/systems/StateSystem;->pushAction(Lcom/prineside/tdi2/Action;I)V

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v29, v3

    move-object/from16 v30, v5

    goto :goto_5

    :cond_a
    if-nez p1, :cond_b

    const/4 v1, 0x1

    iput-boolean v1, v4, Lcom/prineside/tdi2/systems/StateSystem;->replayMode:Z

    iput-object v0, v4, Lcom/prineside/tdi2/systems/StateSystem;->replayRecord:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    move-wide/from16 v0, v31

    iput-wide v0, v4, Lcom/prineside/tdi2/systems/StateSystem;->replayFrameCount:J

    :cond_b
    const-string v0, "successfully started the game"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v1, v24

    :try_start_2
    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0, v8}, Lcom/prineside/tdi2/managers/ScreenManager;->setScreen(Lcom/prineside/tdi2/Screen;)V

    goto :goto_7

    :cond_c
    move-object/from16 v1, v24

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    const-string v2, "Screen is null"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    goto :goto_7

    :catch_0
    move-exception v0

    move-object/from16 v1, v24

    goto :goto_6

    :cond_d
    const-string v0, "Replay has no state"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    const-string v2, "Replay has no state, only basic data"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    :goto_6
    const-string v2, "Parsing failed"

    invoke-static {v1, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    :goto_7
    return-void
.end method


# virtual methods
.method public addCompletedQuest(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->v:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public addCompletedQuestIssuedPrizes(Lcom/prineside/tdi2/IssuedItems;FFI)V
    .locals 14

    move-object v0, p0

    move-object v7, p1

    iget-boolean v1, v7, Lcom/prineside/tdi2/IssuedItems;->addedToIssuedItemsArray:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->w:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/prineside/tdi2/IssuedItems;->addedToIssuedItemsArray:Z

    iget-object v1, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    iget-object v1, v7, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v11, v1, :cond_2

    iget-object v1, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_1

    iget-object v1, v7, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ItemStack;

    aget-object v3, v1, v11

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    if-eq v1, v2, :cond_0

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Item$D;->STAR:Lcom/prineside/tdi2/items/StarItem;

    if-eq v1, v2, :cond_0

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Item$D;->ACCELERATOR:Lcom/prineside/tdi2/items/AcceleratorItem;

    if-eq v1, v2, :cond_0

    iput-boolean v8, v3, Lcom/prineside/tdi2/ItemStack;->covered:Z

    :cond_0
    iget-object v1, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1, v13}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;

    add-float v4, p2, v10

    move-object v2, p1

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;->issuedItemsAdded(Lcom/prineside/tdi2/IssuedItems;Lcom/prineside/tdi2/ItemStack;FFI)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    const v1, 0x42d8cccd    # 108.4f

    add-float/2addr v10, v1

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    :cond_3
    return-void
.end method

.method public addHealth(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->r:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->r:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/utils/CheatSafeInt;->add(I)V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;

    invoke-interface {v2, v0}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;->healthChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public addLootIssuedPrizes(Lcom/prineside/tdi2/ItemStack;FFI)V
    .locals 9

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->u:Lcom/prineside/tdi2/IssuedItems;

    iget-object v2, v2, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/ItemStack;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v3

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/Item;->sameAs(Lcom/prineside/tdi2/Item;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lcom/prineside/tdi2/ItemStack;->covered:Z

    iget-boolean v5, p1, Lcom/prineside/tdi2/ItemStack;->covered:Z

    if-ne v3, v5, :cond_0

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v3

    invoke-static {v1, v3}, Lcom/prineside/tdi2/utils/PMath;->addWithoutOverflow(II)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/ItemStack;->setCount(I)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->u:Lcom/prineside/tdi2/IssuedItems;

    iget-object v1, v1, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/16 v2, 0x1f4

    if-le v1, v2, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0xfa

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->loot:Lcom/prineside/tdi2/systems/LootSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/LootSystem;->random:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_7

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v1

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v2

    instance-of v2, v2, Lcom/prineside/tdi2/items/TileItem;

    const-wide v3, 0x408f400000000000L    # 1000.0

    if-eqz v2, :cond_4

    check-cast v1, Lcom/prineside/tdi2/items/TileItem;

    iget-object v1, v1, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tile;->getPrestigeScore()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    :goto_3
    mul-double v1, v1, v5

    mul-double v1, v1, v3

    double-to-int v1, v1

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v2

    instance-of v2, v2, Lcom/prineside/tdi2/items/GateItem;

    if-eqz v2, :cond_5

    check-cast v1, Lcom/prineside/tdi2/items/GateItem;

    iget-object v1, v1, Lcom/prineside/tdi2/items/GateItem;->gate:Lcom/prineside/tdi2/Gate;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Gate;->getPrestigeScore()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_4
    if-gtz v1, :cond_6

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->u:Lcom/prineside/tdi2/IssuedItems;

    iget-object v1, v1, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->cpy()Lcom/prineside/tdi2/ItemStack;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->u:Lcom/prineside/tdi2/IssuedItems;

    iget-object p1, p1, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    sget-object v2, Lcom/prineside/tdi2/Item$D;->PRESTIGE_DUST:Lcom/prineside/tdi2/items/PrestigeDustItem;

    invoke-static {p1, v2, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->addItemToStacksArray(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    new-instance p1, Lcom/prineside/tdi2/ItemStack;

    sget-object v2, Lcom/prineside/tdi2/Item$D;->PRESTIGE_DUST:Lcom/prineside/tdi2/items/PrestigeDustItem;

    invoke-direct {p1, v2, v1}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    goto :goto_5

    :cond_7
    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->u:Lcom/prineside/tdi2/IssuedItems;

    iget-object v1, v1, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->cpy()Lcom/prineside/tdi2/ItemStack;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_8
    :goto_5
    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    :goto_6
    if-ge v0, v1, :cond_9

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;

    iget-object v4, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->u:Lcom/prineside/tdi2/IssuedItems;

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-interface/range {v3 .. v8}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;->issuedItemsAdded(Lcom/prineside/tdi2/IssuedItems;Lcom/prineside/tdi2/ItemStack;FFI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public addMoney(FZ)I
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    float-to-int v0, p1

    int-to-float v1, v0

    sub-float/2addr p1, v1

    const v1, 0x3a83126f    # 0.001f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomFloat()F

    move-result v1

    cmpg-float p1, v1, p1

    if-gez p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    if-lez v0, :cond_2

    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->s:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p1}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result p1

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->s:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->add(I)V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;

    invoke-interface {v3, p1, p2}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;->moneyChanged(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    :cond_2
    return v0
.end method

.method public addResources(Lcom/prineside/tdi2/enums/ResourceType;F)I
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    float-to-int v0, p2

    int-to-float v1, v0

    sub-float/2addr p2, v1

    const v1, 0x3a83126f    # 0.001f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomFloat()F

    move-result v1

    cmpg-float p2, v1, p2

    if-gez p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object p2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->t:[Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object p2, p2, v1

    invoke-virtual {p2}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result p2

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->t:[Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->add(I)V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;

    const/4 v4, 0x1

    invoke-interface {v3, p1, p2, v4}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;->resourcesChanged(Lcom/prineside/tdi2/enums/ResourceType;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return v0
.end method

.method public addScore(JLcom/prineside/tdi2/enums/StatisticsType;)V
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->SG_EK:Lcom/prineside/tdi2/enums/StatisticsType;

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->SCORE_ENEMIES_KILLED:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    :goto_0
    double-to-float v0, v2

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->SG_WCA:Lcom/prineside/tdi2/enums/StatisticsType;

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->SCORE_WAVE_CALLS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->SG_RM:Lcom/prineside/tdi2/enums/StatisticsType;

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->SCORE_MINING:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->SG_WCL:Lcom/prineside/tdi2/enums/StatisticsType;

    if-ne p3, v0, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->SCORE_CLEARED_WAVES:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    goto :goto_0

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    long-to-float p1, p1

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long p1, p1

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->averageDifficulty:I

    const/16 v2, 0x64

    if-ge v0, v2, :cond_4

    int-to-float v0, v0

    const v1, 0x3c23d70a    # 0.01f

    mul-float v1, v1, v0

    goto :goto_2

    :cond_4
    if-le v0, v2, :cond_5

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x43c80000    # 400.0f

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    :cond_5
    :goto_2
    float-to-double v0, v1

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->SCORE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    long-to-float p1, p1

    mul-float p1, p1, v0

    float-to-long p1, p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->q:Lcom/prineside/tdi2/utils/CheatSafeLong;

    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/CheatSafeLong;->get()J

    move-result-wide v0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->q:Lcom/prineside/tdi2/utils/CheatSafeLong;

    invoke-virtual {v2, p1, p2}, Lcom/prineside/tdi2/utils/CheatSafeLong;->add(J)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/GameStateSystem;->isMaxEndlessReplayTimeReached()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->q:Lcom/prineside/tdi2/utils/CheatSafeLong;

    invoke-virtual {p1}, Lcom/prineside/tdi2/utils/CheatSafeLong;->get()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->scoreWithEndlessTimeLimit:J

    :cond_7
    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result p2

    :goto_3
    if-ge p1, p2, :cond_8

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;

    const/4 v3, 0x1

    invoke-interface {v2, v0, v1, v3, p3}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;->scoreChanged(JZLcom/prineside/tdi2/enums/StatisticsType;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public animateSpeed(FF)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->R:Z

    iput p2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->U:F

    const/4 p2, 0x0

    iput p2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->V:F

    iput p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->T:F

    return-void
.end method

.method public calculatePrizeGreenPapers()I
    .locals 11

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/GameStateSystem;->getScore()J

    move-result-wide v0

    const/4 v2, 0x1

    :goto_0
    const-wide/32 v3, 0xc350

    int-to-long v5, v2

    mul-long v5, v5, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmp-long v7, v0, v5

    if-lez v7, :cond_1

    sub-long/2addr v0, v5

    long-to-double v0, v0

    const-wide v7, 0x3f9999999999999aL    # 0.025

    int-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v7

    sub-double/2addr v3, v9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    double-to-long v0, v0

    add-long/2addr v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v5, Lcom/prineside/tdi2/enums/StatisticsType;->PT:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getCurrentGameStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v5

    double-to-float v2, v5

    iget-object v5, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v6, Lcom/prineside/tdi2/enums/StatisticsType;->WCST:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getCurrentGameStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v5

    iget-object v7, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v7, v7, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    invoke-virtual {v7}, Lcom/prineside/tdi2/systems/WaveSystem;->getCompletedWavesCount()I

    move-result v7

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    iget-object v7, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v7, v7, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget-object v7, v7, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    iget v7, v7, Lcom/prineside/tdi2/Wave;->waveNumber:I

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    double-to-float v5, v5

    add-float/2addr v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x42700000    # 60.0f

    div-float v6, v2, v6

    const v7, 0x3cf5c28f    # 0.03f

    mul-float v6, v6, v7

    add-float/2addr v6, v5

    long-to-float v0, v0

    const v1, 0x3ca3d70a    # 0.02f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->averageDifficulty:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    const v1, 0x3c23d70a    # 0.01f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    float-to-long v0, v0

    mul-float v2, v2, v6

    const v5, 0x3e19999a    # 0.15f

    mul-float v2, v2, v5

    const/high16 v5, 0x40400000    # 3.0f

    mul-float v2, v2, v5

    float-to-int v2, v2

    iget-object v5, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    sget-object v6, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->USER_MAPS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v5, v6, :cond_2

    long-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float v0, v0, v1

    float-to-long v0, v0

    int-to-float v2, v2

    const v5, 0x3f99999a    # 1.2f

    mul-float v2, v2, v5

    float-to-int v2, v2

    goto :goto_1

    :cond_2
    long-to-float v0, v0

    const v1, 0x3fb33333    # 1.4f

    mul-float v0, v0, v1

    float-to-long v0, v0

    :goto_1
    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v0, v5

    if-lez v7, :cond_3

    move-wide v0, v5

    :cond_3
    int-to-long v7, v2

    add-long/2addr v0, v7

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v7, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {v2, v7}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyModePrizeMultiplier(Lcom/prineside/tdi2/enums/DifficultyMode;)F

    move-result v2

    long-to-float v0, v0

    mul-float v2, v2, v0

    const v0, 0x3f59999a    # 0.85f

    mul-float v2, v2, v0

    float-to-long v0, v2

    long-to-double v0, v0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v7, Lcom/prineside/tdi2/enums/GameValueType;->GREEN_PAPERS_BONUS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v7}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v7

    add-double/2addr v7, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v7

    double-to-long v0, v0

    cmp-long v2, v0, v5

    if-lez v2, :cond_4

    const v0, 0x7fffffff

    goto :goto_2

    :cond_4
    long-to-int v0, v0

    :goto_2
    return v0
.end method

.method public dispose()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->W:Lcom/prineside/tdi2/systems/GameStateSystem$_LifecycleListener;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Application;->removeLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->dailyQuestLevel:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->startingAbilitiesConfiguration:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->u:Lcom/prineside/tdi2/IssuedItems;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameStartPreferencesSnapshot:[B

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->headlessValidatedReplayRecord:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->validationResultHandler:Lcom/prineside/tdi2/utils/ObjectRetriever;

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->clear()V

    invoke-super {p0}, Lcom/prineside/tdi2/systems/StateSystem;->dispose()V

    return-void
.end method

.method public final e(Z)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->J:Lcom/esotericsoftware/kryo/io/Output;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->networkManager:Lcom/prineside/tdi2/managers/NetworkManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/NetworkManager;->fullKryo:Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->L:[B

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Output;->reset()V

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {v1, v0, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-wide v4, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->p:J

    invoke-virtual {v0, v4, v5}, Lcom/esotericsoftware/kryo/io/Output;->writeLong(J)V

    iget v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->modeDifficultyMultiplier:I

    invoke-virtual {v0, v2, v3}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-virtual {v1, v0, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->startingAbilitiesConfiguration:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    const-class v4, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    invoke-virtual {v1, v0, v2, v4}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-boolean v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->canLootCases:Z

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->encryptedChestsInInventory:I

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget-boolean v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->lootBoostEnabled:Z

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->rarityBoostEnabled:Z

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-static {v2}, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->isBasicLevel(Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    sget-object v4, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->USER_MAPS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->userMapId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeString(Ljava/lang/String;)V

    iget v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->userMapOriginalSeed:I

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->allowedBossesForCustomMaps:[Lcom/prineside/tdi2/enums/BossType;

    const-class v4, [Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {v1, v0, v2, v4}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_1
    :goto_0
    iget-wide v4, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameStartTimestamp:J

    invoke-virtual {v0, v4, v5}, Lcom/esotericsoftware/kryo/io/Output;->writeLong(J)V

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getGlobalSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->loot:Lcom/prineside/tdi2/systems/LootSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/LootSystem;->inventoryStatistics:Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    invoke-virtual {v1, v0, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Output;->toBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->L:[B

    :cond_2
    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Output;->reset()V

    const/16 v2, 0xb8

    invoke-virtual {v0, v2, v3}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->L:[B

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeBytes([B)V

    iget v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->playRealTime:F

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v2, p0, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    invoke-virtual {v0, v2, v3}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/GameStateSystem;->getApproxStateHash()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget-object v2, p0, Lcom/prineside/tdi2/systems/StateSystem;->k:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v2, v3}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    :goto_1
    iget v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->M:I

    iget-object v4, p0, Lcom/prineside/tdi2/systems/StateSystem;->k:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->N:Lcom/esotericsoftware/kryo/io/Output;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/systems/StateSystem$ActionUpdatePair;

    aget-object v2, v4, v2

    invoke-virtual {v1, v5, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->M:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->M:I

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->N:Lcom/esotericsoftware/kryo/io/Output;

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/io/Output;->getBuffer()[B

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->N:Lcom/esotericsoftware/kryo/io/Output;

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeBytes([BII)V

    if-eqz p1, :cond_4

    :try_start_0
    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->K:Lcom/esotericsoftware/kryo/io/Output;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->reset()V

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->K:Lcom/esotericsoftware/kryo/io/Output;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/GameSystemProvider;->serialize(Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->K:Lcom/esotericsoftware/kryo/io/Output;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->getBuffer()[B

    move-result-object p1

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->K:Lcom/esotericsoftware/kryo/io/Output;

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v1

    invoke-virtual {v0, p1, v3, v1}, Lcom/esotericsoftware/kryo/io/Output;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "GameStateSystem"

    const-string v1, "failed to serialize state, forcing regular save"

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "failed to serialize state"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/systems/GameStateSystem;->setSnapshotSavesEnabled(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public getApproxStateHash()I
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->x:Lcom/badlogic/gdx/math/RandomXS128;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/RandomXS128;->getState(I)J

    move-result-wide v2

    long-to-int v0, v2

    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->x:Lcom/badlogic/gdx/math/RandomXS128;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/RandomXS128;->getState(I)J

    move-result-wide v3

    long-to-int v4, v3

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->s:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v3}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->q:Lcom/prineside/tdi2/utils/CheatSafeLong;

    invoke-virtual {v3}, Lcom/prineside/tdi2/utils/CheatSafeLong;->get()J

    move-result-wide v3

    long-to-int v4, v3

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->r:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v3}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v3

    add-int/2addr v0, v3

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v3, v3, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v4, :cond_1

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, v3, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget v4, v3, Lcom/prineside/tdi2/Enemy;->id:I

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget v4, v3, Lcom/prineside/tdi2/Enemy;->sideShiftIndex:I

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget v4, v3, Lcom/prineside/tdi2/Enemy;->angle:F

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget v4, v3, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v3}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v3}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v3, v3, v5

    float-to-int v3, v3

    add-int/2addr v0, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getCompletedQuests()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->v:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getDoubleSpeedTimeLeft()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->I:F

    return v0
.end method

.method public getGameLootIssuedItems()Lcom/prineside/tdi2/IssuedItems;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->u:Lcom/prineside/tdi2/IssuedItems;

    return-object v0
.end method

.method public getGameSpeed()F
    .locals 3

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->R:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->V:F

    iget v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->U:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->R:Z

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    sub-float/2addr v1, v0

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->z:F

    iget v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->T:F

    sub-float/2addr v2, v0

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->z:F

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getHealth()I
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->r:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v0

    return v0
.end method

.method public getMoney()I
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->s:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v0

    return v0
.end method

.method public getQuestsIssuedPrizes()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/IssuedItems;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->w:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getRandomState(I)J
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->x:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/RandomXS128;->getState(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getResources(Lcom/prineside/tdi2/enums/ResourceType;)I
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->t:[Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result p1

    return p1
.end method

.method public getScore()J
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->q:Lcom/prineside/tdi2/utils/CheatSafeLong;

    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/CheatSafeLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeed()J
    .locals 2

    iget-wide v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->p:J

    return-wide v0
.end method

.method public getStateBytes()Lcom/esotericsoftware/kryo/io/Output;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->e(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->J:Lcom/esotericsoftware/kryo/io/Output;

    return-object v0
.end method

.method public getStateStr(Z)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/GameStateSystem;->e(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->J:Lcom/esotericsoftware/kryo/io/Output;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->getBuffer()[B

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->J:Lcom/esotericsoftware/kryo/io/Output;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/prineside/tdi2/utils/StringFormatter;->toCompactBase64([BII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    const-string v0, "GameState"

    return-object v0
.end method

.method public higherGameSpeed()V
    .locals 7

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-boolean v0, v0, Lcom/prineside/tdi2/systems/StateSystem;->replayMode:Z

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->z:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/StrictMath;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->z:F

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/StrictMath;->abs(F)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v3, v1, v4

    if-gez v3, :cond_1

    const/high16 v1, 0x40800000    # 4.0f

    goto :goto_0

    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    :goto_0
    cmpl-float v0, v1, v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->setGameSpeed(F)V

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->z:F

    cmpg-float v3, v0, v2

    if-gez v3, :cond_3

    goto :goto_1

    :cond_3
    mul-float v2, v0, v1

    :goto_1
    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->setGameSpeed(F)V

    :cond_4
    :goto_2
    return-void
.end method

.method public isDailyQuestAndNotCompleted()Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->dailyQuestLevel:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->v:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isDoubleSpeedActive()Z
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/GameStateSystem;->getDoubleSpeedTimeLeft()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGameOver()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->C:Z

    return v0
.end method

.method public isGameRealTimePasses()Z
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget-object v1, v0, Lcom/prineside/tdi2/systems/WaveSystem;->status:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    sget-object v2, Lcom/prineside/tdi2/systems/WaveSystem$Status;->NOT_STARTED:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    sget-object v4, Lcom/prineside/tdi2/enums/DifficultyMode;->EASY:Lcom/prineside/tdi2/enums/DifficultyMode;

    const/4 v5, 0x1

    if-ne v2, v4, :cond_2

    sget-object v2, Lcom/prineside/tdi2/systems/WaveSystem$Status;->SPAWNING:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    if-ne v1, v2, :cond_1

    return v5

    :cond_1
    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/WaveSystem;->getTimeToNextWave()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/WaveSystem;->allWavesSpawned()Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    return v5
.end method

.method public isMaxEndlessReplayTimeReached()Z
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-static {v0}, Lcom/prineside/tdi2/enums/DifficultyMode;->isEndless(Lcom/prineside/tdi2/enums/DifficultyMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/StatisticsType;->PT:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v0

    const-wide v2, 0x40ac200000000000L    # 3600.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->y:Z

    return v0
.end method

.method public lowerGameSpeed()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-boolean v0, v0, Lcom/prineside/tdi2/systems/StateSystem;->replayMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->z:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->setGameSpeed(F)V

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->z:F

    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/high16 v2, -0x40800000    # -1.0f

    :goto_0
    cmpl-float v0, v2, v3

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->setGameSpeed(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public pauseGame()V
    .locals 3

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->y:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->C:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pausing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameStateSystem"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->y:Z

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->z:F

    iput v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->A:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->z:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->R:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/GameStateSystem;->saveGame()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;

    invoke-interface {v2}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;->gamePaused()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    :cond_2
    return-void
.end method

.method public postSetup()V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->z:F

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->STARTING_MONEY:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->addMoney(FZ)I

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->STARTING_HEALTH:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->addHealth(I)V

    return-void
.end method

.method public profileUpdate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public randomFloat()F
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->x:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v0

    return v0
.end method

.method public randomInt(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->x:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result p1

    return p1
.end method

.method public randomIntIndependent(IJ)I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/systems/GameStateSystem;->Y:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/math/RandomXS128;->setSeed(J)V

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result p1

    return p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 5

    const-class v0, Lcom/prineside/tdi2/utils/CheatSafeInt;

    const-class v1, Ljava/lang/String;

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/systems/StateSystem;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v2, Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {p1, p2, v2}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/enums/DifficultyMode;

    iput-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    const-class v2, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-virtual {p1, p2, v2}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    iput-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v3

    iput v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->modeDifficultyMultiplier:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->replayId:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->userMapId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->userMapOriginalSeed:I

    const-class v1, [Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/prineside/tdi2/enums/BossType;

    iput-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->allowedBossesForCustomMaps:[Lcom/prineside/tdi2/enums/BossType;

    const-class v1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    iput-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->dailyQuestLevel:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    const-class v1, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    iput-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->startingAbilitiesConfiguration:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->p:J

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->canLootCases:Z

    invoke-virtual {p2, v2}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->encryptedChestsInInventory:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->lootBoostEnabled:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->rarityBoostEnabled:Z

    const-class v1, Lcom/prineside/tdi2/utils/CheatSafeLong;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/utils/CheatSafeLong;

    iput-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->q:Lcom/prineside/tdi2/utils/CheatSafeLong;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/utils/CheatSafeInt;

    iput-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->r:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/utils/CheatSafeInt;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->s:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p2, v2}, Lcom/esotericsoftware/kryo/io/Input;->readVarLong(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->scoreWithEndlessTimeLimit:J

    const-class v0, [Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/utils/CheatSafeInt;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->t:[Lcom/prineside/tdi2/utils/CheatSafeInt;

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->v:Lcom/badlogic/gdx/utils/Array;

    const-class v0, Lcom/prineside/tdi2/IssuedItems;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/IssuedItems;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->u:Lcom/prineside/tdi2/IssuedItems;

    const-class v0, Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/RandomXS128;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->x:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {p2, v2}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->averageDifficulty:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->playRealTime:F

    const-class v0, Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/enums/EnemyType;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->lastEnemyReachedTarget:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->C:Z

    const-class v0, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameOverReason:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    const-class v0, [B

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameStartPreferencesSnapshot:[B

    invoke-virtual {p2, v2}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->D:I

    invoke-virtual {p2, v2}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->pxpExperience:I

    invoke-virtual {p2, v2}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->E:I

    invoke-virtual {p2, v2}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->F:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->G:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->H:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->I:F

    const-class v0, Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/ListenerGroup;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    return-void
.end method

.method public realUpdate(F)V
    .locals 3

    const/high16 v0, 0x41200000    # 10.0f

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v2, p1, v0

    if-lez v2, :cond_2

    const/high16 p1, 0x41200000    # 10.0f

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "realDeltaTime is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", reset to 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GameStateSystem"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->W:Lcom/prineside/tdi2/systems/GameStateSystem$_LifecycleListener;

    if-nez v0, :cond_3

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$_LifecycleListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/prineside/tdi2/systems/GameStateSystem$_LifecycleListener;-><init>(Lcom/prineside/tdi2/systems/GameStateSystem;Lcom/prineside/tdi2/systems/GameStateSystem$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->W:Lcom/prineside/tdi2/systems/GameStateSystem$_LifecycleListener;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v2, v0}, Lcom/badlogic/gdx/Application;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    :cond_3
    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/GameStateSystem;->isPaused()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/GameStateSystem;->getGameSpeed()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->playRealTime:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->playRealTime:F

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->V:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->V:F

    :cond_4
    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_5

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;

    invoke-interface {v2, p1}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;->realUpdate(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public registerPlayerActivity()V
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->D:I

    iput v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->E:I

    return-void
.end method

.method public removeHealth(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->r:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->r:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/utils/CheatSafeInt;->sub(I)V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;

    invoke-interface {v2, v0}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;->healthChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public removeMoney(I)Z
    .locals 5

    const/4 v0, 0x1

    if-gtz p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->s:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v1}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v1

    const/4 v2, 0x0

    if-lt v1, p1, :cond_2

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->s:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v1}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v1

    iget-object v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->s:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v3, p1}, Lcom/prineside/tdi2/utils/CheatSafeInt;->sub(I)V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_1

    iget-object v4, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;

    invoke-interface {v4, v1, v2}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;->moneyChanged(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return v0

    :cond_2
    return v2
.end method

.method public removeResources(Lcom/prineside/tdi2/enums/ResourceType;I)Z
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->t:[Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v0

    const/4 v1, 0x0

    if-lt v0, p2, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->t:[Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->t:[Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Lcom/prineside/tdi2/utils/CheatSafeInt;->sub(I)V

    iget-object p2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object p2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    iget-object v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;

    invoke-interface {v3, p1, v0, v1}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;->resourcesChanged(Lcom/prineside/tdi2/enums/ResourceType;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public restartGame(Z)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->dailyQuestLevel:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->dailyQuestManager:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/DailyQuestManager;->startDailyLevel()V

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object v2, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    sget-object v3, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->BASIC_LEVELS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v2, v3, :cond_1

    new-instance v1, Lcom/prineside/tdi2/screens/GameScreen;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v3, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v5

    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v6, v3, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    iget v7, v3, Lcom/prineside/tdi2/systems/GameStateSystem;->modeDifficultyMultiplier:I

    iget-object v8, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->startingAbilitiesConfiguration:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    iget-boolean v9, v3, Lcom/prineside/tdi2/systems/GameStateSystem;->canLootCases:Z

    iget v10, v3, Lcom/prineside/tdi2/systems/GameStateSystem;->encryptedChestsInInventory:I

    iget-boolean v11, v3, Lcom/prineside/tdi2/systems/GameStateSystem;->lootBoostEnabled:Z

    iget-boolean v12, v3, Lcom/prineside/tdi2/systems/GameStateSystem;->rarityBoostEnabled:Z

    iget-wide v13, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameStartTimestamp:J

    const/4 v15, 0x0

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->loot:Lcom/prineside/tdi2/systems/LootSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/LootSystem;->inventoryStatistics:Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    move-object v4, v1

    move-object/from16 v16, v2

    invoke-direct/range {v4 .. v16}, Lcom/prineside/tdi2/screens/GameScreen;-><init>(Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/enums/DifficultyMode;ILcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;ZIZZJLcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)V

    iget-object v2, v1, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v3, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->dailyQuestLevel:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    iput-object v3, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->dailyQuestLevel:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->USER_MAPS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v2, v3, :cond_2

    new-instance v1, Lcom/prineside/tdi2/screens/GameScreen;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->userMapManager:Lcom/prineside/tdi2/managers/UserMapManager;

    iget-object v3, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->userMapId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/UserMapManager;->getUserMap(Ljava/lang/String;)Lcom/prineside/tdi2/UserMap;

    move-result-object v5

    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v6, v3, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    iget v7, v3, Lcom/prineside/tdi2/systems/GameStateSystem;->modeDifficultyMultiplier:I

    iget-object v8, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->startingAbilitiesConfiguration:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    iget-wide v9, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameStartTimestamp:J

    iget-object v11, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->allowedBossesForCustomMaps:[Lcom/prineside/tdi2/enums/BossType;

    const/4 v12, 0x0

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->loot:Lcom/prineside/tdi2/systems/LootSystem;

    iget-object v13, v2, Lcom/prineside/tdi2/systems/LootSystem;->inventoryStatistics:Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    move-object v4, v1

    invoke-direct/range {v4 .. v13}, Lcom/prineside/tdi2/screens/GameScreen;-><init>(Lcom/prineside/tdi2/UserMap;Lcom/prineside/tdi2/enums/DifficultyMode;ILcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;J[Lcom/prineside/tdi2/enums/BossType;Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    invoke-static {}, Lcom/prineside/tdi2/systems/GameStateSystem;->deleteSavedGame()V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/managers/ScreenManager;->setScreen(Lcom/prineside/tdi2/Screen;)V

    goto/16 :goto_3

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not implemented for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v2, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    sget-object v3, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->BASIC_LEVELS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v2, v3, :cond_7

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v3, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/BasicLevel;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/TargetTile;->isDisableAbilities()Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/AbilityManager;->isAnyAbilityOpened()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->abilitySelectionOverlay:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    new-instance v2, Lcom/prineside/tdi2/systems/GameStateSystem$1;

    invoke-direct {v2, v0}, Lcom/prineside/tdi2/systems/GameStateSystem$1;-><init>(Lcom/prineside/tdi2/systems/GameStateSystem;)V

    new-instance v3, Lcom/prineside/tdi2/systems/GameStateSystem$2;

    invoke-direct {v3, v0}, Lcom/prineside/tdi2/systems/GameStateSystem$2;-><init>(Lcom/prineside/tdi2/systems/GameStateSystem;)V

    invoke-virtual {v1, v2, v3}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->show(Ljava/lang/Runnable;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    goto :goto_3

    :cond_6
    :goto_1
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v2, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v4, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/prineside/tdi2/managers/ScreenManager;->startNewBasicLevel(Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;)V

    goto :goto_3

    :cond_7
    sget-object v3, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->USER_MAPS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v2, v3, :cond_a

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->userMapManager:Lcom/prineside/tdi2/managers/UserMapManager;

    iget-object v3, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->userMapId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/UserMapManager;->getUserMap(Ljava/lang/String;)Lcom/prineside/tdi2/UserMap;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    iget-object v2, v2, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/TargetTile;->isDisableAbilities()Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/AbilityManager;->isAnyAbilityOpened()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_8
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->abilitySelectionOverlay:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    new-instance v2, Lcom/prineside/tdi2/systems/GameStateSystem$3;

    invoke-direct {v2, v0}, Lcom/prineside/tdi2/systems/GameStateSystem$3;-><init>(Lcom/prineside/tdi2/systems/GameStateSystem;)V

    new-instance v3, Lcom/prineside/tdi2/systems/GameStateSystem$4;

    invoke-direct {v3, v0}, Lcom/prineside/tdi2/systems/GameStateSystem$4;-><init>(Lcom/prineside/tdi2/systems/GameStateSystem;)V

    invoke-virtual {v1, v2, v3}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->show(Ljava/lang/Runnable;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    goto :goto_3

    :cond_9
    :goto_2
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v2, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->userMapManager:Lcom/prineside/tdi2/managers/UserMapManager;

    iget-object v4, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->userMapId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/UserMapManager;->getUserMap(Ljava/lang/String;)Lcom/prineside/tdi2/UserMap;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/prineside/tdi2/managers/ScreenManager;->startNewUserLevel(Lcom/prineside/tdi2/UserMap;Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public resumeGame()V
    .locals 3

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->y:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->y:Z

    iget v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->A:F

    iput v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->z:F

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;

    invoke-interface {v2}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;->gameResumed()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    :cond_1
    return-void
.end method

.method public saveGame()V
    .locals 7

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->CFG:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;

    iget-boolean v1, v1, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;->headless:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/prineside/tdi2/systems/StateSystem;->replayMode:Z

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameSavesDisabled:Z

    if-eqz v1, :cond_1

    const-string v0, "GameStateSystem"

    const-string v1, "game saves disabled manually"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->isFastForwarding()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "GameStateSystem"

    const-string v1, "game is fast-forwarding, save skipped"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->GAME_SAVES:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getBooleanValue(Lcom/prineside/tdi2/enums/GameValueType;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->C:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->B:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v0

    iget v2, p0, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->B:J

    iget-boolean v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->snapshotSavesEnabled:Z

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->e(Z)V

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->O:[B

    if-eqz v2, :cond_3

    array-length v2, v2

    iget-object v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->J:Lcom/esotericsoftware/kryo/io/Output;

    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v3

    if-ge v2, v3, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->J:Lcom/esotericsoftware/kryo/io/Output;

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v2

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->O:[B

    :cond_4
    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->Q:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->J:Lcom/esotericsoftware/kryo/io/Output;

    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/io/Output;->getBuffer()[B

    move-result-object v3

    iget-object v4, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->O:[B

    iget-object v5, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->J:Lcom/esotericsoftware/kryo/io/Output;

    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->J:Lcom/esotericsoftware/kryo/io/Output;

    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v3

    iput v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->P:I

    const-string v3, "GameStateSystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->J:Lcom/esotericsoftware/kryo/io/Output;

    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/prineside/tdi2/systems/c;

    invoke-direct {v3, p0}, Lcom/prineside/tdi2/systems/c;-><init>(Lcom/prineside/tdi2/systems/GameStateSystem;)V

    const-string v4, "SaveGame"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    invoke-static {v2}, Lcom/prineside/tdi2/Logger;->handleThreadExceptionsForgiving(Ljava/lang/Thread;)V

    const-string v2, "GameStateSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "game saved in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v4

    sub-long/2addr v4, v0

    long-to-float v0, v4

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "ms for update #"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    :goto_0
    return-void
.end method

.method public setGameSpeed(F)V
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->z:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->R:Z

    iput p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->z:F

    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;

    invoke-interface {v1}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;->gameSpeedChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    :cond_1
    return-void
.end method

.method public setHealth(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->r:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->r:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/utils/CheatSafeInt;->set(I)V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;

    invoke-interface {v2, v0}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;->healthChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public setMoney(I)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->s:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->s:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/utils/CheatSafeInt;->set(I)V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    iget-object v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;

    invoke-interface {v3, v0, v1}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;->moneyChanged(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public setResources(Lcom/prineside/tdi2/enums/ResourceType;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->t:[Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->t:[Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Lcom/prineside/tdi2/utils/CheatSafeInt;->set(I)V

    iget-object p2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object p2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    iget-object v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;

    invoke-interface {v3, p1, v0, v1}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;->resourcesChanged(Lcom/prineside/tdi2/enums/ResourceType;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public setScore(J)V
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->q:Lcom/prineside/tdi2/utils/CheatSafeLong;

    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/CheatSafeLong;->get()J

    move-result-wide v0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->q:Lcom/prineside/tdi2/utils/CheatSafeLong;

    invoke-virtual {v2, p1, p2}, Lcom/prineside/tdi2/utils/CheatSafeLong;->set(J)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/GameStateSystem;->isMaxEndlessReplayTimeReached()Z

    move-result v2

    if-nez v2, :cond_0

    iput-wide p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->scoreWithEndlessTimeLimit:J

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    iget-object v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v1, p2, v4}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;->scoreChanged(JZLcom/prineside/tdi2/enums/StatisticsType;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public setSeed(J)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->x:Lcom/badlogic/gdx/math/RandomXS128;

    if-nez v0, :cond_0

    iput-wide p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->p:J

    new-instance v0, Lcom/badlogic/gdx/math/RandomXS128;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/math/RandomXS128;-><init>(J)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->x:Lcom/badlogic/gdx/math/RandomXS128;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Seed is already set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSnapshotSavesEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->snapshotSavesEnabled:Z

    return-void
.end method

.method public setup()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "R-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->generateUniqueDistinguishableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->replayId:Ljava/lang/String;

    iget-wide v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameStartTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->t:[Lcom/prineside/tdi2/utils/CheatSafeInt;

    new-instance v3, Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-direct {v3, v0, v0}, Lcom/prineside/tdi2/utils/CheatSafeInt;-><init>(II)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PROGRESS:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/PreferencesManager;->saveSnapshot(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/ByteArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ByteArray;->toArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameStartPreferencesSnapshot:[B

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v2, Lcom/prineside/tdi2/systems/GameStateSystem$_EnemySystemListener;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/prineside/tdi2/systems/GameStateSystem$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/GameStateSystem$1;)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v2, Lcom/prineside/tdi2/systems/GameStateSystem$_MinerSystemListener;

    invoke-direct {v2, v0, v3}, Lcom/prineside/tdi2/systems/GameStateSystem$_MinerSystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/GameStateSystem$1;)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v2, Lcom/prineside/tdi2/systems/GameStateSystem$_WaveSystemListener;

    invoke-direct {v2, v0, v3}, Lcom/prineside/tdi2/systems/GameStateSystem$_WaveSystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/GameStateSystem$1;)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-static {v0}, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->isBasicLevel(Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/prineside/tdi2/IssuedItems;

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->GAME_OVER_BASIC_LEVEL:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems;-><init>(Lcom/prineside/tdi2/IssuedItems$IssueReason;I)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->u:Lcom/prineside/tdi2/IssuedItems;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    iput-object v1, v0, Lcom/prineside/tdi2/IssuedItems;->gameOverBasicLevel:Ljava/lang/String;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    iput-object v1, v0, Lcom/prineside/tdi2/IssuedItems;->basicLevelGameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    sget-object v1, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->USER_MAPS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/prineside/tdi2/IssuedItems;

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->GAME_OVER_USER_MAP:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems;-><init>(Lcom/prineside/tdi2/IssuedItems$IssueReason;I)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->u:Lcom/prineside/tdi2/IssuedItems;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->userMapId:Ljava/lang/String;

    iput-object v1, v0, Lcom/prineside/tdi2/IssuedItems;->userMapId:Ljava/lang/String;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->userMapManager:Lcom/prineside/tdi2/managers/UserMapManager;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/managers/UserMapManager;->getUserMap(Ljava/lang/String;)Lcom/prineside/tdi2/UserMap;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Map;->generateSeed()I

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/IssuedItems;->userMapHash:I

    :goto_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Game mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Game start timestamp not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public switchGameSpeed()V
    .locals 7

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->z:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/StrictMath;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->z:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/StrictMath;->abs(F)F

    move-result v0

    float-to-double v2, v0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    const/high16 v1, 0x40800000    # 4.0f

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->setGameSpeed(F)V

    return-void
.end method

.method public togglePauseMenu()V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->y:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/GameStateSystem;->resumeGame()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/GameStateSystem;->pauseGame()V

    :goto_0
    return-void
.end method

.method public triggerGameOver(Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;)V
    .locals 4

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->C:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "GameStateSystem"

    const-string v1, "game over triggered"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->C:Z

    iput-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameOverReason:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;

    invoke-interface {v3}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;->gameOver()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "0."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;->QUEST_FAILED:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;->ZERO_BASE_HEALTH:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    if-ne p1, v1, :cond_3

    :cond_2
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->FAIL_TUTORIAL:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {p1, v1, v0}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    :cond_3
    return-void
.end method

.method public update(F)V
    .locals 7

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/GameStateSystem;->isGameRealTimePasses()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->I:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->I:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iput v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->I:F

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->pxpExperience:I

    const/16 v3, 0x535

    if-ge v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/GameStateSystem;->isMaxEndlessReplayTimeReached()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->D:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->D:I

    iget v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->E:I

    sub-int v3, v0, v3

    const/16 v4, 0x34bc

    if-le v3, v4, :cond_1

    iput v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->F:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-static {v0}, Lcom/prineside/tdi2/enums/DifficultyMode;->isEndless(Lcom/prineside/tdi2/enums/DifficultyMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1518

    goto :goto_0

    :cond_2
    const/16 v0, 0xa8c

    :goto_0
    iget v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->D:I

    iget v4, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->F:I

    sub-int v4, v3, v4

    if-ne v4, v0, :cond_3

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->pxpExperience:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->pxpExperience:I

    iput v3, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->F:I

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->COINS_GENERATION:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v0

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v0, v3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_5

    iget v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->H:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->H:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/GameStateSystem;->isDoubleSpeedActive()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_4

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v0, v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_2

    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2
    iget v4, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->G:F

    mul-float v0, v0, p1

    add-float/2addr v4, v0

    iput v4, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->G:F

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->H:F

    cmpl-float v5, v0, v2

    if-ltz v5, :cond_5

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->H:F

    cmpl-float v0, v4, v3

    if-ltz v0, :cond_5

    float-to-int v0, v4

    int-to-float v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->addMoney(FZ)I

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/StatisticsType;->CG_PG:Lcom/prineside/tdi2/enums/StatisticsType;

    int-to-double v5, v0

    invoke-virtual {v3, v4, v5, v6}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->G:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->G:F

    :cond_5
    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_6

    iget-object v4, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;

    invoke-interface {v4, p1}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener;->update(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    const/4 p1, 0x0

    :goto_4
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v3, v3, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, v4, :cond_8

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v3, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_5
    iget-object p1, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/WaveSystem;->status:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    sget-object v0, Lcom/prineside/tdi2/systems/WaveSystem$Status;->ENDED:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    if-ne p1, v0, :cond_9

    if-nez v1, :cond_9

    sget-object p1, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;->NO_ENEMIES_LEFT:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/GameStateSystem;->triggerGameOver(Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;)V

    :cond_9
    iget-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->headlessValidatedReplayRecord:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/GameStateSystem;->isMaxEndlessReplayTimeReached()Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;->MANUAL:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/GameStateSystem;->triggerGameOver(Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;)V

    :cond_a
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 3

    const-class v0, Ljava/lang/String;

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/systems/StateSystem;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->modeDifficultyMultiplier:I

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->replayId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->userMapId:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->userMapOriginalSeed:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->allowedBossesForCustomMaps:[Lcom/prineside/tdi2/enums/BossType;

    const-class v1, [Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->dailyQuestLevel:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    const-class v1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->startingAbilitiesConfiguration:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    const-class v1, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-wide v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->p:J

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeLong(J)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->canLootCases:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->encryptedChestsInInventory:I

    invoke-virtual {p2, v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->lootBoostEnabled:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->rarityBoostEnabled:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->q:Lcom/prineside/tdi2/utils/CheatSafeLong;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->r:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->s:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->scoreWithEndlessTimeLimit:J

    invoke-virtual {p2, v0, v1, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeVarLong(JZ)I

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->t:[Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->v:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->u:Lcom/prineside/tdi2/IssuedItems;

    const-class v1, Lcom/prineside/tdi2/IssuedItems;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->x:Lcom/badlogic/gdx/math/RandomXS128;

    const-class v1, Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->averageDifficulty:I

    invoke-virtual {p2, v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->playRealTime:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->lastEnemyReachedTarget:Lcom/prineside/tdi2/enums/EnemyType;

    const-class v1, Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->C:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameOverReason:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    const-class v1, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameStartPreferencesSnapshot:[B

    const-class v1, [B

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->D:I

    invoke-virtual {p2, v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->pxpExperience:I

    invoke-virtual {p2, v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->E:I

    invoke-virtual {p2, v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->F:I

    invoke-virtual {p2, v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->G:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->H:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->I:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
