.class public Lcom/prineside/tdi2/towers/BasicTower$BasicTowerFactory;
.super Lcom/prineside/tdi2/Tower$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/towers/BasicTower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BasicTowerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Tower$Factory<",
        "Lcom/prineside/tdi2/towers/BasicTower;",
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

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->BASIC:Lcom/prineside/tdi2/enums/TowerType;

    const-string v1, "tower-basic"

    invoke-direct {p0, v1, v0}, Lcom/prineside/tdi2/Tower$Factory;-><init>(Ljava/lang/String;Lcom/prineside/tdi2/enums/TowerType;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Tower;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/BasicTower$BasicTowerFactory;->create()Lcom/prineside/tdi2/towers/BasicTower;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/towers/BasicTower;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/towers/BasicTower;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/towers/BasicTower;-><init>(Lcom/prineside/tdi2/towers/BasicTower$1;)V

    return-object v0
.end method

.method public getAbilityConfigs(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/Tower;)[Lcom/prineside/tdi2/Tower$AbilityConfig;
    .locals 8

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower$Factory;->getAbilityConfigs(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/Tower;)[Lcom/prineside/tdi2/Tower$AbilityConfig;

    move-result-object p2

    const/4 v0, 0x0

    aget-object v1, p2, v0

    iget-object v1, v1, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    iget-object v2, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_BASIC_A_DOUBLE_GUN_ATTACK_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    aget-object v1, p2, v5

    iget-object v1, v1, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    iget-object v2, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_BASIC_A_LARGE_CALIBER_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v2, v3, v4, v5}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    aget-object v1, p2, v4

    iget-object v1, v1, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    iget-object v2, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_BASIC_A_FOUNDATION_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v2, v3, v4, v5}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    aget-object v1, p2, v4

    iget-object v1, v1, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    iget-object v2, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_BASIC_A_FOUNDATION_RICOCHET_CHANCE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v1, 0x4

    aget-object v2, p2, v1

    iget-object v2, v2, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    iget-object v3, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v6, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_BASIC_A_COPY_COUNT:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3, v6}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v3

    float-to-double v6, v3

    invoke-static {v6, v7, v0}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    aget-object v0, p2, v1

    iget-object v0, v0, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_BASIC_A_COPY_UPGRADE_LEVEL:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result p1

    float-to-double v1, p1

    invoke-static {v1, v2, v4, v5}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v5

    return-object p2
.end method

.method public getBuildHotKey()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$TEAL;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getGeneralizedStat(Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;)I
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/towers/BasicTower$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v3, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v3

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v3

    :cond_4
    return v1
.end method

.method public setup()V
    .locals 7

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

    aget-object v4, v0, v2

    new-array v6, v2, [Ljava/lang/String;

    aput-object v5, v6, v1

    aput-object v5, v6, v3

    iput-object v6, v4, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v0, v0, v4

    new-array v2, v2, [Ljava/lang/String;

    aput-object v5, v2, v1

    aput-object v5, v2, v3

    iput-object v2, v0, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    return-void
.end method

.method public setupAssets()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    sget-object v1, Lcom/prineside/tdi2/enums/TowerType;->BASIC:Lcom/prineside/tdi2/enums/TowerType;

    const-string v2, "weapon"

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/TowerManager;->getTextureConfig(Lcom/prineside/tdi2/enums/TowerType;Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/towers/BasicTower$BasicTowerFactory;->i:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/prineside/tdi2/utils/TextureRegionConfig;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "tower-basic-weapon-shadow"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v1

    const/high16 v2, 0x42540000    # 53.0f

    const/high16 v3, 0x41c00000    # 24.0f

    const/high16 v4, 0x43000000    # 128.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/TextureRegionConfig;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFF)V

    iput-object v0, p0, Lcom/prineside/tdi2/Tower$Factory;->weaponShadowTexture:Lcom/prineside/tdi2/utils/TextureRegionConfig;

    return-void
.end method
