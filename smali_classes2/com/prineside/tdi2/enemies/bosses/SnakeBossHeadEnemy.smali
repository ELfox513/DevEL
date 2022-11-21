.class public Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy;
.super Lcom/prineside/tdi2/Enemy;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy$SnakeBossHeadEnemyFactory;
    }
.end annotation


# static fields
.field public static final v:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public damageResistance:F

.field public defaultMaxSpeed:F

.field public defaultMinSpeed:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy;->v:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->SNAKE_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Enemy;-><init>(Lcom/prineside/tdi2/enums/EnemyType;)V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy;->defaultMinSpeed:F

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy;->defaultMaxSpeed:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy;->damageResistance:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy;-><init>()V

    return-void
.end method

.method public static calculateSwingRotation(F)F
    .locals 1

    const/high16 v0, 0x40400000    # 3.0f

    mul-float p0, p0, v0

    invoke-static {p0}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result p0

    const/high16 v0, 0x41700000    # 15.0f

    mul-float p0, p0, v0

    return p0
.end method

.method public static transformPositionToSwing(FFLcom/badlogic/gdx/math/Vector2;)V
    .locals 3

    const/high16 v0, 0x40400000    # 3.0f

    mul-float p0, p0, v0

    const/high16 v0, 0x42340000    # 45.0f

    sub-float/2addr p0, v0

    invoke-static {p0}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result p0

    sget-object v0, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy;->v:Lcom/badlogic/gdx/math/Vector2;

    const v1, 0x414ccccd    # 12.8f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector2;->rotate(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    neg-float p0, p0

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method


# virtual methods
.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->angle:F

    iget v1, p0, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    invoke-static {v1}, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy;->calculateSwingRotation(F)F

    move-result v1

    add-float/2addr v1, v0

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->angle:F

    iput v1, p0, Lcom/prineside/tdi2/Enemy;->drawAngle:F

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    iput v0, p0, Lcom/prineside/tdi2/Enemy;->angle:F

    return-void
.end method

.method public drawHealth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Enemy;->drawHealth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    iget v0, p0, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy;->damageResistance:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Enemy;->HEALTH_BAR_BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v3, 0x41e00000    # 28.0f

    sub-float v3, v1, v3

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v1, 0x42680000    # 58.0f

    add-float v4, v0, v1

    const/high16 v5, 0x42600000    # 56.0f

    const/high16 v6, 0x41000000    # 8.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v3, 0x41d00000    # 26.0f

    sub-float v3, v1, v3

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v1, 0x42700000    # 60.0f

    add-float v4, v0, v1

    const/high16 v0, 0x42500000    # 52.0f

    iget v1, p0, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy;->damageResistance:F

    mul-float v1, v1, v0

    float-to-int v0, v1

    int-to-float v5, v0

    const/high16 v6, 0x40800000    # 4.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_0
    return-void
.end method

.method public dynamicPathfindingAllowed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAbilityVulnerability(Lcom/prineside/tdi2/enums/AbilityType;)F
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/AbilityType;->BALL_LIGHTNING:Lcom/prineside/tdi2/enums/AbilityType;

    if-ne p1, v0, :cond_0

    const p1, 0x3dcccccd    # 0.1f

    return p1

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/enums/AbilityType;->LOIC:Lcom/prineside/tdi2/enums/AbilityType;

    if-ne p1, v0, :cond_1

    const/high16 p1, 0x40800000    # 4.0f

    return p1

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public getBaseDamage()F
    .locals 1

    const/high16 v0, 0x41700000    # 15.0f

    return v0
.end method

.method public getBuffedDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/DamageType;)F
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->getBuffedDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/DamageType;)F

    move-result p1

    iget p2, p0, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy;->damageResistance:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float p1, p1, v0

    return p1
.end method

.method public hasDrawPriority()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPositionSetToPath()V
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    iget v1, p0, Lcom/prineside/tdi2/Enemy;->angle:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy;->transformPositionToSwing(FFLcom/badlogic/gdx/math/Vector2;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Enemy;->setPosition(Lcom/badlogic/gdx/math/Vector2;)V

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy;->defaultMinSpeed:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy;->defaultMaxSpeed:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy;->damageResistance:F

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/Enemy;->reset()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy;->defaultMinSpeed:F

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy;->defaultMaxSpeed:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy;->damageResistance:F

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget p1, p0, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy;->defaultMinSpeed:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy;->defaultMaxSpeed:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy;->damageResistance:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
