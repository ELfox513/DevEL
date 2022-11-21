.class Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;
.super Lcom/badlogic/gdx/InputAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/MapEditorScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_DrawRemoveInputProcessor"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/MapEditorScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MapEditorScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;)V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p2, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/CameraController;->screenToMap(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 p2, 0x43000000    # 128.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float/2addr v0, p2

    float-to-int p2, v0

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget v0, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget v0, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-lt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v3, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    invoke-virtual {v3, v0}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v0

    iget-object v3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v3, v3, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    invoke-virtual {v3, v0, v2}, Lcom/prineside/tdi2/systems/InventorySystem;->add(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {v0, p1, p2, v1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMapTile(IILcom/prineside/tdi2/Tile;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v3}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v3

    invoke-virtual {p1, p2, v0, v3}, Lcom/prineside/tdi2/Map;->fitGateToMapPos(FFLcom/prineside/tdi2/Gate;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result p2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v0

    iget-object v3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v3}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v3

    invoke-virtual {p1, p2, v0, v3}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p2, Lcom/prineside/tdi2/Item$D;->F_GATE:Lcom/prineside/tdi2/items/GateItem$GateItemFactory;

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/items/GateItem$GateItemFactory;->create(Lcom/prineside/tdi2/Gate;)Lcom/prineside/tdi2/items/GateItem;

    move-result-object p1

    iget-object p2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p2, p2, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    invoke-virtual {p2, p1, v2}, Lcom/prineside/tdi2/systems/InventorySystem;->add(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p2, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result p1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v0

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v2

    invoke-virtual {p2, p1, v0, v2, v1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMapGate(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V

    :cond_2
    return-void
.end method

.method public touchDown(IIII)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;->a(II)V

    const/4 p1, 0x0

    return p1
.end method

.method public touchDragged(III)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;->a(II)V

    const/4 p1, 0x0

    return p1
.end method
