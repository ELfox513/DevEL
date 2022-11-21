.class public Lcom/prineside/tdi2/buffs/DeathExplosionBuff;
.super Lcom/prineside/tdi2/Buff;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/buffs/DeathExplosionBuff$ExplosionChargeBuffFactory;
    }
.end annotation


# instance fields
.field public explosion:Lcom/prineside/tdi2/Explosion;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->DEATH_EXPLOSION:Lcom/prineside/tdi2/enums/BuffType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Buff;-><init>(Lcom/prineside/tdi2/enums/BuffType;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic cpy(F)Lcom/prineside/tdi2/Buff;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/buffs/DeathExplosionBuff;->cpy(F)Lcom/prineside/tdi2/buffs/DeathExplosionBuff;

    move-result-object p1

    return-object p1
.end method

.method public cpy(F)Lcom/prineside/tdi2/buffs/DeathExplosionBuff;
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/buffs/DeathExplosionBuff;->explosion:Lcom/prineside/tdi2/Explosion;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/prineside/tdi2/Explosion;->cpy()Lcom/prineside/tdi2/Explosion;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/BuffManager$Factories;->DEATH_EXPLOSION:Lcom/prineside/tdi2/buffs/DeathExplosionBuff$ExplosionChargeBuffFactory;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/buffs/DeathExplosionBuff;

    iget v2, p0, Lcom/prineside/tdi2/Buff;->duration:F

    mul-float v2, v2, p1

    iget p1, p0, Lcom/prineside/tdi2/Buff;->maxDuration:F

    cmpl-float v3, v2, p1

    if-lez v3, :cond_2

    move v2, p1

    :cond_2
    invoke-virtual {v1, v2, p1, v0}, Lcom/prineside/tdi2/buffs/DeathExplosionBuff;->setup(FFLcom/prineside/tdi2/Explosion;)V

    return-object v1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Buff;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/Explosion;

    iput-object p1, p0, Lcom/prineside/tdi2/buffs/DeathExplosionBuff;->explosion:Lcom/prineside/tdi2/Explosion;

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/buffs/DeathExplosionBuff;->explosion:Lcom/prineside/tdi2/Explosion;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->explosionManager:Lcom/prineside/tdi2/managers/ExplosionManager;

    iget-object v0, v0, Lcom/prineside/tdi2/Explosion;->type:Lcom/prineside/tdi2/enums/ExplosionType;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/ExplosionManager;->getFactory(Lcom/prineside/tdi2/enums/ExplosionType;)Lcom/prineside/tdi2/Explosion$Factory;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/buffs/DeathExplosionBuff;->explosion:Lcom/prineside/tdi2/Explosion;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Explosion$Factory;->free(Lcom/prineside/tdi2/Explosion;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/buffs/DeathExplosionBuff;->explosion:Lcom/prineside/tdi2/Explosion;

    :cond_0
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

.method public setup(FFLcom/prineside/tdi2/Explosion;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Buff;->setup(FF)V

    iput-object p3, p0, Lcom/prineside/tdi2/buffs/DeathExplosionBuff;->explosion:Lcom/prineside/tdi2/Explosion;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Buff;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/buffs/DeathExplosionBuff;->explosion:Lcom/prineside/tdi2/Explosion;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
