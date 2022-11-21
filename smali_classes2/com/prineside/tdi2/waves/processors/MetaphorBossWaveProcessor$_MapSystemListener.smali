.class public Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_MapSystemListener;
.super Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_MapSystemListener"
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_MapSystemListener;-><init>(Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;)V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enemyDespawnedFromMap(Lcom/prineside/tdi2/Enemy;)V
    .locals 2

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->METAPHOR_BOSS_CREEP:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;

    invoke-static {v0}, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->c(Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/prineside/tdi2/utils/EntityUtils;->removeByValue(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/Enemy;)Z

    :cond_0
    return-void
.end method

.method public enemySpawnedOnMap(Lcom/prineside/tdi2/Enemy;)V
    .locals 3

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->wave:Lcom/prineside/tdi2/Wave;

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;

    invoke-static {v1}, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->e(Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;)Lcom/prineside/tdi2/Wave;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->METAPHOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;

    invoke-static {v0}, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->d(Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/systems/EnemySystem;->getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->b(Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;Lcom/prineside/tdi2/Enemy$EnemyReference;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->wave:Lcom/prineside/tdi2/Wave;

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;

    invoke-static {v1}, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->e(Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;)Lcom/prineside/tdi2/Wave;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->METAPHOR_BOSS_CREEP:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v0, v1, :cond_2

    check-cast p1, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;

    invoke-static {v0}, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->c(Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;

    invoke-static {v1}, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->d(Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/systems/EnemySystem;->getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;->values:[Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;

    invoke-static {v1}, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;->c(Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    array-length v2, v0

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;->setKind(Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;)V

    sget-object v1, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;->HIGH_HP:Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Enemy;->setMaxHealth(F)V

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Enemy;->setHealth(F)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;->LOW_HP:Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;

    if-ne v0, v1, :cond_2

    iget v0, p1, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    const v1, 0x3eaa7efa    # 0.333f

    mul-float v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Enemy;->setMaxHealth(F)V

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Enemy;->setHealth(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getConstantId()I
    .locals 1

    const v0, 0x19b53325

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor$_MapSystemListener;->a:Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;

    const-class v1, Lcom/prineside/tdi2/waves/processors/MetaphorBossWaveProcessor;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
