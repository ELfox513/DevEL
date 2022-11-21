.class public Lcom/prineside/tdi2/managers/TileManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/TileManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/TileManager$Factories;,
        Lcom/prineside/tdi2/managers/TileManager$Serializer;
    }
.end annotation


# instance fields
.field public final F:Lcom/prineside/tdi2/managers/TileManager$Factories;

.field public final a:[Lcom/prineside/tdi2/Tile$Factory;

.field public final b:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    new-instance v0, Lcom/prineside/tdi2/managers/TileManager$Factories;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/TileManager$Factories;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    sget-object v1, Lcom/prineside/tdi2/enums/TileType;->values:[Lcom/prineside/tdi2/enums/TileType;

    array-length v2, v1

    new-array v2, v2, [Lcom/prineside/tdi2/Tile$Factory;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/TileManager;->a:[Lcom/prineside/tdi2/Tile$Factory;

    const/16 v3, 0x10

    new-array v3, v3, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v3, p0, Lcom/prineside/tdi2/managers/TileManager;->b:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v3, Lcom/prineside/tdi2/enums/TileType;->ROAD:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/tiles/RoadTile$RoadTileFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/tiles/RoadTile$RoadTileFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/TileManager$Factories;->ROAD:Lcom/prineside/tdi2/tiles/RoadTile$RoadTileFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/TileManager$Factories;->PLATFORM:Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/TileType;->SPAWN:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/TileManager$Factories;->SPAWN:Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/TileType;->TARGET:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/TileManager$Factories;->TARGET:Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/TileType;->SOURCE:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/tiles/SourceTile$SourceTileFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/tiles/SourceTile$SourceTileFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/TileManager$Factories;->SOURCE:Lcom/prineside/tdi2/tiles/SourceTile$SourceTileFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/TileType;->XM_MUSIC_TRACK:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/TileManager$Factories;->XM_MUSIC_TRACK:Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/TileType;->CORE:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/TileManager$Factories;->CORE:Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/TileType;->GAME_VALUE:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/tiles/GameValueTile$GameValueTileFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/tiles/GameValueTile$GameValueTileFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/TileManager$Factories;->GAME_VALUE:Lcom/prineside/tdi2/tiles/GameValueTile$GameValueTileFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/TileType;->BOSS:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/TileManager$Factories;->BOSS:Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/TileType;->SCRIPT:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/tiles/ScriptTile$ScriptTileFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/tiles/ScriptTile$ScriptTileFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/TileManager$Factories;->SCRIPT:Lcom/prineside/tdi2/tiles/ScriptTile$ScriptTileFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/TileType;->DUMMY:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/tiles/DummyTile$DummyTileFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/tiles/DummyTile$DummyTileFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/TileManager$Factories;->DUMMY:Lcom/prineside/tdi2/tiles/DummyTile$DummyTileFactory;

    aput-object v4, v2, v3

    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    iget-object v4, p0, Lcom/prineside/tdi2/managers/TileManager;->a:[Lcom/prineside/tdi2/Tile$Factory;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, v4, v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not all tile factories were created"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public createRandomTile(FLcom/badlogic/gdx/math/RandomXS128;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)Lcom/prineside/tdi2/Tile;
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/TileManager;->a:[Lcom/prineside/tdi2/Tile$Factory;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    invoke-interface {v5, p1, p3}, Lcom/prineside/tdi2/Tile$Factory;->getProbabilityForPrize(FLcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/TileManager;->a:[Lcom/prineside/tdi2/Tile$Factory;

    array-length v3, v1

    :goto_2
    if-ge v2, v3, :cond_5

    aget-object v4, v1, v2

    invoke-interface {v4, p1, p3}, Lcom/prineside/tdi2/Tile$Factory;->getProbabilityForPrize(FLcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)I

    move-result v5

    sub-int/2addr v0, v5

    if-gtz v0, :cond_4

    if-lez v5, :cond_4

    invoke-interface {v4, p1, p2}, Lcom/prineside/tdi2/Tile$Factory;->createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/managers/TileManager;->createRandomTile(FLcom/badlogic/gdx/math/RandomXS128;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)Lcom/prineside/tdi2/Tile;

    move-result-object p1

    return-object p1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public createTileArrayFromJson(Lcom/badlogic/gdx/utils/JsonValue;Z)[[Lcom/prineside/tdi2/Tile;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "width"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "height"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "tiles"

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v0, 0x0

    aput v1, v2, v0

    const-class v0, Lcom/prineside/tdi2/Tile;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/prineside/tdi2/Tile;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/JsonValue;

    const-string v4, "x"

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "y"

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eqz p2, :cond_0

    sub-int v5, v1, v5

    sub-int/2addr v5, v3

    :cond_0
    aget-object v6, v0, v5

    aget-object v7, v6, v4

    if-nez v7, :cond_1

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/managers/TileManager;->createTileFromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Tile;

    move-result-object v2

    aput-object v2, v6, v4

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Duplicate tile "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object v0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "JsonValue must be an object"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public createTileFromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Tile;
    .locals 1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/tdi2/enums/TileType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/TileType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/TileManager;->getFactory(Lcom/prineside/tdi2/enums/TileType;)Lcom/prineside/tdi2/Tile$Factory;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/prineside/tdi2/Tile$Factory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Tile;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "JsonValue must be an object"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createTileFromJsonString(Ljava/lang/String;)Lcom/prineside/tdi2/Tile;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/TileManager;->createTileFromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Tile;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getFactory(Lcom/prineside/tdi2/enums/TileType;)Lcom/prineside/tdi2/Tile$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/enums/TileType;",
            ")",
            "Lcom/prineside/tdi2/Tile$Factory<",
            "+",
            "Lcom/prineside/tdi2/Tile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TileManager;->a:[Lcom/prineside/tdi2/Tile$Factory;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getRoadTexture(Lcom/prineside/tdi2/Tile;Lcom/prineside/tdi2/Tile;Lcom/prineside/tdi2/Tile;Lcom/prineside/tdi2/Tile;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/prineside/tdi2/Tile;->isRoadType()Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p3, 0x8

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/prineside/tdi2/Tile;->isRoadType()Z

    move-result p2

    if-eqz p2, :cond_1

    add-int/lit8 p3, p3, 0x4

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/prineside/tdi2/Tile;->isRoadType()Z

    move-result p2

    if-eqz p2, :cond_2

    add-int/lit8 p3, p3, 0x2

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->isRoadType()Z

    move-result p1

    if-eqz p1, :cond_3

    add-int/lit8 p3, p3, 0x1

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/managers/TileManager;->b:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object p1, p1, p3

    return-object p1
.end method

.method public setup()V
    .locals 7

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v0, 0x8

    const-string v4, "x"

    const-string v5, "o"

    if-eqz v3, :cond_0

    move-object v3, v4

    goto :goto_1

    :cond_0
    move-object v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    move-object v2, v4

    goto :goto_2

    :cond_1
    move-object v2, v5

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    move-object v2, v4

    goto :goto_3

    :cond_2
    move-object v2, v5

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_3
    move-object v4, v5

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/prineside/tdi2/managers/TileManager;->b:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tile-type-road-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/prineside/tdi2/managers/TileManager;->a:[Lcom/prineside/tdi2/Tile$Factory;

    array-length v2, v0

    :goto_5
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    invoke-interface {v3}, Lcom/prineside/tdi2/Tile$Factory;->setup()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method
