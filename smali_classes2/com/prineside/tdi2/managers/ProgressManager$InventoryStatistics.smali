.class public Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/ProgressManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InventoryStatistics"
.end annotation


# instance fields
.field public byTileType:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/enums/TileType;->values:[Lcom/prineside/tdi2/enums/TileType;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;->byTileType:[I

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;Lcom/prineside/tdi2/items/TileItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;->b(Lcom/prineside/tdi2/items/TileItem;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/prineside/tdi2/items/TileItem;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;->byTileType:[I

    iget-object p1, p1, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    iget-object p1, p1, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    return-void
.end method

.method public countItem(Lcom/prineside/tdi2/Item;)V
    .locals 2

    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/ItemType;->TILE:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/prineside/tdi2/items/TileItem;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;->b(Lcom/prineside/tdi2/items/TileItem;)V

    :cond_0
    return-void
.end method

.method public cpy()Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;
    .locals 5

    new-instance v0, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;-><init>()V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;->byTileType:[I

    iget-object v2, v0, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;->byTileType:[I

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, [I

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;->byTileType:[I

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;->byTileType:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;->byTileType:[I

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
