.class public Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;
.super Lcom/prineside/tdi2/Enemy;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;,
        Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$MetaphorBossCreepEnemyFactory;
    }
.end annotation


# static fields
.field public static final x:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public v:Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;

.field public w:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;->x:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->METAPHOR_BOSS_CREEP:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Enemy;-><init>(Lcom/prineside/tdi2/enums/EnemyType;)V

    sget-object v0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;->RANDOM_SPEED:Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;

    iput-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;->v:Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;->w:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;-><init>()V

    return-void
.end method


# virtual methods
.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FLcom/badlogic/gdx/graphics/Color;)V
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;->x:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iget v2, v0, Lcom/prineside/tdi2/Enemy;->existsTime:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    sget-object v3, Lcom/badlogic/gdx/math/Interpolation;->pow2Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/math/Interpolation$PowOut;->apply(F)F

    move-result v3

    :cond_0
    const/high16 v2, 0x3f400000    # 0.75f

    iget v4, v0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;->w:F

    mul-float v4, v4, v2

    mul-float v3, v3, v4

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/EnemyManager;->F:Lcom/prineside/tdi2/managers/EnemyManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->METAPHOR_BOSS_CREEP:Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$MetaphorBossCreepEnemyFactory;

    iget-object v1, v1, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$MetaphorBossCreepEnemyFactory;->s:Lcom/badlogic/gdx/graphics/g2d/Animation;

    iget v4, v0, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/Animation;->getKeyFrame(FZ)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v3

    iget-object v3, v0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v15, v1, v6

    sub-float v6, v4, v15

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v7, v3, v15

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    iget v14, v0, Lcom/prineside/tdi2/Enemy;->drawAngle:F

    move-object/from16 v4, p1

    move v8, v15

    move v9, v15

    move v10, v1

    move v11, v1

    invoke-virtual/range {v4 .. v14}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    iget-boolean v3, v0, Lcom/prineside/tdi2/Enemy;->buffBlizzardActive:Z

    if-nez v3, :cond_1

    iget-boolean v3, v0, Lcom/prineside/tdi2/Enemy;->buffSnowballActive:Z

    if-eqz v3, :cond_2

    :cond_1
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget v4, v0, Lcom/prineside/tdi2/Enemy;->id:I

    rem-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/EnemyManager;->getIceOverlayTexture(I)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    iget-object v3, v0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v6, v4, v15

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v7, v3, v15

    move-object/from16 v4, p1

    move v8, v1

    move v9, v1

    invoke-virtual/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_2
    return-void
.end method

.method public dynamicPathfindingAllowed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getBaseDamage()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getKind()Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;->v:Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;

    return-object v0
.end method

.method public getSize()F
    .locals 2

    invoke-super {p0}, Lcom/prineside/tdi2/Enemy;->getSize()F

    move-result v0

    iget v1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;->w:F

    mul-float v0, v0, v1

    return v0
.end method

.method public getSquaredSize()F
    .locals 2

    invoke-super {p0}, Lcom/prineside/tdi2/Enemy;->getSize()F

    move-result v0

    iget v1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;->w:F

    mul-float v0, v0, v1

    invoke-super {p0}, Lcom/prineside/tdi2/Enemy;->getSize()F

    move-result v1

    mul-float v0, v0, v1

    iget v1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;->w:F

    mul-float v0, v0, v1

    return v0
.end method

.method public getTowerDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;)F
    .locals 2

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Enemy;->getTowerDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;)F

    move-result p1

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;->v:Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;

    sget-object v1, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;->HIGH_HP:Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x40a00000    # 5.0f

    :goto_0
    mul-float p1, p1, v0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;->LOW_HP:Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;

    if-ne v0, v1, :cond_1

    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_1
    :goto_1
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

    const-class v0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;

    iput-object p1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;->v:Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;->w:F

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/Enemy;->reset()V

    sget-object v0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;->RANDOM_SPEED:Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;

    iput-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;->v:Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;->w:F

    return-void
.end method

.method public setKind(Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;)V
    .locals 1

    iput-object p1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;->v:Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;

    sget-object v0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;->BIG:Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;

    if-ne p1, v0, :cond_0

    const/high16 p1, 0x3fa00000    # 1.25f

    iput p1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;->w:F

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;->SMALL:Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;

    if-ne p1, v0, :cond_1

    const p1, 0x3f4ccccd    # 0.8f

    iput p1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;->w:F

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;->w:F

    :goto_0
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;->v:Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy$Kind;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget p1, p0, Lcom/prineside/tdi2/enemies/bosses/MetaphorBossCreepEnemy;->w:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
