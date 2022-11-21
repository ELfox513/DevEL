.class public Lcom/prineside/tdi2/systems/WaveSystem;
.super Lcom/prineside/tdi2/GameSystem;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/WaveSystem$Mode;,
        Lcom/prineside/tdi2/systems/WaveSystem$WaveCache;,
        Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener;,
        Lcom/prineside/tdi2/systems/WaveSystem$Status;,
        Lcom/prineside/tdi2/systems/WaveSystem$WaveGenerator;,
        Lcom/prineside/tdi2/systems/WaveSystem$_EnemySystemListener;
    }
.end annotation


# static fields
.field public static final A:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/Wave;",
            ">;"
        }
    .end annotation
.end field

.field public static final NEXT_WAVES_CACHE_SIZE:I = 0xa

.field public static final ULTRA_DIFFICULT_MILESTONE_MULTIPLIER:F = 1.75f

.field public static final x:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Enemy;",
            ">;"
        }
    .end annotation
.end field

.field public static final y:Lcom/badlogic/gdx/utils/ObjectSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "Lcom/prineside/tdi2/enums/EnemyType;",
            ">;"
        }
    .end annotation
.end field

.field public static final z:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/tiles/SpawnTile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;

.field public autoForceWaveEnabled:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/WaveProcessor;",
            ">;"
        }
    .end annotation
.end field

.field public bossWaves:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Lcom/prineside/tdi2/enums/BossType;",
            ">;"
        }
    .end annotation
.end field

.field public d:F

.field public k:F

.field public listeners:Lcom/prineside/tdi2/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prineside/tdi2/ListenerGroup<",
            "Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener;",
            ">;"
        }
    .end annotation
.end field

.field public mode:Lcom/prineside/tdi2/systems/WaveSystem$Mode;

