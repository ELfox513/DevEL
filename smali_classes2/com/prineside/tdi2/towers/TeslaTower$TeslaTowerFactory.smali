.class public Lcom/prineside/tdi2/towers/TeslaTower$TeslaTowerFactory;
.super Lcom/prineside/tdi2/Tower$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/towers/TeslaTower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TeslaTowerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Tower$Factory<",
        "Lcom/prineside/tdi2/towers/TeslaTower;",
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

.field public j:Lcom/badlogic/gdx/graphics/g2d/Animation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/graphics/g2d/Animation<",
            "Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->TESLA:Lcom/prineside/tdi2/enums/TowerType;

    const-string v1, "tower-tesla"

    invoke-direct {p0, v1, v0}, Lcom/prineside/tdi2/Tower$Factory;-><init>(Ljava/lang/String;Lcom/prineside/tdi2/enums/TowerType;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Tower;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/TeslaTower$TeslaTowerFactory;->create()Lcom/prineside/tdi2/towers/TeslaTower;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/towers/TeslaTower;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/towers/TeslaTower;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/towers/TeslaTower;-><init>(Lcom/prineside/tdi2/towers/TeslaTower$1;)V

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

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_TESLA_A_CURRENT_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

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

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_TESLA_A_BATTERIES_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v2, v3, v4, v5}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    aget-object v1, p2, v5

    iget-object v1, v1, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    iget-object v2, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_TESLA_A_BATTERIES_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v2, v3, v4, v5}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aget-object v1, p2, v4

    iget-object v1, v1, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    iget-object v2, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_TESLA_A_VOLTAGE_LENGTH:Lcom/prineside/tdi2/enums/GameValueType;

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

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_TESLA_A_VOLTAGE_MIN_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v1, 0x3

    aget-object v1, p2, v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    iget-object v2, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_TESLA_A_BALL_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3, v0}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v1, 0x4

    aget-object v2, p2, v1

    iget-object v2, v2, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    iget-object v3, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v6, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_TESLA_A_ULTIMATE_KILL_INTERVAL:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3, v6}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v3

    int-to-double v6, v3

    invoke-static {v6, v7, v0}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    aget-object v0, p2, v1

    iget-object v0, v0, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    iget-object v2, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_TESLA_A_ULTIMATE_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    aget-object v0, p2, v1

    iget-object v0, v0, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_TESLA_A_ULTIMATE_DURATION:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result p1

    float-to-double v1, p1

    invoke-static {v1, v2, v4, v5}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    return-object p2
.end method

.method public getBuildHotKey()I
    .locals 1

    const/16 v0, 0x1f

    return v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$INDIGO;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getGeneralizedStat(Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;)I
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/towers/TeslaTower$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    const/4 v2, 0x3

    if-eq p1, v0, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v2

    :cond_1
    return v1

    :cond_2
    return v0

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

    new-array v7, v3, [Ljava/lang/String;

    aput-object v5, v7, v1

    iput-object v7, v6, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v0, v0, v6

    new-array v2, v2, [Ljava/lang/String;

    aput-object v5, v2, v1

    aput-object v5, v2, v3

    aput-object v5, v2, v4

    iput-object v2, v0, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    return-void
.end method

.method public setupAssets()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    sget-object v1, Lcom/prineside/tdi2/enums/TowerType;->TESLA:Lcom/prineside/tdi2/enums/TowerType;

    const-string v2, "weapon"

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/TowerManager;->getTextureConfig(Lcom/prineside/tdi2/enums/TowerType;Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/towers/TeslaTower$TeslaTowerFactory;->i:Lcom/badlogic/gdx/utils/Array;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->unitManager:Lcom/prineside/tdi2/managers/UnitManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UnitManager;->F:Lcom/prineside/tdi2/managers/UnitManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UnitManager$Factories;->BALL_LIGHTNING:Lcom/prineside/tdi2/units/BallLightningUnit$BallLightningUnitFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/units/BallLightningUnit$BallLightningUnitFactory;->getBallAnimation()Lcom/badlogic/gdx/graphics/g2d/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/towers/TeslaTower$TeslaTowerFactory;->j:Lcom/badlogic/gdx/graphics/g2d/Animation;

    new-instance v0, Lcom/prineside/tdi2/utils/TextureRegionConfig;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "tower-tesla-weapon-shadow"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v1

    const/high16 v2, 0x42640000    # 57.0f

    const/high16 v3, 0x42100000    # 36.0f

    const/high16 v4, 0x43000000    # 128.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/TextureRegionConfig;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFF)V

    iput-object v0, p0, Lcom/prineside/tdi2/Tower$Factory;->weaponShadowTexture:Lcom/prineside/tdi2/utils/TextureRegionConfig;

    return-void
.end method
