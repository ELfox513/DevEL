.class public Lcom/prineside/tdi2/tiles/ScriptTile$ScriptTileFactory;
.super Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/tiles/ScriptTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScriptTileFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Tile$Factory$AbstractFactory<",
        "Lcom/prineside/tdi2/tiles/ScriptTile;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/TileType;->SCRIPT:Lcom/prineside/tdi2/enums/TileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;-><init>(Lcom/prineside/tdi2/enums/TileType;)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/tiles/ScriptTile$ScriptTileFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/tiles/ScriptTile$ScriptTileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Tile;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/ScriptTile$ScriptTileFactory;->create()Lcom/prineside/tdi2/tiles/ScriptTile;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/tiles/ScriptTile;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/tiles/ScriptTile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/tiles/ScriptTile;-><init>(Lcom/prineside/tdi2/tiles/ScriptTile$1;)V

    return-object v0
.end method

.method public bridge synthetic fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Tile;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/tiles/ScriptTile$ScriptTileFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/tiles/ScriptTile;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/tiles/ScriptTile;
    .locals 6

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/tiles/ScriptTile;

    const-string v1, "d"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    invoke-static {}, Lcom/prineside/tdi2/utils/PMath;->generateNewId()J

    move-result-wide v3

    const-string v5, "id"

    invoke-virtual {v2, v5, v3, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/prineside/tdi2/tiles/ScriptTile;->setId(J)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "script"

    invoke-virtual {p1, v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prineside/tdi2/tiles/ScriptTile;->h(Lcom/prineside/tdi2/tiles/ScriptTile;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-object v0
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

    const-string v1, "tile-type-script"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/ScriptTile$ScriptTileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method
