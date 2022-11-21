.class public Lcom/prineside/tdi2/enemies/LightEnemy;
.super Lcom/prineside/tdi2/Enemy;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/enemies/LightEnemy$LightEnemyFactory;
    }
.end annotation


# instance fields
.field public v:F

.field public w:Lcom/prineside/tdi2/enums/DamageType;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->LIGHT:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Enemy;-><init>(Lcom/prineside/tdi2/enums/EnemyType;)V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/prineside/tdi2/enemies/LightEnemy;->v:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/enemies/LightEnemy$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/enemies/LightEnemy;-><init>()V

    return-void
.end method


# virtual methods
.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 8

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    iget-object p2, p0, Lcom/prineside/tdi2/enemies/LightEnemy;->w:Lcom/prineside/tdi2/enums/DamageType;

    if-eqz p2, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v0, p2}, Lcom/prineside/tdi2/managers/EnemyManager;->getDamageTypeIcon(Lcom/prineside/tdi2/enums/DamageType;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object p2

    const v0, 0x3e8f5c29    # 0.28f

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v2, 0x41200000    # 10.0f

    sub-float v3, v1, v2

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v1, 0x41600000    # 14.0f

    sub-float v4, v0, v1

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x41c00000    # 24.0f

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object v0, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v3, 0x41400000    # 12.0f

    sub-float v4, v2, v3

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v5, v1, v3

    const/high16 v7, 0x41c00000    # 24.0f

    move-object v1, p1

    move-object v2, p2

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget v1, p0, Lcom/prineside/tdi2/enemies/LightEnemy;->v:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    div-float/2addr v1, v2

    const/high16 v3, 0x41c00000    # 24.0f

    const/high16 v4, 0x42280000    # 42.0f

    mul-float v4, v4, v1

    add-float v6, v4, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v3, v1

    invoke-virtual {p1, v3, v3, v3, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v2, v2, v6

    sub-float/2addr v3, v2

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v4, v1, v2

    move-object v1, p1

    move-object v2, p2

    move v5, v6

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_0
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    return-void
.end method

.method public getBuffedDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/DamageType;)F
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->getBuffedDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/DamageType;)F

    move-result p1

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/LightEnemy;->w:Lcom/prineside/tdi2/enums/DamageType;

    if-eqz v0, :cond_0

    if-ne v0, p2, :cond_0

    const/high16 p2, 0x3e800000    # 0.25f

    mul-float p1, p1, p2

    :cond_0
    return p1
.end method

.method public giveDamage(Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;)F
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/prineside/tdi2/Enemy;->giveDamage(Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float v0, p1, p2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/enemies/LightEnemy;->v:F

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iput-object p3, p0, Lcom/prineside/tdi2/enemies/LightEnemy;->w:Lcom/prineside/tdi2/enums/DamageType;

    iput p2, p0, Lcom/prineside/tdi2/enemies/LightEnemy;->v:F

    :cond_0
    return p1
.end method

.method public hasDrawPriority()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/enemies/LightEnemy;->v:F

    const-class v0, Lcom/prineside/tdi2/enums/DamageType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/enums/DamageType;

    iput-object p1, p0, Lcom/prineside/tdi2/enemies/LightEnemy;->w:Lcom/prineside/tdi2/enums/DamageType;

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/Enemy;->reset()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/prineside/tdi2/enemies/LightEnemy;->v:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/enemies/LightEnemy;->w:Lcom/prineside/tdi2/enums/DamageType;

    return-void
.end method

.method public update(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Enemy;->update(F)V

    iget v0, p0, Lcom/prineside/tdi2/enemies/LightEnemy;->v:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/enemies/LightEnemy;->v:F

    iget-object p1, p0, Lcom/prineside/tdi2/enemies/LightEnemy;->w:Lcom/prineside/tdi2/enums/DamageType;

    if-eqz p1, :cond_0

    const/high16 p1, 0x40c00000    # 6.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prineside/tdi2/enemies/LightEnemy;->w:Lcom/prineside/tdi2/enums/DamageType;

    :cond_0
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget v0, p0, Lcom/prineside/tdi2/enemies/LightEnemy;->v:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/LightEnemy;->w:Lcom/prineside/tdi2/enums/DamageType;

    const-class v1, Lcom/prineside/tdi2/enums/DamageType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
