.class public Lcom/prineside/tdi2/tiles/RoadTile$RoadTileFactory;
.super Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/tiles/RoadTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoadTileFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Tile$Factory$AbstractFactory<",
        "Lcom/prineside/tdi2/tiles/RoadTile;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/TileType;->ROAD:Lcom/prineside/tdi2/enums/TileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;-><init>(Lcom/prineside/tdi2/enums/TileType;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Tile;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/RoadTile$RoadTileFactory;->create()Lcom/prineside/tdi2/tiles/RoadTile;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/tiles/RoadTile;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/tiles/RoadTile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/tiles/RoadTile;-><init>(Lcom/prineside/tdi2/tiles/RoadTile$1;)V

    return-object v0
.end method

.method public getProbabilityForPrize(FLcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)I
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p2, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;->byTileType:[I

    sget-object p2, Lcom/prineside/tdi2/enums/TileType;->ROAD:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x5

    if-ge p1, p2, :cond_1

    const/16 p1, 0xfa

    return p1

    :cond_1
    const/16 p2, 0xf

    const/16 v0, 0x96

    if-ge p1, p2, :cond_2

    return v0

    :cond_2
    const/16 p2, 0x32

    if-ge p1, p2, :cond_3

    const/16 p1, 0x64

    return p1

    :cond_3
    if-ge p1, v0, :cond_4

    return p2

    :cond_4
    const/16 p1, 0xa

    return p1
.end method
