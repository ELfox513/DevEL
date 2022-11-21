.class public Lcom/prineside/tdi2/enemies/IcyEnemy;
.super Lcom/prineside/tdi2/Enemy;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/enemies/IcyEnemy$IcyEnemyFactory;
    }
.end annotation


# instance fields
.field public shieldHealth:F

.field public shieldMaxHealth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->ICY:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Enemy;-><init>(Lcom/prineside/tdi2/enums/EnemyType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/enemies/IcyEnemy$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/enemies/IcyEnemy;-><init>()V

    return-void
.end method


# virtual methods
.method public drawHealth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Enemy;->drawHealth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    iget v0, p0, Lcom/prineside/tdi2/enemies/IcyEnemy;->shieldHealth:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/prineside/tdi2/enemies/IcyEnemy;->shieldMaxHealth:F

    div-float/2addr v0, v1

    sget-object v1, Lcom/prineside/tdi2/Enemy;->HEALTH_BAR_BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v3

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v4, 0x41e00000    # 28.0f

    sub-float v4, v2, v4

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v2, 0x42680000    # 58.0f

    add-float v5, v1, v2

    const/high16 v6, 0x42600000    # 56.0f

    const/high16 v7, 0x41000000    # 8.0f

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v3

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v4, 0x41d00000    # 26.0f

    sub-float v4, v2, v4

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v2, 0x42700000    # 60.0f

    add-float v5, v1, v2

    const/high16 v1, 0x42500000    # 52.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-float v6, v0

    const/high16 v7, 0x40800000    # 4.0f

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_0
    return-void
.end method

.method public getBaseDamage()F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public getBuffVulnerability(Lcom/prineside/tdi2/enums/BuffType;)F
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->STUN:Lcom/prineside/tdi2/enums/BuffType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->SNOWBALL:Lcom/prineside/tdi2/enums/BuffType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->BLIZZARD:Lcom/prineside/tdi2/enums/BuffType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->FREEZING:Lcom/prineside/tdi2/enums/BuffType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/prineside/tdi2/Enemy;->getBuffVulnerability(Lcom/prineside/tdi2/enums/BuffType;)F

    move-result p1

    return p1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/prineside/tdi2/enemies/IcyEnemy;->shieldHealth:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Enemy;->getBuffVulnerability(Lcom/prineside/tdi2/enums/BuffType;)F

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public giveDamage(Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;)F
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/prineside/tdi2/Enemy;->giveDamage(Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;)F

    move-result p1

    iget p2, p0, Lcom/prineside/tdi2/enemies/IcyEnemy;->shieldHealth:F

    sget-object v0, Lcom/prineside/tdi2/enums/DamageType;->BULLET:Lcom/prineside/tdi2/enums/DamageType;

    if-eq p3, v0, :cond_0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, p1

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float v2, v2, p2

    goto :goto_0

    :cond_0
    move v1, p1

    move v2, p2

    :goto_0
    sub-float/2addr p2, v1

    iput p2, p0, Lcom/prineside/tdi2/enemies/IcyEnemy;->shieldHealth:F

    const/4 v1, 0x0

    cmpg-float v3, p2, v1

    if-gez v3, :cond_1

    neg-float p2, p2

    sub-float/2addr v2, p2

    iput v1, p0, Lcom/prineside/tdi2/enemies/IcyEnemy;->shieldHealth:F

    :cond_1
    if-ne p3, v0, :cond_2

    cmpl-float p2, v2, v1

    if-eqz p2, :cond_2

    invoke-static {p1, v2}, Ljava/lang/StrictMath;->min(FF)F

    move-result p2

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result p3

    add-float/2addr p3, p2

    invoke-virtual {p0, p3}, Lcom/prineside/tdi2/Enemy;->setHealth(F)V

    sub-float/2addr p1, p2

    :cond_2
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

    iput p1, p0, Lcom/prineside/tdi2/enemies/IcyEnemy;->shieldHealth:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/enemies/IcyEnemy;->shieldMaxHealth:F

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/Enemy;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/enemies/IcyEnemy;->shieldHealth:F

    iput v0, p0, Lcom/prineside/tdi2/enemies/IcyEnemy;->shieldMaxHealth:F

    return-void
.end method

.method public setMaxHealth(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Enemy;->setMaxHealth(F)V

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float p1, p1, v0

    iput p1, p0, Lcom/prineside/tdi2/enemies/IcyEnemy;->shieldHealth:F

    iput p1, p0, Lcom/prineside/tdi2/enemies/IcyEnemy;->shieldMaxHealth:F

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget p1, p0, Lcom/prineside/tdi2/enemies/IcyEnemy;->shieldHealth:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/enemies/IcyEnemy;->shieldMaxHealth:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
