.class public Lcom/prineside/tdi2/systems/InventorySystem;
.super Lcom/prineside/tdi2/GameSystem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/InventorySystem$InventorySystemListener;
    }
.end annotation


# instance fields
.field public final items:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field

.field public final listeners:Lcom/prineside/tdi2/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prineside/tdi2/ListenerGroup<",
            "Lcom/prineside/tdi2/systems/InventorySystem$InventorySystemListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/GameSystem;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/InventorySystem;->items:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v0, Lcom/prineside/tdi2/ListenerGroup;

    const-class v1, Lcom/prineside/tdi2/systems/InventorySystem$InventorySystemListener;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/InventorySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    return-void
.end method


# virtual methods
.method public add(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;
    .locals 2

    if-lez p2, :cond_2

    instance-of v0, p1, Lcom/prineside/tdi2/items/TileItem;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/prineside/tdi2/items/TileItem;

    iget-object v0, v0, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    instance-of v1, v0, Lcom/prineside/tdi2/tiles/PlatformTile;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/prineside/tdi2/tiles/PlatformTile;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/InventorySystem;->items:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-static {v0, p1, p2}, Lcom/prineside/tdi2/managers/ProgressManager;->addItemToStacksArray(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object p1

    iget-object p2, p0, Lcom/prineside/tdi2/systems/InventorySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InventorySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/systems/InventorySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1, p2}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/systems/InventorySystem$InventorySystemListener;

    invoke-interface {v1, p1}, Lcom/prineside/tdi2/systems/InventorySystem$InventorySystemListener;->added(Lcom/prineside/tdi2/ItemStack;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/prineside/tdi2/systems/InventorySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Count is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public addGate(Lcom/prineside/tdi2/Gate;I)Lcom/prineside/tdi2/ItemStack;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_GATE:Lcom/prineside/tdi2/items/GateItem$GateItemFactory;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/items/GateItem$GateItemFactory;->create(Lcom/prineside/tdi2/Gate;)Lcom/prineside/tdi2/items/GateItem;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/systems/InventorySystem;->add(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object p1

    return-object p1
.end method

.method public addTile(Lcom/prineside/tdi2/Tile;I)Lcom/prineside/tdi2/ItemStack;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/systems/InventorySystem;->add(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    move-result-object p1

    return-object p1
.end method

.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InventorySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InventorySystem;->items:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    invoke-super {p0}, Lcom/prineside/tdi2/GameSystem;->dispose()V

    return-void
.end method

.method public getItemsByCategory(Lcom/prineside/tdi2/enums/ItemSubcategoryType;Lcom/badlogic/gdx/utils/Array;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/enums/ItemSubcategoryType;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/InventorySystem;->items:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Item;->getSubcategory()Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/InventorySystem;->items:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    const-string v0, "Inventory"

    return-object v0
.end method

.method public listDebug()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/systems/InventorySystem;->items:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public profileUpdate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public remove(Lcom/prineside/tdi2/Item;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/systems/InventorySystem;->remove(Lcom/prineside/tdi2/Item;I)Z

    move-result p1

    return p1
.end method

.method public remove(Lcom/prineside/tdi2/Item;I)Z
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InventorySystem;->items:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/systems/InventorySystem;->items:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_3

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/prineside/tdi2/Item;->sameAs(Lcom/prineside/tdi2/Item;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v3

    if-lt v3, p2, :cond_2

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/ItemStack;->setCount(I)V

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/systems/InventorySystem;->items:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/systems/InventorySystem;->items:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/InventorySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/InventorySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_1

    iget-object p2, p0, Lcom/prineside/tdi2/systems/InventorySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object p2

    check-cast p2, Lcom/prineside/tdi2/systems/InventorySystem$InventorySystemListener;

    invoke-interface {p2, v2}, Lcom/prineside/tdi2/systems/InventorySystem$InventorySystemListener;->removed(Lcom/prineside/tdi2/ItemStack;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/systems/InventorySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return v0
.end method

.method public setItems(Lcom/badlogic/gdx/utils/Array;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InventorySystem;->items:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/InventorySystem;->items:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v2, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v2, v3}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/ItemStack;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