.field public nextWavesCache:[Lcom/prineside/tdi2/systems/WaveSystem$WaveCache;

.field public p:F

.field public predefinedWaveTemplates:[Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;

.field public q:I

.field public r:Z

.field public s:I

.field public status:Lcom/prineside/tdi2/systems/WaveSystem$Status;

.field public t:F

.field public u:F

.field public v:[I

.field public w:Lcom/prineside/tdi2/systems/WaveSystem$WaveGenerator;

.field public wave:Lcom/prineside/tdi2/Wave;

.field public wavesToNotifyAboutCompletion:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/Wave;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/systems/WaveSystem;->x:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/systems/WaveSystem;->y:Lcom/badlogic/gdx/utils/ObjectSet;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/tiles/SpawnTile;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/systems/WaveSystem;->z:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/Wave;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/systems/WaveSystem;->A:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/prineside/tdi2/GameSystem;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->a:Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;

    sget-object v0, Lcom/prineside/tdi2/systems/WaveSystem$Mode;->ENDLESS:Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->mode:Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/WaveProcessor;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->autoForceWaveEnabled:Z

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/prineside/tdi2/systems/WaveSystem$WaveCache;

    iput-object v1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->nextWavesCache:[Lcom/prineside/tdi2/systems/WaveSystem$WaveCache;

    new-instance v1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v2, Lcom/prineside/tdi2/Wave;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v3, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->wavesToNotifyAboutCompletion:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->q:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->v:[I

    new-instance v0, Lcom/prineside/tdi2/ListenerGroup;

    const-class v1, Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    return-void
.end method

.method public static generateEnemyGroups(ILcom/prineside/tdi2/systems/WaveSystem$Mode;[IILcom/badlogic/gdx/utils/IntMap;Lcom/prineside/tdi2/Map;J[Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;)Lcom/badlogic/gdx/utils/Array;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/prineside/tdi2/systems/WaveSystem$Mode;",
            "[II",
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Lcom/prineside/tdi2/enums/BossType;",
            ">;",
            "Lcom/prineside/tdi2/Map;",
            "J[",
            "Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/EnemyGroup;",
            ">;"
        }
    .end annotation

    move v1, p0

    move v0, p3

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p8

    sget-object v5, Lcom/prineside/tdi2/systems/WaveSystem$Mode;->ENDLESS:Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    const/4 v6, 0x0

    move-object v7, p1

    if-ne v7, v5, :cond_6

    move-object v5, p2

    invoke-static {p0, p2}, Lcom/prineside/tdi2/systems/WaveSystem;->getDifficultWavesMultiplier(I[I)F

    move-result v4

    int-to-float v0, v0

    mul-float v0, v0, v4

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v4

    if-eqz v2, :cond_0

    invoke-virtual {p4, p0}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->waveManager:Lcom/prineside/tdi2/managers/WaveManager;

    invoke-virtual {p4, p0}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/WaveManager;->createBossWaveProcessor(Lcom/prineside/tdi2/enums/BossType;)Lcom/prineside/tdi2/WaveProcessor;

    move-result-object v0

    invoke-virtual {v0, p0, v4}, Lcom/prineside/tdi2/WaveProcessor;->generateEnemyGroups(II)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/systems/WaveSystem;->y:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet;->clear()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v5, v3, Lcom/prineside/tdi2/Map;->allowedEnemies:Lcom/badlogic/gdx/utils/Array;

    iget v7, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v7, :cond_4

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/enums/EnemyType;

    aget-object v5, v5, v2

    const/4 v7, 0x0

    :goto_1
    iget-object v8, v3, Lcom/prineside/tdi2/Map;->spawnTiles:Lcom/badlogic/gdx/utils/Array;

    iget v9, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v9, :cond_2

    iget-object v8, v8, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/tiles/SpawnTile;

    aget-object v8, v8, v7

    invoke-virtual {v8, v5, p0}, Lcom/prineside/tdi2/tiles/SpawnTile;->isEnemyAllowedOnWave(Lcom/prineside/tdi2/enums/EnemyType;I)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_3

    sget-object v7, Lcom/prineside/tdi2/systems/WaveSystem;->y:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->waveManager:Lcom/prineside/tdi2/managers/WaveManager;

    sget-object v5, Lcom/prineside/tdi2/systems/WaveSystem;->y:Lcom/badlogic/gdx/utils/ObjectSet;

    move v1, p0

    move v2, v4

    move-wide/from16 v3, p6

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/tdi2/managers/WaveManager;->generateWave(IIJLcom/badlogic/gdx/utils/ObjectSet;)Lcom/prineside/tdi2/Wave;

    move-result-object v0

    if-nez v0, :cond_5

    return-object v6

    :cond_5
    iget-object v0, v0, Lcom/prineside/tdi2/Wave;->enemyGroups:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object v0

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {p4, p0}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->waveManager:Lcom/prineside/tdi2/managers/WaveManager;

    invoke-virtual {p4, p0}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/managers/WaveManager;->createBossWaveProcessor(Lcom/prineside/tdi2/enums/BossType;)Lcom/prineside/tdi2/WaveProcessor;

    move-result-object v2

    invoke-virtual {v2, p0, p3}, Lcom/prineside/tdi2/WaveProcessor;->generateEnemyGroups(II)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0

    :cond_7
    add-int/lit8 v2, v1, -0x1

    array-length v3, v4

    if-ge v2, v3, :cond_8

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->waveManager:Lcom/prineside/tdi2/managers/WaveManager;

    aget-object v2, v4, v2

    invoke-virtual {v3, p0, p3, v2}, Lcom/prineside/tdi2/managers/WaveManager;->generateWave(IILcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;)Lcom/prineside/tdi2/Wave;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Wave;->enemyGroups:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object v0

    :cond_8
    return-object v6
.end method

.method public static getDifficultWavesMultiplier(I[I)F
    .locals 11

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-gt v2, p0, :cond_5

    :goto_1
    if-ltz v3, :cond_4

    aget v5, p1, v3

    if-eqz v5, :cond_3

    if-le v2, v5, :cond_3

    if-nez v3, :cond_0

    float-to-double v3, v1

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    :goto_2
    add-double/2addr v3, v5

    double-to-float v1, v3

    goto :goto_4

    :cond_0
    if-ne v3, v0, :cond_1

    float-to-double v3, v1

    const-wide v5, 0x3f947ae147ae147bL    # 0.02

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_2

    :cond_1
    const-wide v5, 0x3ff2666666666666L    # 1.15

    if-ne v3, v4, :cond_2

    aget v3, p1, v4

    sub-int v3, v2, v3

    float-to-double v7, v1

    const-wide v9, 0x3f9eb851eb851eb8L    # 0.03

    int-to-double v3, v3

    invoke-static {v3, v4, v5, v6}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v3

    const-wide v5, 0x3f70624dd2f1a9fcL    # 0.004

    mul-double v3, v3, v5

    add-double/2addr v3, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_3

    :cond_2
    aget v3, p1, v4

    sub-int v3, v2, v3

    float-to-double v7, v1

    const-wide v9, 0x3fa47ae147ae147bL    # 0.04

    int-to-double v3, v3

    invoke-static {v3, v4, v5, v6}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v3

    const-wide v5, 0x3f747ae147ae147bL    # 0.005

    mul-double v3, v3, v5

    add-double/2addr v3, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    :goto_3
    add-double/2addr v7, v3

    double-to-float v1, v7

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_5
    const v2, 0x3d23d70a    # 0.04f

    if-ltz v3, :cond_a

    aget v5, p1, v3

    if-eqz v5, :cond_9

    if-le p0, v5, :cond_9

    if-nez v3, :cond_6

    goto :goto_6

    :cond_6
    if-ne v3, v0, :cond_7

    const v2, 0x3d0f5c29    # 0.035f

    goto :goto_6

    :cond_7
    if-ne v3, v4, :cond_8

    const v2, 0x3ccccccd    # 0.025f

    goto :goto_6

    :cond_8
    const v2, 0x3c75c28f    # 0.015f

    goto :goto_6

    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    :cond_a
    :goto_6
    add-int/lit8 p0, p0, 0x5a

    int-to-float p0, p0

    invoke-static {p0}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result p0

    mul-float p0, p0, v2

    const/4 p1, 0x0

    cmpg-float p1, p0, p1

    if-gez p1, :cond_b

    mul-float p0, p0, v1

    add-float/2addr v1, p0

    :cond_b
    return v1
.end method

.method public static getEnemiesToSpawn(FLcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/EnemyGroup$SpawnEnemyGroup;",
            ">;)",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Enemy;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/prineside/tdi2/systems/WaveSystem;->x:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/EnemyGroup$SpawnEnemyGroup;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Lcom/prineside/tdi2/EnemyGroup;->getSpawnCountByTime(F)I

    move-result v4

    invoke-virtual {v3}, Lcom/prineside/tdi2/EnemyGroup;->getSpawnedCount()I

    move-result v5

    if-le v4, v5, :cond_2

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3}, Lcom/prineside/tdi2/EnemyGroup;->getSpawnedCount()I

    move-result v6

    sub-int v6, v4, v6

    if-ge v5, v6, :cond_1

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v7, v3, Lcom/prineside/tdi2/EnemyGroup;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prineside/tdi2/Enemy$Factory;->obtain()Lcom/prineside/tdi2/Enemy;

    move-result-object v6

    iget v7, v3, Lcom/prineside/tdi2/EnemyGroup;->health:F

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/Enemy;->setMaxHealth(F)V

    iget v7, v3, Lcom/prineside/tdi2/EnemyGroup;->bounty:F

    iput v7, v6, Lcom/prineside/tdi2/Enemy;->bounty:F

    iget v7, v3, Lcom/prineside/tdi2/EnemyGroup;->killExp:F

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/Enemy;->setKillExp(F)V

    iget v7, v3, Lcom/prineside/tdi2/EnemyGroup;->killScore:I

    iput v7, v6, Lcom/prineside/tdi2/Enemy;->killScore:I

    iget v7, v3, Lcom/prineside/tdi2/EnemyGroup;->speed:F

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/Enemy;->setSpeed(F)V

    iget v7, v3, Lcom/prineside/tdi2/EnemyGroup;->health:F

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/Enemy;->setHealth(F)V

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v8, v6, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/EnemyManager;->getMainEnemyType(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/enums/EnemyType;

    move-result-object v7

    sget-object v8, Lcom/prineside/tdi2/enums/EnemyType;->BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/prineside/tdi2/Enemy;->ignorePathfinding:Z

    :cond_0
    sget-object v7, Lcom/prineside/tdi2/systems/WaveSystem;->x:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/prineside/tdi2/EnemyGroup;->getSpawnedCount()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/EnemyGroup$SpawnEnemyGroup;->addSpawnedCount(I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/prineside/tdi2/systems/WaveSystem;->x:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13

    const/16 p0, 0x8

    new-array v0, p0, [[I

    const/4 v1, 0x6

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    const/4 v5, 0x2

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v6, 0x3

    aput-object v2, v0, v6

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v7, 0x4

    aput-object v2, v0, v7

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v8, 0x5

    aput-object v2, v0, v8

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    new-array v1, v1, [I

    fill-array-data v1, :array_7

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, v0, v1

    aget v9, v2, v8

    new-array v10, v7, [I

    aget v11, v2, v5

    aput v11, v10, v3

    aget v11, v2, v6

    aput v11, v10, v4

    aget v11, v2, v7

    aput v11, v10, v5

    int-to-float v11, v11

    const/high16 v12, 0x3fe00000    # 1.75f

    mul-float v11, v11, v12

    float-to-int v11, v11

    aput v11, v10, v6

    invoke-static {v9, v10}, Lcom/prineside/tdi2/systems/WaveSystem;->getDifficultWavesMultiplier(I[I)F

    move-result v9

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget v12, v2, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v2, v4

    int-to-float v2, v2

    mul-float v2, v2, v9

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3e9
        0x64
        0xf
        0x18
        0x27
        0x3a
    .end array-data

    :array_1
    .array-data 4
        0x3ea
        0x64
        0x15
        0x22
        0x2d
        0x3f
    .end array-data

    :array_2
    .array-data 4
        0x3eb
        0x64
        0x13
        0x1d
        0x28
        0x40
    .end array-data

    :array_3
    .array-data 4
        0x3ec
        0x64
        0x14
        0x20
        0x29
        0x3c
    .end array-data

    :array_4
    .array-data 4
        0x3ed
        0x64
        0x12
        0x21
        0x2b
        0x44
    .end array-data

    :array_5
    .array-data 4
        0x3ee
        0x64
        0x13
        0x1f
        0x29
        0x45
    .end array-data

    :array_6
    .array-data 4
        0x3ef
        0x64
        0x14
        0x1b
        0x27
        0x3c
    .end array-data

    :array_7
    .array-data 4
        0x3f0
        0x64
        0x15
        0x23
        0x2d
        0x47
    .end array-data
.end method


# virtual methods
.method public final a(I)Lcom/prineside/tdi2/systems/WaveSystem$WaveCache;
    .locals 12

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->v:[I

    invoke-static {p1, v0}, Lcom/prineside/tdi2/systems/WaveSystem;->getDifficultWavesMultiplier(I[I)F

    move-result v5

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v0, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->averageDifficulty:I

    int-to-float v0, v0

    mul-float v0, v0, v5

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->mode:Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    sget-object v2, Lcom/prineside/tdi2/systems/WaveSystem$Mode;->ENDLESS:Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->bossWaves:Lcom/badlogic/gdx/utils/IntMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->waveManager:Lcom/prineside/tdi2/managers/WaveManager;

    iget-object v2, p0, Lcom/prineside/tdi2/systems/WaveSystem;->bossWaves:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/enums/BossType;

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/prineside/tdi2/managers/WaveManager;->generateBossWaveWithProcessor(Lcom/prineside/tdi2/enums/BossType;Lcom/prineside/tdi2/GameSystemProvider;II)Lcom/prineside/tdi2/Wave;

    move-result-object v1

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->a:Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->waveManager:Lcom/prineside/tdi2/managers/WaveManager;

    invoke-virtual {v2, v1, p1, v0}, Lcom/prineside/tdi2/managers/WaveManager;->generateWave(Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;II)Lcom/prineside/tdi2/Wave;

    move-result-object v1

    goto/16 :goto_3

    :cond_1
    sget-object v1, Lcom/prineside/tdi2/systems/WaveSystem;->y:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectSet;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/Map;->allowedEnemies:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/Map;->allowedEnemies:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/enums/EnemyType;

    aget-object v3, v3, v2

    const/4 v4, 0x0

    :goto_1
    iget-object v6, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v6}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v6

    iget-object v6, v6, Lcom/prineside/tdi2/Map;->spawnTiles:Lcom/badlogic/gdx/utils/Array;

    iget v6, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_3

    iget-object v6, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v6}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v6

    iget-object v6, v6, Lcom/prineside/tdi2/Map;->spawnTiles:Lcom/badlogic/gdx/utils/Array;

    iget-object v6, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/tiles/SpawnTile;

    aget-object v6, v6, v4

    invoke-virtual {v6, v3, p1}, Lcom/prineside/tdi2/tiles/SpawnTile;->isEnemyAllowedOnWave(Lcom/prineside/tdi2/enums/EnemyType;I)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_4

    sget-object v4, Lcom/prineside/tdi2/systems/WaveSystem;->y:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    sget-object v11, Lcom/prineside/tdi2/systems/WaveSystem;->y:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v1, v11, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-eqz v1, :cond_8

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v1, Lcom/prineside/tdi2/Game;->waveManager:Lcom/prineside/tdi2/managers/WaveManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->getSeed()J

    move-result-wide v9

    move v7, p1

    move v8, v0

    invoke-virtual/range {v6 .. v11}, Lcom/prineside/tdi2/managers/WaveManager;->generateWave(IIJLcom/badlogic/gdx/utils/ObjectSet;)Lcom/prineside/tdi2/Wave;

    move-result-object v1

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->bossWaves:Lcom/badlogic/gdx/utils/IntMap;

    if-eqz v1, :cond_7

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->waveManager:Lcom/prineside/tdi2/managers/WaveManager;

    iget-object v2, p0, Lcom/prineside/tdi2/systems/WaveSystem;->bossWaves:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/enums/BossType;

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v4, v4, Lcom/prineside/tdi2/systems/GameStateSystem;->averageDifficulty:I

    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/prineside/tdi2/managers/WaveManager;->generateBossWaveWithProcessor(Lcom/prineside/tdi2/enums/BossType;Lcom/prineside/tdi2/GameSystemProvider;II)Lcom/prineside/tdi2/Wave;

    move-result-object v1

    goto :goto_3

    :cond_7
    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/prineside/tdi2/systems/WaveSystem;->predefinedWaveTemplates:[Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;

    array-length v3, v2

    if-ge v1, v3, :cond_8

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->waveManager:Lcom/prineside/tdi2/managers/WaveManager;

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v4, v4, Lcom/prineside/tdi2/systems/GameStateSystem;->averageDifficulty:I

    aget-object v1, v2, v1

    invoke-virtual {v3, p1, v4, v1}, Lcom/prineside/tdi2/managers/WaveManager;->generateWave(IILcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;)Lcom/prineside/tdi2/Wave;

    move-result-object v1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    move-object v3, v1

    new-instance v7, Lcom/prineside/tdi2/systems/WaveSystem$WaveCache;

    invoke-direct {v7}, Lcom/prineside/tdi2/systems/WaveSystem$WaveCache;-><init>()V

    iput p1, v7, Lcom/prineside/tdi2/systems/WaveSystem$WaveCache;->waveNumber:I

    iget-object v1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->w:Lcom/prineside/tdi2/systems/WaveSystem$WaveGenerator;

    if-nez v1, :cond_9

    iput-object v3, v7, Lcom/prineside/tdi2/systems/WaveSystem$WaveCache;->wave:Lcom/prineside/tdi2/Wave;

    goto :goto_4

    :cond_9
    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    move v2, p1

    move v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/prineside/tdi2/systems/WaveSystem$WaveGenerator;->generate(ILcom/prineside/tdi2/Wave;Lcom/prineside/tdi2/GameSystemProvider;FI)Lcom/prineside/tdi2/Wave;

    move-result-object p1

    iput-object p1, v7, Lcom/prineside/tdi2/systems/WaveSystem$WaveCache;->wave:Lcom/prineside/tdi2/Wave;

    :goto_4
    return-object v7
.end method

.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public allWavesSpawned()Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->status:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    sget-object v1, Lcom/prineside/tdi2/systems/WaveSystem$Status;->ENDED:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()Lcom/prineside/tdi2/Wave;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->status:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/WaveSystem;->c(Z)V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->nextWavesCache:[Lcom/prineside/tdi2/systems/WaveSystem$WaveCache;

    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/prineside/tdi2/systems/WaveSystem$WaveCache;->wave:Lcom/prineside/tdi2/Wave;

    return-object v0
.end method

.method public final c(Z)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xa

    const/4 v4, 0x1

    if-ge v2, v3, :cond_5

    iget-object v3, v0, Lcom/prineside/tdi2/systems/WaveSystem;->nextWavesCache:[Lcom/prineside/tdi2/systems/WaveSystem$WaveCache;

    aget-object v5, v3, v2

    iget-object v6, v0, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    if-eqz v6, :cond_0

    iget v6, v6, Lcom/prineside/tdi2/Wave;->waveNumber:I

    add-int/2addr v6, v2

    add-int/2addr v6, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v2, 0x1

    :goto_1
    iget-object v4, v0, Lcom/prineside/tdi2/systems/WaveSystem;->mode:Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    sget-object v7, Lcom/prineside/tdi2/systems/WaveSystem$Mode;->PREDEFINED:Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    if-ne v4, v7, :cond_1

    iget-object v4, v0, Lcom/prineside/tdi2/systems/WaveSystem;->predefinedWaveTemplates:[Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;

    array-length v4, v4

    if-le v6, v4, :cond_1

    new-instance v4, Lcom/prineside/tdi2/systems/WaveSystem$WaveCache;

    invoke-direct {v4}, Lcom/prineside/tdi2/systems/WaveSystem$WaveCache;-><init>()V

    aput-object v4, v3, v2

    iget-object v3, v0, Lcom/prineside/tdi2/systems/WaveSystem;->nextWavesCache:[Lcom/prineside/tdi2/systems/WaveSystem$WaveCache;

    aget-object v3, v3, v2

    iput v6, v3, Lcom/prineside/tdi2/systems/WaveSystem$WaveCache;->waveNumber:I

    goto :goto_2

    :cond_1
    if-nez p1, :cond_2

    if-eqz v5, :cond_2

    iget v4, v5, Lcom/prineside/tdi2/systems/WaveSystem$WaveCache;->waveNumber:I

    if-ge v4, v6, :cond_4

    :cond_2
    const/16 v4, 0x9

    if-eq v2, v4, :cond_3

    add-int/lit8 v4, v2, 0x1

    aget-object v4, v3, v4

    aput-object v4, v3, v2

    if-nez v4, :cond_4

    invoke-virtual {v0, v6}, Lcom/prineside/tdi2/systems/WaveSystem;->a(I)Lcom/prineside/tdi2/systems/WaveSystem$WaveCache;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v6}, Lcom/prineside/tdi2/systems/WaveSystem;->a(I)Lcom/prineside/tdi2/systems/WaveSystem$WaveCache;

    move-result-object v4

    aput-object v4, v3, v2

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget-object v2, v0, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    if-eqz v2, :cond_6

    iget v2, v2, Lcom/prineside/tdi2/Wave;->waveNumber:I

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    iget-object v5, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v5}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v5

    if-eqz v5, :cond_19

    iget-object v5, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v5}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v5

    iget-object v5, v5, Lcom/prineside/tdi2/Map;->spawnTiles:Lcom/badlogic/gdx/utils/Array;

    if-eqz p1, :cond_7

    :goto_4
    const/4 v6, 0x0

    goto :goto_5

    :cond_7
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/tiles/SpawnTile;

    iget v7, v7, Lcom/prineside/tdi2/tiles/SpawnTile;->enemySpawnQueuesFirstWave:I

    if-eq v7, v2, :cond_8

    goto :goto_4

    :cond_9
    const/4 v6, 0x1

    :goto_5
    if-nez v6, :cond_19

    iget-object v6, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v6}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    const/4 v6, 0x0

    :goto_6
    if-gt v6, v3, :cond_18

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/tiles/SpawnTile;

    iget-object v8, v8, Lcom/prineside/tdi2/tiles/SpawnTile;->enemySpawnQueues:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Array;->clear()V

    goto :goto_7

    :cond_a
    add-int v7, v2, v6

    if-eqz v7, :cond_17

    if-nez v6, :cond_b

    iget-object v7, v0, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    goto :goto_8

    :cond_b
    iget-object v7, v0, Lcom/prineside/tdi2/systems/WaveSystem;->nextWavesCache:[Lcom/prineside/tdi2/systems/WaveSystem$WaveCache;

    add-int/lit8 v8, v6, -0x1

    aget-object v7, v7, v8

    if-nez v7, :cond_c

    const/4 v7, 0x0

    goto :goto_8

    :cond_c
    iget-object v7, v7, Lcom/prineside/tdi2/systems/WaveSystem$WaveCache;->wave:Lcom/prineside/tdi2/Wave;

    :goto_8
    if-eqz v7, :cond_17

    iget-object v8, v7, Lcom/prineside/tdi2/Wave;->enemyGroups:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/prineside/tdi2/EnemyGroup;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v11, v9, Lcom/prineside/tdi2/EnemyGroup;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/EnemyManager;->getMainEnemyType(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/enums/EnemyType;

    move-result-object v10

    sget-object v11, Lcom/prineside/tdi2/systems/WaveSystem;->z:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v11}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-boolean v11, v7, Lcom/prineside/tdi2/Wave;->enemiesCanBeSplitBetweenSpawns:Z

    if-eqz v11, :cond_e

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v11

    :cond_d
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/prineside/tdi2/tiles/SpawnTile;

    iget v13, v7, Lcom/prineside/tdi2/Wave;->waveNumber:I

    invoke-virtual {v12, v10, v13}, Lcom/prineside/tdi2/tiles/SpawnTile;->isEnemyAllowedOnWave(Lcom/prineside/tdi2/enums/EnemyType;I)Z

    move-result v13

    if-eqz v13, :cond_d

    sget-object v13, Lcom/prineside/tdi2/systems/WaveSystem;->z:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v13, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_a

    :cond_e
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v11

    :cond_f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/prineside/tdi2/tiles/SpawnTile;

    iget v13, v7, Lcom/prineside/tdi2/Wave;->waveNumber:I

    invoke-virtual {v12, v10, v13}, Lcom/prineside/tdi2/tiles/SpawnTile;->isEnemyAllowedOnWave(Lcom/prineside/tdi2/enums/EnemyType;I)Z

    move-result v13

    if-eqz v13, :cond_f

    sget-object v10, Lcom/prineside/tdi2/systems/WaveSystem;->z:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_10
    sget-object v10, Lcom/prineside/tdi2/systems/WaveSystem;->z:Lcom/badlogic/gdx/utils/Array;

    iget v10, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    const-string v11, "WaveSystem"

    if-nez v10, :cond_11

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "nowhere to spawn enemy group of type "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v9, Lcom/prineside/tdi2/EnemyGroup;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_11
    iget v12, v9, Lcom/prineside/tdi2/EnemyGroup;->count:I

    div-int/2addr v12, v10

    if-ge v12, v4, :cond_12

    const/4 v12, 0x1

    :cond_12
    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_b
    sget-object v14, Lcom/prineside/tdi2/systems/WaveSystem;->z:Lcom/badlogic/gdx/utils/Array;

    iget v15, v14, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v10, v15, :cond_15

    add-int/lit8 v1, v15, -0x1

    if-ne v10, v1, :cond_13

    iget v1, v9, Lcom/prineside/tdi2/EnemyGroup;->count:I

    rem-int/2addr v1, v15

    add-int/2addr v12, v1

    :cond_13
    if-eqz v12, :cond_14

    iget-object v1, v14, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/tiles/SpawnTile;

    aget-object v1, v1, v10

    invoke-virtual {v9, v12}, Lcom/prineside/tdi2/EnemyGroup;->createSpawnPortion(I)Lcom/prineside/tdi2/EnemyGroup$SpawnEnemyGroup;

    move-result-object v14

    iget v15, v14, Lcom/prineside/tdi2/EnemyGroup;->health:F

    iget v3, v1, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    int-to-float v3, v3

    const v16, 0x3c23d70a    # 0.01f

    mul-float v3, v3, v16

    mul-float v15, v15, v3

    iput v15, v14, Lcom/prineside/tdi2/EnemyGroup;->health:F

    iget-object v1, v1, Lcom/prineside/tdi2/tiles/SpawnTile;->enemySpawnQueues:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v14}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/2addr v13, v12

    iget v1, v9, Lcom/prineside/tdi2/EnemyGroup;->count:I

    if-lt v13, v1, :cond_14

    goto :goto_c

    :cond_14
    add-int/lit8 v10, v10, 0x1

    const/16 v3, 0xa

    goto :goto_b

    :cond_15
    :goto_c
    iget v1, v9, Lcom/prineside/tdi2/EnemyGroup;->count:I

    if-eq v13, v1, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placed "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/prineside/tdi2/EnemyGroup;->count:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " enemies to spawns"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_d
    const/16 v3, 0xa

    goto/16 :goto_9

    :cond_17
    add-int/lit8 v6, v6, 0x1

    const/16 v3, 0xa

    goto/16 :goto_6

    :cond_18
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/tiles/SpawnTile;

    iput v2, v3, Lcom/prineside/tdi2/tiles/SpawnTile;->enemySpawnQueuesFirstWave:I

    goto :goto_e

    :cond_19
    sget-object v1, Lcom/prineside/tdi2/systems/WaveSystem;->z:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public dispose()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->a:Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->clear()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->nextWavesCache:[Lcom/prineside/tdi2/systems/WaveSystem$WaveCache;

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->predefinedWaveTemplates:[Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;

    sget-object v0, Lcom/prineside/tdi2/systems/WaveSystem;->x:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-super {p0}, Lcom/prineside/tdi2/GameSystem;->dispose()V

    return-void
.end method

.method public forceNextWaveAction()V
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/WaveSystem;->isForceWaveAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    new-instance v1, Lcom/prineside/tdi2/actions/CallWaveAction;

    invoke-direct {v1}, Lcom/prineside/tdi2/actions/CallWaveAction;-><init>()V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/StateSystem;->pushAction(Lcom/prineside/tdi2/Action;)V

    :cond_0
    return-void
.end method

.method public freezeTimeToNextWave(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    iput v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->p:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->p:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->p:F

    :goto_0
    return-void
.end method

.method public getCompletedWavesCount()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->q:I

    return v0
.end method

.method public getDifficultyGrowWaves()[I
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->v:[I

    return-object v0
.end method

.method public getForceWaveBonus()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->s:I

    return v0
.end method

.method public getImpossibleWaveNumber()I
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->v:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/16 v0, 0x5dc

    return v0

    :cond_0
    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    const-string v0, "Wave"

    return-object v0
.end method

.method public getTimeToNextWave()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->u:F

    return v0
.end method

.method public getWaveGenerator()Lcom/prineside/tdi2/systems/WaveSystem$WaveGenerator;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->w:Lcom/prineside/tdi2/systems/WaveSystem$WaveGenerator;

    return-object v0
.end method

.method public getWaveStartInterval()F
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->WAVE_INTERVAL:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v0

    return v0
.end method

.method public isAutoForceWaveEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->autoForceWaveEnabled:Z

    return v0
.end method

.method public isForceWaveAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->r:Z

    return v0
.end method

.method public postSetup()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/systems/WaveSystem$Status;->NOT_STARTED:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/WaveSystem;->setStatus(Lcom/prineside/tdi2/systems/WaveSystem$Status;)V

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->a:Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;

    const-class v0, Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->mode:Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    const-class v0, Lcom/prineside/tdi2/systems/WaveSystem$Status;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/systems/WaveSystem$Status;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->status:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Wave;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    const-class v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->d:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->k:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->p:F

    const-class v0, [Lcom/prineside/tdi2/systems/WaveSystem$WaveCache;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/systems/WaveSystem$WaveCache;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->nextWavesCache:[Lcom/prineside/tdi2/systems/WaveSystem$WaveCache;

    const-class v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->wavesToNotifyAboutCompletion:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->q:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->r:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->s:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->t:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->u:F

    const-class v0, [I

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->v:[I

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->predefinedWaveTemplates:[Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;

    const-class v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/IntMap;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->bossWaves:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/systems/WaveSystem$WaveGenerator;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->w:Lcom/prineside/tdi2/systems/WaveSystem$WaveGenerator;

    const-class v0, Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/ListenerGroup;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    return-void
.end method

.method public resetNextWavesCache()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->nextWavesCache:[Lcom/prineside/tdi2/systems/WaveSystem$WaveCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setAutoForceWaveEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->AUTO_WAVE_CALL:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getBooleanValue(Lcom/prineside/tdi2/enums/GameValueType;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->autoForceWaveEnabled:Z

    if-eq v0, p1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "auto force wave "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v1, "enabled"

    goto :goto_0

    :cond_1
    const-string v1, "disabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WaveSystem"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->autoForceWaveEnabled:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->r:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/WaveSystem;->forceNextWaveAction()V

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v0

    :goto_1
    if-ge p1, v0, :cond_3

    iget-object v1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener;

    invoke-interface {v1}, Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener;->forceWaveAvailabilityChanged()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    :cond_4
    return-void
.end method

.method public setBossWaves(Lcom/badlogic/gdx/utils/IntMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Lcom/prineside/tdi2/enums/BossType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->bossWaves:Lcom/badlogic/gdx/utils/IntMap;

    return-void
.end method

.method public setDifficultyGrowWaves(III)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->v:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    int-to-float p1, p3

    const/high16 p2, 0x3fe00000    # 1.75f

    mul-float p1, p1, p2

    float-to-int p1, p1

    const/4 p2, 0x3

    aput p1, v0, p2

    return-void
.end method

.method public setForcedTemplate(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/WaveTemplates;->WAVE_TEMPLATES:[Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;->getWaveName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    iput-object v3, p0, Lcom/prineside/tdi2/systems/WaveSystem;->a:Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/WaveSystem;->resetNextWavesCache()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/WaveSystem;->c(Z)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Forced wave template \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->a:Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public setStatus(Lcom/prineside/tdi2/systems/WaveSystem$Status;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->status:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->status:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    sget-object v1, Lcom/prineside/tdi2/systems/WaveSystem$Status;->SPAWNED:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->k:F

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/WaveSystem;->c(Z)V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    :goto_0
    if-ge p1, v1, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener;

    invoke-interface {v2, v0}, Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener;->statusChanged(Lcom/prineside/tdi2/systems/WaveSystem$Status;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public setWaveGenerator(Lcom/prineside/tdi2/systems/WaveSystem$WaveGenerator;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->w:Lcom/prineside/tdi2/systems/WaveSystem$WaveGenerator;

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/WaveSystem;->resetNextWavesCache()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/WaveSystem;->c(Z)V

    return-void
.end method

.method public setup()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v2, Lcom/prineside/tdi2/systems/WaveSystem$_EnemySystemListener;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/prineside/tdi2/systems/WaveSystem$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/WaveSystem$1;)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    return-void
.end method

.method public startNextWave()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/WaveSystem;->b()Lcom/prineside/tdi2/Wave;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->wavesToNotifyAboutCompletion:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/prineside/tdi2/Wave;->started:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->d:F

    sget-object v0, Lcom/prineside/tdi2/systems/WaveSystem$Status;->SPAWNING:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/WaveSystem;->setStatus(Lcom/prineside/tdi2/systems/WaveSystem$Status;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    iget-object v0, v0, Lcom/prineside/tdi2/Wave;->waveProcessor:Lcom/prineside/tdi2/WaveProcessor;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener;

    invoke-interface {v2}, Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener;->waveStarted()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There\'s no next wave, current status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/systems/WaveSystem;->status:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public stopSpawningCurrentWave(Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;)V
    .locals 13

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->status:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    sget-object v1, Lcom/prineside/tdi2/systems/WaveSystem$Status;->SPAWNING:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->spawnTiles:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/tiles/SpawnTile;

    const/4 v4, 0x0

    :goto_1
    iget-object v5, v3, Lcom/prineside/tdi2/tiles/SpawnTile;->enemySpawnQueues:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/Array;

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v5, :cond_2

    const v5, 0x460ca400    # 9001.0f

    iget-object v6, v3, Lcom/prineside/tdi2/tiles/SpawnTile;->enemySpawnQueues:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/utils/Array;

    invoke-static {v5, v6}, Lcom/prineside/tdi2/systems/WaveSystem;->getEnemiesToSpawn(FLcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/prineside/tdi2/Enemy;

    iput-object v3, v8, Lcom/prineside/tdi2/Enemy;->spawnTile:Lcom/prineside/tdi2/tiles/SpawnTile;

    iget-object v6, p0, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    iput-object v6, v8, Lcom/prineside/tdi2/Enemy;->wave:Lcom/prineside/tdi2/Wave;

    iget-boolean v6, v6, Lcom/prineside/tdi2/Wave;->enemiesCanHaveRandomSideShifts:Z

    if-eqz v6, :cond_0

    invoke-virtual {v8}, Lcom/prineside/tdi2/Enemy;->canHaveRandomSideShift()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/systems/EnemySystem;->register(Lcom/prineside/tdi2/Enemy;)V

    goto :goto_3

    :cond_0
    iget-object v6, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    const/4 v7, 0x5

    invoke-virtual {v6, v8, v7}, Lcom/prineside/tdi2/systems/EnemySystem;->register(Lcom/prineside/tdi2/Enemy;I)V

    :goto_3
    iget-object v6, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/systems/MapSystem;->spawnEnemy(Lcom/prineside/tdi2/Enemy;)V

    iget-object v6, v8, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    iget v7, v8, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    iget v9, v8, Lcom/prineside/tdi2/Enemy;->sideShiftIndex:I

    invoke-virtual {v6, v7, v9}, Lcom/prineside/tdi2/Path;->getPosition(FI)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/prineside/tdi2/Enemy;->setPosition(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v6, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v7, v6, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v9, p1

    move-object v10, p2

    invoke-virtual/range {v7 .. v12}, Lcom/prineside/tdi2/systems/EnemySystem;->killEnemy(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;Lcom/prineside/tdi2/Projectile;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string p1, "WaveSystem"

    const-string p2, "stopped spawning current wave"

    invoke-static {p1, p2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public update(F)V
    .locals 14

    iget v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->d:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->d:F

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->getCurrentUpdateActions()Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const/4 v3, 0x0

    :goto_0
    iget v4, v0, Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;->size:I

    if-ge v3, v4, :cond_5

    iget-object v4, v0, Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;->actions:[Lcom/prineside/tdi2/Action;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/prineside/tdi2/Action;->getType()Lcom/prineside/tdi2/enums/ActionType;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/enums/ActionType;->CW:Lcom/prineside/tdi2/enums/ActionType;

    if-ne v4, v5, :cond_4

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/WaveSystem;->b()Lcom/prineside/tdi2/Wave;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_3

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->r:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->status:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    sget-object v3, Lcom/prineside/tdi2/systems/WaveSystem$Status;->NOT_STARTED:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    if-eq v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/WaveSystem;->getTimeToNextWave()F

    move-result v3

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/WaveSystem;->getForceWaveBonus()I

    move-result v4

    iget v5, p0, Lcom/prineside/tdi2/systems/WaveSystem;->t:F

    const/high16 v6, 0x42480000    # 50.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    int-to-long v7, v5

    sget-object v9, Lcom/prineside/tdi2/enums/StatisticsType;->SG_WCA:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v6, v7, v8, v9}, Lcom/prineside/tdi2/systems/GameStateSystem;->addScore(JLcom/prineside/tdi2/enums/StatisticsType;)V

    iget-object v6, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    int-to-float v7, v4

    invoke-virtual {v6, v7, v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->addMoney(FZ)I

    iget-object v6, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v7, Lcom/prineside/tdi2/enums/StatisticsType;->CG_WC:Lcom/prineside/tdi2/enums/StatisticsType;

    int-to-double v8, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    :cond_2
    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/WaveSystem;->startNextWave()V

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_3

    iget-object v7, p0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v7, v6}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener;

    invoke-interface {v7, v4, v5, v3}, Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener;->nextWaveForced(IIF)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    goto :goto_4

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v0, 0x0

    :goto_5
    iget-object v3, p0, Lcom/prineside/tdi2/systems/WaveSystem;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v4, :cond_7

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/WaveProcessor;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lcom/prineside/tdi2/WaveProcessor;->update(F)V

    iget-object v3, p0, Lcom/prineside/tdi2/systems/WaveSystem;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/WaveProcessor;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/prineside/tdi2/WaveProcessor;->isDone()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/prineside/tdi2/systems/WaveSystem;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->spawnTiles:Lcom/badlogic/gdx/utils/Array;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6
    iget v5, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_9

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/tiles/SpawnTile;

    const/4 v6, 0x0

    :goto_7
    iget-object v7, v5, Lcom/prineside/tdi2/tiles/SpawnTile;->enemySpawnQueues:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/utils/Array;

    iget v7, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v7, :cond_8

    iget-object v7, v5, Lcom/prineside/tdi2/tiles/SpawnTile;->enemySpawnQueues:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/EnemyGroup;

    iget v8, v7, Lcom/prineside/tdi2/EnemyGroup;->count:I

    invoke-virtual {v7}, Lcom/prineside/tdi2/EnemyGroup;->getSpawnedCount()I

    move-result v7

    sub-int/2addr v8, v7

    add-int/2addr v4, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    iget-object v3, p0, Lcom/prineside/tdi2/systems/WaveSystem;->status:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    sget-object v5, Lcom/prineside/tdi2/systems/WaveSystem$Status;->SPAWNING:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-ne v3, v5, :cond_f

    if-nez v4, :cond_b

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/WaveSystem;->b()Lcom/prineside/tdi2/Wave;

    move-result-object p1

    if-eqz p1, :cond_a

    sget-object p1, Lcom/prineside/tdi2/systems/WaveSystem$Status;->SPAWNED:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/WaveSystem;->setStatus(Lcom/prineside/tdi2/systems/WaveSystem$Status;)V

    goto/16 :goto_f

    :cond_a
    sget-object p1, Lcom/prineside/tdi2/systems/WaveSystem$Status;->ENDED:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/WaveSystem;->setStatus(Lcom/prineside/tdi2/systems/WaveSystem$Status;)V

    goto/16 :goto_f

    :cond_b
    const/4 p1, 0x0

    :goto_8
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, v3, :cond_14

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/tiles/SpawnTile;

    const/4 v4, 0x0

    :goto_9
    iget-object v5, v3, Lcom/prineside/tdi2/tiles/SpawnTile;->enemySpawnQueues:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/Array;

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v5, :cond_e

    iget v5, p0, Lcom/prineside/tdi2/systems/WaveSystem;->d:F

    iget-object v8, v3, Lcom/prineside/tdi2/tiles/SpawnTile;->enemySpawnQueues:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/utils/Array;

    invoke-static {v5, v8}, Lcom/prineside/tdi2/systems/WaveSystem;->getEnemiesToSpawn(FLcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/prineside/tdi2/Enemy;

    iget-object v8, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v8, v8, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v10, p0, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    iget-boolean v10, v10, Lcom/prineside/tdi2/Wave;->enemiesCanHaveRandomSideShifts:Z

    if-eqz v10, :cond_c

    invoke-virtual {v9}, Lcom/prineside/tdi2/Enemy;->canHaveRandomSideShift()Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, -0x1

    const/4 v11, -0x1

    goto :goto_b

    :cond_c
    const/4 v11, 0x5

    :goto_b
    iget-object v12, p0, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    const/4 v13, 0x0

    move-object v10, v3

    invoke-virtual/range {v8 .. v13}, Lcom/prineside/tdi2/systems/EnemySystem;->addEnemy(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/tiles/SpawnTile;ILcom/prineside/tdi2/Wave;F)V

    goto :goto_a

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_f
    sget-object v0, Lcom/prineside/tdi2/systems/WaveSystem$Status;->SPAWNED:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    if-ne v3, v0, :cond_14

    iget v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->p:F

    cmpl-float v3, v0, v7

    if-nez v3, :cond_12

    const/4 v0, 0x0

    :goto_c
    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    iget-object v3, v3, Lcom/prineside/tdi2/systems/AbilitySystem;->activeAbilities:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    const/high16 v5, 0x3f800000    # 1.0f

    if-ge v0, v4, :cond_11

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Ability;

    aget-object v3, v3, v0

    iget-object v4, v3, Lcom/prineside/tdi2/Ability;->type:Lcom/prineside/tdi2/enums/AbilityType;

    sget-object v8, Lcom/prineside/tdi2/enums/AbilityType;->OVERLOAD:Lcom/prineside/tdi2/enums/AbilityType;

    if-ne v4, v8, :cond_10

    check-cast v3, Lcom/prineside/tdi2/abilities/OverloadAbility;

    iget-object v0, v3, Lcom/prineside/tdi2/abilities/OverloadAbility;->enemiesSpeedGV:Lcom/prineside/tdi2/GameValueConfig;

    iget-wide v3, v0, Lcom/prineside/tdi2/GameValueConfig;->value:D

    const-wide v8, 0x3f847ae140000000L    # 0.009999999776482582

    mul-double v3, v3, v8

    double-to-float v0, v3

    add-float/2addr v5, v0

    goto :goto_d

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_11
    :goto_d
    iget v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->k:F

    mul-float p1, p1, v5

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->k:F

    goto :goto_e

    :cond_12
    sub-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->p:F

    cmpg-float p1, v0, v7

    if-gez p1, :cond_13

    iput v7, p0, Lcom/prineside/tdi2/systems/WaveSystem;->p:F

    :cond_13
    :goto_e
    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/WaveSystem;->getTimeToNextWave()F

    move-result p1

    cmpl-float p1, p1, v7

    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    sget-object v0, Lcom/prineside/tdi2/enums/DifficultyMode;->EASY:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-eq p1, v0, :cond_14

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/WaveSystem;->b()Lcom/prineside/tdi2/Wave;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/WaveSystem;->startNextWave()V

    :cond_14
    :goto_f
    iget-object p1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/GameStateSystem;->getHealth()I

    move-result p1

    if-lez p1, :cond_23

    iget p1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->q:I

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    iget v0, v0, Lcom/prineside/tdi2/Wave;->waveNumber:I

    if-ge p1, v0, :cond_23

    sget-object p1, Lcom/prineside/tdi2/systems/WaveSystem;->A:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->wavesToNotifyAboutCompletion:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->status:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    sget-object v0, Lcom/prineside/tdi2/systems/WaveSystem$Status;->SPAWNING:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    if-ne p1, v0, :cond_16

    iget-object p1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    iget p1, p1, Lcom/prineside/tdi2/Wave;->waveNumber:I

    const/4 v0, 0x0

    :goto_10
    sget-object v3, Lcom/prineside/tdi2/systems/WaveSystem;->A:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v4, :cond_17

    iget-object v4, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Wave;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/prineside/tdi2/Wave;->waveNumber:I

    iget-object v5, p0, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    iget v5, v5, Lcom/prineside/tdi2/Wave;->waveNumber:I

    if-ne v4, v5, :cond_15

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    goto :goto_11

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_16
    iget-object p1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    iget p1, p1, Lcom/prineside/tdi2/Wave;->waveNumber:I

    add-int/2addr p1, v1

    :cond_17
    :goto_11
    const/4 v0, 0x0

    :goto_12
    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v3, v3, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v4, :cond_1d

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v3, :cond_1c

    iget-object v4, v3, Lcom/prineside/tdi2/Enemy;->wave:Lcom/prineside/tdi2/Wave;

    if-nez v4, :cond_18

    goto :goto_15

    :cond_18
    iget v4, v4, Lcom/prineside/tdi2/Wave;->waveNumber:I

    if-ge v4, p1, :cond_19

    move p1, v4

    :cond_19
    sget-object v4, Lcom/prineside/tdi2/systems/WaveSystem;->A:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v4, 0x0

    :goto_13
    sget-object v5, Lcom/prineside/tdi2/systems/WaveSystem;->A:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v8, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v8, :cond_1b

    iget-object v8, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/Wave;

    aget-object v8, v8, v4

    iget v8, v8, Lcom/prineside/tdi2/Wave;->waveNumber:I

    iget-object v9, v3, Lcom/prineside/tdi2/Enemy;->wave:Lcom/prineside/tdi2/Wave;

    iget v9, v9, Lcom/prineside/tdi2/Wave;->waveNumber:I

    if-ne v8, v9, :cond_1a

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    goto :goto_14

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_1b
    :goto_14
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_1c
    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1d
    sub-int/2addr p1, v1

    iget v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->q:I

    if-le p1, v0, :cond_1e

    iput p1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->q:I

    :cond_1e
    const/4 p1, 0x0

    :goto_16
    sget-object v0, Lcom/prineside/tdi2/systems/WaveSystem;->A:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, v3, :cond_22

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/Wave;

    aget-object v0, v0, p1

    iput-boolean v1, v0, Lcom/prineside/tdi2/Wave;->completed:Z

    iget-object v3, p0, Lcom/prineside/tdi2/systems/WaveSystem;->wavesToNotifyAboutCompletion:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v3, 0x0

    :goto_17
    iget-object v4, p0, Lcom/prineside/tdi2/systems/WaveSystem;->wavesToNotifyAboutCompletion:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_20

    iget-object v5, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/Wave;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/prineside/tdi2/Wave;->waveNumber:I

    iget v8, v0, Lcom/prineside/tdi2/Wave;->waveNumber:I

    if-ne v5, v8, :cond_1f

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    goto :goto_18

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_20
    :goto_18
    iget-object v3, p0, Lcom/prineside/tdi2/systems/WaveSystem;->wavesToNotifyAboutCompletion:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object v3, p0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object v3, p0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v3, :cond_21

    iget-object v5, p0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener;

    invoke-interface {v5, v0}, Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener;->waveCompleted(Lcom/prineside/tdi2/Wave;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_21
    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_16

    :cond_22
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    :cond_23
    iget-boolean p1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->r:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/WaveSystem;->b()Lcom/prineside/tdi2/Wave;

    move-result-object v0

    if-nez v0, :cond_24

    iput-boolean v2, p0, Lcom/prineside/tdi2/systems/WaveSystem;->r:Z

    goto :goto_1a

    :cond_24
    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->status:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    sget-object v3, Lcom/prineside/tdi2/systems/WaveSystem$Status;->NOT_STARTED:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    if-ne v0, v3, :cond_25

    iput-boolean v1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->r:Z

    goto :goto_1a

    :cond_25
    sget-object v3, Lcom/prineside/tdi2/systems/WaveSystem$Status;->SPAWNED:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    if-ne v0, v3, :cond_28

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/WaveSystem;->getCompletedWavesCount()I

    move-result v0

    iget-object v3, p0, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    iget v3, v3, Lcom/prineside/tdi2/Wave;->waveNumber:I

    sub-int/2addr v3, v6

    if-ge v0, v3, :cond_26

    iput-boolean v2, p0, Lcom/prineside/tdi2/systems/WaveSystem;->r:Z

    goto :goto_1a

    :cond_26
    iput-boolean v1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->r:Z

    goto :goto_1a

    :cond_27
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "wave object not set while status is SPAWNED"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_28
    iput-boolean v2, p0, Lcom/prineside/tdi2/systems/WaveSystem;->r:Z

    :goto_1a
    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/WaveSystem;->b()Lcom/prineside/tdi2/Wave;

    move-result-object v0

    if-nez v0, :cond_29

    iput v7, p0, Lcom/prineside/tdi2/systems/WaveSystem;->u:F

    goto :goto_1b

    :cond_29
    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->status:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    sget-object v3, Lcom/prineside/tdi2/systems/WaveSystem$Status;->SPAWNED:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    if-ne v0, v3, :cond_2c

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/WaveSystem;->getWaveStartInterval()F

    move-result v0

    iget-object v3, p0, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    iget-object v3, v3, Lcom/prineside/tdi2/Wave;->waveProcessor:Lcom/prineside/tdi2/WaveProcessor;

    if-eqz v3, :cond_2a

    invoke-virtual {v3}, Lcom/prineside/tdi2/WaveProcessor;->getNextWaveDelayMultiplier()F

    move-result v3

    mul-float v0, v0, v3

    :cond_2a
    iget v3, p0, Lcom/prineside/tdi2/systems/WaveSystem;->k:F

    sub-float/2addr v0, v3

    cmpg-float v3, v0, v7

    if-gez v3, :cond_2b

    iput v7, p0, Lcom/prineside/tdi2/systems/WaveSystem;->u:F

    goto :goto_1b

    :cond_2b
    iput v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->u:F

    goto :goto_1b

    :cond_2c
    iput v7, p0, Lcom/prineside/tdi2/systems/WaveSystem;->u:F

    :goto_1b
    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->status:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    sget-object v3, Lcom/prineside/tdi2/systems/WaveSystem$Status;->SPAWNED:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    if-ne v0, v3, :cond_2e

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->r:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->FORCED_WAVE_BONUS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v3

    double-to-float v0, v3

    iget v3, p0, Lcom/prineside/tdi2/systems/WaveSystem;->u:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/WaveSystem;->getWaveStartInterval()F

    move-result v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    iget v5, v4, Lcom/prineside/tdi2/Wave;->killedEnemiesBountySum:I

    int-to-float v5, v5

    const v6, 0x3f4ccccd    # 0.8f

    mul-float v5, v5, v6

    iget v4, v4, Lcom/prineside/tdi2/Wave;->enemiesSumBounty:F

    const v6, 0x3e4ccccd    # 0.2f

    mul-float v4, v4, v6

    add-float/2addr v5, v4

    mul-float v3, v3, v5

    mul-float v3, v3, v0

    iput v3, p0, Lcom/prineside/tdi2/systems/WaveSystem;->t:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/StrictMath;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    iput v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->s:I

    goto :goto_1c

    :cond_2d
    iput v2, p0, Lcom/prineside/tdi2/systems/WaveSystem;->s:I

    goto :goto_1c

    :cond_2e
    iput v2, p0, Lcom/prineside/tdi2/systems/WaveSystem;->s:I

    :goto_1c
    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->r:Z

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/WaveSystem;->isAutoForceWaveEnabled()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    if-eqz v0, :cond_31

    iget v0, v0, Lcom/prineside/tdi2/Wave;->killedEnemiesCount:I

    if-lt v0, v1, :cond_31

    const/4 v0, 0x0

    :goto_1d
    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v3, v3, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v4, :cond_30

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v3, :cond_2f

    iget-object v4, v3, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    sget-object v5, Lcom/prineside/tdi2/enums/EnemyType;->GENERIC:Lcom/prineside/tdi2/enums/EnemyType;

    if-eq v4, v5, :cond_2f

    iget-boolean v3, v3, Lcom/prineside/tdi2/Enemy;->ignoredByAutoWaveCall:Z

    if-nez v3, :cond_2f

    goto :goto_1e

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_30
    const/4 v1, 0x0

    :goto_1e
    if-nez v1, :cond_31

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/WaveSystem;->forceNextWaveAction()V

    :cond_31
    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->r:Z

    if-eq v0, p1, :cond_34

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/WaveSystem;->isAutoForceWaveEnabled()Z

    move-result p1

    if-eqz p1, :cond_32

    iget-boolean p1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->r:Z

    if-eqz p1, :cond_32

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/SettingsManager;->isInstantAutoWaveCallEnabled()Z

    move-result p1

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/WaveSystem;->forceNextWaveAction()V

    :cond_32
    iget-object p1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result p1

    :goto_1f
    if-ge v2, p1, :cond_33

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener;

    invoke-interface {v0}, Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener;->forceWaveAvailabilityChanged()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_33
    iget-object p1, p0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    :cond_34
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->a:Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->mode:Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->status:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    const-class v1, Lcom/prineside/tdi2/systems/WaveSystem$Status;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->d:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->k:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->p:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->nextWavesCache:[Lcom/prineside/tdi2/systems/WaveSystem$WaveCache;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->wavesToNotifyAboutCompletion:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->q:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->r:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->s:I

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->t:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->u:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->v:[I

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->predefinedWaveTemplates:[Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->bossWaves:Lcom/badlogic/gdx/utils/IntMap;

    const-class v1, Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->w:Lcom/prineside/tdi2/systems/WaveSystem$WaveGenerator;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
