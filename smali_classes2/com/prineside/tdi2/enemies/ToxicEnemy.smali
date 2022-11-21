.class public Lcom/prineside/tdi2/enemies/ToxicEnemy;
.super Lcom/prineside/tdi2/Enemy;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/enemies/ToxicEnemy$ToxicEnemyFactory;
    }
.end annotation


# instance fields
.field public v:F

.field public w:F


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->TOXIC:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Enemy;-><init>(Lcom/prineside/tdi2/enums/EnemyType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/enemies/ToxicEnemy$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/enemies/ToxicEnemy;-><init>()V

    return-void
.end method


# virtual methods
.method public giveDamage(Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;)F
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/enemies/ToxicEnemy;->v:F

    const v0, 0x460ca400    # 9001.0f

    iput v0, p0, Lcom/prineside/tdi2/enemies/ToxicEnemy;->w:F

    invoke-super {p0, p1, p2, p3}, Lcom/prineside/tdi2/Enemy;->giveDamage(Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;)F

    move-result p1

    return p1
.end method

.method public hasDrawPriority()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/enemies/ToxicEnemy;->v:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/enemies/ToxicEnemy;->w:F

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/Enemy;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/enemies/ToxicEnemy;->v:F

    iput v0, p0, Lcom/prineside/tdi2/enemies/ToxicEnemy;->w:F

    return-void
.end method

.method public update(F)V
    .locals 4

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Enemy;->update(F)V

    iget v0, p0, Lcom/prineside/tdi2/enemies/ToxicEnemy;->v:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/enemies/ToxicEnemy;->v:F

    iget v1, p0, Lcom/prineside/tdi2/enemies/ToxicEnemy;->w:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/prineside/tdi2/enemies/ToxicEnemy;->w:F

    const/high16 p1, 0x40400000    # 3.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result p1

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/prineside/tdi2/enemies/ToxicEnemy;->w:F

    const/high16 v0, 0x3e800000    # 0.25f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/BuffManager$Factories;->REGENERATION:Lcom/prineside/tdi2/buffs/RegenerationBuff$RegenerationBuffFactory;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/buffs/RegenerationBuff;

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x40a00000    # 5.0f

    iget v2, p0, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    const v3, 0x3d4ccccd    # 0.05f

    mul-float v2, v2, v3

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v3, p0}, Lcom/prineside/tdi2/systems/EnemySystem;->getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/prineside/tdi2/buffs/RegenerationBuff;->setup(FFFLcom/prineside/tdi2/Enemy$EnemyReference;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->buff:Lcom/prineside/tdi2/systems/BuffSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/BuffSystem;->P_REGENERATION:Lcom/prineside/tdi2/buffs/processors/RegenerationBuffProcessor;

    invoke-virtual {v0, p0, p1}, Lcom/prineside/tdi2/buffs/processors/RegenerationBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/RegenerationBuff;)Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/enemies/ToxicEnemy;->w:F

    :cond_0
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget p1, p0, Lcom/prineside/tdi2/enemies/ToxicEnemy;->v:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/enemies/ToxicEnemy;->w:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
