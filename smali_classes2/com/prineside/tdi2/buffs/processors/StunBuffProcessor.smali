.class public Lcom/prineside/tdi2/buffs/processors/StunBuffProcessor;
.super Lcom/prineside/tdi2/BuffProcessor;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/BuffProcessor<",
        "Lcom/prineside/tdi2/buffs/StunBuff;",
        ">;"
    }
.end annotation


# static fields
.field public static final STUN_DURATION_BY_STUN_COUNT:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/tdi2/buffs/processors/StunBuffProcessor;->STUN_DURATION_BY_STUN_COUNT:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
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

    check-cast p2, Lcom/prineside/tdi2/buffs/StunBuff;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/buffs/processors/StunBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/StunBuff;)Z

    move-result p1

    return p1
.end method

.method public addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/StunBuff;)Z
    .locals 3

    iget-byte v0, p1, Lcom/prineside/tdi2/Enemy;->buffStunCount:B

    sget-object v1, Lcom/prineside/tdi2/buffs/processors/StunBuffProcessor;->STUN_DURATION_BY_STUN_COUNT:[F

    array-length v1, v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/prineside/tdi2/Buff;->free()V

    return v2

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->STUN:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Enemy;->hasBuffsByType(Lcom/prineside/tdi2/enums/BuffType;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomFloat()F

    move-result v0

    iget v1, p1, Lcom/prineside/tdi2/Enemy;->buffStunImmunity:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->buffStunCountByTower:Lcom/badlogic/gdx/utils/IntIntMap;

    if-nez v0, :cond_2

    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>()V

    iput-object v0, p1, Lcom/prineside/tdi2/Enemy;->buffStunCountByTower:Lcom/badlogic/gdx/utils/IntIntMap;

    :cond_2
    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->buffStunCountByTower:Lcom/badlogic/gdx/utils/IntIntMap;

    iget v1, p2, Lcom/prineside/tdi2/buffs/StunBuff;->issuerId:I

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v0

    iget-object v1, p1, Lcom/prineside/tdi2/Enemy;->buffStunCountByTower:Lcom/badlogic/gdx/utils/IntIntMap;

    iget v2, p2, Lcom/prineside/tdi2/buffs/StunBuff;->issuerId:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    iget-byte v0, p1, Lcom/prineside/tdi2/Enemy;->buffStunCount:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p1, Lcom/prineside/tdi2/Enemy;->buffStunCount:B

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lcom/prineside/tdi2/Enemy;->buffStunImmunity:F

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/BuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Buff;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    invoke-virtual {p2}, Lcom/prineside/tdi2/Buff;->free()V

    return v2
.end method

.method public getBuffCountStatistic()Lcom/prineside/tdi2/enums/StatisticsType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->EB_S:Lcom/prineside/tdi2/enums/StatisticsType;

    return-object v0
.end method

.method public getUpdateInterval()F
    .locals 1

    const v0, 0x3e808312    # 0.251f

    return v0
.end method

.method public scheduledUpdate(F)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/prineside/tdi2/enums/BuffType;->STUN:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/Enemy;->hasBuffsByType(Lcom/prineside/tdi2/enums/BuffType;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/prineside/tdi2/Enemy;->buffStunActive:Z

    iget v3, v2, Lcom/prineside/tdi2/Enemy;->buffStunImmunity:F

    const v4, 0x3ccccccd    # 0.025f

    mul-float v4, v4, p1

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/prineside/tdi2/Enemy;->buffStunImmunity:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    iput v4, v2, Lcom/prineside/tdi2/Enemy;->buffStunImmunity:F

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
