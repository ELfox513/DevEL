.class public Lcom/prineside/tdi2/managers/WaveManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/WaveManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/WaveManager$Serializer;
    }
.end annotation


# static fields
.field public static final ENEMY_INTERVAL_DENSITY_HIGH:F = 0.25f

.field public static final ENEMY_INTERVAL_DENSITY_LOW:F = 1.0f

.field public static final WAVES_TIMELINE_MAX_WAVE:I = 0x64


# instance fields
.field public final a:Lcom/badlogic/gdx/math/RandomXS128;

.field public b:J

.field public d:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/prineside/tdi2/enums/BossType;",
            "Lcom/prineside/tdi2/WaveProcessor$WaveProcessorFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/RandomXS128;

    const-wide/16 v1, 0x539

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/RandomXS128;-><init>(J)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/WaveManager;->a:Lcom/badlogic/gdx/math/RandomXS128;

    iput-wide v1, p0, Lcom/prineside/tdi2/managers/WaveManager;->b:J

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/WaveManager;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v1, Lcom/prineside/tdi2/enums/BossType;->SNAKE:Lcom/prineside/tdi2/enums/BossType;

    new-instance v2, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$SnakeBossWaveProcessorFactory;

    invoke-direct {v2}, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$SnakeBossWaveProcessorFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/prineside/tdi2/managers/WaveManager;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v1, Lcom/prineside/tdi2/enums/BossType;->BROOT:Lcom/prineside/tdi2/enums/BossType;

    new-instance v2, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$BrootBossWaveProcessorFactory;

    invoke-direct {v2}, Lcom/prineside/tdi2/waves/processors/BrootBossWaveProcessor$BrootBossWaveProcessorFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/prineside/tdi2/managers/WaveManager;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v1, Lcom/prineside/tdi2/enums/BossType;->CONSTRUCTOR:Lcom/prineside/tdi2/enums/BossType;

    new-instance v2, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor$ConstructorBossWaveProcessorFactory;

    invoke-direct {v2}, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor$ConstructorBossWaveProcessorFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/prineside/tdi2/managers/WaveManager;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v1, Lcom/prineside/tdi2/enums/BossType;->MOBCHAIN:Lcom/prineside/tdi2/enums/BossType;

    new-instance v2, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$MobchainBossWaveProcessorFactory;

    invoke-direct {v2}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$MobchainBossWaveProcessorFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/prineside/tdi2/managers/WaveManager;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v1, Lcom/prineside/tdi2/enums/BossType;->METAPHOR:Lcom/prineside/tdi2/enums/BossType;

    new-instance v2, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$MetaphorBossWaveProcessorFactory;

    invoke-direct {v2}, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$MetaphorBossWaveProcessorFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/prineside/tdi2/enums/BossType;->values:[Lcom/prineside/tdi2/enums/BossType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/prineside/tdi2/managers/WaveManager;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not all wave processor factories created"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "WaveManager"

    const-string v1, "loaded"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getWaveValue(II)F
    .locals 0

    int-to-float p0, p0

    int-to-float p1, p1

    mul-float p0, p0, p1

    const p1, 0x3c23d70a    # 0.01f

    mul-float p0, p0, p1

    return p0
.end method


# virtual methods
.method public final a(IJ)F
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/WaveManager;->a:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/math/RandomXS128;->setSeed(J)V

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    iget-object p3, p0, Lcom/prineside/tdi2/managers/WaveManager;->a:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {p3}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/managers/WaveManager;->a:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wave number can\'t be < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public createBossWaveProcessor(Lcom/prineside/tdi2/enums/BossType;)Lcom/prineside/tdi2/WaveProcessor;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/WaveManager;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/WaveProcessor$WaveProcessorFactory;

    invoke-virtual {p1}, Lcom/prineside/tdi2/WaveProcessor$WaveProcessorFactory;->create()Lcom/prineside/tdi2/WaveProcessor;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public generateBossWaveWithProcessor(Lcom/prineside/tdi2/enums/BossType;Lcom/prineside/tdi2/GameSystemProvider;II)Lcom/prineside/tdi2/Wave;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/WaveManager;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/WaveProcessor$WaveProcessorFactory;

    invoke-virtual {p1}, Lcom/prineside/tdi2/WaveProcessor$WaveProcessorFactory;->create()Lcom/prineside/tdi2/WaveProcessor;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/prineside/tdi2/WaveProcessor;->setup(Lcom/prineside/tdi2/GameSystemProvider;II)Lcom/prineside/tdi2/Wave;

    move-result-object p1

    return-object p1
.end method

.method public generateWave(IIJLcom/badlogic/gdx/utils/ObjectSet;)Lcom/prineside/tdi2/Wave;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "Lcom/prineside/tdi2/enums/EnemyType;",
            ">;)",
            "Lcom/prineside/tdi2/Wave;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static/range {p1 .. p2}, Lcom/prineside/tdi2/managers/WaveManager;->getWaveValue(II)F

    move-result v3

    move-wide/from16 v4, p3

    invoke-virtual {v0, v1, v4, v5}, Lcom/prineside/tdi2/managers/WaveManager;->a(IJ)F

    move-result v4

    new-instance v5, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sget-object v6, Lcom/prineside/tdi2/WaveTemplates;->WAVE_TEMPLATES:[Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;

    array-length v7, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v9, v7, :cond_4

    aget-object v11, v6, v9

    invoke-virtual {v11}, Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;->getEnemyGroupConfigs()[Lcom/prineside/tdi2/WaveTemplates$EnemyGroupConfig;

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_1

    aget-object v15, v12, v14

    invoke-interface {v15}, Lcom/prineside/tdi2/WaveTemplates$EnemyGroupConfig;->getEnemyType()Lcom/prineside/tdi2/enums/EnemyType;

    move-result-object v15

    move-object/from16 v8, p5

    invoke-virtual {v8, v15}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const/4 v12, 0x0

    goto :goto_2

    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v8, p5

    const/4 v12, 0x1

    :goto_2
    if-eqz v12, :cond_3

    int-to-float v12, v2

    invoke-virtual {v11, v1, v12, v3}, Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;->getProbability(IFF)I

    move-result v12

    iput v12, v11, Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;->currentProbability:I

    add-int/2addr v10, v12

    const/16 v13, 0x64

    if-lt v12, v13, :cond_2

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_2
    const/4 v12, 0x0

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    iput v12, v11, Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;->currentProbability:I

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    const/4 v12, 0x0

    int-to-float v3, v10

    mul-float v4, v4, v3

    float-to-int v3, v4

    iget v4, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v6, 0x0

    if-eqz v4, :cond_7

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v3

    move-object v4, v6

    :cond_5
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;

    if-eqz v4, :cond_6

    iget v7, v5, Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;->currentProbability:I

    iget v8, v4, Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;->currentProbability:I

    if-le v7, v8, :cond_5

    :cond_6
    move-object v4, v5

    goto :goto_4

    :cond_7
    sget-object v4, Lcom/prineside/tdi2/WaveTemplates;->WAVE_TEMPLATES:[Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;

    array-length v5, v4

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v5, :cond_9

    aget-object v7, v4, v8

    iget v9, v7, Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;->currentProbability:I

    sub-int/2addr v3, v9

    if-gez v3, :cond_8

    move-object v4, v7

    goto :goto_6

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    move-object v4, v6

    :cond_a
    :goto_6
    if-nez v4, :cond_b

    return-object v6

    :cond_b
    invoke-virtual {v0, v4, v1, v2}, Lcom/prineside/tdi2/managers/WaveManager;->generateWave(Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;II)Lcom/prineside/tdi2/Wave;

    move-result-object v1

    return-object v1
.end method

.method public generateWave(IILcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;)Lcom/prineside/tdi2/Wave;
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iget-object v1, p3, Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;->enemyGroups:[Lcom/prineside/tdi2/EnemyGroup;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/prineside/tdi2/EnemyGroup;->cpy()Lcom/prineside/tdi2/EnemyGroup;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/prineside/tdi2/Wave;

    invoke-direct {v1, p1, p2, v0}, Lcom/prineside/tdi2/Wave;-><init>(IILcom/badlogic/gdx/utils/Array;)V

    iget-object p1, p3, Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;->waveMessage:Ljava/lang/String;

    iput-object p1, v1, Lcom/prineside/tdi2/Wave;->waveMessage:Ljava/lang/String;

    return-object v1
.end method

.method public generateWave(Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;II)Lcom/prineside/tdi2/Wave;
    .locals 18

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static/range {p2 .. p3}, Lcom/prineside/tdi2/managers/WaveManager;->getWaveValue(II)F

    move-result v2

    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;->getEnemyGroupConfigs()[Lcom/prineside/tdi2/WaveTemplates$EnemyGroupConfig;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    invoke-interface {v7}, Lcom/prineside/tdi2/WaveTemplates$EnemyGroupConfig;->getEnemyType()Lcom/prineside/tdi2/enums/EnemyType;

    move-result-object v9

    int-to-float v8, v1

    invoke-interface {v7, v0, v8, v2}, Lcom/prineside/tdi2/WaveTemplates$EnemyGroupConfig;->getDelay(IFF)F

    move-result v13

    invoke-interface {v7, v0, v8, v2}, Lcom/prineside/tdi2/WaveTemplates$EnemyGroupConfig;->getInterval(IFF)F

    move-result v14

    invoke-interface {v7, v0, v8, v2}, Lcom/prineside/tdi2/WaveTemplates$EnemyGroupConfig;->getCount(IFF)I

    move-result v12

    invoke-interface {v7, v0, v8, v2}, Lcom/prineside/tdi2/WaveTemplates$EnemyGroupConfig;->getHealth(IFF)F

    move-result v11

    invoke-interface {v7, v0, v8, v2}, Lcom/prineside/tdi2/WaveTemplates$EnemyGroupConfig;->getSpeed(IFF)F

    move-result v10

    invoke-interface {v7, v0, v8, v2}, Lcom/prineside/tdi2/WaveTemplates$EnemyGroupConfig;->getBounty(IFF)F

    move-result v15

    invoke-interface {v7, v0, v8, v2}, Lcom/prineside/tdi2/WaveTemplates$EnemyGroupConfig;->getKillExp(IFF)F

    move-result v16

    invoke-interface {v7, v0, v8, v2}, Lcom/prineside/tdi2/WaveTemplates$EnemyGroupConfig;->getKillScore(IFF)I

    move-result v17

    new-instance v7, Lcom/prineside/tdi2/EnemyGroup;

    move-object v8, v7

    invoke-direct/range {v8 .. v17}, Lcom/prineside/tdi2/EnemyGroup;-><init>(Lcom/prineside/tdi2/enums/EnemyType;FFIFFFFI)V

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/prineside/tdi2/Wave;

    invoke-direct {v2, v0, v1, v3}, Lcom/prineside/tdi2/Wave;-><init>(IILcom/badlogic/gdx/utils/Array;)V

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;->getWaveMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/prineside/tdi2/Wave;->waveMessage:Ljava/lang/String;

    return-object v2
.end method

.method public generateWavesTimelineConfiguration(Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/Map;I)Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;
    .locals 18

    move-object/from16 v0, p1

    const/4 v1, 0x1

    move/from16 v2, p3

    if-ge v2, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    const/16 v3, 0x2710

    if-le v2, v3, :cond_1

    const/16 v2, 0x2710

    :cond_1
    new-instance v3, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;

    invoke-direct {v3}, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;-><init>()V

    iput v2, v3, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;->startWave:I

    const/4 v4, 0x0

    move-object/from16 v14, p2

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v14, Lcom/prineside/tdi2/Map;->spawnTiles:Lcom/badlogic/gdx/utils/Array;

    iget v7, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v7, :cond_9

    iget-object v6, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/tiles/SpawnTile;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/prineside/tdi2/tiles/SpawnTile;->getAllowedEnemies()Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    const/4 v7, 0x0

    :goto_1
    iget v8, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v8, :cond_8

    iget-object v8, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    aget-object v8, v8, v7

    const/4 v9, 0x0

    :goto_2
    iget-object v10, v3, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;->enemyConfigs:Lcom/badlogic/gdx/utils/Array;

    iget v11, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v9, v11, :cond_6

    iget-object v11, v10, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v11, [Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    aget-object v11, v11, v9

    iget-object v12, v11, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    iget-object v13, v8, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v12, v13, :cond_5

    iget v9, v8, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->firstWave:I

    iget v12, v11, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->firstWave:I

    if-ge v9, v12, :cond_2

    iput v9, v11, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->firstWave:I

    :cond_2
    iget v9, v11, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->lastWave:I

    if-lt v9, v1, :cond_4

    iget v12, v8, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->lastWave:I

    if-gt v12, v9, :cond_3

    if-ge v12, v1, :cond_4

    :cond_3
    iput v12, v11, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->lastWave:I

    :cond_4
    const/4 v9, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    :goto_3
    if-nez v9, :cond_7

    new-instance v9, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    iget-object v11, v8, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    iget v12, v8, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->firstWave:I

    iget v8, v8, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->lastWave:I

    invoke-direct {v9, v11, v12, v8}, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;-><init>(Lcom/prineside/tdi2/enums/EnemyType;II)V

    invoke-virtual {v10, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_9
    iget-object v1, v0, Lcom/prineside/tdi2/BasicLevel;->enemyWaves:[Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;

    if-nez v1, :cond_a

    sget-object v1, Lcom/prineside/tdi2/systems/WaveSystem$Mode;->ENDLESS:Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    goto :goto_4

    :cond_a
    sget-object v1, Lcom/prineside/tdi2/systems/WaveSystem$Mode;->PREDEFINED:Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/prineside/tdi2/Map;->getAverageDifficulty()I

    move-result v15

    iget-object v5, v3, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;->enemyGroupsByWave:Lcom/badlogic/gdx/utils/Array;

    new-instance v6, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v6}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move v13, v2

    :goto_5
    add-int/lit8 v5, v2, 0x64

    if-ge v13, v5, :cond_d

    const/4 v5, 0x4

    new-array v7, v5, [I

    const/4 v5, 0x0

    :goto_6
    const/4 v6, 0x3

    if-ge v5, v6, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/BasicLevel;->getComplexityWaveMilestones()[I

    move-result-object v6

    aget v6, v6, v5

    aput v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_b
    const/4 v5, 0x2

    aget v5, v7, v5

    int-to-float v5, v5

    const/high16 v8, 0x3fe00000    # 1.75f

    mul-float v5, v5, v8

    float-to-int v5, v5

    aput v5, v7, v6

    invoke-virtual/range {p2 .. p2}, Lcom/prineside/tdi2/Map;->getBossWaves()Lcom/badlogic/gdx/utils/IntMap;

    move-result-object v9

    iget v5, v0, Lcom/prineside/tdi2/BasicLevel;->seed:I

    int-to-long v11, v5

    iget-object v10, v0, Lcom/prineside/tdi2/BasicLevel;->enemyWaves:[Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;

    move v5, v13

    move-object v6, v1

    move v8, v15

    move-object/from16 v16, v10

    move-object/from16 v10, p2

    move/from16 v17, v13

    move-object/from16 v13, v16

    invoke-static/range {v5 .. v13}, Lcom/prineside/tdi2/systems/WaveSystem;->generateEnemyGroups(ILcom/prineside/tdi2/systems/WaveSystem$Mode;[IILcom/badlogic/gdx/utils/IntMap;Lcom/prineside/tdi2/Map;J[Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v6, v3, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;->enemyGroupsByWave:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_c
    add-int/lit8 v13, v17, 0x1

    goto :goto_5

    :cond_d
    return-object v3
.end method

.method public generateWavesTimelineConfiguration(Lcom/prineside/tdi2/UserMap;Lcom/prineside/tdi2/Map;ILcom/badlogic/gdx/utils/IntMap;)Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/UserMap;",
            "Lcom/prineside/tdi2/Map;",
            "I",
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Lcom/prineside/tdi2/enums/BossType;",
            ">;)",
            "Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;"
        }
    .end annotation

    const/4 v0, 0x1

    move/from16 v1, p3

    if-ge v1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/16 v2, 0x2710

    if-le v1, v2, :cond_1

    const/16 v1, 0x2710

    :cond_1
    new-instance v2, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;

    invoke-direct {v2}, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;-><init>()V

    iput v1, v2, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;->startWave:I

    const/4 v3, 0x0

    move-object/from16 v13, p2

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v13, Lcom/prineside/tdi2/Map;->spawnTiles:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_9

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/tiles/SpawnTile;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/prineside/tdi2/tiles/SpawnTile;->getAllowedEnemies()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    const/4 v6, 0x0

    :goto_1
    iget v7, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v7, :cond_8

    iget-object v7, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    aget-object v7, v7, v6

    const/4 v8, 0x0

    :goto_2
    iget-object v9, v2, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;->enemyConfigs:Lcom/badlogic/gdx/utils/Array;

    iget v10, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v8, v10, :cond_6

    iget-object v10, v9, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v10, [Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    aget-object v10, v10, v8

    iget-object v11, v10, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    iget-object v12, v7, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v11, v12, :cond_5

    iget v8, v7, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->firstWave:I

    iget v11, v10, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->firstWave:I

    if-ge v8, v11, :cond_2

    iput v8, v10, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->firstWave:I

    :cond_2
    iget v8, v10, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->lastWave:I

    if-lt v8, v0, :cond_4

    iget v11, v7, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->lastWave:I

    if-gt v11, v8, :cond_3

    if-ge v11, v0, :cond_4

    :cond_3
    iput v11, v10, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->lastWave:I

    :cond_4
    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    :goto_3
    if-nez v8, :cond_7

    new-instance v8, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    iget-object v10, v7, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    iget v11, v7, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->firstWave:I

    iget v7, v7, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->lastWave:I

    invoke-direct {v8, v10, v11, v7}, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;-><init>(Lcom/prineside/tdi2/enums/EnemyType;II)V

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/prineside/tdi2/systems/WaveSystem$Mode;->ENDLESS:Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    invoke-virtual/range {p2 .. p2}, Lcom/prineside/tdi2/Map;->getAverageDifficulty()I

    move-result v14

    iget-object v4, v2, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;->enemyGroupsByWave:Lcom/badlogic/gdx/utils/Array;

    new-instance v5, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Lcom/prineside/tdi2/Map;->generateSeed()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Lcom/prineside/tdi2/Map;->getComplexityWaveMilestones()[I

    move-result-object v16

    move v12, v1

    :goto_4
    add-int/lit8 v4, v1, 0x64

    if-ge v12, v4, :cond_c

    const/4 v4, 0x4

    new-array v6, v4, [I

    const/4 v4, 0x0

    :goto_5
    const/4 v5, 0x3

    if-ge v4, v5, :cond_a

    aget v5, v16, v4

    aput v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    const/4 v4, 0x2

    aget v4, v6, v4

    int-to-float v4, v4

    const/high16 v7, 0x3fe00000    # 1.75f

    mul-float v4, v4, v7

    float-to-int v4, v4

    aput v4, v6, v5

    int-to-long v10, v15

    const/16 v17, 0x0

    move v4, v12

    move-object v5, v0

    move v7, v14

    move-object/from16 v8, p4

    move-object/from16 v9, p2

    move/from16 v18, v12

    move-object/from16 v12, v17

    invoke-static/range {v4 .. v12}, Lcom/prineside/tdi2/systems/WaveSystem;->generateEnemyGroups(ILcom/prineside/tdi2/systems/WaveSystem$Mode;[IILcom/badlogic/gdx/utils/IntMap;Lcom/prineside/tdi2/Map;J[Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v5, v2, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;->enemyGroupsByWave:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_b
    add-int/lit8 v12, v18, 0x1

    goto :goto_4

    :cond_c
    return-object v2
.end method

.method public getWaveProcessorFactory(Lcom/prineside/tdi2/enums/BossType;)Lcom/prineside/tdi2/WaveProcessor$WaveProcessorFactory;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/WaveManager;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/WaveProcessor$WaveProcessorFactory;

    return-object p1
.end method

.method public setup()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/enums/BossType;->values:[Lcom/prineside/tdi2/enums/BossType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/prineside/tdi2/managers/WaveManager;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/WaveProcessor$WaveProcessorFactory;

    invoke-virtual {v3}, Lcom/prineside/tdi2/WaveProcessor$WaveProcessorFactory;->setup()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public test()V
    .locals 20

    const/16 v0, 0x14

    new-array v1, v0, [I

    new-array v2, v0, [I

    new-array v3, v0, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v0, :cond_0

    const/16 v7, 0xc8

    invoke-static {v7}, Lcom/prineside/tdi2/utils/FastRandom;->getFairInt(I)I

    move-result v7

    add-int/2addr v7, v6

    aput v7, v1, v5

    const v7, 0x186a0

    invoke-static {v7}, Lcom/prineside/tdi2/utils/FastRandom;->getFairInt(I)I

    move-result v7

    add-int/2addr v7, v6

    aput v7, v2, v5

    const/16 v6, 0x1c3

    invoke-static {v6}, Lcom/prineside/tdi2/utils/FastRandom;->getFairInt(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x32

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    new-array v7, v5, [I

    fill-array-data v7, :array_0

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[F

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_2

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v0, :cond_1

    aget-object v10, v7, v8

    aget v11, v1, v9

    aget v12, v2, v9

    int-to-long v12, v12

    move-object/from16 v15, p0

    invoke-virtual {v15, v11, v12, v13}, Lcom/prineside/tdi2/managers/WaveManager;->a(IJ)F

    move-result v11

    aput v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v15, p0

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v15, p0

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v0, :cond_4

    aget-object v9, v7, v4

    aget v9, v9, v8

    aget-object v10, v7, v6

    aget v10, v10, v8

    cmpl-float v9, v9, v10

    if-nez v9, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Seed multiplier generator works incorrectly"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v7, "WaveManager"

    const-string v8, "Seed multiplier generator works OK"

    invoke-static {v7, v8}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v8}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v0, :cond_8

    new-instance v10, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v10}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    new-instance v11, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v11}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sget-object v12, Lcom/prineside/tdi2/enums/EnemyType;->values:[Lcom/prineside/tdi2/enums/EnemyType;

    array-length v13, v12

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v13, :cond_6

    aget-object v6, v12, v14

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/EnemyManager;->getMainEnemyType(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/enums/EnemyType;

    move-result-object v4

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    if-eq v4, v0, :cond_5

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->ICY:Lcom/prineside/tdi2/enums/EnemyType;

    if-eq v6, v0, :cond_5

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->LIGHT:Lcom/prineside/tdi2/enums/EnemyType;

    if-eq v6, v0, :cond_5

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->TOXIC:Lcom/prineside/tdi2/enums/EnemyType;

    if-eq v6, v0, :cond_5

    invoke-virtual {v11, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v14, v14, 0x1

    const/16 v0, 0x14

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {v11}, Lcom/badlogic/gdx/utils/Array;->shuffle()V

    iget v0, v11, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {v0}, Lcom/prineside/tdi2/utils/FastRandom;->getFairInt(I)I

    move-result v0

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v0, :cond_7

    invoke-virtual {v11}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/utils/ObjectSet;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    const/16 v0, 0x14

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto :goto_4

    :cond_8
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    const-class v4, Lcom/prineside/tdi2/Wave;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/prineside/tdi2/Wave;

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v5, :cond_a

    const/4 v6, 0x0

    :goto_8
    const/16 v9, 0x14

    if-ge v6, v9, :cond_9

    aget-object v9, v0, v4

    aget v10, v1, v6

    aget v16, v3, v6

    aget v11, v2, v6

    int-to-long v11, v11

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v19, v13

    check-cast v19, Lcom/badlogic/gdx/utils/ObjectSet;

    move-object/from16 v14, p0

    move v15, v10

    move-wide/from16 v17, v11

    invoke-virtual/range {v14 .. v19}, Lcom/prineside/tdi2/managers/WaveManager;->generateWave(IIJLcom/badlogic/gdx/utils/ObjectSet;)Lcom/prineside/tdi2/Wave;

    move-result-object v10

    aput-object v10, v9, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v15, p0

    goto :goto_8

    :cond_9
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v15, p0

    goto :goto_7

    :cond_a
    const/4 v1, 0x0

    const/16 v2, 0x14

    :goto_9
    if-ge v1, v2, :cond_d

    const/4 v3, 0x0

    aget-object v4, v0, v3

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/prineside/tdi2/Wave;->enemyGroups:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v5, 0x1

    aget-object v6, v0, v5

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/prineside/tdi2/Wave;->enemyGroups:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v8, 0x0

    :goto_a
    iget v9, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v8, v9, :cond_c

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/prineside/tdi2/EnemyGroup;

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/prineside/tdi2/EnemyGroup;

    const v11, 0x3dcccccd    # 0.1f

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFairFloat()F

    move-result v12

    const/high16 v13, 0x40a00000    # 5.0f

    mul-float v12, v12, v13

    add-float/2addr v12, v11

    iget v11, v9, Lcom/prineside/tdi2/EnemyGroup;->count:I

    iget v13, v10, Lcom/prineside/tdi2/EnemyGroup;->count:I

    if-ne v11, v13, :cond_b

    invoke-virtual {v9}, Lcom/prineside/tdi2/EnemyGroup;->getSpawnedCount()I

    move-result v11

    invoke-virtual {v10}, Lcom/prineside/tdi2/EnemyGroup;->getSpawnedCount()I

    move-result v13

    if-ne v11, v13, :cond_b

    iget v11, v9, Lcom/prineside/tdi2/EnemyGroup;->killScore:I

    iget v13, v10, Lcom/prineside/tdi2/EnemyGroup;->killScore:I

    if-ne v11, v13, :cond_b

    iget v11, v9, Lcom/prineside/tdi2/EnemyGroup;->killExp:F

    iget v13, v10, Lcom/prineside/tdi2/EnemyGroup;->killExp:F

    cmpl-float v11, v11, v13

    if-nez v11, :cond_b

    iget v11, v9, Lcom/prineside/tdi2/EnemyGroup;->bounty:F

    iget v13, v10, Lcom/prineside/tdi2/EnemyGroup;->bounty:F

    cmpl-float v11, v11, v13

    if-nez v11, :cond_b

    iget v11, v9, Lcom/prineside/tdi2/EnemyGroup;->delay:F

    iget v13, v10, Lcom/prineside/tdi2/EnemyGroup;->delay:F

    cmpl-float v11, v11, v13

    if-nez v11, :cond_b

    iget v11, v9, Lcom/prineside/tdi2/EnemyGroup;->health:F

    iget v13, v10, Lcom/prineside/tdi2/EnemyGroup;->health:F

    cmpl-float v11, v11, v13

    if-nez v11, :cond_b

    iget v11, v9, Lcom/prineside/tdi2/EnemyGroup;->interval:F

    iget v13, v10, Lcom/prineside/tdi2/EnemyGroup;->interval:F

    cmpl-float v11, v11, v13

    if-nez v11, :cond_b

    iget v11, v9, Lcom/prineside/tdi2/EnemyGroup;->speed:F

    iget v13, v10, Lcom/prineside/tdi2/EnemyGroup;->speed:F

    cmpl-float v11, v11, v13

    if-nez v11, :cond_b

    iget-object v11, v9, Lcom/prineside/tdi2/EnemyGroup;->type:Lcom/prineside/tdi2/enums/EnemyType;

    iget-object v13, v10, Lcom/prineside/tdi2/EnemyGroup;->type:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v11, v13, :cond_b

    invoke-virtual {v9, v12}, Lcom/prineside/tdi2/EnemyGroup;->getSpawnCountByTime(F)I

    move-result v9

    invoke-virtual {v10, v12}, Lcom/prineside/tdi2/EnemyGroup;->getSpawnCountByTime(F)I

    move-result v10

    if-ne v9, v10, :cond_b

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_b
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Wave generator works incorrectly"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    :cond_d
    const-string v0, "Wave generation works OK"

    invoke-static {v7, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 4
        0x2
        0x14
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x14
    .end array-data
.end method
