.class public Lcom/prineside/tdi2/tiles/GameValueTile$GameValueTileFactory;
.super Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/tiles/GameValueTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameValueTileFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Tile$Factory$AbstractFactory<",
        "Lcom/prineside/tdi2/tiles/GameValueTile;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/TileType;->GAME_VALUE:Lcom/prineside/tdi2/enums/TileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;-><init>(Lcom/prineside/tdi2/enums/TileType;)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/tiles/GameValueTile$GameValueTileFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/tiles/GameValueTile$GameValueTileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Tile;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/GameValueTile$GameValueTileFactory;->create()Lcom/prineside/tdi2/tiles/GameValueTile;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/tiles/GameValueTile;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/tiles/GameValueTile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/tiles/GameValueTile;-><init>(Lcom/prineside/tdi2/tiles/GameValueTile$1;)V

    return-object v0
.end method

.method public create(Lcom/prineside/tdi2/enums/GameValueType;D)Lcom/prineside/tdi2/tiles/GameValueTile;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/tiles/GameValueTile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/tiles/GameValueTile;-><init>(Lcom/prineside/tdi2/tiles/GameValueTile$1;)V

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/tiles/GameValueTile;->setGameValueType(Lcom/prineside/tdi2/enums/GameValueType;)V

    invoke-virtual {v0, p2, p3}, Lcom/prineside/tdi2/tiles/GameValueTile;->setDelta(D)V

    return-object v0
.end method

.method public create(Lcom/prineside/tdi2/enums/GameValueType;DZ)Lcom/prineside/tdi2/tiles/GameValueTile;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/tiles/GameValueTile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/tiles/GameValueTile;-><init>(Lcom/prineside/tdi2/tiles/GameValueTile$1;)V

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/tiles/GameValueTile;->setGameValueType(Lcom/prineside/tdi2/enums/GameValueType;)V

    invoke-virtual {v0, p2, p3}, Lcom/prineside/tdi2/tiles/GameValueTile;->setDelta(D)V

    invoke-virtual {v0, p4}, Lcom/prineside/tdi2/tiles/GameValueTile;->setOverwrite(Z)V

    return-object v0
.end method

.method public bridge synthetic fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Tile;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/tiles/GameValueTile$GameValueTileFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/tiles/GameValueTile;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/tiles/GameValueTile;
    .locals 6

    const-string v0, "gv"

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Tile;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/tiles/GameValueTile;

    const-string v2, "d"

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prineside/tdi2/enums/GameValueType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->EMOJI_ENEMIES:Lcom/prineside/tdi2/enums/GameValueType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to load GV: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "[gv is empty]"

    invoke-virtual {p1, v0, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "GameValueTile"

    invoke-static {v4, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    :goto_0
    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/tiles/GameValueTile;->setGameValueType(Lcom/prineside/tdi2/enums/GameValueType;)V

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/prineside/tdi2/tiles/GameValueTile;->setDelta(D)V

    const-string v0, "o"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/tiles/GameValueTile;->setOverwrite(Z)V

    :cond_1
    return-object v1
.end method

.method public getProbabilityForPrize(FLcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setupAssets()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "tile-type-game-value-base"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/GameValueTile$GameValueTileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method
