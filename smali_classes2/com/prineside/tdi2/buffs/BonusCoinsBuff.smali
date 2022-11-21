.class public Lcom/prineside/tdi2/buffs/BonusCoinsBuff;
.super Lcom/prineside/tdi2/Buff;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/buffs/BonusCoinsBuff$BonusCoinsBuffFactory;
    }
.end annotation


# instance fields
.field public bonusCoinsMultiplier:F

.field public issuer:Lcom/prineside/tdi2/Tower;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->BONUS_COINS:Lcom/prineside/tdi2/enums/BuffType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Buff;-><init>(Lcom/prineside/tdi2/enums/BuffType;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic cpy(F)Lcom/prineside/tdi2/Buff;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/buffs/BonusCoinsBuff;->cpy(F)Lcom/prineside/tdi2/buffs/BonusCoinsBuff;

    move-result-object p1

    return-object p1
.end method

.method public cpy(F)Lcom/prineside/tdi2/buffs/BonusCoinsBuff;
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BuffManager$Factories;->BONUS_COINS:Lcom/prineside/tdi2/buffs/BonusCoinsBuff$BonusCoinsBuffFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/BonusCoinsBuff;

    iget v1, p0, Lcom/prineside/tdi2/Buff;->duration:F

    mul-float v1, v1, p1

    iget p1, p0, Lcom/prineside/tdi2/Buff;->maxDuration:F

    cmpl-float v2, v1, p1

    if-lez v2, :cond_0

    move v1, p1

    :cond_0
    iget v2, p0, Lcom/prineside/tdi2/buffs/BonusCoinsBuff;->bonusCoinsMultiplier:F

    iget-object v3, p0, Lcom/prineside/tdi2/buffs/BonusCoinsBuff;->issuer:Lcom/prineside/tdi2/Tower;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/prineside/tdi2/buffs/BonusCoinsBuff;->setup(FFFLcom/prineside/tdi2/Tower;)V

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Buff;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/buffs/BonusCoinsBuff;->bonusCoinsMultiplier:F

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/Tower;

    iput-object p1, p0, Lcom/prineside/tdi2/buffs/BonusCoinsBuff;->issuer:Lcom/prineside/tdi2/Tower;

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/buffs/BonusCoinsBuff;->issuer:Lcom/prineside/tdi2/Tower;

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

.method public setup(FFFLcom/prineside/tdi2/Tower;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Buff;->setup(FF)V

    iput p3, p0, Lcom/prineside/tdi2/buffs/BonusCoinsBuff;->bonusCoinsMultiplier:F

    iput-object p4, p0, Lcom/prineside/tdi2/buffs/BonusCoinsBuff;->issuer:Lcom/prineside/tdi2/Tower;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Buff;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget v0, p0, Lcom/prineside/tdi2/buffs/BonusCoinsBuff;->bonusCoinsMultiplier:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/buffs/BonusCoinsBuff;->issuer:Lcom/prineside/tdi2/Tower;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
