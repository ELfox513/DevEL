.class public Lcom/prineside/tdi2/enemies/bosses/MobchainBossCreepEnemy;
.super Lcom/prineside/tdi2/Enemy;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/enemies/bosses/MobchainBossCreepEnemy$MobchainBossCreepEnemyFactory;
    }
.end annotation


# instance fields
.field public color:Lcom/badlogic/gdx/graphics/Color;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public vulnerableTo:Lcom/prineside/tdi2/enums/TowerType;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_CREEP:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Enemy;-><init>(Lcom/prineside/tdi2/enums/EnemyType;)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MobchainBossCreepEnemy;->color:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/enemies/bosses/MobchainBossCreepEnemy$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/enemies/bosses/MobchainBossCreepEnemy;-><init>()V

    return-void
.end method


# virtual methods
.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MobchainBossCreepEnemy;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-super {p0, p1, p2, v0}, Lcom/prineside/tdi2/Enemy;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FLcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public drawHealth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Enemy;->drawHealth(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MobchainBossCreepEnemy;->vulnerableTo:Lcom/prineside/tdi2/enums/TowerType;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v2, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->enemyDialog:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v3, 0x42300000    # 44.0f

    sub-float v3, v1, v3

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v1, 0x42600000    # 56.0f

    add-float v4, v0, v1

    const/high16 v5, 0x42b00000    # 88.0f

    const/high16 v6, 0x42a00000    # 80.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, p0, Lcom/prineside/tdi2/enemies/bosses/MobchainBossCreepEnemy;->vulnerableTo:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tower$Factory;->getIconTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    iget-object v0, p0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v3, 0x42000000    # 32.0f

    sub-float v3, v1, v3

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v1, 0x42840000    # 66.0f

    add-float v4, v0, v1

    const/high16 v5, 0x42800000    # 64.0f

    const/high16 v6, 0x42800000    # 64.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_0
    return-void
.end method

.method public dynamicPathfindingAllowed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAbilityVulnerability(Lcom/prineside/tdi2/enums/AbilityType;)F
    .locals 0

    const p1, 0x3dcccccd    # 0.1f

    return p1
.end method

.method public getBaseDamage()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBuffedDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/DamageType;)F
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MobchainBossCreepEnemy;->vulnerableTo:Lcom/prineside/tdi2/enums/TowerType;

    if-ne v0, p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3d4ccccd    # 0.05f

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->getBuffedDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/DamageType;)F

    move-result p1

    mul-float v0, v0, p1

    return v0
.end method

.method public hasDrawPriority()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/enums/TowerType;

    iput-object p1, p0, Lcom/prineside/tdi2/enemies/bosses/MobchainBossCreepEnemy;->vulnerableTo:Lcom/prineside/tdi2/enums/TowerType;

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/Enemy;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MobchainBossCreepEnemy;->vulnerableTo:Lcom/prineside/tdi2/enums/TowerType;

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MobchainBossCreepEnemy;->color:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/MobchainBossCreepEnemy;->vulnerableTo:Lcom/prineside/tdi2/enums/TowerType;

    const-class v1, Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
