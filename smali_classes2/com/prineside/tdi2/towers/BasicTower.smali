.class public Lcom/prineside/tdi2/towers/BasicTower;
.super Lcom/prineside/tdi2/Tower;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/towers/BasicTower$BasicTowerFactory;
    }
.end annotation


# static fields
.field public static final ABILITY_FOUNDATION:I = 0x2

.field public static final U:Lcom/badlogic/gdx/math/Vector2;

.field public static final V:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Tower;",
            ">;"
        }
    .end annotation
.end field

.field public static final W:[I


# instance fields
.field public M:F

.field public N:F

.field public O:F

.field public P:I

.field public Q:F

.field public R:Z

.field public T:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/Tower;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/towers/BasicTower;->U:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/Tower;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/towers/BasicTower;->V:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/tdi2/towers/BasicTower;->W:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x5
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->BASIC:Lcom/prineside/tdi2/enums/TowerType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tower;-><init>(Lcom/prineside/tdi2/enums/TowerType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/towers/BasicTower$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/towers/BasicTower;-><init>()V

    return-void
.end method


# virtual methods
.method public attack(I)V
    .locals 11

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/towers/BasicTower;->U:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lcom/prineside/tdi2/Tower;->angle:F

    const/high16 v4, 0x41e40000    # 28.5f

    invoke-static {v1, v2, v3, v4, v0}, Lcom/prineside/tdi2/utils/PMath;->getPointByAngleFromPoint(FFFFLcom/badlogic/gdx/math/Vector2;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/prineside/tdi2/towers/BasicTower;->R:Z

    const/high16 v2, 0x40e00000    # 7.0f

    const/high16 v3, 0x42b40000    # 90.0f

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p0, Lcom/prineside/tdi2/Tower;->angle:F

    sub-float/2addr v5, v3

    invoke-static {v1, v4, v5, v2, v0}, Lcom/prineside/tdi2/utils/PMath;->getPointByAngleFromPoint(FFFFLcom/badlogic/gdx/math/Vector2;)V

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p0, Lcom/prineside/tdi2/Tower;->angle:F

    add-float/2addr v5, v3

    invoke-static {v1, v4, v5, v2, v0}, Lcom/prineside/tdi2/utils/PMath;->getPointByAngleFromPoint(FFFFLcom/badlogic/gdx/math/Vector2;)V

    :goto_0
    iget-boolean v1, p0, Lcom/prineside/tdi2/towers/BasicTower;->R:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/prineside/tdi2/towers/BasicTower;->R:Z

    :cond_2
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    sget-object v2, Lcom/prineside/tdi2/enums/ProjectileType;->BASIC:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/ProjectileManager;->getFactory(Lcom/prineside/tdi2/enums/ProjectileType;)Lcom/prineside/tdi2/Projectile$Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Projectile$Factory;->obtain()Lcom/prineside/tdi2/Projectile;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/projectiles/BasicProjectile;

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->projectile:Lcom/prineside/tdi2/systems/ProjectileSystem;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/systems/ProjectileSystem;->register(Lcom/prineside/tdi2/Projectile;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v3

    iget v2, p0, Lcom/prineside/tdi2/towers/BasicTower;->M:F

    int-to-float v4, p1

    mul-float v4, v4, v2

    iget v6, p0, Lcom/prineside/tdi2/towers/BasicTower;->O:F

    move-object v2, p0

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/prineside/tdi2/projectiles/BasicProjectile;->setup(Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/Enemy;FLcom/badlogic/gdx/math/Vector2;F)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v2, :cond_3

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v3, v1, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->muzzleFlashSmall:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const v6, 0x41266666    # 10.4f

    const v7, 0x40799999    # 3.8999999f

    const v8, 0x41a66666    # 20.8f

    const v9, 0x41f99999    # 31.199999f

    iget v10, p0, Lcom/prineside/tdi2/Tower;->angle:F

    invoke-virtual/range {v2 .. v10}, Lcom/prineside/tdi2/systems/ParticleSystem;->addFlashParticle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFF)V

    :cond_3
    iget v0, p0, Lcom/prineside/tdi2/Tower;->shotCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/Tower;->shotCount:I

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_sound:Lcom/prineside/tdi2/systems/SoundSystem;

    if-eqz p1, :cond_4

    sget-object v0, Lcom/prineside/tdi2/enums/StaticSoundType;->SHOT_BASIC:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p1, v0, p0}, Lcom/prineside/tdi2/systems/SoundSystem;->playShotSound(Lcom/prineside/tdi2/enums/StaticSoundType;Lcom/prineside/tdi2/Tower;)V

    :cond_4
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

    sget-object v0, Lcom/prineside/tdi2/towers/BasicTower;->W:[I

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

    iget-object v4, v4, Lcom/prineside/tdi2/managers/TowerManager$Factories;->BASIC:Lcom/prineside/tdi2/towers/BasicTower$BasicTowerFactory;

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

.method public final f(Lcom/prineside/tdi2/towers/BasicTower;F)F
    .locals 11

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getLevel()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    invoke-virtual {v0, p0, p2}, Lcom/prineside/tdi2/systems/TowerSystem;->addExperienceRaw(Lcom/prineside/tdi2/Tower;F)V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->canSkipMediaUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v3

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v4

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v5

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v6

    move v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/prineside/tdi2/systems/ParticleSystem;->addXpOrbParticle(FIIII)V

    :cond_0
    return p2

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/towers/BasicTower;->T:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v0, 0x0

    move v2, p2

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/towers/BasicTower;->T:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v4, :cond_6

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Tower;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v3, p0, Lcom/prineside/tdi2/towers/BasicTower;->T:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/prineside/tdi2/towers/BasicTower;->T:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v4, v0

    int-to-float v4, v4

    div-float v6, v2, v4

    iget-object v4, v3, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    sget-object v5, Lcom/prineside/tdi2/enums/TowerType;->BASIC:Lcom/prineside/tdi2/enums/TowerType;

    if-ne v4, v5, :cond_3

    check-cast v3, Lcom/prineside/tdi2/towers/BasicTower;

    invoke-virtual {v3, p1, v6}, Lcom/prineside/tdi2/towers/BasicTower;->f(Lcom/prineside/tdi2/towers/BasicTower;F)F

    move-result v3

    sub-float/2addr v2, v3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/prineside/tdi2/Tower;->getLevel()I

    move-result v4

    if-lt v4, v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    invoke-virtual {v4, v3, v6}, Lcom/prineside/tdi2/systems/TowerSystem;->addExperienceRaw(Lcom/prineside/tdi2/Tower;F)V

    sub-float/2addr v2, v6

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v4, :cond_5

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/StateSystem;->canSkipMediaUpdate()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v4, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v7

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v8

    invoke-virtual {v3}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v9

    invoke-virtual {v3}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v10

    invoke-virtual/range {v5 .. v10}, Lcom/prineside/tdi2/systems/ParticleSystem;->addXpOrbParticle(FIIII)V

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object p1, p0, Lcom/prineside/tdi2/towers/BasicTower;->T:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez p1, :cond_8

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prineside/tdi2/towers/BasicTower;->T:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    goto :goto_2

    :cond_7
    move v2, p2

    :cond_8
    :goto_2
    const/4 p1, 0x0

    cmpg-float p1, v2, p1

    if-ltz p1, :cond_9

    sub-float/2addr p2, v2

    return p2

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Consumed more XP than exists: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public getAttackDelay()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/towers/BasicTower;->Q:F

    return v0
.end method

.method public getScheduledUpdateInterval()F
    .locals 1

    const v0, 0x3e570a3d    # 0.21f

    return v0
.end method

.method public getSellPrice()I
    .locals 3

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Tower;->moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

    iget v1, p0, Lcom/prineside/tdi2/towers/BasicTower;->P:I

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/CheatSafeInt;->sub(I)V

    invoke-super {p0}, Lcom/prineside/tdi2/Tower;->getSellPrice()I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/Tower;->moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

    iget v2, p0, Lcom/prineside/tdi2/towers/BasicTower;->P:I

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/CheatSafeInt;->add(I)V

    iget v1, p0, Lcom/prineside/tdi2/towers/BasicTower;->P:I

    add-int/2addr v1, v0

    return v1

    :cond_0
    invoke-super {p0}, Lcom/prineside/tdi2/Tower;->getSellPrice()I

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

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_BASIC_A_LARGE_CALIBER_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->ATTACK_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    if-ne p1, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_BASIC_A_DOUBLE_GUN_ATTACK_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    :cond_1
    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->PROJECTILE_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->ROTATION_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    if-ne p1, v1, :cond_3

    :cond_2
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result p1

    if-eqz p1, :cond_3

    float-to-double v0, v0

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_BASIC_A_FOUNDATION_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    :cond_3
    return v0
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

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager$Factories;->BASIC:Lcom/prineside/tdi2/towers/BasicTower$BasicTowerFactory;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/Tower$Factory;->getAbilityTextures(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager$Factories;->BASIC:Lcom/prineside/tdi2/towers/BasicTower$BasicTowerFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/towers/BasicTower$BasicTowerFactory;->i:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public onAbilitySet(IZ)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x4

    move/from16 v2, p1

    if-ne v2, v1, :cond_8

    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_BASIC_A_COPY_COUNT:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v1

    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_BASIC_A_COPY_UPGRADE_LEVEL:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prineside/tdi2/Tile;->getNeighbourTiles()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/towers/BasicTower;->V:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v6, 0x0

    :goto_1
    iget v7, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v7, :cond_1

    iget-object v7, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/Tile;

    aget-object v7, v7, v6

    iget-object v8, v7, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v9, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v8, v9, :cond_0

    check-cast v7, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v7, v7, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v7, :cond_0

    iget-object v8, v7, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v9, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v8, v9, :cond_0

    sget-object v8, Lcom/prineside/tdi2/towers/BasicTower;->V:Lcom/badlogic/gdx/utils/Array;

    check-cast v7, Lcom/prineside/tdi2/Tower;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    sget-object v6, Lcom/prineside/tdi2/towers/BasicTower;->V:Lcom/badlogic/gdx/utils/Array;

    iget v7, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v7, :cond_2

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_2
    iget-object v7, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/Tower;

    iget-object v8, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v8, v8, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v9, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomInt(I)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-virtual {v7}, Lcom/prineside/tdi2/Tower;->getUpgradeLevel()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v2

    invoke-static {v6}, Lcom/badlogic/gdx/math/MathUtils;->floor(F)I

    move-result v6

    const/16 v8, 0xa

    if-le v6, v8, :cond_3

    const/16 v6, 0xa

    :cond_3
    const/4 v8, 0x0

    :goto_2
    iget v9, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v8, v9, :cond_7

    iget-object v9, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v9, [Lcom/prineside/tdi2/Tile;

    aget-object v9, v9, v8

    iget-object v10, v9, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v11, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v10, v11, :cond_6

    move-object v10, v9

    check-cast v10, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v10, v10, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-nez v10, :cond_6

    iget-object v10, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v11, v10, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object v12, v7, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    iget-object v13, v0, Lcom/prineside/tdi2/Tower;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v9}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v14

    invoke-virtual {v9}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v15

    const/16 v16, 0x1

    invoke-virtual/range {v11 .. v16}, Lcom/prineside/tdi2/systems/TowerSystem;->buildTower(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/Tower$AimStrategy;IIZ)Lcom/prineside/tdi2/Tower;

    move-result-object v9

    if-eqz v9, :cond_6

    if-eqz v6, :cond_4

    invoke-virtual {v9, v6}, Lcom/prineside/tdi2/Tower;->upgrade(I)V

    :cond_4
    iget-object v5, v0, Lcom/prineside/tdi2/towers/BasicTower;->T:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    if-nez v5, :cond_5

    new-instance v5, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v6, 0x2

    const-class v7, Lcom/prineside/tdi2/Tower;

    const/4 v8, 0x1

    invoke-direct {v5, v8, v6, v7}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v5, v0, Lcom/prineside/tdi2/towers/BasicTower;->T:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    :cond_5
    iget-object v5, v0, Lcom/prineside/tdi2/towers/BasicTower;->T:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/BasicTower;->M:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/BasicTower;->N:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/BasicTower;->O:F

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/BasicTower;->P:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/BasicTower;->Q:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/towers/BasicTower;->R:Z

    const-class v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object p1, p0, Lcom/prineside/tdi2/towers/BasicTower;->T:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-void
.end method

.method public scheduledUpdate(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/towers/BasicTower;->T:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getLevel()I

    move-result p1

    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    iget p1, p0, Lcom/prineside/tdi2/Tower;->currentLevelExperience:F

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p0, p1}, Lcom/prineside/tdi2/towers/BasicTower;->f(Lcom/prineside/tdi2/towers/BasicTower;F)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    invoke-virtual {v0, p0, p1}, Lcom/prineside/tdi2/systems/TowerSystem;->removeExperienceRaw(Lcom/prineside/tdi2/Tower;F)F

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tower is not registered "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setExperience(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getLevel()I

    move-result v0

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tower;->setExperience(F)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getLevel()I

    move-result p1

    const/16 v1, 0xa

    if-lt p1, v1, :cond_0

    if-ge v0, v1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/Tower;->moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p1}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/BasicTower;->P:I

    :cond_0
    return-void
.end method

.method public update(F)V
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/towers/BasicTower;->N:F

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/Tower;->e(FF)V

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tower;->update(F)V

    return-void
.end method

.method public updateCache()V
    .locals 2

    invoke-super {p0}, Lcom/prineside/tdi2/Tower;->updateCache()V

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->U_DAMAGE_MULTIPLY:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    mul-float v0, v0, v1

    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->DAMAGE:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v1

    mul-float v1, v1, v0

    iput v1, p0, Lcom/prineside/tdi2/towers/BasicTower;->M:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->ROTATION_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/BasicTower;->N:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->PROJECTILE_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/BasicTower;->O:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->ATTACK_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iput v1, p0, Lcom/prineside/tdi2/towers/BasicTower;->Q:F

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget v0, p0, Lcom/prineside/tdi2/towers/BasicTower;->M:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/towers/BasicTower;->N:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/towers/BasicTower;->O:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/towers/BasicTower;->P:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/towers/BasicTower;->Q:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/towers/BasicTower;->R:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/towers/BasicTower;->T:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
