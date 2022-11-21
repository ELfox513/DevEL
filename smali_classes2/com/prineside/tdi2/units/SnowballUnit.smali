.class public Lcom/prineside/tdi2/units/SnowballUnit;
.super Lcom/prineside/tdi2/Unit;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/units/SnowballUnit$SnowballUnitFactory;
    }
.end annotation


# instance fields
.field public a:F

.field public b:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Unit;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/units/SnowballUnit$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/units/SnowballUnit;-><init>()V

    return-void
.end method


# virtual methods
.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 11

    iget-object p2, p0, Lcom/prineside/tdi2/units/SnowballUnit;->b:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Unit;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p2, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    :cond_0
    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->unitManager:Lcom/prineside/tdi2/managers/UnitManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UnitManager;->F:Lcom/prineside/tdi2/managers/UnitManager$Factories;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UnitManager$Factories;->SNOWBALL:Lcom/prineside/tdi2/units/SnowballUnit$SnowballUnitFactory;

    iget-object v1, p2, Lcom/prineside/tdi2/units/SnowballUnit$SnowballUnitFactory;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object p2, p0, Lcom/prineside/tdi2/Unit;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v2, 0x42000000    # 32.0f

    sub-float v3, v0, v2

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p2, v2

    const/high16 v4, 0x42000000    # 32.0f

    const/high16 v5, 0x42000000    # 32.0f

    const/high16 v6, 0x42800000    # 64.0f

    const/high16 v7, 0x42800000    # 64.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object v0, p1

    move v2, v3

    move v3, p2

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    return-void
.end method

.method public onSpawned()V
    .locals 3

    invoke-super {p0}, Lcom/prineside/tdi2/Unit;->onSpawned()V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->unitManager:Lcom/prineside/tdi2/managers/UnitManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UnitManager;->F:Lcom/prineside/tdi2/managers/UnitManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UnitManager$Factories;->SNOWBALL:Lcom/prineside/tdi2/units/SnowballUnit$SnowballUnitFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/units/SnowballUnit$SnowballUnitFactory;->d:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iput-object v0, p0, Lcom/prineside/tdi2/units/SnowballUnit;->b:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iget-object v1, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    iget-object v1, p0, Lcom/prineside/tdi2/units/SnowballUnit;->b:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    :cond_0
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Unit;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/units/SnowballUnit;->a:F

    return-void
.end method

.method public setUnregistered()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/units/SnowballUnit;->b:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/units/SnowballUnit;->b:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    :cond_0
    return-void
.end method

.method public setup(F)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/Unit;->drawOverEnemies:Z

    iput p1, p0, Lcom/prineside/tdi2/units/SnowballUnit;->a:F

    return-void
.end method

.method public update(F)V
    .locals 12

    iget-object p1, p0, Lcom/prineside/tdi2/Unit;->currentTile:Lcom/prineside/tdi2/Tile;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getNeighbourTilesAndThis()Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_3

    iget-object v2, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Tile;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    :goto_1
    iget-object v4, v2, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_2

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    iget v5, v4, Lcom/prineside/tdi2/Enemy;->buffSnowballHits:I

    sget v6, Lcom/prineside/tdi2/buffs/processors/SnowballBuffProcessor;->MAX_HITS_ONE_ENEMY:I

    if-ge v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v4}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    iget v7, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v4}, Lcom/prineside/tdi2/Enemy;->getSize()F

    move-result v8

    iget-object v5, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v10, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v11, 0x42000000    # 32.0f

    invoke-static/range {v6 .. v11}, Lcom/prineside/tdi2/utils/PMath;->circleIntersectsCircle(FFFFFF)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/BuffManager$Factories;->SNOWBALL:Lcom/prineside/tdi2/buffs/SnowballBuff$SnowballBuffFactory;

    invoke-virtual {v5}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/buffs/SnowballBuff;

    iget v6, p0, Lcom/prineside/tdi2/units/SnowballUnit;->a:F

    sget-object v7, Lcom/prineside/tdi2/buffs/processors/SnowballBuffProcessor;->STUN_DURATION_BY_STUN_COUNT:[F

    iget v8, v4, Lcom/prineside/tdi2/Enemy;->buffSnowballHits:I

    aget v7, v7, v8

    mul-float v6, v6, v7

    const/high16 v7, 0x41200000    # 10.0f

    mul-float v7, v7, v6

    invoke-virtual {v5, v6, v7}, Lcom/prineside/tdi2/Buff;->setup(FF)V

    iget-object v6, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->buff:Lcom/prineside/tdi2/systems/BuffSystem;

    iget-object v6, v6, Lcom/prineside/tdi2/systems/BuffSystem;->P_SNOWBALL:Lcom/prineside/tdi2/buffs/processors/SnowballBuffProcessor;

    invoke-virtual {v6, v4, v5}, Lcom/prineside/tdi2/buffs/processors/SnowballBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/SnowballBuff;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->unit:Lcom/prineside/tdi2/systems/UnitSystem;

    invoke-virtual {p1, p0, v4}, Lcom/prineside/tdi2/systems/UnitSystem;->killUnit(Lcom/prineside/tdi2/Unit;Lcom/prineside/tdi2/Enemy;)V

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tile xy: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v1, 0x43000000    # 128.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SnowballUnit"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tile is null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Unit;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget p1, p0, Lcom/prineside/tdi2/units/SnowballUnit;->a:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
