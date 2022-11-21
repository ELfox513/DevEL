.class public Lcom/prineside/tdi2/buffs/BurnBuff;
.super Lcom/prineside/tdi2/Buff;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/buffs/BurnBuff$BurnBuffFactory;
    }
.end annotation


# instance fields
.field public fireDamage:F

.field public fromAbility:Lcom/prineside/tdi2/Ability;

.field public tower:Lcom/prineside/tdi2/Tower;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->BURN:Lcom/prineside/tdi2/enums/BuffType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Buff;-><init>(Lcom/prineside/tdi2/enums/BuffType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/buffs/BurnBuff$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/buffs/BurnBuff;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic cpy(F)Lcom/prineside/tdi2/Buff;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/buffs/BurnBuff;->cpy(F)Lcom/prineside/tdi2/buffs/BurnBuff;

    move-result-object p1

    return-object p1
.end method

.method public cpy(F)Lcom/prineside/tdi2/buffs/BurnBuff;
    .locals 7

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BuffManager$Factories;->BURN:Lcom/prineside/tdi2/buffs/BurnBuff$BurnBuffFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/BurnBuff;

    iget v1, p0, Lcom/prineside/tdi2/Buff;->duration:F

    mul-float v1, v1, p1

    iget v4, p0, Lcom/prineside/tdi2/Buff;->maxDuration:F

    cmpl-float p1, v1, v4

    if-lez p1, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/buffs/BurnBuff;->tower:Lcom/prineside/tdi2/Tower;

    iget v5, p0, Lcom/prineside/tdi2/buffs/BurnBuff;->fireDamage:F

    iget-object v6, p0, Lcom/prineside/tdi2/buffs/BurnBuff;->fromAbility:Lcom/prineside/tdi2/Ability;

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/prineside/tdi2/buffs/BurnBuff;->setup(Lcom/prineside/tdi2/Tower;FFFLcom/prineside/tdi2/Ability;)V

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Buff;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Tower;

    iput-object v0, p0, Lcom/prineside/tdi2/buffs/BurnBuff;->tower:Lcom/prineside/tdi2/Tower;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/buffs/BurnBuff;->fireDamage:F

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/Ability;

    iput-object p1, p0, Lcom/prineside/tdi2/buffs/BurnBuff;->fromAbility:Lcom/prineside/tdi2/Ability;

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/buffs/BurnBuff;->tower:Lcom/prineside/tdi2/Tower;

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

.method public setup(Lcom/prineside/tdi2/Tower;FFFLcom/prineside/tdi2/Ability;)V
    .locals 0

    invoke-super {p0, p2, p3}, Lcom/prineside/tdi2/Buff;->setup(FF)V

    iput-object p1, p0, Lcom/prineside/tdi2/buffs/BurnBuff;->tower:Lcom/prineside/tdi2/Tower;

    iput p4, p0, Lcom/prineside/tdi2/buffs/BurnBuff;->fireDamage:F

    iput-object p5, p0, Lcom/prineside/tdi2/buffs/BurnBuff;->fromAbility:Lcom/prineside/tdi2/Ability;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Buff;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/buffs/BurnBuff;->tower:Lcom/prineside/tdi2/Tower;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/buffs/BurnBuff;->fireDamage:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/buffs/BurnBuff;->fromAbility:Lcom/prineside/tdi2/Ability;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
