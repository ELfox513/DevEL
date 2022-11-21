.class public Lcom/prineside/tdi2/tiles/DummyTile$DummyTileFactory;
.super Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/tiles/DummyTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DummyTileFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Tile$Factory$AbstractFactory<",
        "Lcom/prineside/tdi2/tiles/DummyTile;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/TileType;->DUMMY:Lcom/prineside/tdi2/enums/TileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;-><init>(Lcom/prineside/tdi2/enums/TileType;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Tile;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/DummyTile$DummyTileFactory;->create()Lcom/prineside/tdi2/tiles/DummyTile;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/tiles/DummyTile;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/tiles/DummyTile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/tiles/DummyTile;-><init>(Lcom/prineside/tdi2/tiles/DummyTile$1;)V

    return-object v0
.end method

.method public bridge synthetic fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Tile;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/tiles/DummyTile$DummyTileFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/tiles/DummyTile;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/tiles/DummyTile;
    .locals 8

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/tiles/DummyTile;

    const-string v1, "d"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/prineside/tdi2/utils/PMath;->generateNewId()J

    move-result-wide v2

    const-string v4, "id"

    invoke-virtual {p1, v4, v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/prineside/tdi2/tiles/DummyTile;->setId(J)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v4, v3, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x53

    if-eq v4, v5, :cond_1

    const/16 v5, 0x69

    if-eq v4, v5, :cond_0

    const/16 v5, 0x73

    if-eq v4, v5, :cond_1

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v4, v0, Lcom/prineside/tdi2/tiles/DummyTile;->data:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v5, v3, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    :try_start_0
    iget-object v4, v0, Lcom/prineside/tdi2/tiles/DummyTile;->data:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v5, v3, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/badlogic/gdx/graphics/Color;->valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :pswitch_2
    iget-object v4, v0, Lcom/prineside/tdi2/tiles/DummyTile;->data:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v5, v3, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/prineside/tdi2/tiles/DummyTile;->data:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v5, v3, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lcom/prineside/tdi2/tiles/DummyTile;->data:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v5, v3, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v1, "v"

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/prineside/tdi2/tiles/DummyTile;->visible:Z

    const-string v1, "s"

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/prineside/tdi2/tiles/DummyTile;->selectable:Z

    const-string v1, "i"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/tiles/DummyTile;->icon:Ljava/lang/String;

    sget v1, Lcom/prineside/tdi2/tiles/DummyTile;->DEFAULT_SCALE:F

    const-string v3, "is"

    invoke-virtual {p1, v3, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/tiles/DummyTile;->iconScale:F

    const-string v1, "dsc"

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/tiles/DummyTile;->description:Ljava/lang/String;

    :try_start_1
    iget-object v1, v0, Lcom/prineside/tdi2/tiles/DummyTile;->color:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "c"

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Color;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/badlogic/gdx/graphics/Color;->valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getProbabilityForPrize(FLcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setupAssets()V
    .locals 0

    return-void
.end method
