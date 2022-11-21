.class Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;
.super Lcom/badlogic/gdx/InputAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/MapEditorScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_InsertInputProcessor"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/MapEditorScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MapEditorScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;)V

    return-void
.end method


# virtual methods
.method public touchUp(IIII)Z
    .locals 3

    iget-object p3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p3}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p3

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p3, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p2, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/CameraController;->screenToMap(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->l(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ItemStack;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->l(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ItemStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result p1

    if-gtz p1, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/screens/MapEditorScreen$1;->a:[I

    iget-object p3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p3}, Lcom/prineside/tdi2/screens/MapEditorScreen;->l(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ItemStack;

    move-result-object p3

    invoke-virtual {p3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object p3

    invoke-virtual {p3}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p1, p1, p3

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eq p1, p4, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/prineside/tdi2/Map;->fitGateToMapPos(FFLcom/prineside/tdi2/Gate;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_GATE:Lcom/prineside/tdi2/items/GateItem$GateItemFactory;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/items/GateItem$GateItemFactory;->create(Lcom/prineside/tdi2/Gate;)Lcom/prineside/tdi2/items/GateItem;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    invoke-virtual {v0, p1, p4}, Lcom/prineside/tdi2/systems/InventorySystem;->add(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->l(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ItemStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/items/GateItem;

    iget-object p4, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p4, p4, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p4, p4, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    invoke-virtual {p4, p1}, Lcom/prineside/tdi2/systems/InventorySystem;->remove(Lcom/prineside/tdi2/Item;)Z

    move-result p4

    if-eqz p4, :cond_3

    iget-object p3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p4, p3, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p4, p4, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-static {p3}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object p3

    invoke-virtual {p3}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result p3

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v1

    iget-object p1, p1, Lcom/prineside/tdi2/items/GateItem;->gate:Lcom/prineside/tdi2/Gate;

    invoke-virtual {p4, p3, v0, v1, p1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMapGate(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->n(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->deselectAll()V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1, p3}, Lcom/prineside/tdi2/screens/MapEditorScreen;->m(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/ItemStack;)Lcom/prineside/tdi2/ItemStack;

    goto/16 :goto_0

    :cond_4
    return p2

    :cond_5
    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v0, 0x43000000    # 128.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float/2addr v1, v0

    float-to-int v0, v1

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_9

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_9

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    iget v1, v1, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge p1, v1, :cond_9

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    iget v1, v1, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-lt v0, v1, :cond_6

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v1

    if-eqz v1, :cond_7

    sget-object v2, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v2, v2, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    invoke-virtual {v2, v1, p4}, Lcom/prineside/tdi2/systems/InventorySystem;->add(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    :cond_7
    iget-object p4, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p4}, Lcom/prineside/tdi2/screens/MapEditorScreen;->l(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ItemStack;

    move-result-object p4

    invoke-virtual {p4}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object p4

    check-cast p4, Lcom/prineside/tdi2/items/TileItem;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    invoke-virtual {v1, p4}, Lcom/prineside/tdi2/systems/InventorySystem;->remove(Lcom/prineside/tdi2/Item;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object p3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p3, p3, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    iget-object p4, p4, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    invoke-virtual {p3, p1, v0, p4}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMapTile(IILcom/prineside/tdi2/Tile;)V

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->n(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->deselectAll()V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1, p3}, Lcom/prineside/tdi2/screens/MapEditorScreen;->m(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/ItemStack;)Lcom/prineside/tdi2/ItemStack;

    :cond_9
    :goto_0
    return p2
.end method
