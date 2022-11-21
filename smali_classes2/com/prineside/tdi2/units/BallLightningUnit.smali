.class public Lcom/prineside/tdi2/units/BallLightningUnit;
.super Lcom/prineside/tdi2/Unit;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/units/BallLightningUnit$BallLightningUnitFactory;
    }
.end annotation


# instance fields
.field public a:F

.field public b:Lcom/prineside/tdi2/Tower;

.field public d:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Unit;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/units/BallLightningUnit$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/units/BallLightningUnit;-><init>()V

    return-void
.end method


# virtual methods
.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 11

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->unitManager:Lcom/prineside/tdi2/managers/UnitManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UnitManager;->F:Lcom/prineside/tdi2/managers/UnitManager$Factories;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UnitManager$Factories;->BALL_LIGHTNING:Lcom/prineside/tdi2/units/BallLightningUnit$BallLightningUnitFactory;

    iget-object p2, p2, Lcom/prineside/tdi2/units/BallLightningUnit$BallLightningUnitFactory;->b:Lcom/badlogic/gdx/graphics/g2d/Animation;

    iget v0, p0, Lcom/prineside/tdi2/units/BallLightningUnit;->a:F

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Animation;->getKeyFrame(FZ)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

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

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Unit;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/units/BallLightningUnit;->a:F

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/Tower;

    iput-object p1, p0, Lcom/prineside/tdi2/units/BallLightningUnit;->b:Lcom/prineside/tdi2/Tower;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/units/BallLightningUnit;->d:F

    return-void
.end method

.method public setup(Lcom/prineside/tdi2/Tower;F)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/Unit;->drawOverEnemies:Z

    iput-object p1, p0, Lcom/prineside/tdi2/units/BallLightningUnit;->b:Lcom/prineside/tdi2/Tower;

    iput p2, p0, Lcom/prineside/tdi2/units/BallLightningUnit;->d:F

    return-void
.end method

.method public update(F)V
    .locals 13

    iget v0, p0, Lcom/prineside/tdi2/units/BallLightningUnit;->a:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/units/BallLightningUnit;->a:F

    iget-object p1, p0, Lcom/prineside/tdi2/Unit;->currentTile:Lcom/prineside/tdi2/Tile;

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

    if-eqz v4, :cond_1

    sget-object v5, Lcom/prineside/tdi2/enums/DamageType;->ELECTRICITY:Lcom/prineside/tdi2/enums/DamageType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/Enemy;->isVulnerableTo(Lcom/prineside/tdi2/enums/DamageType;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
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

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    sget-object v0, Lcom/prineside/tdi2/enums/ProjectileType;->CHAIN_LIGHTNING:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/ProjectileManager;->getFactory(Lcom/prineside/tdi2/enums/ProjectileType;)Lcom/prineside/tdi2/Projectile$Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Projectile$Factory;->obtain()Lcom/prineside/tdi2/Projectile;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->projectile:Lcom/prineside/tdi2/systems/ProjectileSystem;

    invoke-virtual {p1, v5}, Lcom/prineside/tdi2/systems/ProjectileSystem;->register(Lcom/prineside/tdi2/Projectile;)V

    iget-object v6, p0, Lcom/prineside/tdi2/units/BallLightningUnit;->b:Lcom/prineside/tdi2/Tower;

    iget v8, p0, Lcom/prineside/tdi2/units/BallLightningUnit;->d:F

    const p1, 0x3dcccccd    # 0.1f

    mul-float v9, v8, p1

    const v10, 0x3f666666    # 0.9f

    const/high16 v11, 0x41800000    # 16.0f

    iget-object v12, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    move-object v7, v4

    invoke-virtual/range {v5 .. v12}, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->setup(Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/Enemy;FFFFLcom/badlogic/gdx/math/Vector2;)V

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
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Unit;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget v0, p0, Lcom/prineside/tdi2/units/BallLightningUnit;->a:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/units/BallLightningUnit;->b:Lcom/prineside/tdi2/Tower;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget p1, p0, Lcom/prineside/tdi2/units/BallLightningUnit;->d:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
