.class public Lcom/prineside/tdi2/buffs/processors/PoisonBuffProcessor;
.super Lcom/prineside/tdi2/BuffProcessor;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/BuffProcessor<",
        "Lcom/prineside/tdi2/buffs/PoisonBuff;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/prineside/tdi2/buffs/PoisonBuff;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/buffs/processors/PoisonBuffProcessor$1;

    invoke-direct {v0}, Lcom/prineside/tdi2/buffs/processors/PoisonBuffProcessor$1;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/buffs/processors/PoisonBuffProcessor;->d:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/BuffProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Buff;)Z
    .locals 0

    check-cast p2, Lcom/prineside/tdi2/buffs/PoisonBuff;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/buffs/processors/PoisonBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/PoisonBuff;)Z

    move-result p1

    return p1
.end method

.method public addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/PoisonBuff;)Z
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->POISON:Lcom/prineside/tdi2/enums/BuffType;

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

    check-cast v2, [Lcom/prineside/tdi2/buffs/PoisonBuff;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/prineside/tdi2/buffs/PoisonBuff;->tower:Lcom/prineside/tdi2/Tower;

    iget-object v3, p2, Lcom/prineside/tdi2/buffs/PoisonBuff;->tower:Lcom/prineside/tdi2/Tower;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/prineside/tdi2/enums/BuffType;->POISON:Lcom/prineside/tdi2/enums/BuffType;

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

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->EB_P:Lcom/prineside/tdi2/enums/StatisticsType;

    return-object v0
.end method

.method public getUpdateInterval()F
    .locals 1

    const v0, 0x3e99999a    # 0.3f

    return v0
.end method

.method public scheduledUpdate(F)V
    .locals 19

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
    if-ge v3, v1, :cond_4

    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v4, v4, v3

    iget-object v5, v4, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v5, :cond_0

    goto :goto_3

    :cond_0
    sget-object v6, Lcom/prineside/tdi2/enums/BuffType;->POISON:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/Enemy;->getBuffsByTypeOrNull(Lcom/prineside/tdi2/enums/BuffType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v5

    if-eqz v5, :cond_3

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/badlogic/gdx/utils/Sort;->instance()Lcom/badlogic/gdx/utils/Sort;

    move-result-object v6

    sget-object v7, Lcom/prineside/tdi2/buffs/processors/PoisonBuffProcessor;->d:Ljava/util/Comparator;

    invoke-virtual {v6, v5, v7}, Lcom/badlogic/gdx/utils/Sort;->sort(Lcom/badlogic/gdx/utils/Array;Ljava/util/Comparator;)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget v7, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    iget-object v9, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v9, [Lcom/prineside/tdi2/buffs/PoisonBuff;

    aget-object v9, v9, v8

    iget v10, v9, Lcom/prineside/tdi2/buffs/PoisonBuff;->poisonDamage:F

    mul-float v10, v10, p1

    mul-float v14, v10, v6

    iget v10, v9, Lcom/prineside/tdi2/Buff;->duration:F

    iget-object v12, v4, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    iget v11, v12, Lcom/prineside/tdi2/Enemy;->buffFreezingPoisonDurationBonus:F

    const v13, 0x3c23d70a    # 0.01f

    mul-float v11, v11, v13

    mul-float v11, v11, p1

    add-float/2addr v10, v11

    iput v10, v9, Lcom/prineside/tdi2/Buff;->duration:F

    iget-object v10, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v11, v10, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v13, v9, Lcom/prineside/tdi2/buffs/PoisonBuff;->tower:Lcom/prineside/tdi2/Tower;

    sget-object v15, Lcom/prineside/tdi2/enums/DamageType;->POISON:Lcom/prineside/tdi2/enums/DamageType;

    iget-object v9, v9, Lcom/prineside/tdi2/buffs/PoisonBuff;->fromAbility:Lcom/prineside/tdi2/Ability;

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v16, v9

    invoke-virtual/range {v11 .. v18}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    move-result v9

    const/high16 v10, 0x3f400000    # 0.75f

    mul-float v6, v6, v10

    if-nez v9, :cond_2

    iget-object v9, v4, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v9, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method
