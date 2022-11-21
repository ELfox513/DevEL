.class public Lcom/prineside/tdi2/buffs/ThrowBackBuff;
.super Lcom/prineside/tdi2/Buff;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/buffs/ThrowBackBuff$BlastThrowBackBuffFactory;
    }
.end annotation


# instance fields
.field public damageMultiplier:F

.field public force:F

.field public ownerId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->THROW_BACK:Lcom/prineside/tdi2/enums/BuffType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Buff;-><init>(Lcom/prineside/tdi2/enums/BuffType;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic cpy(F)Lcom/prineside/tdi2/Buff;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/buffs/ThrowBackBuff;->cpy(F)Lcom/prineside/tdi2/buffs/ThrowBackBuff;

    move-result-object p1

    return-object p1
.end method

.method public cpy(F)Lcom/prineside/tdi2/buffs/ThrowBackBuff;
    .locals 7

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BuffManager$Factories;->THROW_BACK:Lcom/prineside/tdi2/buffs/ThrowBackBuff$BlastThrowBackBuffFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/ThrowBackBuff;

    iget v1, p0, Lcom/prineside/tdi2/Buff;->duration:F

    mul-float v1, v1, p1

    iget v5, p0, Lcom/prineside/tdi2/Buff;->maxDuration:F

    cmpl-float p1, v1, v5

    if-lez p1, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    iget v2, p0, Lcom/prineside/tdi2/buffs/ThrowBackBuff;->ownerId:I

    iget v3, p0, Lcom/prineside/tdi2/buffs/ThrowBackBuff;->force:F

    iget v6, p0, Lcom/prineside/tdi2/buffs/ThrowBackBuff;->damageMultiplier:F

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/prineside/tdi2/buffs/ThrowBackBuff;->setup(IFFFF)V

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Buff;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/buffs/ThrowBackBuff;->ownerId:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/buffs/ThrowBackBuff;->force:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/buffs/ThrowBackBuff;->damageMultiplier:F

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/buffs/ThrowBackBuff;->ownerId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/buffs/ThrowBackBuff;->force:F

    iput v0, p0, Lcom/prineside/tdi2/buffs/ThrowBackBuff;->damageMultiplier:F

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

.method public setup(IFFFF)V
    .locals 0

    invoke-super {p0, p3, p4}, Lcom/prineside/tdi2/Buff;->setup(FF)V

    iput p1, p0, Lcom/prineside/tdi2/buffs/ThrowBackBuff;->ownerId:I

    iput p2, p0, Lcom/prineside/tdi2/buffs/ThrowBackBuff;->force:F

    iput p5, p0, Lcom/prineside/tdi2/buffs/ThrowBackBuff;->damageMultiplier:F

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Buff;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget p1, p0, Lcom/prineside/tdi2/buffs/ThrowBackBuff;->ownerId:I

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget p1, p0, Lcom/prineside/tdi2/buffs/ThrowBackBuff;->force:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/buffs/ThrowBackBuff;->damageMultiplier:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
