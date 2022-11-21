.class public Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;
.super Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_MapSystemListener"
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;-><init>(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enemyDespawnedFromMap(Lcom/prineside/tdi2/Enemy;)V
    .locals 12

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->wave:Lcom/prineside/tdi2/Wave;

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-static {v1}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->a(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/prineside/tdi2/Wave;

    move-result-object v1

    if-ne v0, v1, :cond_d

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_BODY:Lcom/prineside/tdi2/enums/EnemyType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_CREEP:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-static {v0}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->h(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/prineside/tdi2/utils/EntityUtils;->removeByValue(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/Enemy;)Z

    goto/16 :goto_6

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-static {v0}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->f(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_3

    const-string v0, "MobchainBossWaveProcessor"

    const-string v2, "head despawned"

    invoke-static {v0, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    sget-object v2, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-static {v0, v2}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->g(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;Lcom/prineside/tdi2/Enemy$EnemyReference;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-static {v0}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->h(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v2, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-static {v2}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->h(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v4, v2, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-static {v2}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->d(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object v2

    iget-object v3, v2, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    const/4 v5, 0x0

    sget-object v6, Lcom/prineside/tdi2/enums/DamageType;->BULLET:Lcom/prineside/tdi2/enums/DamageType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/prineside/tdi2/systems/EnemySystem;->killEnemy(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;Lcom/prineside/tdi2/Projectile;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-static {v0}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->e(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/prineside/tdi2/utils/EntityUtils;->removeByValue(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/Enemy;)Z

    iget-object p1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-static {p1}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->f(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    check-cast p1, Lcom/prineside/tdi2/enemies/bosses/MobchainBossHeadEnemy;

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-static {v0}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->e(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-static {v0}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->b(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)I

    move-result v0

    if-nez v0, :cond_d

    if-eqz p1, :cond_d

    iput-boolean v1, p1, Lcom/prineside/tdi2/enemies/bosses/MobchainBossHeadEnemy;->vulnerable:Z

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/prineside/tdi2/enums/TowerType;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-static {v4}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->d(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object v4

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-static {v4}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->d(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object v4

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Tower;

    aget-object v4, v4, v3

    iget-object v5, v4, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    sget-object v6, Lcom/prineside/tdi2/enums/TowerType;->AIR:Lcom/prineside/tdi2/enums/TowerType;

    if-eq v5, v6, :cond_5

    sget-object v6, Lcom/prineside/tdi2/enums/TowerType;->FREEZING:Lcom/prineside/tdi2/enums/TowerType;

    if-ne v5, v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v5, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v4, v4, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x4

    if-ge v3, v4, :cond_a

    sget-object v3, Lcom/prineside/tdi2/enums/TowerType;->BASIC:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v0, v3, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_7
    sget-object v3, Lcom/prineside/tdi2/enums/TowerType;->CANNON:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v0, v3, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_8
    sget-object v3, Lcom/prineside/tdi2/enums/TowerType;->SNIPER:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v0, v3, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_9
    sget-object v3, Lcom/prineside/tdi2/enums/TowerType;->MULTISHOT:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v0, v3, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_a
    const/high16 v1, 0x40000000    # 2.0f

    iget-object v3, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-static {v3}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->a(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/prineside/tdi2/Wave;

    move-result-object v3

    iget v3, v3, Lcom/prineside/tdi2/Wave;->waveNumber:I

    int-to-double v5, v3

    const-wide v7, 0x3feb333333333333L    # 0.85

    invoke-static {v5, v6, v7, v8}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v5

    double-to-float v3, v5

    const/high16 v5, 0x41400000    # 12.0f

    div-float/2addr v3, v5

    add-float/2addr v3, v1

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->floor(F)I

    move-result v1

    if-le v1, v4, :cond_b

    goto :goto_4

    :cond_b
    move v4, v1

    :goto_4
    if-ge v2, v4, :cond_d

    iget-object v1, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/enums/TowerType;

    iget-object v3, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-static {v3}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->d(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v5, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomInt(I)I

    move-result v3

    aget-object v1, v1, v3

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    sget-object v5, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_CREEP:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/Enemy$Factory;->obtain()Lcom/prineside/tdi2/Enemy;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/prineside/tdi2/enemies/bosses/MobchainBossCreepEnemy;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v6, v3}, Lcom/prineside/tdi2/Enemy;->setSpeed(F)V

    iget v5, p1, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    const v7, 0x3dcccccd    # 0.1f

    mul-float v5, v5, v7

    iput v5, v6, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/Enemy;->setHealth(F)V

    iget v5, p1, Lcom/prineside/tdi2/Enemy;->killScore:I

    int-to-float v5, v5

    mul-float v5, v5, v7

    invoke-static {v5}, Ljava/lang/StrictMath;->round(F)I

    move-result v5

    iput v5, v6, Lcom/prineside/tdi2/Enemy;->killScore:I

    const/4 v5, 0x0

    iput v5, v6, Lcom/prineside/tdi2/Enemy;->bounty:F

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getKillExp()F

    move-result v8

    mul-float v8, v8, v7

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/Enemy;->setKillExp(F)V

    iput-object v1, v6, Lcom/prineside/tdi2/enemies/bosses/MobchainBossCreepEnemy;->vulnerableTo:Lcom/prineside/tdi2/enums/TowerType;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v7, v1}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower$Factory;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iput-object v1, v6, Lcom/prineside/tdi2/enemies/bosses/MobchainBossCreepEnemy;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, p1, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    sub-float/2addr v1, v3

    int-to-float v7, v2

    mul-float v7, v7, v3

    sub-float/2addr v1, v7

    cmpg-float v3, v1, v5

    if-gez v3, :cond_c

    const/4 v11, 0x0

    goto :goto_5

    :cond_c
    move v11, v1

    :goto_5
    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-static {v1}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->d(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object v1

    iget-object v5, v1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v7, p1, Lcom/prineside/tdi2/Enemy;->spawnTile:Lcom/prineside/tdi2/tiles/SpawnTile;

    iget-object v8, p1, Lcom/prineside/tdi2/Enemy;->graphPath:Lcom/prineside/tdi2/Path;

    const/4 v9, -0x1

    iget-object v10, p1, Lcom/prineside/tdi2/Enemy;->wave:Lcom/prineside/tdi2/Wave;

    invoke-virtual/range {v5 .. v11}, Lcom/prineside/tdi2/systems/EnemySystem;->addEnemy(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/tiles/SpawnTile;Lcom/prineside/tdi2/Path;ILcom/prineside/tdi2/Wave;F)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_d
    :goto_6
    return-void
.end method

.method public enemySpawnedOnMap(Lcom/prineside/tdi2/Enemy;)V
    .locals 2

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->wave:Lcom/prineside/tdi2/Wave;

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-static {v1}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->a(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/prineside/tdi2/Wave;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_BODY:Lcom/prineside/tdi2/enums/EnemyType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_CREEP:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-static {v0}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->h(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-static {v1}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->d(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/systems/EnemySystem;->getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-static {v0}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->c(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)I

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-static {v0}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->e(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-static {v1}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->d(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/systems/EnemySystem;->getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-static {v0}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->d(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/systems/EnemySystem;->getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->g(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;Lcom/prineside/tdi2/Enemy$EnemyReference;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    :cond_2
    :goto_1
    return-void
.end method

.method public getConstantId()I
    .locals 1

    const v0, 0x36916be9

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    const-class v1, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
