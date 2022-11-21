.class public Lcom/prineside/tdi2/buffs/ChainReactionBuff;
.super Lcom/prineside/tdi2/Buff;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/buffs/ChainReactionBuff$ChainReactionBuffFactory;
    }
.end annotation


# instance fields
.field public chance:F

.field public durationMultiplier:F

.field public rangeInTiles:F


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->CHAIN_REACTION:Lcom/prineside/tdi2/enums/BuffType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Buff;-><init>(Lcom/prineside/tdi2/enums/BuffType;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic cpy(F)Lcom/prineside/tdi2/Buff;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/buffs/ChainReactionBuff;->cpy(F)Lcom/prineside/tdi2/buffs/ChainReactionBuff;

    move-result-object p1

    return-object p1
.end method

.method public cpy(F)Lcom/prineside/tdi2/buffs/ChainReactionBuff;
    .locals 7

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BuffManager$Factories;->CHAIN_REACTION:Lcom/prineside/tdi2/buffs/ChainReactionBuff$ChainReactionBuffFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/ChainReactionBuff;

    iget v1, p0, Lcom/prineside/tdi2/Buff;->duration:F

    mul-float v1, v1, p1

    iget v3, p0, Lcom/prineside/tdi2/Buff;->maxDuration:F

    cmpl-float v2, v1, v3

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget v4, p0, Lcom/prineside/tdi2/buffs/ChainReactionBuff;->chance:F

    iget v5, p0, Lcom/prineside/tdi2/buffs/ChainReactionBuff;->rangeInTiles:F

    move-object v1, v0

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/prineside/tdi2/buffs/ChainReactionBuff;->setup(FFFFF)V

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Buff;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/buffs/ChainReactionBuff;->rangeInTiles:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/buffs/ChainReactionBuff;->chance:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/buffs/ChainReactionBuff;->durationMultiplier:F

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setup(FF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Use other constructor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setup(FFFFF)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Buff;->setup(FF)V

    iput p3, p0, Lcom/prineside/tdi2/buffs/ChainReactionBuff;->chance:F

    iput p4, p0, Lcom/prineside/tdi2/buffs/ChainReactionBuff;->rangeInTiles:F

    iput p5, p0, Lcom/prineside/tdi2/buffs/ChainReactionBuff;->durationMultiplier:F

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Buff;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget p1, p0, Lcom/prineside/tdi2/buffs/ChainReactionBuff;->rangeInTiles:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/buffs/ChainReactionBuff;->chance:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/buffs/ChainReactionBuff;->durationMultiplier:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
