.class public Lcom/prineside/tdi2/buffs/StunBuff;
.super Lcom/prineside/tdi2/Buff;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/buffs/StunBuff$StunBuffFactory;
    }
.end annotation


# instance fields
.field public copyDisabled:Z

.field public issuerId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->STUN:Lcom/prineside/tdi2/enums/BuffType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Buff;-><init>(Lcom/prineside/tdi2/enums/BuffType;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic cpy(F)Lcom/prineside/tdi2/Buff;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/buffs/StunBuff;->cpy(F)Lcom/prineside/tdi2/buffs/StunBuff;

    move-result-object p1

    return-object p1
.end method

.method public cpy(F)Lcom/prineside/tdi2/buffs/StunBuff;
    .locals 3

    iget-boolean v0, p0, Lcom/prineside/tdi2/buffs/StunBuff;->copyDisabled:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BuffManager$Factories;->STUN:Lcom/prineside/tdi2/buffs/StunBuff$StunBuffFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/StunBuff;

    iget v1, p0, Lcom/prineside/tdi2/Buff;->duration:F

    mul-float v1, v1, p1

    iget p1, p0, Lcom/prineside/tdi2/Buff;->maxDuration:F

    cmpl-float v2, v1, p1

    if-lez v2, :cond_1

    move v1, p1

    :cond_1
    iget v2, p0, Lcom/prineside/tdi2/buffs/StunBuff;->issuerId:I

    invoke-virtual {v0, v1, p1, v2}, Lcom/prineside/tdi2/buffs/StunBuff;->setup(FFI)V

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Buff;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/buffs/StunBuff;->issuerId:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/buffs/StunBuff;->copyDisabled:Z

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

.method public setup(FFI)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Buff;->setup(FF)V

    iput p3, p0, Lcom/prineside/tdi2/buffs/StunBuff;->issuerId:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prineside/tdi2/buffs/StunBuff;->copyDisabled:Z

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Buff;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget p1, p0, Lcom/prineside/tdi2/buffs/StunBuff;->issuerId:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-boolean p1, p0, Lcom/prineside/tdi2/buffs/StunBuff;->copyDisabled:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    return-void
.end method
