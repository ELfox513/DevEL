.class public Lcom/prineside/tdi2/towers/MinigunTower$MinigunTowerFactory;
.super Lcom/prineside/tdi2/Tower$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/towers/MinigunTower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MinigunTowerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Tower$Factory<",
        "Lcom/prineside/tdi2/towers/MinigunTower;",
        ">;"
    }
.end annotation


# instance fields
.field public bulletTraceTexture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public i:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/TextureRegionConfig;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public l:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/shapes/RangeCircle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->MINIGUN:Lcom/prineside/tdi2/enums/TowerType;

    const-string v1, "tower-minigun"

    invoke-direct {p0, v1, v0}, Lcom/prineside/tdi2/Tower$Factory;-><init>(Ljava/lang/String;Lcom/prineside/tdi2/enums/TowerType;)V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/shapes/RangeCircle;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/towers/MinigunTower$MinigunTowerFactory;->l:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/towers/MinigunTower$MinigunTowerFactory;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/towers/MinigunTower$MinigunTowerFactory;->l:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Tower;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/MinigunTower$MinigunTowerFactory;->create()Lcom/prineside/tdi2/towers/MinigunTower;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/towers/MinigunTower;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/towers/MinigunTower;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/towers/MinigunTower;-><init>(Lcom/prineside/tdi2/towers/MinigunTower$1;)V

    return-object v0
.end method

.method public getAbilityConfigs(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/Tower;)[Lcom/prineside/tdi2/Tower$AbilityConfig;
    .locals 9

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower$Factory;->getAbilityConfigs(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/Tower;)[Lcom/prineside/tdi2/Tower$AbilityConfig;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-object v2, v2, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    iget-object v3, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MINIGUN_A_HEAVY_WEAPONS_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v3

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    aget-object v2, v0, v6

    iget-object v2, v2, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    iget-object v3, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MINIGUN_A_HEAVY_MECH_ACCELERATION:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v3

    invoke-static {v3, v4, v5, v6}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    aget-object v2, v0, v6

    iget-object v2, v2, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    iget-object v3, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MINIGUN_A_HEAVY_MECH_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v3

    invoke-static {v3, v4, v5, v6}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aget-object v2, v0, v5

    iget-object v2, v2, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    iget-object v3, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MINIGUN_A_FOUNDATION_ROTATION:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v3

    invoke-static {v3, v4, v5, v6}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    aget-object v2, v0, v5

    iget-object v2, v2, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    iget-object v3, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MINIGUN_A_FOUNDATION_SPECIAL_BONUS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v3

    float-to-double v7, v3

    invoke-static {v7, v8, v5, v6}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v2, 0x3

    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    iget-object v7, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v8, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MINIGUN_A_HOT_DURATION:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8, v5, v6}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v1

    iget-object v3, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v7, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MINIGUN_A_HOT_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3, v7}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v3

    invoke-virtual {p2, v5}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {p2, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result p2

    add-float/2addr v3, p2

    :cond_0
    aget-object p2, v0, v2

    iget-object p2, p2, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    float-to-double v3, v3

    invoke-static {v3, v4, v5, v6}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v6

    const/4 p2, 0x4

    aget-object v3, v0, p2

    iget-object v3, v3, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    iget-object v4, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v7, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MINIGUN_A_MICROGUN_BUILD_DELAY:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v4

    float-to-double v7, v4

    invoke-static {v7, v8, v5, v6}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    aget-object v3, v0, p2

    iget-object v3, v3, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    iget-object v4, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v7, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MINIGUN_A_MICROGUN_ATTACK_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v4

    float-to-double v7, v4

    invoke-static {v7, v8, v5, v6}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    aget-object v3, v0, p2

    iget-object v3, v3, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    iget-object v4, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v7, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MINIGUN_A_MICROGUN_RANGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v4

    float-to-double v7, v4

    invoke-static {v7, v8, v5, v6}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aget-object p2, v0, p2

    iget-object p2, p2, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_MINIGUN_A_MICROGUN_COUNT:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    int-to-double v3, p1

    invoke-static {v3, v4, v1}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    return-object v0
.end method

.method public getBuildHotKey()I
    .locals 1

    const/16 v0, 0x36

    return v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getGeneralizedStat(Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;)I
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/towers/MinigunTower$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_4

    const/4 v2, 0x5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v4, 0x3

    if-eq p1, v4, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v3

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    return v1
.end method

.method public setup()V
    .locals 8

    invoke-super {p0}, Lcom/prineside/tdi2/Tower$Factory;->setup()V

    iget-object v0, p0, Lcom/prineside/tdi2/Tower$Factory;->g:[Lcom/prineside/tdi2/Tower$AbilityConfig;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v1

    iput-object v4, v2, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    aget-object v2, v0, v3

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    aput-object v5, v6, v1

    aput-object v5, v6, v3

    iput-object v6, v2, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    aget-object v2, v0, v4

    new-array v6, v4, [Ljava/lang/String;

    aput-object v5, v6, v1

    aput-object v5, v6, v3

    iput-object v6, v2, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v6, v0, v2

    new-array v7, v4, [Ljava/lang/String;

    aput-object v5, v7, v1

    aput-object v5, v7, v3

    iput-object v7, v6, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v0, v0, v6

    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v1

    aput-object v5, v6, v3

    aput-object v5, v6, v4

    aput-object v5, v6, v2

    iput-object v6, v0, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    return-void
.end method

.method public setupAssets()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "bullet-trace-smoke"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/towers/MinigunTower$MinigunTowerFactory;->bulletTraceTexture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    sget-object v1, Lcom/prineside/tdi2/enums/TowerType;->MINIGUN:Lcom/prineside/tdi2/enums/TowerType;

    const-string v2, "weapon"

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/TowerManager;->getTextureConfig(Lcom/prineside/tdi2/enums/TowerType;Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/towers/MinigunTower$MinigunTowerFactory;->i:Lcom/badlogic/gdx/utils/Array;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "tower-minigun-weapon-heat"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/towers/MinigunTower$MinigunTowerFactory;->j:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "tower-minigun-weapon-heat-heavy"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/towers/MinigunTower$MinigunTowerFactory;->k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v0, Lcom/prineside/tdi2/utils/TextureRegionConfig;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "tower-minigun-weapon-shadow"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v1

    const/high16 v2, 0x42640000    # 57.0f

    const/high16 v3, 0x42100000    # 36.0f

    const/high16 v4, 0x43000000    # 128.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/TextureRegionConfig;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFF)V

    iput-object v0, p0, Lcom/prineside/tdi2/Tower$Factory;->weaponShadowTexture:Lcom/prineside/tdi2/utils/TextureRegionConfig;

    return-void
.end method
