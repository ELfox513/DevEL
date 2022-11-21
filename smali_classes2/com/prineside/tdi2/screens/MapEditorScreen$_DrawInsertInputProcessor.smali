.class Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;
.super Lcom/badlogic/gdx/InputAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/MapEditorScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_DrawInsertInputProcessor"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public d:Lcom/prineside/tdi2/Gate$Side;

.field public final synthetic k:Lcom/prineside/tdi2/screens/MapEditorScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MapEditorScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;)V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->l(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->l(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p2, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/CameraController;->screenToMap(Lcom/badlogic/gdx/math/Vector2;)V

    sget-object p1, Lcom/prineside/tdi2/screens/MapEditorScreen$1;->a:[I

    iget-object p2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->l(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ItemStack;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v3}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/prineside/tdi2/Map;->fitGateToMapPos(FFLcom/prineside/tdi2/Gate;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->a:I

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v1

    if-ne p1, v1, :cond_2

    iget p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->b:I

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->d:Lcom/prineside/tdi2/Gate$Side;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v1

    if-ne p1, v1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->a:I

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->b:I

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->d:Lcom/prineside/tdi2/Gate$Side;

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v2

    iget-object v3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v3}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object v1, Lcom/prineside/tdi2/Item$D;->F_GATE:Lcom/prineside/tdi2/items/GateItem$GateItemFactory;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/items/GateItem$GateItemFactory;->create(Lcom/prineside/tdi2/Gate;)Lcom/prineside/tdi2/items/GateItem;

    move-result-object p1

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    invoke-virtual {v1, p1, v0}, Lcom/prineside/tdi2/systems/InventorySystem;->add(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->l(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ItemStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/items/GateItem;

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/systems/InventorySystem;->remove(Lcom/prineside/tdi2/Item;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, p2, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-static {p2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result p2

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v2

    iget-object p1, p1, Lcom/prineside/tdi2/items/GateItem;->gate:Lcom/prineside/tdi2/Gate;

    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMapGate(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->n(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->deselectAll()V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1, p2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->m(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/ItemStack;)Lcom/prineside/tdi2/ItemStack;

    goto/16 :goto_0

    :cond_5
    return-void

    :cond_6
    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v1, 0x43000000    # 128.0f

    div-float/2addr p1, v1

    float-to-int p1, p1

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float/2addr v2, v1

    float-to-int v1, v2

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_b

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_b

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v2, v2, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v2

    iget v2, v2, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge p1, v2, :cond_b

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v2, v2, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v2

    iget v2, v2, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-lt v1, v2, :cond_7

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->a:I

    if-ne v2, p1, :cond_8

    iget v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->b:I

    if-ne v2, v1, :cond_8

    return-void

    :cond_8
    iput p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->a:I

    iput v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->b:I

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v2, v2, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v2

    if-eqz v2, :cond_9

    sget-object v3, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v2

    iget-object v3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v3, v3, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    invoke-virtual {v3, v2, v0}, Lcom/prineside/tdi2/systems/InventorySystem;->add(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    :cond_9
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->l(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/items/TileItem;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v2, v2, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/systems/InventorySystem;->remove(Lcom/prineside/tdi2/Item;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object p2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p2, p2, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    invoke-virtual {p2, p1, v1, v0}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMapTile(IILcom/prineside/tdi2/Tile;)V

    goto :goto_0

    :cond_a
    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->n(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->deselectAll()V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1, p2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->m(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/ItemStack;)Lcom/prineside/tdi2/ItemStack;

    :cond_b
    :goto_0
    return-void
.end method

.method public touchDown(IIII)Z
    .locals 0

    const/4 p3, -0x1

    iput p3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->a:I

    iput p3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->b:I

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->d:Lcom/prineside/tdi2/Gate$Side;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->a(II)V

    const/4 p1, 0x0

    return p1
.end method

.method public touchDragged(III)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;->a(II)V

    const/4 p1, 0x0

    return p1
.end method
