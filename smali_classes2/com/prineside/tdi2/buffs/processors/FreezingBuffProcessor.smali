.class public Lcom/prineside/tdi2/buffs/processors/FreezingBuffProcessor;
.super Lcom/prineside/tdi2/BuffProcessor;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/BuffProcessor<",
        "Lcom/prineside/tdi2/buffs/FreezingBuff;",
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

    check-cast p2, Lcom/prineside/tdi2/buffs/FreezingBuff;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/buffs/processors/FreezingBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/FreezingBuff;)Z

    move-result p1

    return p1
.end method

.method public addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/FreezingBuff;)Z
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->FREEZING:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Enemy;->getBuffsByTypeOrNull(Lcom/prineside/tdi2/enums/BuffType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/buffs/FreezingBuff;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/prineside/tdi2/buffs/FreezingBuff;->tower:Lcom/prineside/tdi2/Tower;

    iget-object v3, p2, Lcom/prineside/tdi2/buffs/FreezingBuff;->tower:Lcom/prineside/tdi2/Tower;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/prineside/tdi2/enums/BuffType;->FREEZING:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p0, p1, v2, v1}, Lcom/prineside/tdi2/BuffProcessor;->removeBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/enums/BuffType;I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/BuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Buff;)Z

    move-result p1

    return p1
.end method

.method public getBuffCountStatistic()Lcom/prineside/tdi2/enums/StatisticsType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->EB_F:Lcom/prineside/tdi2/enums/StatisticsType;

    return-object v0
.end method

.method public getUpdateInterval()F
    .locals 1

    const v0, 0x3dcccccd    # 0.1f

    return v0
.end method

.method public scheduledUpdate(F)V
    .locals 17

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
    if-ge v3, v1, :cond_f

    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v4, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v5, Lcom/prineside/tdi2/enums/BuffType;->FREEZING:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/Enemy;->getBuffsByTypeOrNull(Lcom/prineside/tdi2/enums/BuffType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v5

    iget v6, v4, Lcom/prineside/tdi2/Enemy;->buffFreezingPercent:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    if-eqz v5, :cond_e

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v6, :cond_e

    :cond_1
    sget-object v6, Lcom/prineside/tdi2/enums/BuffType;->BURN:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/Enemy;->hasBuffsByType(Lcom/prineside/tdi2/enums/BuffType;)Z

    move-result v6

    const/high16 v8, 0x42c80000    # 100.0f

    if-eqz v5, :cond_a

    iget v9, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v9, :cond_a

    iput v7, v4, Lcom/prineside/tdi2/Enemy;->buffFreezingLightningLengthBonus:F

    iput v7, v4, Lcom/prineside/tdi2/Enemy;->buffFreezingPoisonDurationBonus:F

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget v9, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v9, :cond_8

    iget-object v12, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v12, [Lcom/prineside/tdi2/buffs/FreezingBuff;

    aget-object v12, v12, v10

    iget v13, v4, Lcom/prineside/tdi2/Enemy;->buffFreezingPercent:F

    iget v14, v12, Lcom/prineside/tdi2/buffs/FreezingBuff;->maxPercent:F

    cmpg-float v15, v13, v14

    if-gez v15, :cond_4

    sub-float/2addr v14, v13

    iget v15, v12, Lcom/prineside/tdi2/buffs/FreezingBuff;->speed:F

    mul-float v15, v15, p1

    if-eqz v6, :cond_2

    const v16, 0x3eaa7efa    # 0.333f

    mul-float v15, v15, v16

    :cond_2
    cmpl-float v16, v15, v14

    if-lez v16, :cond_3

    goto :goto_2

    :cond_3
    move v14, v15

    :goto_2
    add-float/2addr v13, v14

    iput v13, v4, Lcom/prineside/tdi2/Enemy;->buffFreezingPercent:F

    iget-object v13, v12, Lcom/prineside/tdi2/buffs/FreezingBuff;->tower:Lcom/prineside/tdi2/Tower;

    if-eqz v13, :cond_4

    iget-object v15, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v15, v15, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    const v16, 0x3ca3d70a    # 0.02f

    mul-float v14, v14, v16

    invoke-virtual {v15, v13, v14}, Lcom/prineside/tdi2/systems/TowerSystem;->addExperienceBuffed(Lcom/prineside/tdi2/Tower;F)F

    :cond_4
    iget v13, v12, Lcom/prineside/tdi2/buffs/FreezingBuff;->maxPercent:F

    cmpl-float v14, v13, v11

    if-lez v14, :cond_5

    move v11, v13

    :cond_5
    iget v13, v4, Lcom/prineside/tdi2/Enemy;->buffFreezingPoisonDurationBonus:F

    iget v14, v12, Lcom/prineside/tdi2/buffs/FreezingBuff;->poisonDurationBonus:F

    cmpg-float v13, v13, v14

    if-gez v13, :cond_6

    iput v14, v4, Lcom/prineside/tdi2/Enemy;->buffFreezingPoisonDurationBonus:F

    :cond_6
    iget v13, v4, Lcom/prineside/tdi2/Enemy;->buffFreezingLightningLengthBonus:F

    iget v12, v12, Lcom/prineside/tdi2/buffs/FreezingBuff;->lightningLengthBonus:F

    cmpg-float v13, v13, v12

    if-gez v13, :cond_7

    iput v12, v4, Lcom/prineside/tdi2/Enemy;->buffFreezingLightningLengthBonus:F

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    if-eqz v6, :cond_9

    const v5, 0x3f2b851f    # 0.67f

    mul-float v11, v11, v5

    :cond_9
    iget v5, v4, Lcom/prineside/tdi2/Enemy;->buffFreezingPercent:F

    cmpl-float v6, v5, v11

    if-lez v6, :cond_d

    mul-float v6, p1, v8

    sub-float/2addr v5, v11

    invoke-static {v6, v5}, Ljava/lang/StrictMath;->min(FF)F

    move-result v5

    iget v6, v4, Lcom/prineside/tdi2/Enemy;->buffFreezingPercent:F

    sub-float/2addr v6, v5

    iput v6, v4, Lcom/prineside/tdi2/Enemy;->buffFreezingPercent:F

    cmpg-float v5, v6, v7

    if-gez v5, :cond_d

    iput v7, v4, Lcom/prineside/tdi2/Enemy;->buffFreezingPercent:F

    goto :goto_3

    :cond_a
    mul-float v5, p1, v8

    if-eqz v6, :cond_b

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v5, v5, v6

    :cond_b
    iget v6, v4, Lcom/prineside/tdi2/Enemy;->buffFreezingPercent:F

    sub-float/2addr v6, v5

    iput v6, v4, Lcom/prineside/tdi2/Enemy;->buffFreezingPercent:F

    cmpg-float v5, v6, v7

    if-gez v5, :cond_c

    iput v7, v4, Lcom/prineside/tdi2/Enemy;->buffFreezingPercent:F

    :cond_c
    iput v7, v4, Lcom/prineside/tdi2/Enemy;->buffFreezingLightningLengthBonus:F

    iput v7, v4, Lcom/prineside/tdi2/Enemy;->buffFreezingPoisonDurationBonus:F

    :cond_d
    :goto_3
    iget v5, v4, Lcom/prineside/tdi2/Enemy;->buffFreezingPercent:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_e

    iput v8, v4, Lcom/prineside/tdi2/Enemy;->buffFreezingPercent:F

    :cond_e
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_f
    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method
