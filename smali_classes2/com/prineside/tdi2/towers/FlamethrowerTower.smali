.class public Lcom/prineside/tdi2/towers/FlamethrowerTower;
.super Lcom/prineside/tdi2/Tower;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/towers/FlamethrowerTower$FlamethrowerTowerFactory;
    }
.end annotation


# static fields
.field public static final X:[F

.field public static final Y:[F

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

.field public static b0:Lcom/prineside/tdi2/ItemStack;

.field public static final c0:Lcom/badlogic/gdx/math/Vector2;

.field public static final d0:[I


# instance fields
.field public M:Z

.field public N:Z

.field public O:I

.field public P:Z

.field public Q:F

.field public R:F

.field public T:F

.field public U:F

.field public V:F

.field public W:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/prineside/tdi2/towers/FlamethrowerTower;->X:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->Y:[F

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->Z:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/Tile;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->a0:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->c0:Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->d0:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_1
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x1
        0x2
        0x3
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->FLAMETHROWER:Lcom/prineside/tdi2/enums/TowerType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tower;-><init>(Lcom/prineside/tdi2/enums/TowerType;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->M:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/towers/FlamethrowerTower$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/towers/FlamethrowerTower;-><init>()V

    return-void
.end method


# virtual methods
.method public canAim()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canAttack()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public drawBase(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 7

    invoke-super {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/Tower;->c(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    sget-object v0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->d0:[I

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

    iget-object v4, v4, Lcom/prineside/tdi2/managers/TowerManager$Factories;->FLAMETHROWER:Lcom/prineside/tdi2/towers/FlamethrowerTower$FlamethrowerTowerFactory;

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
    .locals 12

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_DRAW_BUILDING_INFO:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p2, v0, v2

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/prineside/tdi2/Tower;->angle:F

    iget v0, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->V:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v2, v0, v1

    sub-float v2, p2, v2

    mul-float v0, v0, v1

    add-float/2addr p2, v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lcom/prineside/tdi2/Tower;->rangeInPixels:F

    sget-object v4, Lcom/prineside/tdi2/towers/FlamethrowerTower;->Z:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PMath;->getPointByAngleFromPoint(FFFFLcom/badlogic/gdx/math/Vector2;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v6

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v9, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v10, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v11, 0x40000000    # 2.0f

    move-object v5, p1

    invoke-static/range {v5 .. v11}, Lcom/prineside/tdi2/utils/DrawUtils;->texturedLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFF)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/prineside/tdi2/Tower;->rangeInPixels:F

    invoke-static {v0, v1, p2, v2, v4}, Lcom/prineside/tdi2/utils/PMath;->getPointByAngleFromPoint(FFFFLcom/badlogic/gdx/math/Vector2;)V

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {p2}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v6

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p2

    iget-object p2, p2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v7, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p2

    iget-object p2, p2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v8, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v9, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v10, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static/range {v5 .. v11}, Lcom/prineside/tdi2/utils/DrawUtils;->texturedLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFF)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->W:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getRange()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getXScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v3

    const/high16 v4, 0x42400000    # 48.0f

    mul-float v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getYScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getXScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v3

    const/high16 v4, 0x40800000    # 4.0f

    mul-float v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->setLow(F)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getYScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->setLow(F)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getXScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v3

    const/high16 v4, 0x41a00000    # 20.0f

    mul-float v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getYScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getXScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v3

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->setLow(F)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getYScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->setLow(F)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getVelocity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v3

    const/high16 v4, 0x432a0000    # 170.0f

    mul-float v4, v4, v1

    const/high16 v5, 0x43660000    # 230.0f

    mul-float v5, v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getVelocity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v3

    const/high16 v4, 0x42700000    # 60.0f

    mul-float v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->setLow(F)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getVelocity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v0

    const/high16 v3, 0x42f00000    # 120.0f

    mul-float v3, v3, v1

    const/high16 v4, 0x43160000    # 150.0f

    mul-float v1, v1, v4

    invoke-virtual {v0, v3, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getTint()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/towers/FlamethrowerTower;->Y:[F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->setColors([F)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getTint()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/towers/FlamethrowerTower;->X:[F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->setColors([F)V

    :goto_0
    return-void
.end method

.method public g()F
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_FLAMETHROWER_A_INSTAKILL_HP_MIN:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_FLAMETHROWER_A_INSTAKILL_HP_MAX:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getUpgradeLevel()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v0

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getAttackDelay()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScheduledUpdateInterval()F
    .locals 1

    const v0, 0x3e2b020c    # 0.167f

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

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    float-to-double v2, v0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_FLAMETHROWER_A_PLASMA_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-float v0, v2

    :cond_0
    if-ne p1, v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_FLAMETHROWER_A_COLD_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    :cond_1
    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->U_BURNING_TIME:Lcom/prineside/tdi2/enums/TowerStatType;

    if-ne p1, v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    float-to-double v0, v0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_FLAMETHROWER_A_NAPALM_DURATION:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    :cond_2
    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->RANGE:Lcom/prineside/tdi2/enums/TowerStatType;

    if-ne p1, v1, :cond_3

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result p1

    if-eqz p1, :cond_3

    float-to-double v0, v0

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_FLAMETHROWER_A_SUPPLY_RANGE:Lcom/prineside/tdi2/enums/GameValueType;

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

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager$Factories;->FLAMETHROWER:Lcom/prineside/tdi2/towers/FlamethrowerTower$FlamethrowerTowerFactory;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/Tower$Factory;->getAbilityTextures(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager$Factories;->FLAMETHROWER:Lcom/prineside/tdi2/towers/FlamethrowerTower$FlamethrowerTowerFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/towers/FlamethrowerTower$FlamethrowerTowerFactory;->i:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public final h(F)V
    .locals 24

    move-object/from16 v8, p0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/prineside/tdi2/towers/FlamethrowerTower;->M:Z

    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/towers/FlamethrowerTower;->g()F

    move-result v0

    move v10, v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v10, -0x40800000    # -1.0f

    :goto_0
    iget v0, v8, Lcom/prineside/tdi2/towers/FlamethrowerTower;->R:F

    mul-float v11, v0, p1

    const/4 v12, 0x2

    invoke-virtual {v8, v12}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Tower;->getTilesInRange()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/towers/FlamethrowerTower;->a0:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v14, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    const/4 v15, 0x0

    :goto_1
    sget-object v0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->a0:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v7, 0x0

    if-ge v15, v1, :cond_d

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/Tile;

    aget-object v5, v0, v15

    iget-object v0, v5, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-static {v0}, Lcom/prineside/tdi2/utils/EntityUtils;->removeNullRefs(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v0, v5, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, v5, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v4, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_b

    iget-object v0, v5, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v0, v0, v3

    iget-object v2, v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    iget v1, v8, Lcom/prineside/tdi2/Tower;->rangeInPixelsSqr:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    invoke-virtual {v8, v2}, Lcom/prineside/tdi2/Tower;->canAttackEnemy(Lcom/prineside/tdi2/Enemy;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/prineside/tdi2/utils/PMath;->getAngleBetweenPoints(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    iget v1, v8, Lcom/prineside/tdi2/Tower;->angle:F

    invoke-static {v1, v0}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenAngles(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/StrictMath;->abs(F)F

    move-result v0

    iget v1, v8, Lcom/prineside/tdi2/towers/FlamethrowerTower;->V:F

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v1, v1, v16

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    sget-object v0, Lcom/prineside/tdi2/enums/SpecialDamageType;->INSTAKILL:Lcom/prineside/tdi2/enums/SpecialDamageType;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/Enemy;->isVulnerableToSpecial(Lcom/prineside/tdi2/enums/SpecialDamageType;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result v0

    iget v1, v2, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    div-float/2addr v0, v1

    cmpg-float v0, v0, v10

    if-gez v0, :cond_7

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->FLAMETHROWER:Lcom/prineside/tdi2/enums/TowerType;

    sget-object v1, Lcom/prineside/tdi2/enums/DamageType;->FIRE:Lcom/prineside/tdi2/enums/DamageType;

    invoke-virtual {v2, v0, v1}, Lcom/prineside/tdi2/Enemy;->getBuffedDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/DamageType;)F

    move-result v0

    cmpl-float v16, v0, v7

    if-lez v16, :cond_6

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result v16

    div-float v16, v16, v0

    const v0, 0x3c23d70a    # 0.01f

    add-float v16, v16, v0

    sget-object v0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->c0:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget v6, v2, Lcom/prineside/tdi2/Enemy;->bounty:F

    const v17, 0x3ecccccd    # 0.4f

    mul-float v6, v6, v17

    float-to-int v6, v6

    const/16 v7, 0x32

    if-le v6, v7, :cond_1

    const/16 v18, 0x32

    goto :goto_3

    :cond_1
    move/from16 v18, v6

    :goto_3
    iget-object v6, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    const/4 v7, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v9, v0

    move-object v0, v6

    move-object/from16 v21, v1

    move-object v1, v2

    move-object v6, v2

    move-object/from16 v2, p0

    move/from16 v22, v3

    move/from16 v3, v16

    move/from16 v16, v4

    move-object/from16 v4, v21

    move-object/from16 v23, v5

    move-object v5, v7

    move-object v7, v6

    const/4 v12, 0x1

    move/from16 v6, v19

    move-object/from16 v19, v7

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-object/from16 v3, v21

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/tdi2/systems/EnemySystem;->killEnemy(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;Lcom/prineside/tdi2/Projectile;)V

    :cond_2
    iget v0, v8, Lcom/prineside/tdi2/towers/FlamethrowerTower;->O:I

    add-int v0, v0, v18

    iput v0, v8, Lcom/prineside/tdi2/towers/FlamethrowerTower;->O:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_5

    rem-int/lit8 v0, v0, 0x5

    sget-object v1, Lcom/prineside/tdi2/towers/FlamethrowerTower;->b0:Lcom/prineside/tdi2/ItemStack;

    if-nez v1, :cond_3

    new-instance v1, Lcom/prineside/tdi2/ItemStack;

    sget-object v2, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    invoke-direct {v1, v2, v12}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    sput-object v1, Lcom/prineside/tdi2/towers/FlamethrowerTower;->b0:Lcom/prineside/tdi2/ItemStack;

    :cond_3
    sget-object v1, Lcom/prineside/tdi2/towers/FlamethrowerTower;->b0:Lcom/prineside/tdi2/ItemStack;

    iget v2, v8, Lcom/prineside/tdi2/towers/FlamethrowerTower;->O:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ItemStack;->setCount(I)V

    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_input:Lcom/prineside/tdi2/systems/InputSystem;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/prineside/tdi2/systems/InputSystem;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v1, v9}, Lcom/prineside/tdi2/CameraController;->mapToStage(Lcom/badlogic/gdx/math/Vector2;)V

    :cond_4
    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    sget-object v2, Lcom/prineside/tdi2/towers/FlamethrowerTower;->b0:Lcom/prineside/tdi2/ItemStack;

    iget v3, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v9, 0x2

    invoke-virtual {v1, v2, v3, v4, v9}, Lcom/prineside/tdi2/systems/GameStateSystem;->addLootIssuedPrizes(Lcom/prineside/tdi2/ItemStack;FFI)V

    iput v0, v8, Lcom/prineside/tdi2/towers/FlamethrowerTower;->O:I

    goto/16 :goto_5

    :cond_5
    const/4 v9, 0x2

    goto/16 :goto_5

    :cond_6
    move/from16 v22, v3

    move/from16 v16, v4

    move-object/from16 v23, v5

    const/4 v9, 0x2

    const/4 v12, 0x1

    goto/16 :goto_5

    :cond_7
    move-object/from16 v19, v2

    move/from16 v22, v3

    move/from16 v16, v4

    move-object/from16 v23, v5

    const/4 v9, 0x2

    const/4 v12, 0x1

    const/high16 v0, 0x41200000    # 10.0f

    if-eqz v13, :cond_9

    iget-object v1, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_FLAMETHROWER_A_COLD_FREEZING:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v1

    invoke-virtual {v8, v12}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_FLAMETHROWER_A_NAPALM_FREEZING:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v2

    add-float/2addr v1, v2

    :cond_8
    move v3, v1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/BuffManager$Factories;->FREEZING:Lcom/prineside/tdi2/buffs/FreezingBuff$FreezingBuffFactory;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/prineside/tdi2/buffs/FreezingBuff;

    const/high16 v2, 0x41200000    # 10.0f

    iget v4, v8, Lcom/prineside/tdi2/towers/FlamethrowerTower;->U:F

    mul-float v5, v4, v0

    const/4 v6, 0x0

    const/16 v17, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v9, v7

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/buffs/FreezingBuff;->setup(Lcom/prineside/tdi2/Tower;FFFFFF)V

    iget-object v0, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->buff:Lcom/prineside/tdi2/systems/BuffSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/BuffSystem;->P_FREEZING:Lcom/prineside/tdi2/buffs/processors/FreezingBuffProcessor;

    move-object/from16 v6, v19

    invoke-virtual {v0, v6, v9}, Lcom/prineside/tdi2/buffs/processors/FreezingBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/FreezingBuff;)Z

    goto :goto_4

    :cond_9
    move-object/from16 v6, v19

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/BuffManager$Factories;->BURN:Lcom/prineside/tdi2/buffs/BurnBuff$BurnBuffFactory;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/prineside/tdi2/buffs/BurnBuff;

    iget v2, v8, Lcom/prineside/tdi2/towers/FlamethrowerTower;->U:F

    mul-float v3, v2, v0

    iget v4, v8, Lcom/prineside/tdi2/towers/FlamethrowerTower;->R:F

    const/4 v5, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/tdi2/buffs/BurnBuff;->setup(Lcom/prineside/tdi2/Tower;FFFLcom/prineside/tdi2/Ability;)V

    iget-object v0, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->buff:Lcom/prineside/tdi2/systems/BuffSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/BuffSystem;->P_BURN:Lcom/prineside/tdi2/buffs/processors/BurnBuffProcessor;

    invoke-virtual {v0, v6, v7}, Lcom/prineside/tdi2/buffs/processors/BurnBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/BurnBuff;)Z

    :goto_4
    iget-object v0, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    sget-object v4, Lcom/prineside/tdi2/enums/DamageType;->FIRE:Lcom/prineside/tdi2/enums/DamageType;

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v1, v6

    move-object/from16 v2, p0

    move v3, v11

    move v6, v7

    move-object v7, v9

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    :goto_5
    iput-boolean v12, v8, Lcom/prineside/tdi2/towers/FlamethrowerTower;->M:Z

    goto :goto_6

    :cond_a
    move/from16 v22, v3

    move/from16 v16, v4

    move-object/from16 v23, v5

    const/4 v12, 0x1

    :goto_6
    add-int/lit8 v3, v22, 0x1

    move/from16 v4, v16

    move-object/from16 v5, v23

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x2

    goto/16 :goto_2

    :cond_b
    move-object v0, v5

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_c
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x2

    goto/16 :goto_1

    :cond_d
    const/4 v12, 0x1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-boolean v0, v8, Lcom/prineside/tdi2/towers/FlamethrowerTower;->N:Z

    if-nez v0, :cond_e

    iget-boolean v0, v8, Lcom/prineside/tdi2/towers/FlamethrowerTower;->M:Z

    if-eqz v0, :cond_e

    iget v0, v8, Lcom/prineside/tdi2/Tower;->shotCount:I

    add-int/2addr v0, v12

    iput v0, v8, Lcom/prineside/tdi2/Tower;->shotCount:I

    iget-object v0, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_sound:Lcom/prineside/tdi2/systems/SoundSystem;

    if-eqz v0, :cond_e

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->SHOT_FLAMETHROWER:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v0, v1, v8}, Lcom/prineside/tdi2/systems/SoundSystem;->playShotSound(Lcom/prineside/tdi2/enums/StaticSoundType;Lcom/prineside/tdi2/Tower;)V

    :cond_e
    iget-boolean v0, v8, Lcom/prineside/tdi2/towers/FlamethrowerTower;->M:Z

    iput-boolean v0, v8, Lcom/prineside/tdi2/towers/FlamethrowerTower;->N:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    iput v0, v8, Lcom/prineside/tdi2/Tower;->A:F

    :cond_f
    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->W:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->W:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    :cond_0
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->M:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->N:Z

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->O:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->P:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->Q:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->R:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->T:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->U:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->V:F

    return-void
.end method

.method public scheduledUpdate(F)V
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->isOutOfOrder()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/FlamethrowerTower;->i()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/ParticleSystem;->willParticleBeSkipped()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isProjectilesDrawing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/FlamethrowerTower;->i()V

    :cond_3
    iget-boolean v3, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->P:Z

    if-eqz v3, :cond_4

    iput-boolean v2, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->P:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/FlamethrowerTower;->i()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/towers/FlamethrowerTower;->h(F)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->M:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->isOutOfOrder()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->W:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/TowerManager$Factories;->FLAMETHROWER:Lcom/prineside/tdi2/towers/FlamethrowerTower$FlamethrowerTowerFactory;

    iget-object p1, p1, Lcom/prineside/tdi2/towers/FlamethrowerTower$FlamethrowerTowerFactory;->j:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iput-object p1, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->W:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/FlamethrowerTower;->f()V

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    iget-object v0, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->W:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {p1, v0, v1}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/FlamethrowerTower;->i()V

    :cond_6
    :goto_1
    return-void
.end method

.method public setAimStrategy(Lcom/prineside/tdi2/Tower$AimStrategy;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tower;->setAimStrategy(Lcom/prineside/tdi2/Tower$AimStrategy;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->P:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/FlamethrowerTower;->i()V

    return-void
.end method

.method public update(F)V
    .locals 7

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tower;->update(F)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->isOutOfOrder()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->T:F

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/Tower;->e(FF)V

    iget v0, p0, Lcom/prineside/tdi2/Tower;->s:I

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->Q:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->Q:F

    cmpl-float p1, v0, v1

    if-ltz p1, :cond_1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->Q:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->findTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Tower;->setTarget(Lcom/prineside/tdi2/Enemy;)V

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->W:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/prineside/tdi2/Tower;->K:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v0, 0x42280000    # 42.0f

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v2, p0, Lcom/prineside/tdi2/Tower;->angle:F

    const/high16 v3, 0x42b40000    # 90.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector2;->rotateDeg(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->W:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v2, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->W:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    iget v2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getAngle()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v2

    iget v4, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->V:F

    neg-float v5, v4

    mul-float v5, v5, v1

    iget v6, p0, Lcom/prineside/tdi2/Tower;->angle:F

    add-float/2addr v5, v6

    add-float/2addr v5, v3

    mul-float v4, v4, v1

    add-float/2addr v4, v6

    add-float/2addr v4, v3

    invoke-virtual {v2, v5, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateCache()V
    .locals 4

    invoke-super {p0}, Lcom/prineside/tdi2/Tower;->updateCache()V

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->DAMAGE:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->R:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->ROTATION_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->T:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->U_BURNING_TIME:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->U:F

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->V:F

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->V:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_FLAMETHROWER_A_SUPPLY_ARC:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->V:F

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->W:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->W:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    :cond_1
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->M:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->N:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget p1, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->O:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-boolean p1, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->P:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget p1, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->Q:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->R:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->T:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->U:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/FlamethrowerTower;->V:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
