.class public Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;
.super Lcom/prineside/tdi2/WaveProcessor;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor$_MapSystemListener;,
        Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor$ConstructorBossWaveProcessorFactory;
    }
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/Wave;

.field public b:Lcom/prineside/tdi2/Enemy$EnemyReference;

.field public d:Z

.field public k:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/enums/EnemyType;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/enums/EnemyType;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lcom/prineside/tdi2/GameSystemProvider;

.field public r:Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor$_MapSystemListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-class v0, Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {p0}, Lcom/prineside/tdi2/WaveProcessor;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->d:Z

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->k:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->p:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;)Lcom/prineside/tdi2/Wave;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;)Lcom/prineside/tdi2/Enemy$EnemyReference;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->b:Lcom/prineside/tdi2/Enemy$EnemyReference;

    return-object p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->e(Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->r:Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor$_MapSystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->remove(Lcom/prineside/tdi2/GameListener;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->q:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public final e(Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/systems/EnemySystem;->getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->b:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object p0, p1, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->processor:Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->k:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->spawnTile:Lcom/prineside/tdi2/tiles/SpawnTile;

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/SpawnTile;->getAllowedEnemies()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->k:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->k:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->k:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/enums/EnemyType;

    aget-object v1, v1, v0

    sget-object v2, Lcom/prineside/tdi2/enums/EnemyType;->ARMORED:Lcom/prineside/tdi2/enums/EnemyType;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/prineside/tdi2/enums/EnemyType;->HEALER:Lcom/prineside/tdi2/enums/EnemyType;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/managers/EnemyManager;->getMainEnemyType(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/enums/EnemyType;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/enums/EnemyType;->BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->k:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->k:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const-string v1, "ConstructorBossWaveProcessor"

    if-nez v0, :cond_4

    const-string v0, "no normal enemy types allowed, fallback"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->k:Lcom/badlogic/gdx/utils/Array;

    sget-object v2, Lcom/prineside/tdi2/enums/EnemyType;->REGULAR:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->k:Lcom/badlogic/gdx/utils/Array;

    sget-object v2, Lcom/prineside/tdi2/enums/EnemyType;->FAST:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->k:Lcom/badlogic/gdx/utils/Array;

    sget-object v2, Lcom/prineside/tdi2/enums/EnemyType;->STRONG:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->spawnTile:Lcom/prineside/tdi2/tiles/SpawnTile;

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/SpawnTile;->getAllowedEnemiesSet()Lcom/badlogic/gdx/utils/ObjectSet;

    move-result-object v0

    sget-object v2, Lcom/prineside/tdi2/enums/EnemyType;->HEALER:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->p:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_5
    iget-object p1, p1, Lcom/prineside/tdi2/Enemy;->spawnTile:Lcom/prineside/tdi2/tiles/SpawnTile;

    invoke-virtual {p1}, Lcom/prineside/tdi2/tiles/SpawnTile;->getAllowedEnemiesSet()Lcom/badlogic/gdx/utils/ObjectSet;

    move-result-object p1

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->ARMORED:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->p:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_6
    iget-object p1, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->p:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez p1, :cond_7

    const-string p1, "no aura enemy types allowed, fallback"

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->p:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->k:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    :cond_7
    return-void
.end method

.method public generateEnemyGroups(II)Lcom/badlogic/gdx/utils/Array;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/EnemyGroup;",
            ">;"
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/prineside/tdi2/WaveProcessor;->calculateDefaultBossWaveCoinsSum(I)F

    move-result v0

    invoke-static/range {p1 .. p1}, Lcom/prineside/tdi2/WaveProcessor;->calculateDefaultBossWaveExpSum(I)F

    move-result v1

    invoke-static/range {p1 .. p1}, Lcom/prineside/tdi2/WaveProcessor;->calculateDefaultBossWaveScoreSum(I)F

    move-result v2

    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-static/range {p1 .. p2}, Lcom/prineside/tdi2/managers/WaveManager;->getWaveValue(II)F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    const-wide/high16 v6, 0x3ff4000000000000L    # 1.25

    invoke-static {v4, v5, v6, v7}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const v5, 0x3fb9999a    # 1.45f

    mul-float v4, v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    add-float v9, v4, v5

    new-instance v4, Lcom/prineside/tdi2/EnemyGroup;

    sget-object v7, Lcom/prineside/tdi2/enums/EnemyType;->CONSTRUCTOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float v13, v0, v5

    mul-float v14, v1, v5

    mul-float v2, v2, v5

    float-to-int v15, v2

    const v8, 0x3f266666    # 0.65f

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v15}, Lcom/prineside/tdi2/EnemyGroup;-><init>(Lcom/prineside/tdi2/enums/EnemyType;FFIFFFFI)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object v3
.end method

.method public getNextWaveDelayMultiplier()F
    .locals 1

    const/high16 v0, 0x40800000    # 4.0f

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->d:Z

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/Wave;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Wave;

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    const-class v0, Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->b:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->d:Z

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->k:Lcom/badlogic/gdx/utils/Array;

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->p:Lcom/badlogic/gdx/utils/Array;

    const-class v0, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/GameSystemProvider;

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->q:Lcom/prineside/tdi2/GameSystemProvider;

    const-class v0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor$_MapSystemListener;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor$_MapSystemListener;

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->r:Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor$_MapSystemListener;

    return-void
.end method

.method public setup(Lcom/prineside/tdi2/GameSystemProvider;II)Lcom/prineside/tdi2/Wave;
    .locals 2

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->q:Lcom/prineside/tdi2/GameSystemProvider;

    new-instance v0, Lcom/prineside/tdi2/Wave;

    invoke-virtual {p0, p2, p3}, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->generateEnemyGroups(II)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-direct {v0, p2, p3, v1}, Lcom/prineside/tdi2/Wave;-><init>(IILcom/badlogic/gdx/utils/Array;)V

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    const/4 p2, 0x0

    iput-boolean p2, v0, Lcom/prineside/tdi2/Wave;->enemiesCanBeSplitBetweenSpawns:Z

    iput-boolean p2, v0, Lcom/prineside/tdi2/Wave;->enemiesCanHaveRandomSideShifts:Z

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string p3, "enemy_name_CONSTRUCTOR_BOSS"

    invoke-virtual {p2, p3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/prineside/tdi2/Wave;->waveMessage:Ljava/lang/String;

    iget-object p2, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    iput-object p0, p2, Lcom/prineside/tdi2/Wave;->waveProcessor:Lcom/prineside/tdi2/WaveProcessor;

    iget-object p2, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->r:Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor$_MapSystemListener;

    if-nez p2, :cond_0

    new-instance p2, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor$_MapSystemListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor$_MapSystemListener;-><init>(Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor$1;)V

    iput-object p2, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->r:Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor$_MapSystemListener;

    :cond_0
    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object p2, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->r:Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor$_MapSystemListener;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object p1, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    return-object p1
.end method

.method public update(F)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-boolean v2, v0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->d:Z

    if-nez v2, :cond_d

    iget-object v2, v0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->b:Lcom/prineside/tdi2/Enemy$EnemyReference;

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v2, v2, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iput-boolean v3, v0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->d:Z

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->d()V

    return-void

    :cond_1
    check-cast v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result v4

    iget v5, v2, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    div-float/2addr v4, v5

    const/high16 v5, 0x3f400000    # 0.75f

    const v6, 0x3f19999a    # 0.6f

    const/4 v7, 0x0

    const v8, 0x3d4ccccd    # 0.05f

    const v9, 0x3ce38e39

    cmpg-float v10, v4, v5

    if-gtz v10, :cond_3

    iget-boolean v10, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->groupSpawned75hp:Z

    if-nez v10, :cond_3

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x3

    if-ge v10, v11, :cond_2

    iget-object v11, v0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->k:Lcom/badlogic/gdx/utils/Array;

    iget-object v12, v11, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v12, [Lcom/prineside/tdi2/enums/EnemyType;

    iget-object v13, v0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v13, v13, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v11, v11, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v13, v11}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomInt(I)I

    move-result v11

    aget-object v11, v12, v11

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v12, v11}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v11

    invoke-virtual {v11}, Lcom/prineside/tdi2/Enemy$Factory;->obtain()Lcom/prineside/tdi2/Enemy;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/prineside/tdi2/Enemy;->setSpeed(F)V

    iget v12, v2, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    mul-float v12, v12, v8

    iput v12, v11, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/Enemy;->setHealth(F)V

    iget v12, v2, Lcom/prineside/tdi2/Enemy;->killScore:I

    int-to-float v12, v12

    mul-float v12, v12, v9

    invoke-static {v12}, Ljava/lang/StrictMath;->round(F)I

    move-result v12

    iput v12, v11, Lcom/prineside/tdi2/Enemy;->killScore:I

    iget v12, v2, Lcom/prineside/tdi2/Enemy;->bounty:F

    mul-float v12, v12, v9

    invoke-static {v12}, Ljava/lang/StrictMath;->round(F)I

    move-result v12

    int-to-float v12, v12

    iput v12, v11, Lcom/prineside/tdi2/Enemy;->bounty:F

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getKillExp()F

    move-result v12

    mul-float v12, v12, v9

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/Enemy;->setKillExp(F)V

    iget-object v12, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->enemiesToSpawn:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v3, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->groupSpawned75hp:Z

    :cond_3
    const v10, 0x3d8f5c29    # 0.07f

    const/high16 v11, 0x3f000000    # 0.5f

    const v12, 0x3f266666    # 0.65f

    cmpg-float v13, v4, v11

    if-gtz v13, :cond_6

    iget-boolean v13, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->groupSpawned50hp:Z

    if-nez v13, :cond_6

    const/4 v13, 0x0

    :goto_1
    const/4 v14, 0x4

    if-ge v13, v14, :cond_4

    iget-object v14, v0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->k:Lcom/badlogic/gdx/utils/Array;

    iget-object v15, v14, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v15, [Lcom/prineside/tdi2/enums/EnemyType;

    iget-object v11, v0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v11, v11, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v14, v14, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v11, v14}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomInt(I)I

    move-result v11

    aget-object v11, v15, v11

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v14, v11}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v11

    invoke-virtual {v11}, Lcom/prineside/tdi2/Enemy$Factory;->obtain()Lcom/prineside/tdi2/Enemy;

    move-result-object v11

    int-to-float v14, v13

    mul-float v14, v14, v8

    add-float/2addr v14, v6

    invoke-virtual {v11, v14}, Lcom/prineside/tdi2/Enemy;->setSpeed(F)V

    iget v14, v2, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    mul-float v14, v14, v8

    iput v14, v11, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    invoke-virtual {v11, v14}, Lcom/prineside/tdi2/Enemy;->setHealth(F)V

    iget v14, v2, Lcom/prineside/tdi2/Enemy;->killScore:I

    int-to-float v14, v14

    mul-float v14, v14, v9

    invoke-static {v14}, Ljava/lang/StrictMath;->round(F)I

    move-result v14

    iput v14, v11, Lcom/prineside/tdi2/Enemy;->killScore:I

    iget v14, v2, Lcom/prineside/tdi2/Enemy;->bounty:F

    mul-float v14, v14, v9

    invoke-static {v14}, Ljava/lang/StrictMath;->round(F)I

    move-result v14

    int-to-float v14, v14

    iput v14, v11, Lcom/prineside/tdi2/Enemy;->bounty:F

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getKillExp()F

    move-result v14

    mul-float v14, v14, v9

    invoke-virtual {v11, v14}, Lcom/prineside/tdi2/Enemy;->setKillExp(F)V

    iget-object v14, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->enemiesToSpawn:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v14, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v3, :cond_5

    iget-object v13, v0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->p:Lcom/badlogic/gdx/utils/Array;

    iget-object v14, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v14, [Lcom/prineside/tdi2/enums/EnemyType;

    iget-object v15, v0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v15, v15, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v13, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v15, v13}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomInt(I)I

    move-result v13

    aget-object v13, v14, v13

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v14, v13}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v13

    invoke-virtual {v13}, Lcom/prineside/tdi2/Enemy$Factory;->obtain()Lcom/prineside/tdi2/Enemy;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/prineside/tdi2/Enemy;->setSpeed(F)V

    iget v14, v2, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    mul-float v14, v14, v10

    iput v14, v13, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/Enemy;->setHealth(F)V

    iget v14, v2, Lcom/prineside/tdi2/Enemy;->killScore:I

    int-to-float v14, v14

    mul-float v14, v14, v9

    invoke-static {v14}, Ljava/lang/StrictMath;->round(F)I

    move-result v14

    iput v14, v13, Lcom/prineside/tdi2/Enemy;->killScore:I

    iget v14, v2, Lcom/prineside/tdi2/Enemy;->bounty:F

    mul-float v14, v14, v9

    invoke-static {v14}, Ljava/lang/StrictMath;->round(F)I

    move-result v14

    int-to-float v14, v14

    iput v14, v13, Lcom/prineside/tdi2/Enemy;->bounty:F

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getKillExp()F

    move-result v14

    mul-float v14, v14, v9

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/Enemy;->setKillExp(F)V

    iget-object v14, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->enemiesToSpawn:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v14, v13}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    iput-boolean v3, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->groupSpawned50hp:Z

    :cond_6
    const/high16 v11, 0x3e800000    # 0.25f

    cmpg-float v4, v4, v11

    if-gtz v4, :cond_9

    iget-boolean v4, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->groupSpawned25hp:Z

    if-nez v4, :cond_9

    const/4 v4, 0x0

    :goto_3
    const/4 v11, 0x5

    if-ge v4, v11, :cond_7

    iget-object v11, v0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->k:Lcom/badlogic/gdx/utils/Array;

    iget-object v13, v11, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v13, [Lcom/prineside/tdi2/enums/EnemyType;

    iget-object v14, v0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v14, v14, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v11, v11, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v14, v11}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomInt(I)I

    move-result v11

    aget-object v11, v13, v11

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v13, v11}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v11

    invoke-virtual {v11}, Lcom/prineside/tdi2/Enemy$Factory;->obtain()Lcom/prineside/tdi2/Enemy;

    move-result-object v11

    int-to-float v13, v4

    mul-float v13, v13, v8

    add-float/2addr v13, v6

    invoke-virtual {v11, v13}, Lcom/prineside/tdi2/Enemy;->setSpeed(F)V

    iget v13, v2, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    mul-float v13, v13, v8

    iput v13, v11, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    invoke-virtual {v11, v13}, Lcom/prineside/tdi2/Enemy;->setHealth(F)V

    iget v13, v2, Lcom/prineside/tdi2/Enemy;->killScore:I

    int-to-float v13, v13

    mul-float v13, v13, v9

    invoke-static {v13}, Ljava/lang/StrictMath;->round(F)I

    move-result v13

    iput v13, v11, Lcom/prineside/tdi2/Enemy;->killScore:I

    iget v13, v2, Lcom/prineside/tdi2/Enemy;->bounty:F

    mul-float v13, v13, v9

    invoke-static {v13}, Ljava/lang/StrictMath;->round(F)I

    move-result v13

    int-to-float v13, v13

    iput v13, v11, Lcom/prineside/tdi2/Enemy;->bounty:F

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getKillExp()F

    move-result v13

    mul-float v13, v13, v9

    invoke-virtual {v11, v13}, Lcom/prineside/tdi2/Enemy;->setKillExp(F)V

    iget-object v13, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->enemiesToSpawn:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v13, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    :goto_4
    const/4 v6, 0x2

    if-ge v4, v6, :cond_8

    iget-object v6, v0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->p:Lcom/badlogic/gdx/utils/Array;

    iget-object v11, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v11, [Lcom/prineside/tdi2/enums/EnemyType;

    iget-object v13, v0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v13, v13, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v6, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v13, v6}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomInt(I)I

    move-result v6

    aget-object v6, v11, v6

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v11, v6}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prineside/tdi2/Enemy$Factory;->obtain()Lcom/prineside/tdi2/Enemy;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/prineside/tdi2/Enemy;->setSpeed(F)V

    iget v11, v2, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    mul-float v11, v11, v10

    iput v11, v6, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    invoke-virtual {v6, v11}, Lcom/prineside/tdi2/Enemy;->setHealth(F)V

    iget v11, v2, Lcom/prineside/tdi2/Enemy;->killScore:I

    int-to-float v11, v11

    mul-float v11, v11, v9

    invoke-static {v11}, Ljava/lang/StrictMath;->round(F)I

    move-result v11

    iput v11, v6, Lcom/prineside/tdi2/Enemy;->killScore:I

    iget v11, v2, Lcom/prineside/tdi2/Enemy;->bounty:F

    mul-float v11, v11, v9

    invoke-static {v11}, Ljava/lang/StrictMath;->round(F)I

    move-result v11

    int-to-float v11, v11

    iput v11, v6, Lcom/prineside/tdi2/Enemy;->bounty:F

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getKillExp()F

    move-result v11

    mul-float v11, v11, v9

    invoke-virtual {v6, v11}, Lcom/prineside/tdi2/Enemy;->setKillExp(F)V

    iget-object v11, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->enemiesToSpawn:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v11, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    iput-boolean v3, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->groupSpawned25hp:Z

    :cond_9
    iget-object v4, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->enemiesToSpawn:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v6, 0x0

    if-eqz v4, :cond_b

    iput v6, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->spawnDelayAfterTime:F

    iput-boolean v3, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->invulnerable:Z

    invoke-virtual {v2, v6, v1}, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->changeSpeedTo(FF)V

    iget v4, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->spawnDelayBeforeTime:F

    const v7, 0x3e4ccccd    # 0.2f

    cmpg-float v7, v4, v7

    if-gez v7, :cond_a

    add-float/2addr v4, v1

    iput v4, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->spawnDelayBeforeTime:F

    goto/16 :goto_5

    :cond_a
    iget v4, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->spawningTime:F

    add-float/2addr v4, v1

    iput v4, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->spawningTime:F

    cmpl-float v1, v4, v5

    if-ltz v1, :cond_d

    iget-object v1, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->enemiesToSpawn:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/prineside/tdi2/Enemy;

    iput-boolean v3, v8, Lcom/prineside/tdi2/Enemy;->ignorePathfinding:Z

    iget-object v1, v0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v7, v1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v9, v2, Lcom/prineside/tdi2/Enemy;->spawnTile:Lcom/prineside/tdi2/tiles/SpawnTile;

    iget-object v10, v2, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    const/4 v11, 0x5

    iget-object v12, v2, Lcom/prineside/tdi2/Enemy;->wave:Lcom/prineside/tdi2/Wave;

    iget v13, v2, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    invoke-virtual/range {v7 .. v13}, Lcom/prineside/tdi2/systems/EnemySystem;->addEnemy(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/tiles/SpawnTile;Lcom/prineside/tdi2/Path;ILcom/prineside/tdi2/Wave;F)V

    iput v6, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->timeSinceCreepSpawn:F

    iput v6, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->spawningTime:F

    goto/16 :goto_5

    :cond_b
    iput v6, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->spawnDelayBeforeTime:F

    iget v3, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->spawnDelayAfterTime:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v5, v3, v4

    if-gez v5, :cond_c

    add-float/2addr v3, v1

    iput v3, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->spawnDelayAfterTime:F

    goto/16 :goto_5

    :cond_c
    iput-boolean v7, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->invulnerable:Z

    invoke-virtual {v2, v12, v1}, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->changeSpeedTo(FF)V

    iget-object v3, v2, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    invoke-virtual {v3}, Lcom/prineside/tdi2/Path;->getLengthInTiles()I

    move-result v3

    int-to-float v3, v3

    iget v5, v2, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v3, v3, v7

    cmpg-float v3, v5, v3

    if-gez v3, :cond_d

    iget v3, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->timeSinceCreepSpawn:F

    add-float/2addr v3, v1

    iput v3, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->timeSinceCreepSpawn:F

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v1, v3, v1

    if-ltz v1, :cond_d

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->REGULAR:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy$Factory;->obtain()Lcom/prineside/tdi2/Enemy;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/Enemy;->setSpeed(F)V

    iget v3, v2, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    mul-float v3, v3, v8

    iput v3, v1, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/Enemy;->setHealth(F)V

    iget v3, v2, Lcom/prineside/tdi2/Enemy;->killScore:I

    int-to-float v3, v3

    mul-float v3, v3, v9

    invoke-static {v3}, Ljava/lang/StrictMath;->round(F)I

    move-result v3

    iput v3, v1, Lcom/prineside/tdi2/Enemy;->killScore:I

    iget v3, v2, Lcom/prineside/tdi2/Enemy;->bounty:F

    mul-float v3, v3, v9

    invoke-static {v3}, Ljava/lang/StrictMath;->round(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, v1, Lcom/prineside/tdi2/Enemy;->bounty:F

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getKillExp()F

    move-result v3

    mul-float v3, v3, v9

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/Enemy;->setKillExp(F)V

    iget-object v3, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->enemiesToSpawn:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->FAST:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy$Factory;->obtain()Lcom/prineside/tdi2/Enemy;

    move-result-object v1

    const v3, 0x3f933333    # 1.15f

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/Enemy;->setSpeed(F)V

    iget v4, v2, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    mul-float v4, v4, v8

    const v5, 0x3f59999a    # 0.85f

    mul-float v4, v4, v5

    iput v4, v1, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/Enemy;->setHealth(F)V

    iget v4, v2, Lcom/prineside/tdi2/Enemy;->killScore:I

    int-to-float v4, v4

    mul-float v4, v4, v9

    invoke-static {v4}, Ljava/lang/StrictMath;->round(F)I

    move-result v4

    iput v4, v1, Lcom/prineside/tdi2/Enemy;->killScore:I

    iget v4, v2, Lcom/prineside/tdi2/Enemy;->bounty:F

    mul-float v4, v4, v9

    invoke-static {v4}, Ljava/lang/StrictMath;->round(F)I

    move-result v4

    int-to-float v4, v4

    iput v4, v1, Lcom/prineside/tdi2/Enemy;->bounty:F

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getKillExp()F

    move-result v4

    mul-float v4, v4, v9

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/Enemy;->setKillExp(F)V

    iget-object v4, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->enemiesToSpawn:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    sget-object v4, Lcom/prineside/tdi2/enums/EnemyType;->STRONG:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy$Factory;->obtain()Lcom/prineside/tdi2/Enemy;

    move-result-object v1

    const v4, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/Enemy;->setSpeed(F)V

    iget v4, v2, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    mul-float v4, v4, v8

    mul-float v4, v4, v3

    iput v4, v1, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/Enemy;->setHealth(F)V

    iget v3, v2, Lcom/prineside/tdi2/Enemy;->killScore:I

    int-to-float v3, v3

    mul-float v3, v3, v9

    invoke-static {v3}, Ljava/lang/StrictMath;->round(F)I

    move-result v3

    iput v3, v1, Lcom/prineside/tdi2/Enemy;->killScore:I

    iget v3, v2, Lcom/prineside/tdi2/Enemy;->bounty:F

    mul-float v3, v3, v9

    invoke-static {v3}, Ljava/lang/StrictMath;->round(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, v1, Lcom/prineside/tdi2/Enemy;->bounty:F

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getKillExp()F

    move-result v3

    mul-float v3, v3, v9

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/Enemy;->setKillExp(F)V

    iget-object v3, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->enemiesToSpawn:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iput v6, v2, Lcom/prineside/tdi2/enemies/bosses/ConstructorBossEnemy;->spawningTime:F

    :cond_d
    :goto_5
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    const-class v1, Lcom/prineside/tdi2/Wave;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->b:Lcom/prineside/tdi2/Enemy$EnemyReference;

    const-class v1, Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->d:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->k:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->p:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->q:Lcom/prineside/tdi2/GameSystemProvider;

    const-class v1, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor;->r:Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor$_MapSystemListener;

    const-class v1, Lcom/prineside/tdi2/waves/processors/ConstructorBossWaveProcessor$_MapSystemListener;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
