.class public abstract Lcom/prineside/tdi2/Building;
.super Lcom/prineside/tdi2/Registrable;
.source "SourceFile"


# instance fields
.field public a:Lcom/prineside/tdi2/tiles/PlatformTile;

.field public buildingType:Lcom/prineside/tdi2/enums/BuildingType;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/enums/BuildingType;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/Registrable;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    return-void
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Building;
    .locals 3

    const-string v0, "bType"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/tdi2/enums/BuildingType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/BuildingType;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Building$1;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->modifierManager:Lcom/prineside/tdi2/managers/ModifierManager;

    invoke-virtual {v0, p0}, Lcom/prineside/tdi2/managers/ModifierManager;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Modifier;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v0, p0}, Lcom/prineside/tdi2/managers/TowerManager;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Tower;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract cloneBuilding()Lcom/prineside/tdi2/Building;
.end method

.method public drawBase(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 0

    return-void
.end method

.method public drawHoveredRange(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/prineside/tdi2/shapes/RangeCircle;)V
    .locals 0

    return-void
.end method

.method public drawSelectedRange(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/prineside/tdi2/shapes/RangeCircle;)V
    .locals 0

    return-void
.end method

.method public getTile()Lcom/prineside/tdi2/tiles/PlatformTile;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Building;->a:Lcom/prineside/tdi2/tiles/PlatformTile;

    return-object v0
.end method

.method public placedOnMap()V
    .locals 0

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, Lcom/prineside/tdi2/enums/BuildingType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/enums/BuildingType;

    iput-object v0, p0, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    const-class v0, Lcom/prineside/tdi2/tiles/PlatformTile;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/tiles/PlatformTile;

    iput-object p1, p0, Lcom/prineside/tdi2/Building;->a:Lcom/prineside/tdi2/tiles/PlatformTile;

    return-void
.end method

.method public removedFromMap()V
    .locals 0

    return-void
.end method

.method public setTile(Lcom/prineside/tdi2/tiles/PlatformTile;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/Building;->a:Lcom/prineside/tdi2/tiles/PlatformTile;

    return-void
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bType"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    const-class v1, Lcom/prineside/tdi2/enums/BuildingType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Building;->a:Lcom/prineside/tdi2/tiles/PlatformTile;

    const-class v1, Lcom/prineside/tdi2/tiles/PlatformTile;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
