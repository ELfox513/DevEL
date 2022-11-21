.class public Lcom/prineside/tdi2/buffs/RegenerationBuff;
.super Lcom/prineside/tdi2/Buff;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/buffs/RegenerationBuff$RegenerationBuffFactory;
    }
.end annotation


# instance fields
.field public hpPerSecond:F

.field public issuer:Lcom/prineside/tdi2/Enemy$EnemyReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->REGENERATION:Lcom/prineside/tdi2/enums/BuffType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Buff;-><init>(Lcom/prineside/tdi2/enums/BuffType;)V

    sget-object v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v0, p0, Lcom/prineside/tdi2/buffs/RegenerationBuff;->issuer:Lcom/prineside/tdi2/Enemy$EnemyReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/buffs/RegenerationBuff$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/buffs/RegenerationBuff;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic cpy(F)Lcom/prineside/tdi2/Buff;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/buffs/RegenerationBuff;->cpy(F)Lcom/prineside/tdi2/buffs/RegenerationBuff;

    move-result-object p1

    return-object p1
.end method

.method public cpy(F)Lcom/prineside/tdi2/buffs/RegenerationBuff;
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BuffManager$Factories;->REGENERATION:Lcom/prineside/tdi2/buffs/RegenerationBuff$RegenerationBuffFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/RegenerationBuff;

    iget v1, p0, Lcom/prineside/tdi2/Buff;->duration:F

    mul-float v1, v1, p1

    iget p1, p0, Lcom/prineside/tdi2/Buff;->maxDuration:F

    cmpl-float v2, v1, p1

    if-lez v2, :cond_0

    move v1, p1

    :cond_0
    iget v2, p0, Lcom/prineside/tdi2/buffs/RegenerationBuff;->hpPerSecond:F

    iget-object v3, p0, Lcom/prineside/tdi2/buffs/RegenerationBuff;->issuer:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/prineside/tdi2/buffs/RegenerationBuff;->setup(FFFLcom/prineside/tdi2/Enemy$EnemyReference;)V

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Buff;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object p1, p0, Lcom/prineside/tdi2/buffs/RegenerationBuff;->issuer:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/buffs/RegenerationBuff;->hpPerSecond:F

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

.method public setup(FFFLcom/prineside/tdi2/Enemy$EnemyReference;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Buff;->setup(FF)V

    iput p3, p0, Lcom/prineside/tdi2/buffs/RegenerationBuff;->hpPerSecond:F

    iput-object p4, p0, Lcom/prineside/tdi2/buffs/RegenerationBuff;->issuer:Lcom/prineside/tdi2/Enemy$EnemyReference;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Buff;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/buffs/RegenerationBuff;->issuer:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget p1, p0, Lcom/prineside/tdi2/buffs/RegenerationBuff;->hpPerSecond:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
