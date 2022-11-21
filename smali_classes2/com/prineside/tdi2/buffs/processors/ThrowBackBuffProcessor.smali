.class public Lcom/prineside/tdi2/buffs/processors/ThrowBackBuffProcessor;
.super Lcom/prineside/tdi2/BuffProcessor;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/BuffProcessor<",
        "Lcom/prineside/tdi2/buffs/ThrowBackBuff;",
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

    check-cast p2, Lcom/prineside/tdi2/buffs/ThrowBackBuff;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/buffs/processors/ThrowBackBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/ThrowBackBuff;)Z

    move-result p1

    return p1
.end method

.method public addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/ThrowBackBuff;)Z
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->THROW_BACK:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Enemy;->hasBuffsByType(Lcom/prineside/tdi2/enums/BuffType;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/prineside/tdi2/Buff;->free()V

    return v1

    :cond_0
    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->buffThrowBackAffectedBy:Lcom/badlogic/gdx/utils/IntSet;

    if-eqz v0, :cond_1

    iget v2, p2, Lcom/prineside/tdi2/buffs/ThrowBackBuff;->ownerId:I

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->buffThrowBackAffectedBy:Lcom/badlogic/gdx/utils/IntSet;

    if-eqz v0, :cond_3

    iget v0, v0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/prineside/tdi2/Buff;->free()V

    return v1

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/BuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Buff;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->buffThrowBackAffectedBy:Lcom/badlogic/gdx/utils/IntSet;

    if-nez v0, :cond_4

    new-instance v0, Lcom/badlogic/gdx/utils/IntSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>()V

    iput-object v0, p1, Lcom/prineside/tdi2/Enemy;->buffThrowBackAffectedBy:Lcom/badlogic/gdx/utils/IntSet;

    :cond_4
    iget-object p1, p1, Lcom/prineside/tdi2/Enemy;->buffThrowBackAffectedBy:Lcom/badlogic/gdx/utils/IntSet;

    iget p2, p2, Lcom/prineside/tdi2/buffs/ThrowBackBuff;->ownerId:I

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    const/4 p1, 0x1

    return p1

    :cond_5
    return v1
.end method

.method public getBuffCountStatistic()Lcom/prineside/tdi2/enums/StatisticsType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->EB_TB:Lcom/prineside/tdi2/enums/StatisticsType;

    return-object v0
.end method
