.class public Lcom/prineside/tdi2/buffs/processors/BurnBuffProcessor;
.super Lcom/prineside/tdi2/BuffProcessor;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/BuffProcessor<",
        "Lcom/prineside/tdi2/buffs/BurnBuff;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/BuffProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Buff;)Z
    .locals 0

    check-cast p2, Lcom/prineside/tdi2/buffs/BurnBuff;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/buffs/processors/BurnBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/BurnBuff;)Z

    move-result p1

    return p1
.end method

.method public addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/BurnBuff;)Z
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->BURN:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Enemy;->getBuffsByTypeOrNull(Lcom/prineside/tdi2/enums/BuffType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/buffs/BurnBuff;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v3, v1, Lcom/prineside/tdi2/buffs/BurnBuff;->fireDamage:F

    iget v1, v1, Lcom/prineside/tdi2/Buff;->duration:F

    mul-float v3, v3, v1

    iget v1, p2, Lcom/prineside/tdi2/Buff;->duration:F

    iget v4, p2, Lcom/prineside/tdi2/buffs/BurnBuff;->fireDamage:F

    mul-float v1, v1, v4

    cmpg-float v1, v3, v1

    if-gez v1, :cond_0

    invoke-virtual {p0, p1, v0, v2}, Lcom/prineside/tdi2/BuffProcessor;->removeBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/enums/BuffType;I)V

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/BuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Buff;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2}, Lcom/prineside/tdi2/Buff;->free()V

    return v2

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/BuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Buff;)Z

    move-result p1

    return p1
.end method

.method public getBuffCountStatistic()Lcom/prineside/tdi2/enums/StatisticsType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->EB_I:Lcom/prineside/tdi2/enums/StatisticsType;

    return-object v0
.end method

.method public getUpdateInterval()F
    .locals 1

    const v0, 0x3e8a3d71    # 0.27f

    return v0
.end method

.method public scheduledUpdate(F)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    sget-object v5, Lcom/prineside/tdi2/enums/BuffType;->BURN:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/Enemy;->getBuffsByTypeOrNull(Lcom/prineside/tdi2/enums/BuffType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v13

    if-eqz v13, :cond_2

    iget v5, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v5, :cond_2

    invoke-virtual {v13}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget v14, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_1

    iget-object v5, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/buffs/BurnBuff;

    aget-object v5, v5, v15

    iget v6, v5, Lcom/prineside/tdi2/buffs/BurnBuff;->fireDamage:F

    mul-float v6, v6, p1

    sget-object v7, Lcom/prineside/tdi2/enums/BuffType;->BURN:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/Enemy;->getBuffVulnerability(Lcom/prineside/tdi2/enums/BuffType;)F

    move-result v7

    mul-float v8, v6, v7

    iget-object v6, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v7, v5, Lcom/prineside/tdi2/buffs/BurnBuff;->tower:Lcom/prineside/tdi2/Tower;

    sget-object v9, Lcom/prineside/tdi2/enums/DamageType;->FIRE:Lcom/prineside/tdi2/enums/DamageType;

    iget-object v10, v5, Lcom/prineside/tdi2/buffs/BurnBuff;->fromAbility:Lcom/prineside/tdi2/Ability;

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v5, v6

    move-object v6, v4

    invoke-virtual/range {v5 .. v12}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v13}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method
