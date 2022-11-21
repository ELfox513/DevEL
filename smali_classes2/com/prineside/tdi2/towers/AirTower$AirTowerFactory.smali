.class public Lcom/prineside/tdi2/towers/AirTower$AirTowerFactory;
.super Lcom/prineside/tdi2/Tower$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/towers/AirTower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AirTowerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Tower$Factory<",
        "Lcom/prineside/tdi2/towers/AirTower;",
        ">;"
    }
.end annotation


# instance fields
.field public i:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/TextureRegionConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->AIR:Lcom/prineside/tdi2/enums/TowerType;

    const-string v1, "tower-air"

    invoke-direct {p0, v1, v0}, Lcom/prineside/tdi2/Tower$Factory;-><init>(Ljava/lang/String;Lcom/prineside/tdi2/enums/TowerType;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Tower;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/AirTower$AirTowerFactory;->create()Lcom/prineside/tdi2/towers/AirTower;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/towers/AirTower;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/towers/AirTower;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/towers/AirTower;-><init>(Lcom/prineside/tdi2/towers/AirTower$1;)V

    return-object v0
.end method

.method public getAbilityConfigs(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/Tower;)[Lcom/prineside/tdi2/Tower$AbilityConfig;
    .locals 8

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower$Factory;->getAbilityConfigs(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/Tower;)[Lcom/prineside/tdi2/Tower$AbilityConfig;

    move-result-object p2

    iget-object v0, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_AIR_A_HEAVY_WEAPONS_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    const/4 v2, 0x0

    aget-object v3, p2, v2

    iget-object v3, v3, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {v0, v1, v4, v5}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    iget-object v0, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_AIR_A_FAST_MECHANISM_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    aget-object v3, p2, v5

    iget-object v3, v3, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    invoke-static {v0, v1, v4, v5}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    iget-object v0, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_AIR_A_FOUNDATION_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    aget-object v3, p2, v4

    iget-object v3, v3, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    invoke-static {v0, v1, v4, v5}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    iget-object v0, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_AIR_A_AIMED_DROP_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    const/4 v3, 0x3

    aget-object v3, p2, v3

    iget-object v3, v3, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v6

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    const/4 v0, 0x4

    aget-object v0, p2, v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_AIR_A_ULTIMATE_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result p1

    float-to-double v6, p1

    invoke-static {v6, v7, v4, v5}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    return-object p2
.end method

.method public getBuildHotKey()I
    .locals 1

    const/16 v0, 0x34

    return v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getGeneralizedStat(Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;)I
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/towers/AirTower$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v3

    :cond_1
    return v0

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public setup()V
    .locals 6

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

    new-array v4, v3, [Ljava/lang/String;

    aput-object v5, v4, v1

    iput-object v4, v2, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    new-array v4, v3, [Ljava/lang/String;

    aput-object v5, v4, v1

    iput-object v4, v2, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    new-array v4, v3, [Ljava/lang/String;

    aput-object v5, v4, v1

    iput-object v4, v2, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    new-array v2, v3, [Ljava/lang/String;

    aput-object v5, v2, v1

    iput-object v2, v0, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    return-void
.end method

.method public setupAssets()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    sget-object v1, Lcom/prineside/tdi2/enums/TowerType;->AIR:Lcom/prineside/tdi2/enums/TowerType;

    const-string v2, "base"

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/TowerManager;->getTextureConfig(Lcom/prineside/tdi2/enums/TowerType;Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/Tower$Factory;->e:Lcom/badlogic/gdx/utils/Array;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    const-string v2, "weapon"

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/TowerManager;->getTextureConfig(Lcom/prineside/tdi2/enums/TowerType;Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/towers/AirTower$AirTowerFactory;->i:Lcom/badlogic/gdx/utils/Array;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    const-string v2, "base-shadow"

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/TowerManager;->getTextureConfig(Lcom/prineside/tdi2/enums/TowerType;Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/Tower$Factory;->f:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/prineside/tdi2/utils/TextureRegionConfig;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "tower-air-weapon-shadow"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v1

    const/high16 v2, 0x42600000    # 56.0f

    const/high16 v3, 0x41e00000    # 28.0f

    const/high16 v4, 0x43000000    # 128.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/TextureRegionConfig;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFF)V

    iput-object v0, p0, Lcom/prineside/tdi2/Tower$Factory;->weaponShadowTexture:Lcom/prineside/tdi2/utils/TextureRegionConfig;

    return-void
.end method
