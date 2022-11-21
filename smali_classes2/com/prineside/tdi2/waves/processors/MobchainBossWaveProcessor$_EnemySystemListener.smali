.class public Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_EnemySystemListener;
.super Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;
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
    name = "_EnemySystemListener"
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enemyDie(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;Lcom/prineside/tdi2/Projectile;)V
    .locals 8

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->wave:Lcom/prineside/tdi2/Wave;

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-static {v1}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->a(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/prineside/tdi2/Wave;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-static {v0}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->d(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    invoke-virtual {v0, p2, p3}, Lcom/prineside/tdi2/systems/WaveSystem;->stopSpawningCurrentWave(Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-static {v0}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->e(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-static {v1}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->e(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v1, v1, v0

    iget-object v3, v1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v3, :cond_1

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-static {v1}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->d(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object v1

    iget-object v2, v1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/prineside/tdi2/systems/EnemySystem;->killEnemy(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;Lcom/prineside/tdi2/Projectile;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getConstantId()I
    .locals 1

    const v0, 0x2dc7f499

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_EnemySystemListener;->a:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    const-class v1, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
