.class public Lcom/prineside/tdi2/towers/CrusherTower$CrusherTowerFactory;
.super Lcom/prineside/tdi2/Tower$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/towers/CrusherTower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CrusherTowerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Tower$Factory<",
        "Lcom/prineside/tdi2/towers/CrusherTower;",
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

.field public j:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->CRUSHER:Lcom/prineside/tdi2/enums/TowerType;

    const-string v1, "tower-crusher"

    invoke-direct {p0, v1, v0}, Lcom/prineside/tdi2/Tower$Factory;-><init>(Ljava/lang/String;Lcom/prineside/tdi2/enums/TowerType;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Tower;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/CrusherTower$CrusherTowerFactory;->create()Lcom/prineside/tdi2/towers/CrusherTower;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/towers/CrusherTower;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/towers/CrusherTower;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/towers/CrusherTower;-><init>(Lcom/prineside/tdi2/towers/CrusherTower$1;)V

    return-object v0
.end method

.method public getAbilityConfigs(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/Tower;)[Lcom/prineside/tdi2/Tower$AbilityConfig;
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tower$Factory;->getAbilityConfigs(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/Tower;)[Lcom/prineside/tdi2/Tower$AbilityConfig;

    move-result-object v0

    iget-object v1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_CRUSHER_A_HEAVY_VICE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v1

    const/4 v3, 0x0

    aget-object v4, v0, v3

    iget-object v4, v4, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {v1, v2, v5, v6}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    iget-object v1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_CRUSHER_A_INCREASED_CAPACITY:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v1

    int-to-double v1, v1

    aget-object v4, v0, v6

    iget-object v4, v4, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    invoke-static {v1, v2, v3, v6}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    iget-object v1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_CRUSHER_A_CAREFUL_PROCESSING:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v1

    aget-object v4, v0, v5

    iget-object v4, v4, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    invoke-static {v1, v2, v5, v6}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    const/4 v1, 0x3

    aget-object v1, v0, v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    check-cast p2, Lcom/prineside/tdi2/towers/CrusherTower;

    invoke-virtual {p2}, Lcom/prineside/tdi2/towers/CrusherTower;->getDisorientationChance()F

    move-result v2

    float-to-double v4, v2

    invoke-static {v4, v5, v6, v6}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->TOWER_CRUSHER_A_ULTIMATE_COINS_LIMIT:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    const/4 v1, 0x4

    aget-object v2, v0, v1

    iget-object v2, v2, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    invoke-virtual {p2}, Lcom/prineside/tdi2/towers/CrusherTower;->getDisorientedUnitCoinPerTile()F

    move-result p2

    float-to-double v4, p2

    invoke-static {v4, v5, v6, v6}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    aget-object p2, v0, v1

    iget-object p2, p2, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    int-to-double v1, p1

    invoke-static {v1, v2, v6, v6}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v6

    return-object v0
.end method

.method public getBuildHotKey()I
    .locals 1

    const/16 v0, 0x31

    return v0
.end method

.method public getBuildPrice(Lcom/prineside/tdi2/GameSystemProvider;)I
    .locals 5

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tower$Factory;->getBuildPrice(Lcom/prineside/tdi2/GameSystemProvider;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p1, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object v3, v3, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v4, :cond_1

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Tower;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    sget-object v4, Lcom/prineside/tdi2/enums/TowerType;->CRUSHER:Lcom/prineside/tdi2/enums/TowerType;

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    int-to-double v1, v2

    const-wide v3, 0x3ff99999a0000000L    # 1.600000023841858

    invoke-static {v1, v2, v3, v4}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v1, p1

    int-to-float p1, v0

    mul-float p1, p1, v1

    float-to-int p1, p1

    return p1
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$BROWN;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getGeneralizedStat(Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;)I
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/towers/CrusherTower$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x5

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    if-eq p1, v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0

    :cond_1
    return v2

    :cond_2
    return v0
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

    new-array v6, v3, [Ljava/lang/String;

    aput-object v5, v6, v1

    iput-object v6, v4, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v4, v0, v4

    new-array v6, v3, [Ljava/lang/String;

    aput-object v5, v6, v1

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
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "tower-crusher-hook"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/towers/CrusherTower$CrusherTowerFactory;->j:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "crusher-chain"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/towers/CrusherTower$CrusherTowerFactory;->k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    sget-object v1, Lcom/prineside/tdi2/enums/TowerType;->CRUSHER:Lcom/prineside/tdi2/enums/TowerType;

    const-string v2, "weapon"

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/TowerManager;->getTextureConfig(Lcom/prineside/tdi2/enums/TowerType;Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/towers/CrusherTower$CrusherTowerFactory;->i:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method
