.class public Lcom/prineside/tdi2/tiles/SourceTile$SourceTileFactory;
.super Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/tiles/SourceTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SourceTileFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Tile$Factory$AbstractFactory<",
        "Lcom/prineside/tdi2/tiles/SourceTile;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public final k:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/TileType;->SOURCE:Lcom/prineside/tdi2/enums/TileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;-><init>(Lcom/prineside/tdi2/enums/TileType;)V

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/SourceTile$SourceTileFactory;->k:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Tile;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/SourceTile$SourceTileFactory;->create()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/tiles/SourceTile;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/tiles/SourceTile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/tiles/SourceTile;-><init>(Lcom/prineside/tdi2/tiles/SourceTile$1;)V

    return-object v0
.end method

.method public bridge synthetic createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/Tile;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/tiles/SourceTile$SourceTileFactory;->createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object p1

    return-object p1
.end method

.method public createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/tiles/SourceTile;
    .locals 10

    if-nez p2, :cond_0

    sget-object p2, Lcom/prineside/tdi2/utils/FastRandom;->random:Lcom/badlogic/gdx/math/RandomXS128;

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/SourceTile$SourceTileFactory;->create()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_0
    const/4 v5, 0x5

    const v6, 0x3e4ccccd    # 0.2f

    if-ge v3, v5, :cond_2

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v5

    const/high16 v7, 0x3e800000    # 0.25f

    mul-float v7, v7, p1

    const/high16 v8, 0x3f400000    # 0.75f

    add-float/2addr v7, v8

    cmpl-float v5, v5, v7

    if-lez v5, :cond_1

    sub-float/2addr v4, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    cmpg-float v3, v4, v6

    if-gez v3, :cond_3

    const v4, 0x3e4ccccd    # 0.2f

    :cond_3
    cmpl-float v3, v4, v2

    if-lez v3, :cond_4

    goto :goto_1

    :cond_4
    move v2, v4

    :goto_1
    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/tiles/SourceTile;->setResourceDensity(F)V

    invoke-static {p1}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityFromQuality(F)Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    sget-object v4, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v2, v4, v2

    goto :goto_2

    :cond_5
    sget-object v2, Lcom/prineside/tdi2/enums/ResourceType;->INFIAR:Lcom/prineside/tdi2/enums/ResourceType;

    :goto_2
    invoke-static {p2}, Lcom/prineside/tdi2/utils/PMath;->randomTriangular(Lcom/badlogic/gdx/math/RandomXS128;)F

    move-result v3

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float v3, v3, v4

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_6

    const/4 v3, 0x1

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    add-int/2addr v5, v4

    if-le v3, v5, :cond_7

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    add-int/2addr v3, v4

    :cond_7
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_a

    if-nez v4, :cond_8

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    goto :goto_4

    :cond_8
    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v5

    :goto_4
    sget-object v6, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v7, v6

    sub-int/2addr v7, v5

    int-to-float v7, v7

    const/high16 v8, 0x3fc00000    # 1.5f

    add-float/2addr v7, v8

    const/high16 v8, 0x425c0000    # 55.0f

    const/high16 v9, 0x41700000    # 15.0f

    mul-float v9, v9, p1

    add-float/2addr v9, v8

    mul-float v7, v7, v9

    int-to-float v8, v3

    div-float/2addr v7, v8

    float-to-int v7, v7

    rem-int/lit8 v8, v7, 0xa

    sub-int/2addr v7, v8

    if-gez v7, :cond_9

    const/4 v7, 0x0

    :cond_9
    add-int/lit8 v7, v7, 0xa

    aget-object v5, v6, v5

    invoke-virtual {v0, v5}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourcesCount(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v0, v5, v6}, Lcom/prineside/tdi2/tiles/SourceTile;->setResourcesCount(Lcom/prineside/tdi2/enums/ResourceType;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    return-object v0
.end method

.method public bridge synthetic fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Tile;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/tiles/SourceTile$SourceTileFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/tiles/SourceTile;
    .locals 5

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/tiles/SourceTile;

    const-string v1, "d"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    const-string v2, "rd"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v0, v2}, Lcom/prineside/tdi2/tiles/SourceTile;->f(Lcom/prineside/tdi2/tiles/SourceTile;F)F

    invoke-static {v0}, Lcom/prineside/tdi2/tiles/SourceTile;->e(Lcom/prineside/tdi2/tiles/SourceTile;)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-static {v0, v3}, Lcom/prineside/tdi2/tiles/SourceTile;->f(Lcom/prineside/tdi2/tiles/SourceTile;F)F

    :cond_0
    invoke-static {v0}, Lcom/prineside/tdi2/tiles/SourceTile;->e(Lcom/prineside/tdi2/tiles/SourceTile;)F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    invoke-static {v0, v3}, Lcom/prineside/tdi2/tiles/SourceTile;->f(Lcom/prineside/tdi2/tiles/SourceTile;F)F

    :cond_1
    const-string v2, "r"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/JsonValue;

    const-string v3, "t"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prineside/tdi2/enums/ResourceType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/ResourceType;

    move-result-object v3

    const-string v4, "a"

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-static {v0}, Lcom/prineside/tdi2/tiles/SourceTile;->g(Lcom/prineside/tdi2/tiles/SourceTile;)[I

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v4, v3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/tiles/SourceTile;->h(Lcom/prineside/tdi2/tiles/SourceTile;Z)Z

    :cond_4
    const-string v1, "miner"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/managers/MinerManager;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Miner;

    move-result-object p1

    iput-object p1, v0, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    :cond_5
    return-object v0
.end method

.method public getProbabilityForPrize(FLcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)I
    .locals 0

    iget-object p1, p2, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;->byTileType:[I

    sget-object p2, Lcom/prineside/tdi2/enums/TileType;->SOURCE:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/16 p2, 0x1f4

    if-lt p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x64

    return p1
.end method

.method public setupAssets()V
    .locals 6

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "tile-type-source-crack"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/SourceTile$SourceTileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/SourceTile$SourceTileFactory;->k:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int/lit8 v2, v0, -0x1

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tile-type-source-"

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
    return-void
.end method
