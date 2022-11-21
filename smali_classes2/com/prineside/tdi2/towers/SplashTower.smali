.class public Lcom/prineside/tdi2/towers/SplashTower;
.super Lcom/prineside/tdi2/Tower;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/towers/SplashTower$SplashTowerFactory;
    }
.end annotation


# static fields
.field public static final ABILITY_FAST_BULLETS:I = 0x2

.field public static final ABILITY_FAST_MECHANISM:I = 0x1

.field public static final ABILITY_PENETRATING_BULLETS:I

.field public static final Y:F

.field public static final Z:Lcom/badlogic/gdx/math/Vector2;

.field public static final a0:Lcom/badlogic/gdx/math/Vector2;

.field public static final b0:[I


# instance fields
.field public M:Z

.field public N:F

.field public O:I

.field public P:F

.field public Q:F

.field public R:F

.field public T:F

.field public U:I

.field public V:F

.field public W:F

.field public X:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, -0x759a01

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    sput v0, Lcom/prineside/tdi2/towers/SplashTower;->Y:F

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/towers/SplashTower;->Z:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/towers/SplashTower;->a0:Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/tdi2/towers/SplashTower;->b0:[I

    return-void

    nop

    :array_0
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

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->SPLASH:Lcom/prineside/tdi2/enums/TowerType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tower;-><init>(Lcom/prineside/tdi2/enums/TowerType;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/towers/SplashTower;->M:Z

    iput v0, p0, Lcom/prineside/tdi2/towers/SplashTower;->O:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/towers/SplashTower$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/towers/SplashTower;-><init>()V

    return-void
.end method


# virtual methods
.method public canAim()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public drawBase(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 7

    invoke-super {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/Tower;->c(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    sget-object v0, Lcom/prineside/tdi2/towers/SplashTower;->b0:[I

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

    iget-object v4, v4, Lcom/prineside/tdi2/managers/TowerManager$Factories;->SPLASH:Lcom/prineside/tdi2/towers/SplashTower$SplashTowerFactory;

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

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_DRAW_BUILDING_INFO:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p2, v0, v2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getDebugFont(Z)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TSS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/towers/SplashTower;->N:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->boundingBox:Lcom/prineside/tdi2/utils/IntRectangle;

    iget v0, v0, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->boundingBox:Lcom/prineside/tdi2/utils/IntRectangle;

    iget v0, v0, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    int-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    sub-float/2addr v0, v1

    const/high16 v1, 0x42800000    # 64.0f

    add-float v5, v0, v1

    const/high16 v6, 0x43000000    # 128.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_0
    return-void
.end method

.method public drawWeapon(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V
    .locals 15

    move-object v0, p0

    invoke-super/range {p0 .. p5}, Lcom/prineside/tdi2/Tower;->drawWeapon(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/prineside/tdi2/Tile;->visibleOnScreen:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->isOutOfOrder()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/high16 v1, 0x43000000    # 128.0f

    div-float v1, p4, v1

    const/high16 v2, 0x43b40000    # 360.0f

    iget v3, v0, Lcom/prineside/tdi2/towers/SplashTower;->U:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    :goto_0
    iget v4, v0, Lcom/prineside/tdi2/towers/SplashTower;->U:I

    if-ge v3, v4, :cond_0

    int-to-float v4, v3

    mul-float v4, v4, v2

    iget v5, v0, Lcom/prineside/tdi2/Tower;->angle:F

    add-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v5, v5, p4

    add-float v8, p2, v5

    add-float v9, p3, v5

    iget v5, v0, Lcom/prineside/tdi2/towers/SplashTower;->V:F

    mul-float v5, v5, v1

    sget-object v6, Lcom/prineside/tdi2/towers/SplashTower;->Z:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v8, v9, v4, v5, v6}, Lcom/prineside/tdi2/utils/PMath;->getPointByAngleFromPoint(FFFFLcom/badlogic/gdx/math/Vector2;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/TowerManager$Factories;->SPLASH:Lcom/prineside/tdi2/towers/SplashTower$SplashTowerFactory;

    iget-object v7, v4, Lcom/prineside/tdi2/towers/SplashTower$SplashTowerFactory;->j:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v10, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v11, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, v0, Lcom/prineside/tdi2/towers/SplashTower;->W:F

    mul-float v12, v4, v1

    sget v14, Lcom/prineside/tdi2/towers/SplashTower;->Y:F

    move-object/from16 v6, p1

    move v13, v14

    invoke-static/range {v6 .. v14}, Lcom/prineside/tdi2/utils/DrawUtils;->texturedLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAttackDelay()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/towers/SplashTower;->X:F

    return v0
.end method

.method public getScheduledUpdateInterval()F
    .locals 1

    const v0, 0x3de147ae    # 0.11f

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

    const/4 v2, 0x2

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    float-to-double v3, v0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v5, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_SPLASH_A_FAST_BULLETS_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v5}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-float v0, v3

    :cond_0
    if-ne p1, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    float-to-double v0, v0

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_SPLASH_A_PENETRATING_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    double-to-float v0, v0

    :cond_1
    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->ATTACK_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    if-ne p1, v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    float-to-double v0, v0

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_SPLASH_A_FAST_MECHANISM_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    double-to-float v0, v0

    :cond_2
    sget-object v1, Lcom/prineside/tdi2/enums/TowerStatType;->PROJECTILE_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    if-ne p1, v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result p1

    if-eqz p1, :cond_3

    float-to-double v0, v0

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_SPLASH_A_FAST_BULLETS_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    :cond_3
    return v0
.end method

.method public getWeaponTextures()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/TextureRegionConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager;->F:Lcom/prineside/tdi2/managers/TowerManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager$Factories;->SPLASH:Lcom/prineside/tdi2/towers/SplashTower$SplashTowerFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/towers/SplashTower$SplashTowerFactory;->i:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/towers/SplashTower;->M:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/SplashTower;->N:F

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/SplashTower;->O:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/SplashTower;->P:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/SplashTower;->Q:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/SplashTower;->R:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/SplashTower;->T:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/SplashTower;->U:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/SplashTower;->V:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/SplashTower;->W:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/towers/SplashTower;->X:F

    return-void
.end method

.method public scheduledUpdate(F)V
    .locals 7

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->getTilesInRange()Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_4

    iget-object v3, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Tile;

    aget-object v3, v3, v1

    iget-object v4, v3, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v4, v3, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    iget-object v6, v3, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v6, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v6, :cond_0

    invoke-virtual {p0, v6}, Lcom/prineside/tdi2/Tower;->canAttackEnemy(Lcom/prineside/tdi2/Enemy;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v3, v3, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    iput-boolean v2, p0, Lcom/prineside/tdi2/towers/SplashTower;->M:Z

    return-void
.end method

.method public update(F)V
    .locals 12

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower;->isOutOfOrder()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/towers/SplashTower;->N:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/towers/SplashTower;->N:F

    iget-boolean v0, p0, Lcom/prineside/tdi2/towers/SplashTower;->M:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/prineside/tdi2/Tower;->angle:F

    const/high16 v1, 0x42340000    # 45.0f

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/prineside/tdi2/Tower;->angle:F

    :cond_1
    :goto_0
    iget v0, p0, Lcom/prineside/tdi2/towers/SplashTower;->N:F

    iget v1, p0, Lcom/prineside/tdi2/towers/SplashTower;->X:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget v0, p0, Lcom/prineside/tdi2/towers/SplashTower;->O:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/towers/SplashTower;->O:I

    iget v1, p0, Lcom/prineside/tdi2/towers/SplashTower;->U:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    iput v2, p0, Lcom/prineside/tdi2/towers/SplashTower;->O:I

    :cond_2
    iget v0, p0, Lcom/prineside/tdi2/towers/SplashTower;->O:I

    int-to-float v0, v0

    const/high16 v3, 0x43b40000    # 360.0f

    int-to-float v1, v1

    div-float/2addr v3, v1

    mul-float v0, v0, v3

    iget v1, p0, Lcom/prineside/tdi2/Tower;->angle:F

    add-float v11, v0, v1

    sget-object v0, Lcom/prineside/tdi2/towers/SplashTower;->Z:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lcom/prineside/tdi2/towers/SplashTower;->V:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    invoke-static {v0, v11, v1}, Lcom/prineside/tdi2/utils/PMath;->shiftPointByAngle(Lcom/badlogic/gdx/math/Vector2;FF)V

    sget-object v8, Lcom/prineside/tdi2/towers/SplashTower;->a0:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lcom/prineside/tdi2/Tower;->rangeInPixels:F

    invoke-static {v8, v11, v1}, Lcom/prineside/tdi2/utils/PMath;->shiftPointByAngle(Lcom/badlogic/gdx/math/Vector2;FF)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    sget-object v3, Lcom/prineside/tdi2/enums/ProjectileType;->SPLASH:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/managers/ProjectileManager;->getFactory(Lcom/prineside/tdi2/enums/ProjectileType;)Lcom/prineside/tdi2/Projectile$Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Projectile$Factory;->obtain()Lcom/prineside/tdi2/Projectile;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/projectiles/SplashProjectile;

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->projectile:Lcom/prineside/tdi2/systems/ProjectileSystem;

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/systems/ProjectileSystem;->register(Lcom/prineside/tdi2/Projectile;)V

    iget v5, p0, Lcom/prineside/tdi2/towers/SplashTower;->P:F

    iget v6, p0, Lcom/prineside/tdi2/towers/SplashTower;->Q:F

    iget v9, p0, Lcom/prineside/tdi2/towers/SplashTower;->R:F

    move-object v3, v1

    move-object v4, p0

    move-object v7, v0

    invoke-virtual/range {v3 .. v9}, Lcom/prineside/tdi2/projectiles/SplashProjectile;->setup(Lcom/prineside/tdi2/Tower;FFLcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V

    iput v2, v1, Lcom/prineside/tdi2/projectiles/SplashProjectile;->chainKillGeneration:I

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v3, :cond_3

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v4, v1, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->muzzleFlashSmall:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const v7, 0x4119999a    # 9.6f

    const v8, 0x40666667    # 3.6000001f

    const v9, 0x4199999a    # 19.2f

    const v10, 0x41e66667    # 28.800001f

    invoke-virtual/range {v3 .. v11}, Lcom/prineside/tdi2/systems/ParticleSystem;->addFlashParticle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFF)V

    :cond_3
    iget v0, p0, Lcom/prineside/tdi2/Tower;->shotCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/Tower;->shotCount:I

    iget v0, p0, Lcom/prineside/tdi2/towers/SplashTower;->N:F

    iget v1, p0, Lcom/prineside/tdi2/towers/SplashTower;->X:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/prineside/tdi2/towers/SplashTower;->N:F

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_sound:Lcom/prineside/tdi2/systems/SoundSystem;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->SHOT_SPLASH:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v0, v1, p0}, Lcom/prineside/tdi2/systems/SoundSystem;->playShotSound(Lcom/prineside/tdi2/enums/StaticSoundType;Lcom/prineside/tdi2/Tower;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/SplashTower;->getAttackDelay()F

    move-result v0

    iget v1, p0, Lcom/prineside/tdi2/towers/SplashTower;->T:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/prineside/tdi2/towers/SplashTower;->N:F

    :cond_5
    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tower;->update(F)V

    return-void
.end method

.method public updateCache()V
    .locals 2

    invoke-super {p0}, Lcom/prineside/tdi2/Tower;->updateCache()V

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->DAMAGE:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/SplashTower;->P:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->ACCURACY:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/prineside/tdi2/towers/SplashTower;->Q:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->PROJECTILE_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/SplashTower;->R:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->U_PROJECTILE_COUNT:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/towers/SplashTower;->T:F

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->ATTACK_SPEED:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iget v0, p0, Lcom/prineside/tdi2/towers/SplashTower;->T:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/prineside/tdi2/towers/SplashTower;->X:F

    float-to-int v0, v0

    iput v0, p0, Lcom/prineside/tdi2/towers/SplashTower;->U:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x41d00000    # 26.0f

    iput v0, p0, Lcom/prineside/tdi2/towers/SplashTower;->V:F

    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/prineside/tdi2/towers/SplashTower;->W:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41b00000    # 22.0f

    iput v0, p0, Lcom/prineside/tdi2/towers/SplashTower;->V:F

    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/prineside/tdi2/towers/SplashTower;->W:F

    :goto_0
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/towers/SplashTower;->M:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget p1, p0, Lcom/prineside/tdi2/towers/SplashTower;->N:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/SplashTower;->O:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget p1, p0, Lcom/prineside/tdi2/towers/SplashTower;->P:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/SplashTower;->Q:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/SplashTower;->R:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/SplashTower;->T:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/SplashTower;->U:I

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget p1, p0, Lcom/prineside/tdi2/towers/SplashTower;->V:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/SplashTower;->W:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/towers/SplashTower;->X:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
