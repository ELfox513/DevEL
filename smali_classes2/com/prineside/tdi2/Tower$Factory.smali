.class public abstract Lcom/prineside/tdi2/Tower$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Tower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/prineside/tdi2/Tower;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/prineside/tdi2/enums/TowerType;

.field public c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public e:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/TextureRegionConfig;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/TextureRegionConfig;",
            ">;"
        }
    .end annotation
.end field

.field public final g:[Lcom/prineside/tdi2/Tower$AbilityConfig;

.field public h:[Ljava/lang/String;

.field public roundedSmallRectTextureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public weaponShadowTexture:Lcom/prineside/tdi2/utils/TextureRegionConfig;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/prineside/tdi2/enums/TowerType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/prineside/tdi2/Tower$AbilityConfig;

    iput-object v0, p0, Lcom/prineside/tdi2/Tower$Factory;->g:[Lcom/prineside/tdi2/Tower$AbilityConfig;

    iput-object p1, p0, Lcom/prineside/tdi2/Tower$Factory;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/prineside/tdi2/Tower$Factory;->b:Lcom/prineside/tdi2/enums/TowerType;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/Tower$Factory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/Tower$Factory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object p0
.end method


# virtual methods
.method public canKillEnemies()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract create()Lcom/prineside/tdi2/Tower;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public createIconActor(F)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v2, p0, Lcom/prineside/tdi2/Tower$Factory;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v0, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    return-object v0
.end method

.method public getAbilityConfigs(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/Tower;)[Lcom/prineside/tdi2/Tower$AbilityConfig;
    .locals 2

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/GameValueType;->TOWERS_POWERFUL_ABILITY_PWR:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide p1

    double-to-float p1, p1

    iget-object p2, p0, Lcom/prineside/tdi2/Tower$Factory;->g:[Lcom/prineside/tdi2/Tower$AbilityConfig;

    const/4 v0, 0x5

    aget-object p2, p2, v0

    iget-object p2, p2, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    float-to-double v0, p1

    const/4 p1, 0x1

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DI)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p2, v0

    iget-object p1, p0, Lcom/prineside/tdi2/Tower$Factory;->g:[Lcom/prineside/tdi2/Tower$AbilityConfig;

    return-object p1
.end method

.method public final getAbilityNames()[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Tower$Factory;->h:[Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Tower$Factory;->b:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/TowerManager;->getAbilitiesConfig(Lcom/prineside/tdi2/enums/TowerType;)[Lcom/prineside/tdi2/managers/TowerManager$TowerAbilityConfig;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/prineside/tdi2/Tower$Factory;->h:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/Tower$Factory;->h:[Ljava/lang/String;

    aget-object v3, v0, v1

    iget-object v3, v3, Lcom/prineside/tdi2/managers/TowerManager$TowerAbilityConfig;->name:Ljava/lang/String;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Tower$Factory;->h:[Ljava/lang/String;

    return-object v0
.end method

.method public final getAbilityTextures(I)Lcom/badlogic/gdx/utils/Array;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/TextureRegionConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Tower$Factory;->b:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/TowerManager;->getAbilitiesConfig(Lcom/prineside/tdi2/enums/TowerType;)[Lcom/prineside/tdi2/managers/TowerManager$TowerAbilityConfig;

    move-result-object v0

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/prineside/tdi2/managers/TowerManager$TowerAbilityConfig;->textures:Lcom/badlogic/gdx/utils/Array;

    return-object p1
.end method

.method public final getBaseTextures()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/TextureRegionConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/Tower$Factory;->e:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public abstract getBuildHotKey()I
.end method

.method public getBuildPrice(Lcom/prineside/tdi2/GameSystemProvider;)I
    .locals 2

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Tower$Factory;->b:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/TowerManager;->getPriceGameValueType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    return p1
.end method

.method public abstract getColor()Lcom/badlogic/gdx/graphics/Color;
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Tower$Factory;->b:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/TowerManager;->getDescription(Lcom/prineside/tdi2/enums/TowerType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getGeneralizedStat(Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;)I
.end method

.method public getIconTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Tower$Factory;->c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public final getShadowTextures()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/TextureRegionConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/Tower$Factory;->f:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Tower$Factory;->b:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/TowerManager;->getTitle(Lcom/prineside/tdi2/enums/TowerType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable(Lcom/prineside/tdi2/GameValueProvider;)Z
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Tower$Factory;->b:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/TowerManager;->getTowerGameValueType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/prineside/tdi2/GameValueProvider;->getBooleanValue(Lcom/prineside/tdi2/enums/GameValueType;)Z

    move-result p1

    return p1
.end method

.method public receivesSpaceTileBonus(Lcom/prineside/tdi2/enums/SpaceTileBonusType;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/SpaceTileBonus;->c:[Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v4, p0, Lcom/prineside/tdi2/Tower$Factory;->b:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v3, v4, v1}, Lcom/prineside/tdi2/managers/TowerManager;->hasStat(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/TowerStatType;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    if-nez v1, :cond_3

    sget-object v1, Lcom/prineside/tdi2/enums/SpaceTileBonusType;->BONUS_COINS:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower$Factory;->canKillEnemies()Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method public setup()V
    .locals 8

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    if-eqz v0, :cond_2

    const-string v1, "rounded-small-rect"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/Tower$Factory;->roundedSmallRectTextureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Tower$Factory;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/Tower$Factory;->c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/prineside/tdi2/Tower$Factory;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-shape"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/Tower$Factory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Tower$Factory;->b:Lcom/prineside/tdi2/enums/TowerType;

    const-string v2, "base"

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/TowerManager;->getTextureConfig(Lcom/prineside/tdi2/enums/TowerType;Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/Tower$Factory;->e:Lcom/badlogic/gdx/utils/Array;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Tower$Factory;->b:Lcom/prineside/tdi2/enums/TowerType;

    const-string v2, "base-shadow"

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/TowerManager;->getTextureConfig(Lcom/prineside/tdi2/enums/TowerType;Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/Tower$Factory;->f:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, p0, Lcom/prineside/tdi2/Tower$Factory;->e:Lcom/badlogic/gdx/utils/Array;

    const-string v1, "Tower"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base texture not found for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/Tower$Factory;->b:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Tower$Factory;->f:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base shadow texture not found for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/Tower$Factory;->b:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower$Factory;->setupAssets()V

    :cond_2
    invoke-virtual {p0}, Lcom/prineside/tdi2/Tower$Factory;->getAbilityNames()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/prineside/tdi2/Tower$Factory;->g:[Lcom/prineside/tdi2/Tower$AbilityConfig;

    new-instance v3, Lcom/prineside/tdi2/Tower$AbilityConfig;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tower_ability_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/prineside/tdi2/Tower$Factory;->b:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v0, v1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_name"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/prineside/tdi2/Tower$Factory;->b:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v1

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_description"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/prineside/tdi2/Tower$AbilityConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/Tower$Factory;->g:[Lcom/prineside/tdi2/Tower$AbilityConfig;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/prineside/tdi2/Tower$AbilityConfig;->descriptionArgs:[Ljava/lang/String;

    return-void
.end method

.method public setupAssets()V
    .locals 0

    return-void
.end method
