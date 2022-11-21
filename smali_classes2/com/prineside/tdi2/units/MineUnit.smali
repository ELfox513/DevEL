.class public Lcom/prineside/tdi2/units/MineUnit;
.super Lcom/prineside/tdi2/Unit;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/units/MineUnit$MineUnitFactory;
    }
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/graphics/Color;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public existsTime:F

.field public explosion:Lcom/prineside/tdi2/Explosion;

.field public owner:Lcom/prineside/tdi2/Tower;

.field public rotation:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public startPos:Lcom/badlogic/gdx/math/Vector2;

.field public targetPos:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Unit;-><init>(I)V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/units/MineUnit;->startPos:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/units/MineUnit;->targetPos:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/units/MineUnit;->a:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/units/MineUnit$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/units/MineUnit;-><init>()V

    return-void
.end method


# virtual methods
.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 13

    iget p2, p0, Lcom/prineside/tdi2/units/MineUnit;->existsTime:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p2, p2, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v11, p2

    :goto_0
    iget-object p2, p0, Lcom/prineside/tdi2/units/MineUnit;->a:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->unitManager:Lcom/prineside/tdi2/managers/UnitManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UnitManager;->F:Lcom/prineside/tdi2/managers/UnitManager$Factories;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UnitManager$Factories;->MINE:Lcom/prineside/tdi2/units/MineUnit$MineUnitFactory;

    invoke-static {p2}, Lcom/prineside/tdi2/units/MineUnit$MineUnitFactory;->a(Lcom/prineside/tdi2/units/MineUnit$MineUnitFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    iget-object p2, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v1, 0x41c00000    # 24.0f

    sub-float v4, v0, v1

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v5, p2, v1

    const/high16 v6, 0x41c00000    # 24.0f

    const/high16 v7, 0x41c00000    # 24.0f

    const/high16 v8, 0x42400000    # 48.0f

    const/high16 v9, 0x42400000    # 48.0f

    iget v12, p0, Lcom/prineside/tdi2/units/MineUnit;->rotation:F

    move-object v2, p1

    move v10, v11

    invoke-virtual/range {v2 .. v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public final explode()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/units/MineUnit;->explosion:Lcom/prineside/tdi2/Explosion;

    iget-object v0, v0, Lcom/prineside/tdi2/Explosion;->position:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->explosion:Lcom/prineside/tdi2/systems/ExplosionSystem;

    iget-object v1, p0, Lcom/prineside/tdi2/units/MineUnit;->explosion:Lcom/prineside/tdi2/Explosion;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/ExplosionSystem;->register(Lcom/prineside/tdi2/Explosion;)V

    iget-object v0, p0, Lcom/prineside/tdi2/units/MineUnit;->explosion:Lcom/prineside/tdi2/Explosion;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Explosion;->explode()V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->unit:Lcom/prineside/tdi2/systems/UnitSystem;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/prineside/tdi2/systems/UnitSystem;->killUnit(Lcom/prineside/tdi2/Unit;Lcom/prineside/tdi2/Enemy;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is unregistered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Unit;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Tower;

    iput-object v0, p0, Lcom/prineside/tdi2/units/MineUnit;->owner:Lcom/prineside/tdi2/Tower;

    const-class v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Lcom/prineside/tdi2/units/MineUnit;->startPos:Lcom/badlogic/gdx/math/Vector2;

    const-class v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Lcom/prineside/tdi2/units/MineUnit;->targetPos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/units/MineUnit;->rotation:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/units/MineUnit;->existsTime:F

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Explosion;

    iput-object v0, p0, Lcom/prineside/tdi2/units/MineUnit;->explosion:Lcom/prineside/tdi2/Explosion;

    const-class v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/Color;

    iput-object p1, p0, Lcom/prineside/tdi2/units/MineUnit;->a:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public setup(Lcom/prineside/tdi2/Tower;FFFFLcom/prineside/tdi2/Explosion;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/Unit;->staticPosition:Z

    iput-object p1, p0, Lcom/prineside/tdi2/units/MineUnit;->owner:Lcom/prineside/tdi2/Tower;

    iget-object p1, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/prineside/tdi2/units/MineUnit;->startPos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/prineside/tdi2/units/MineUnit;->targetPos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p4, p5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iput-object p6, p0, Lcom/prineside/tdi2/units/MineUnit;->explosion:Lcom/prineside/tdi2/Explosion;

    iget-object p1, p0, Lcom/prineside/tdi2/units/MineUnit;->a:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p7}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result p1

    const/high16 p2, 0x41a00000    # 20.0f

    mul-float p1, p1, p2

    const/high16 p2, -0x3e600000    # -20.0f

    add-float/2addr p1, p2

    iput p1, p0, Lcom/prineside/tdi2/units/MineUnit;->rotation:F

    return-void
.end method

.method public update(F)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/units/MineUnit;->owner:Lcom/prineside/tdi2/Tower;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/units/MineUnit;->explode()V

    return-void

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/units/MineUnit;->existsTime:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/units/MineUnit;->existsTime:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, p1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/prineside/tdi2/units/MineUnit;->startPos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/prineside/tdi2/units/MineUnit;->targetPos:Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lcom/badlogic/gdx/math/Interpolation;->pow5Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    iget v3, p0, Lcom/prineside/tdi2/units/MineUnit;->existsTime:F

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Interpolation$PowOut;->apply(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->lerp(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/prineside/tdi2/units/MineUnit;->targetPos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/Map;->getTileByMapPos(FF)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    iget v1, p0, Lcom/prineside/tdi2/units/MineUnit;->existsTime:F

    cmpl-float p1, v1, p1

    if-lez p1, :cond_6

    if-eqz v0, :cond_5

    iget-object p1, v0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v1, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne p1, v1, :cond_2

    move-object p1, v0

    check-cast p1, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object p1, p1, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz p1, :cond_2

    goto :goto_3

    :cond_2
    iget-object p1, v0, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 p1, 0x0

    :goto_1
    iget-object v1, v0, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, v2, :cond_4

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy;->isAir()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v1

    const/high16 v2, 0x44800000    # 1024.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    invoke-virtual {p0}, Lcom/prineside/tdi2/units/MineUnit;->explode()V

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object p1, v0, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/prineside/tdi2/units/MineUnit;->explode()V

    :cond_6
    :goto_4
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Unit;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/units/MineUnit;->owner:Lcom/prineside/tdi2/Tower;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/units/MineUnit;->startPos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/units/MineUnit;->targetPos:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/units/MineUnit;->rotation:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/units/MineUnit;->existsTime:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/units/MineUnit;->explosion:Lcom/prineside/tdi2/Explosion;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/units/MineUnit;->a:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
