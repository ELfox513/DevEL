.class public Lcom/prineside/tdi2/buffs/processors/SnowballBuffProcessor;
.super Lcom/prineside/tdi2/BuffProcessor;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/BuffProcessor<",
        "Lcom/prineside/tdi2/buffs/SnowballBuff;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_HITS_ONE_ENEMY:I

.field public static final STUN_DURATION_BY_STUN_COUNT:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/tdi2/buffs/processors/SnowballBuffProcessor;->STUN_DURATION_BY_STUN_COUNT:[F

    array-length v0, v0

    sput v0, Lcom/prineside/tdi2/buffs/processors/SnowballBuffProcessor;->MAX_HITS_ONE_ENEMY:I

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f266666    # 0.65f
        0x3f000000    # 0.5f
        0x3eb33333    # 0.35f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/BuffProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Buff;)Z
    .locals 0

    check-cast p2, Lcom/prineside/tdi2/buffs/SnowballBuff;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/buffs/processors/SnowballBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/SnowballBuff;)Z

    move-result p1

    return p1
.end method

.method public addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/SnowballBuff;)Z
    .locals 3

    iget v0, p1, Lcom/prineside/tdi2/Enemy;->buffSnowballHits:I

    sget v1, Lcom/prineside/tdi2/buffs/processors/SnowballBuffProcessor;->MAX_HITS_ONE_ENEMY:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/prineside/tdi2/Buff;->free()V

    return v2

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->SNOWBALL:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Enemy;->hasBuffsByType(Lcom/prineside/tdi2/enums/BuffType;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/prineside/tdi2/Buff;->free()V

    return v2

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/BuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Buff;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget v0, p1, Lcom/prineside/tdi2/Enemy;->buffSnowballHits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/prineside/tdi2/Enemy;->buffSnowballHits:I

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->achievement:Lcom/prineside/tdi2/systems/AchievementSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/AchievementSystem;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->HIT_ENEMY_WITH_SNOWBALLS:Lcom/prineside/tdi2/enums/AchievementType;

    iget p1, p1, Lcom/prineside/tdi2/Enemy;->buffSnowballHits:I

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    :cond_2
    return p2
.end method

.method public getBuffCountStatistic()Lcom/prineside/tdi2/enums/StatisticsType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->EB_F:Lcom/prineside/tdi2/enums/StatisticsType;

    return-object v0
.end method

.method public getUpdateInterval()F
    .locals 1

    const v0, 0x3e6c8b44    # 0.231f

    return v0
.end method

.method public scheduledUpdate(F)V
    .locals 3

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/prineside/tdi2/enums/BuffType;->SNOWBALL:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/Enemy;->hasBuffsByType(Lcom/prineside/tdi2/enums/BuffType;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/prineside/tdi2/Enemy;->buffSnowballActive:Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
