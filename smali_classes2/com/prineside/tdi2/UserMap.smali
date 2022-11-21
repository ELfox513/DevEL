.class public Lcom/prineside/tdi2/UserMap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public creationTimestamp:J

.field public id:Ljava/lang/String;

.field public map:Lcom/prineside/tdi2/Map;

.field public name:Ljava/lang/String;

.field public submittedOnline:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "M-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->generateUniqueDistinguishableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/UserMap;->id:Ljava/lang/String;

    iput-object p1, p0, Lcom/prineside/tdi2/UserMap;->name:Ljava/lang/String;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/prineside/tdi2/UserMap;->creationTimestamp:J

    new-instance p1, Lcom/prineside/tdi2/Map;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->userMapManager:Lcom/prineside/tdi2/managers/UserMapManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UserMapManager;->getMaxMapSize()I

    move-result v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->userMapManager:Lcom/prineside/tdi2/managers/UserMapManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UserMapManager;->getMaxMapSize()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/prineside/tdi2/Map;-><init>(II)V

    iput-object p1, p0, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    iget v0, p1, Lcom/prineside/tdi2/Map;->widthTiles:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iget p1, p1, Lcom/prineside/tdi2/Map;->heightTiles:I

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->TILE:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsByType(Lcom/prineside/tdi2/enums/ItemType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v3, v2

    const/4 v4, 0x0

    :goto_0
    iget v5, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v5, :cond_2

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v5}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/items/TileItem;

    iget-object v5, v5, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    iget-object v6, v5, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v7, Lcom/prineside/tdi2/enums/TileType;->SPAWN:Lcom/prineside/tdi2/enums/TileType;

    if-ne v6, v7, :cond_0

    move-object v2, v5

    goto :goto_1

    :cond_0
    sget-object v7, Lcom/prineside/tdi2/enums/TileType;->TARGET:Lcom/prineside/tdi2/enums/TileType;

    if-ne v6, v7, :cond_1

    move-object v3, v5

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    invoke-virtual {v1, v0, p1, v2}, Lcom/prineside/tdi2/Map;->setTile(IILcom/prineside/tdi2/Tile;)V

    iget-object v1, p0, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0, p1, v3}, Lcom/prineside/tdi2/Map;->setTile(IILcom/prineside/tdi2/Tile;)V

    return-void
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/UserMap;
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/UserMap;

    invoke-direct {v0}, Lcom/prineside/tdi2/UserMap;-><init>()V

    const-string v1, "id"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/UserMap;->id:Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/UserMap;->name:Ljava/lang/String;

    const-string v1, "creationTimestamp"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/prineside/tdi2/UserMap;->creationTimestamp:J

    const-string v1, "submittedOnline"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/prineside/tdi2/UserMap;->submittedOnline:Z

    const-string v1, "map"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p0

    invoke-static {p0}, Lcom/prineside/tdi2/Map;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Map;

    move-result-object p0

    iput-object p0, v0, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    return-object v0
.end method


# virtual methods
.method public removeUnexistentTilesFromMap()Z
    .locals 10

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->TILE:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsByType(Lcom/prineside/tdi2/enums/ItemType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v4, :cond_0

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v4}, Lcom/prineside/tdi2/ItemStack;->cpy()Lcom/prineside/tdi2/ItemStack;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    iget v4, v4, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ge v1, v4, :cond_6

    const/4 v4, 0x0

    :goto_2
    iget-object v5, p0, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    iget v6, v5, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge v4, v6, :cond_5

    invoke-virtual {v5, v4, v1}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    goto :goto_5

    :cond_1
    const/4 v7, 0x0

    :goto_3
    iget v8, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v8, :cond_3

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v9

    check-cast v9, Lcom/prineside/tdi2/items/TileItem;

    iget-object v9, v9, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    invoke-virtual {v9, v5}, Lcom/prineside/tdi2/Tile;->sameAs(Lcom/prineside/tdi2/Tile;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v7

    if-lez v7, :cond_3

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v8, v7}, Lcom/prineside/tdi2/ItemStack;->setCount(I)V

    const/4 v7, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_4
    if-nez v7, :cond_4

    iget-object v3, p0, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v1, v7}, Lcom/prineside/tdi2/Map;->setTile(IILcom/prineside/tdi2/Tile;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removed tile at "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/prineside/tdi2/Tile;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "UserMap"

    invoke-static {v5, v3}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_4
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return v3
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/UserMap;->id:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/UserMap;->name:Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/prineside/tdi2/UserMap;->creationTimestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "creationTimestamp"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/UserMap;->submittedOnline:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "submittedOnline"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "map"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/Map;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    return-void
.end method
