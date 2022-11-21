.class public Lcom/prineside/tdi2/towers/VenomTower;
.super Lcom/prineside/tdi2/Tower;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/towers/VenomTower$VenomTowerFactory;
    }
.end annotation


# static fields
.field public static final ABILITY_FAST_SHELLS:I = 0x2

.field public static final Z:Lcom/badlogic/gdx/math/Vector2;

.field public static final a0:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Tile;",
            ">;"
        }
    .end annotation
.end field

.field public static final b0:[I


# instance fields
.field public M:Lcom/prineside/tdi2/shapes/Circle;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public N:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public O:Z

.field public P:F

.field public Q:F

.field public R:F

.field public T:Z

.field public U:F

.field public V:F

.field public W:F

.field public X:F

.field public Y:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/towers/VenomTower;->Z:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/Tile;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/towers/VenomTower;->a0:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/tdi2/towers/VenomTower;->b0:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x2
        0x1
        0x3
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->VENOM:Lcom/prineside/tdi2/enums/TowerType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tower;-><init>(Lcom/prineside/tdi2/enums/TowerType;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/towers/VenomTower;->T:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/towers/VenomTower$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/towers/VenomTower;-><init>()V

    return-void
.end method


# virtual methods
.method public attack(I)V
    .locals 13

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v5, Lcom/prineside/tdi2/towers/VenomTower;->Z:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/prineside/tdi2/Tower;->angle:F

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v0, v1, v2, v3, v5}, Lcom/prineside/tdi2/utils/PMath;->getPointByAngleFromPoint(FFFFLcom/badlogic/gdx/math/Vector2;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    sget-object v1, Lcom/prineside/tdi2/enums/ProjectileType;->VENOM:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ProjectileManager;->getFactory(Lcom/prineside/tdi2/enums/ProjectileType;)Lcom/prineside/tdi2/Projectile$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Projectile$Factory;->obtain()Lcom/prineside/tdi2/Projectile;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/prineside/tdi2/projectiles/VenomProjectile;

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->projectile:Lcom/prineside/tdi2/systems/ProjectileSystem;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/ProjectileSystem;->register(Lcom/prineside/tdi2/Projectile;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BuffManager$Factories;->POISON:Lcom/prineside/tdi2/buffs/PoisonBuff$PoisonBuffFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/prineside/tdi2/buffs/PoisonBuff;

    iget v8, p0, Lcom/prineside/tdi2/towers/VenomTower;->W:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float v9, v8, v0

    iget v0, p0, Lcom/prineside/tdi2/towers/VenomTower;->X:F

    int-to-float v2, p1

    mul-float v10, v0, v2

    iget v11, p0, Lcom/prineside/tdi2/towers/VenomTower;->Y:F

    const/4 v12, 0x0

    move-object v6, v4

    move-object v7, p0

    invoke-virtual/range {v6 .. v12}, Lcom/prineside/tdi2/buffs/PoisonBuff;->setup(Lcom/prineside/tdi2/Tower;FFFFLcom/prineside/tdi2/Ability;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v3

    iget v6, p0, Lcom/prineside/tdi2/towers/VenomTower;->V:F

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/prineside/tdi2/projectiles/VenomProjectile;->setup(Lcom/prineside/tdi2/towers/VenomTower;Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/PoisonBuff;Lcom/badlogic/gdx/math/Vector2;F)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/towers/VenomTower;->O:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->setTarget(Lcom/prineside/tdi2/Enemy;)V

    :cond_1
    iget v0, p0, Lcom/prineside/tdi2/Tower;->shotCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/Tower;->shotCount:I

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_sound:Lcom/prineside/tdi2/systems/SoundSystem;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/prineside/tdi2/enums/StaticSoundType;->SHOT_VENOM:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p1, v0, p0}, Lcom/prineside/tdi2/systems/SoundSystem;->playShotSound(Lcom/prineside/tdi2/enums/StaticSoundType;Lcom/prineside/tdi2/Tower;)V

    :cond_2
    return-void
.end method

.method public canAim()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public drawBase(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 7

    invoke-super {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/Tower;->c(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    sget-object v0, Lcom/prineside/tdi2/towers/VenomTower;->b0:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/TowerManager$Factories;->VENOM:Lcom/prineside/tdi2/towers/VenomTower$VenomTowerFactory;

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/Tower$Factory;->getAbilityTextures(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    int-to-float v4, p2

    int-to-float v5, p3

    const/high16 v6, 0x43000000    # 128.0f

    invoke-static {v3, p1, v4, v5, v6}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->drawCache(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFF)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/Tower;->b(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    return-void
.end method

.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 9

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    iget-object p2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {p2}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->getDrawMode()Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    move-result-object p2

    sget-object v0, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DETAILED:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-ne p2, v0, :cond_1

    const/4 p2, 0x3

    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/prineside/tdi2/towers/VenomTower;->M:Lcom/prineside/tdi2/shapes/Circle;

    if-nez p2, :cond_0

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/VenomTower;->getPoisonousCloudRange()F

    move-result p2

    const/high16 v0, 0x43000000    # 128.0f

    mul-float v5, p2, v0

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    sget-object v0, Lcom/prineside/tdi2/enums/ShapeType;->CIRCLE:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/managers/ShapeManager;->getFactory(Lcom/prineside/tdi2/enums/ShapeType;)Lcom/prineside/tdi2/Shape$Factory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object p2

    check-cast p2, Lcom/prineside/tdi2/shapes/Circle;

    iput-object p2, p0, Lcom/prineside/tdi2/towers/VenomTower;->M:Lcom/prineside/tdi2/shapes/Circle;

    sget-object p2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p2

    const v1, 0x3d8f5c29    # 0.07f

    iput v1, p2, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v1, p0, Lcom/prineside/tdi2/towers/VenomTower;->M:Lcom/prineside/tdi2/shapes/Circle;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    const v4, 0x3f2b851f    # 0.67f

    mul-float v4, v4, v5

    const/16 v6, 0x20

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v7

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v8

    invoke-virtual/range {v1 .. v8}, Lcom/prineside/tdi2/shapes/Circle;->setup(FFFFIFF)V

    :cond_0
    iget-object p2, p0, Lcom/prineside/tdi2/towers/VenomTower;->M:Lcom/prineside/tdi2/shapes/Circle;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/shapes/Circle;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 3

    iget-boolean v0, p0, Lcom/prineside/tdi2/towers/VenomTower;->T:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/towers/VenomTower;->N:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/ParticleSystem;->willParticleBeSkipped()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager$Factories;->VENOM:Lcom/prineside/tdi2/towers/VenomTower$VenomTowerFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/towers/VenomTower$VenomTowerFactory;->j:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iput-object v0, p0, Lcom/prineside/tdi2/towers/VenomTower;->N:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/towers/VenomTower;->N:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/towers/VenomTower;->N:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/towers/VenomTower;->N:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    :cond_1
    :goto_0
    return-void
.end method

.method public findTarget()Lcom/prineside/tdi2/Enemy;
    .locals 3

    invoke-super {p0}, Lcom/prineside/tdi2/Tower;->findTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/prineside/tdi2/Enemy;->buffsByType:[Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/prineside/tdi2/enums/BuffType;->POISON:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/prineside/tdi2/towers/VenomTower;->O:Z

    :cond_1
    return-object v0
.end method

.method public getAttackDelay()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/towers/VenomTower;->R:F

    return v0
.end method

.method public getEnemyPriority(Lcom/prineside/tdi2/Enemy;)I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->POISON:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Enemy;->hasBuffsByType(Lcom/prineside/tdi2/enums/BuffType;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Lcom/prineside/tdi2/Enemy;->lowAimPriority:Z

    if-eqz p1, :cond_0

    const/4 p1, -0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    :goto_0
    return p1

    :cond_1
    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tower;->getEnemyPriority(Lcom/prineside/tdi2/Enemy;)I

    move-result p1

    return p1
.end method

.method public getPoisonousCloudRange()F
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_VENOM_A_CLOUD_RANGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v0

    return v0
.end method

.method public getStat(Lcom/prineside/tdi2/enums/TowerStatType;)F
    .locals 7

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v2, p0, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getUpgradeLevel()I

    move-result v4

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getLevel()I

    move-result v5

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/prineside/tdi2/managers/TowerManager;->getStatFromConfig(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/TowerStatType;IILcom/prineside/tdi2/GameValueProvider;)F

    move-result v0

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->DAMAGE:Lcom/prineside/tdi2/enums/TowerStatType;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_VENOM_A_CONCENTRATE_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->PROJECTILE_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    if-ne p1, v1, :cond_1

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    float-to-double v0, v0

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_VENOM_A_FAST_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    :cond_1
    return v0
.end method

.method public getUltimateChance()F
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getUpgradeLevel()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_VENOM_A_CHAIN_CHANCE_MIN:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_VENOM_A_CHAIN_CHANCE_MAX:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    double-to-float v2, v2

    sub-float/2addr v2, v1

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    return v1
.end method

.method public getWeaponTextures()Lcom/badlogic/gdx/utils/Array;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/TextureRegionConfig;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager$Factories;->VENOM:Lcom/prineside/tdi2/towers/VenomTower$VenomTowerFactory;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/Tower$Factory;->getAbilityTextures(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager$Factories;->VENOM:Lcom/prineside/tdi2/towers/VenomTower$VenomTowerFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/towers/VenomTower$VenomTowerFactory;->i:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public placedOnMap()V
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/Tower;->placedOnMap()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/towers/VenomTower;->T:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/VenomTower;->f()V

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/towers/VenomTower;->O:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/VenomTower;->P:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/VenomTower;->Q:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/VenomTower;->R:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/towers/VenomTower;->T:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/VenomTower;->U:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/VenomTower;->V:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/VenomTower;->W:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/VenomTower;->X:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/VenomTower;->Y:F

    return-void
.end method

.method public removedFromMap()V
    .locals 2

    invoke-super {p0}, Lcom/prineside/tdi2/Tower;->removedFromMap()V

    iget-object v0, p0, Lcom/prineside/tdi2/towers/VenomTower;->N:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    iput-object v1, p0, Lcom/prineside/tdi2/towers/VenomTower;->N:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/towers/VenomTower;->M:Lcom/prineside/tdi2/shapes/Circle;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/prineside/tdi2/shapes/Circle;->free()V

    iput-object v1, p0, Lcom/prineside/tdi2/towers/VenomTower;->M:Lcom/prineside/tdi2/shapes/Circle;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/towers/VenomTower;->T:Z

    return-void
.end method

.method public setExperience(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tower;->setExperience(F)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/VenomTower;->f()V

    return-void
.end method

.method public update(F)V
    .locals 19

    move-object/from16 v8, p0

    move/from16 v9, p1

    iget v0, v8, Lcom/prineside/tdi2/towers/VenomTower;->U:F

    invoke-virtual {v8, v9, v0}, Lcom/prineside/tdi2/Tower;->e(FF)V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/towers/VenomTower;->getPoisonousCloudRange()F

    move-result v0

    const/high16 v1, 0x43000000    # 128.0f

    mul-float v0, v0, v1

    mul-float v10, v0, v0

    iget v0, v8, Lcom/prineside/tdi2/towers/VenomTower;->P:F

    add-float/2addr v0, v9

    iput v0, v8, Lcom/prineside/tdi2/towers/VenomTower;->P:F

    const v1, 0x3ea8f5c3    # 0.33f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, v8, Lcom/prineside/tdi2/towers/VenomTower;->P:F

    iget v1, v8, Lcom/prineside/tdi2/towers/VenomTower;->Y:F

    mul-float v0, v0, v1

    iget v1, v8, Lcom/prineside/tdi2/towers/VenomTower;->Q:F

    mul-float v0, v0, v1

    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_VENOM_A_CLOUD_DAMAGE_COEFF:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v11, v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Tower;->getTilesInRange()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/towers/VenomTower;->a0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    iget v12, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v12, :cond_3

    sget-object v0, Lcom/prineside/tdi2/towers/VenomTower;->a0:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/Tile;

    aget-object v0, v0, v14

    iget-object v15, v0, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v15}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget v7, v15, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_2

    iget-object v0, v15, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v0, v0, v6

    iget-object v1, v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v1, :cond_1

    sget-object v4, Lcom/prineside/tdi2/enums/DamageType;->POISON:Lcom/prineside/tdi2/enums/DamageType;

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/Enemy;->isVulnerableTo(Lcom/prineside/tdi2/enums/DamageType;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    cmpg-float v0, v0, v10

    if-gez v0, :cond_1

    iget-object v0, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    const/4 v5, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v2, p0

    move v3, v11

    move/from16 v18, v6

    move/from16 v6, v16

    move/from16 v16, v7

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    goto :goto_3

    :cond_1
    :goto_2
    move/from16 v18, v6

    move/from16 v16, v7

    :goto_3
    add-int/lit8 v6, v18, 0x1

    move/from16 v7, v16

    goto :goto_1

    :cond_2
    invoke-virtual {v15}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/prineside/tdi2/towers/VenomTower;->a0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    :cond_4
    const/4 v0, 0x0

    iput v0, v8, Lcom/prineside/tdi2/towers/VenomTower;->P:F

    :cond_5
    invoke-super/range {p0 .. p1}, Lcom/prineside/tdi2/Tower;->update(F)V

    return-void
.end method

.method public updateCache()V
    .locals 3

    invoke-super {p0}, Lcom/prineside/tdi2/Tower;->updateCache()V

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->ROTATION_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/VenomTower;->U:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->PROJECTILE_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/VenomTower;->V:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->U_POISON_DURATION:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/VenomTower;->W:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->DAMAGE:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/VenomTower;->Y:F

    iput v0, p0, Lcom/prineside/tdi2/towers/VenomTower;->X:F

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/towers/VenomTower;->Y:F

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_VENOM_A_HARD_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v0, v0, v1

    iput v0, p0, Lcom/prineside/tdi2/towers/VenomTower;->X:F

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->ATTACK_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/VenomTower;->Q:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iput v1, p0, Lcom/prineside/tdi2/towers/VenomTower;->R:F

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/towers/VenomTower;->O:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget p1, p0, Lcom/prineside/tdi2/towers/VenomTower;->P:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/VenomTower;->Q:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/VenomTower;->R:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/towers/VenomTower;->T:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget p1, p0, Lcom/prineside/tdi2/towers/VenomTower;->U:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/VenomTower;->V:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/VenomTower;->W:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/VenomTower;->X:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/VenomTower;->Y:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
