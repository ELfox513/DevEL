.class public Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;
.super Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/tiles/PlatformTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpaceTileFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Tile$Factory$AbstractFactory<",
        "Lcom/prineside/tdi2/tiles/PlatformTile;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public k:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public p:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public final q:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;-><init>(Lcom/prineside/tdi2/enums/TileType;)V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;->k:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;->p:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/enums/SpaceTileBonusType;->values:[Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    array-length v0, v0

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;->q:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Tile;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;->create()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/tiles/PlatformTile;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/tiles/PlatformTile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/tiles/PlatformTile;-><init>(Lcom/prineside/tdi2/tiles/PlatformTile$1;)V

    return-object v0
.end method

.method public bridge synthetic createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/Tile;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;->createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p1

    return-object p1
.end method

.method public createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/tiles/PlatformTile;
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;->create()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    float-to-double v1, p1

    const-wide v3, 0x3fb3333333333333L    # 0.075

    cmpg-double p1, v1, v3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    iput p1, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/enums/SpaceTileBonusType;->values:[Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    array-length v3, p1

    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result p2

    aget-object p1, p1, p2

    iput-object p1, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    const-wide p1, 0x3fc999999999999aL    # 0.2

    cmpg-double v3, v1, p1

    if-gez v3, :cond_1

    const/4 p1, 0x1

    iput p1, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    goto :goto_0

    :cond_1
    const-wide p1, 0x3fd999999999999aL    # 0.4

    cmpg-double v3, v1, p1

    if-gez v3, :cond_2

    const/4 p1, 0x2

    iput p1, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    goto :goto_0

    :cond_2
    const-wide p1, 0x3fe3333333333333L    # 0.6

    cmpg-double v3, v1, p1

    if-gez v3, :cond_3

    const/4 p1, 0x3

    iput p1, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    goto :goto_0

    :cond_3
    const-wide p1, 0x3fe999999999999aL    # 0.8

    cmpg-double v3, v1, p1

    if-gez v3, :cond_4

    const/4 p1, 0x4

    iput p1, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    goto :goto_0

    :cond_4
    const/4 p1, 0x5

    iput p1, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    :goto_0
    return-object v0
.end method

.method public bridge synthetic fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Tile;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/tiles/PlatformTile;
    .locals 3

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/tiles/PlatformTile;

    const-string v1, "d"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    const-string v2, "bt"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prineside/tdi2/enums/SpaceTileBonusType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    const-string v2, "bl"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    if-gez v1, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    :cond_0
    iget v1, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_1

    iput v2, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    :cond_1
    const-string v1, "building"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/tdi2/Building;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Building;

    move-result-object p1

    iput-object p1, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Building;->setTile(Lcom/prineside/tdi2/tiles/PlatformTile;)V

    :cond_2
    return-object v0
.end method

.method public getProbabilityForPrize(FLcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)I
    .locals 0

    const/16 p1, 0x1f4

    return p1
.end method

.method public setupAssets()V
    .locals 7

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "tile-type-platform"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v0, 0x2

    :goto_0
    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;->k:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int/lit8 v2, v0, -0x2

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tile-type-platform-extra-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    if-gt v2, v1, :cond_1

    iget-object v3, p0, Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;->p:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tile-type-platform-shade-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/prineside/tdi2/enums/SpaceTileBonusType;->values:[Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;->q:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-static {v3}, Lcom/prineside/tdi2/SpaceTileBonus;->getIconName(Lcom/prineside/tdi2/enums/SpaceTileBonusType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v3

    aput-object v3, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
