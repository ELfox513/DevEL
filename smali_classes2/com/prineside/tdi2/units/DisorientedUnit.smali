.class public Lcom/prineside/tdi2/units/DisorientedUnit;
.super Lcom/prineside/tdi2/Unit;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/units/DisorientedUnit$DisorientedUnitFactory;
    }
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/Tower;

.field public b:F

.field public coinsPerTilePassed:F

.field public d:F

.field public k:I

.field public maxSumCoins:I

.field public p:F

.field public q:F

.field public r:F

.field public s:Lcom/prineside/tdi2/enums/EnemyType;

.field public t:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Unit;-><init>(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->k:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/units/DisorientedUnit$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/units/DisorientedUnit;-><init>()V

    return-void
.end method


# virtual methods
.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 11

    iget-object p2, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->t:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-nez p2, :cond_0

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v0, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->s:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prineside/tdi2/Enemy$Factory;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object p2

    iput-object p2, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->t:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :cond_0
    iget-object p2, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->t:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result p2

    int-to-float v7, p2

    sget-object p2, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P100:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->t:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object p2, p0, Lcom/prineside/tdi2/Unit;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v5, v7, v2

    sub-float v2, v0, v5

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v3, p2, v5

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    iget v10, p0, Lcom/prineside/tdi2/Unit;->drawAngle:F

    move-object v0, p1

    move v4, v5

    move v6, v7

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/units/DisorientedUnit;->drawHealth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    return-void
.end method

.method public final drawHealth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 10

    sget-object v0, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v1, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->b:F

    iget v2, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->d:F

    div-float/2addr v1, v2

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v4

    iget-object v2, p0, Lcom/prineside/tdi2/Unit;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v5, 0x41e00000    # 28.0f

    sub-float v5, v3, v5

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v9, 0x42500000    # 52.0f

    add-float v6, v2, v9

    const/high16 v7, 0x42600000    # 56.0f

    const/high16 v8, 0x41000000    # 8.0f

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v4

    iget-object v2, p0, Lcom/prineside/tdi2/Unit;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v5, 0x41d00000    # 26.0f

    sub-float v5, v3, v5

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v3, 0x42580000    # 54.0f

    add-float v6, v2, v3

    mul-float v1, v1, v9

    float-to-int v1, v1

    int-to-float v7, v1

    const/high16 v8, 0x40800000    # 4.0f

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Unit;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Tower;

    iput-object v0, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->a:Lcom/prineside/tdi2/Tower;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->b:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->d:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->coinsPerTilePassed:F

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->maxSumCoins:I

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->k:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->p:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->q:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->r:F

    const-class v0, Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/enums/EnemyType;

    iput-object p1, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->s:Lcom/prineside/tdi2/enums/EnemyType;

    return-void
.end method

.method public setCoinsPerTilePassed(FI)V
    .locals 8

    iput p1, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->coinsPerTilePassed:F

    iput p2, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->maxSumCoins:I

    iget-object v0, p0, Lcom/prineside/tdi2/Unit;->graphPath:Lcom/prineside/tdi2/Path;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Path;->getLengthInTiles()I

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->p:F

    :goto_0
    const v2, 0x3f7ae148    # 0.98f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    iget v4, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->p:F

    float-to-double v4, v4

    int-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, p1

    float-to-int v4, v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    if-le v3, p2, :cond_2

    goto :goto_2

    :cond_2
    iput v1, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->p:F

    const v2, 0x3c23d70a    # 0.01f

    add-float/2addr v1, v2

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public setup(Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/EnemyType;FF)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-lez v1, :cond_1

    cmpg-float v0, p4, v0

    if-lez v0, :cond_0

    iput-object p1, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->a:Lcom/prineside/tdi2/Tower;

    iput-object p2, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->s:Lcom/prineside/tdi2/enums/EnemyType;

    iput p3, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->b:F

    iput p4, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->d:F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "maxHealth is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "health is "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update(F)V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/prineside/tdi2/units/DisorientedUnit;->coinsPerTilePassed:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    iget v1, v0, Lcom/prineside/tdi2/Unit;->passedTiles:F

    float-to-int v1, v1

    iget v5, v0, Lcom/prineside/tdi2/units/DisorientedUnit;->k:I

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq v5, v1, :cond_2

    const/4 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_0
    if-ge v5, v1, :cond_0

    iget v8, v0, Lcom/prineside/tdi2/units/DisorientedUnit;->p:F

    mul-float v7, v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget v5, v0, Lcom/prineside/tdi2/units/DisorientedUnit;->coinsPerTilePassed:F

    mul-float v5, v5, v7

    float-to-int v5, v5

    if-ge v5, v4, :cond_1

    const/4 v5, 0x1

    :cond_1
    int-to-float v5, v5

    div-float v5, v6, v5

    iput v5, v0, Lcom/prineside/tdi2/units/DisorientedUnit;->q:F

    int-to-float v5, v1

    iput v5, v0, Lcom/prineside/tdi2/units/DisorientedUnit;->r:F

    iput v1, v0, Lcom/prineside/tdi2/units/DisorientedUnit;->k:I

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget v5, v0, Lcom/prineside/tdi2/Unit;->passedTiles:F

    iget v7, v0, Lcom/prineside/tdi2/units/DisorientedUnit;->r:F

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_4

    iget-object v5, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v5, v6, v4}, Lcom/prineside/tdi2/systems/GameStateSystem;->addMoney(FZ)I

    iget-object v5, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v7, Lcom/prineside/tdi2/enums/StatisticsType;->CG_U:Lcom/prineside/tdi2/enums/StatisticsType;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v5, v7, v8, v9}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    iget-object v5, v0, Lcom/prineside/tdi2/units/DisorientedUnit;->a:Lcom/prineside/tdi2/Tower;

    if-eqz v5, :cond_3

    iget v7, v5, Lcom/prineside/tdi2/Tower;->bonusCoinsBrought:F

    add-float/2addr v7, v6

    iput v7, v5, Lcom/prineside/tdi2/Tower;->bonusCoinsBrought:F

    :cond_3
    add-int/lit8 v1, v1, 0x1

    iget v5, v0, Lcom/prineside/tdi2/units/DisorientedUnit;->r:F

    iget v7, v0, Lcom/prineside/tdi2/units/DisorientedUnit;->q:F

    add-float/2addr v5, v7

    iput v5, v0, Lcom/prineside/tdi2/units/DisorientedUnit;->r:F

    goto :goto_1

    :cond_4
    if-lez v1, :cond_5

    iget-object v5, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v5, :cond_5

    iget-object v6, v0, Lcom/prineside/tdi2/Unit;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v5, v7, v6, v1}, Lcom/prineside/tdi2/systems/ParticleSystem;->addCoinParticle(FFI)V

    :cond_5
    iget-object v1, v0, Lcom/prineside/tdi2/Unit;->currentTile:Lcom/prineside/tdi2/Tile;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tile;->getNeighbourTilesAndThis()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    const/4 v5, 0x0

    :goto_2
    iget v6, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v6, :cond_f

    iget-object v6, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/Tile;

    aget-object v6, v6, v5

    const/4 v7, 0x0

    :goto_3
    iget-object v8, v6, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v9, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v9, :cond_e

    iget-object v8, v8, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v8, :cond_d

    iget-boolean v9, v8, Lcom/prineside/tdi2/Enemy;->disabled:Z

    if-nez v9, :cond_d

    iget-object v9, v0, Lcom/prineside/tdi2/units/DisorientedUnit;->a:Lcom/prineside/tdi2/Tower;

    if-eqz v9, :cond_6

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/Enemy;->canBeAttackedBy(Lcom/prineside/tdi2/Tower;)Z

    move-result v9

    if-nez v9, :cond_6

    goto/16 :goto_6

    :cond_6
    invoke-virtual {v8}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v9

    iget v10, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v8}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v9

    iget v11, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v8}, Lcom/prineside/tdi2/Enemy;->getSize()F

    move-result v12

    iget-object v9, v0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v13, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v14, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v15, 0x42000000    # 32.0f

    invoke-static/range {v10 .. v15}, Lcom/prineside/tdi2/utils/PMath;->circleIntersectsCircle(FFFFFF)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, v0, Lcom/prineside/tdi2/units/DisorientedUnit;->a:Lcom/prineside/tdi2/Tower;

    if-nez v9, :cond_7

    const/4 v9, 0x0

    goto :goto_4

    :cond_7
    iget-object v9, v9, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    :goto_4
    sget-object v15, Lcom/prineside/tdi2/enums/DamageType;->BULLET:Lcom/prineside/tdi2/enums/DamageType;

    invoke-virtual {v8, v9, v15}, Lcom/prineside/tdi2/Enemy;->getBuffedDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/DamageType;)F

    move-result v9

    cmpg-float v10, v9, v2

    if-gtz v10, :cond_8

    goto/16 :goto_6

    :cond_8
    invoke-virtual {v8}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result v1

    iget v12, v0, Lcom/prineside/tdi2/units/DisorientedUnit;->b:F

    mul-float v2, v12, v9

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_9

    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v9, v1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v11, v0, Lcom/prineside/tdi2/units/DisorientedUnit;->a:Lcom/prineside/tdi2/Tower;

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/16 v16, 0x0

    move-object v10, v8

    move-object v13, v15

    move v15, v1

    invoke-virtual/range {v9 .. v16}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->unit:Lcom/prineside/tdi2/systems/UnitSystem;

    invoke-virtual {v1, v0, v8}, Lcom/prineside/tdi2/systems/UnitSystem;->killUnit(Lcom/prineside/tdi2/Unit;Lcom/prineside/tdi2/Enemy;)V

    goto :goto_7

    :cond_9
    div-float/2addr v1, v9

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v1, v2

    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v9, v2, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v11, v0, Lcom/prineside/tdi2/units/DisorientedUnit;->a:Lcom/prineside/tdi2/Tower;

    const/4 v14, 0x0

    const/4 v2, 0x0

    const/16 v16, 0x0

    move-object v10, v8

    move v12, v1

    move-object v13, v15

    move-object v3, v15

    move v15, v2

    invoke-virtual/range {v9 .. v16}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v8, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->BROOT_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    if-eq v2, v3, :cond_a

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->SNAKE_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    if-eq v2, v3, :cond_a

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    if-eq v2, v3, :cond_a

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->METAPHOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    if-eq v2, v3, :cond_a

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->CONSTRUCTOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v2, v3, :cond_c

    :cond_a
    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->achievement:Lcom/prineside/tdi2/systems/AchievementSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/AchievementType;->KILL_BOSS_WITH_RECRUIT:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v2, v3, v4}, Lcom/prineside/tdi2/systems/AchievementSystem;->registerDelta(Lcom/prineside/tdi2/enums/AchievementType;I)V

    goto :goto_5

    :cond_b
    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v9, v2, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v11, v0, Lcom/prineside/tdi2/units/DisorientedUnit;->a:Lcom/prineside/tdi2/Tower;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v8

    move-object v12, v3

    invoke-virtual/range {v9 .. v14}, Lcom/prineside/tdi2/systems/EnemySystem;->killEnemy(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;Lcom/prineside/tdi2/Projectile;)V

    :cond_c
    :goto_5
    iget v2, v0, Lcom/prineside/tdi2/units/DisorientedUnit;->b:F

    sub-float/2addr v2, v1

    iput v2, v0, Lcom/prineside/tdi2/units/DisorientedUnit;->b:F

    goto :goto_7

    :cond_d
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_f
    :goto_7
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Unit;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->a:Lcom/prineside/tdi2/Tower;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->b:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->d:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->coinsPerTilePassed:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->maxSumCoins:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->k:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->p:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->q:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->r:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/units/DisorientedUnit;->s:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
