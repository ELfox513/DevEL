.class Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;
.super Lcom/badlogic/gdx/InputAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/MapEditorScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_DragInputProcessor"
.end annotation


# instance fields
.field public final a:Lcom/badlogic/gdx/math/Vector2;

.field public final b:Lcom/badlogic/gdx/math/Vector2;

.field public d:Z

.field public final synthetic k:Lcom/prineside/tdi2/screens/MapEditorScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MapEditorScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->a:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->b:Lcom/badlogic/gdx/math/Vector2;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;)V

    return-void
.end method


# virtual methods
.method public touchDown(IIII)Z
    .locals 0

    iget-object p3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p3, p3, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {p3}, Lcom/prineside/tdi2/systems/MapEditorSystem;->getMode()Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    move-result-object p3

    sget-object p4, Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;->DRAG:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    if-ne p3, p4, :cond_0

    iget-object p3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->a:Lcom/badlogic/gdx/math/Vector2;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p3, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    iget-object p2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->a:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/CameraController;->screenToStage(Lcom/badlogic/gdx/math/Vector2;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public touchDragged(III)Z
    .locals 6

    iget-object p3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p3}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p3

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p3, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, p3, Lcom/prineside/tdi2/screens/MapEditorScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-static {p3}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/prineside/tdi2/CameraController;->screenToMap(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object p3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p3, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p3, p3, Lcom/prineside/tdi2/screens/MapEditorScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p3, v0}, Lcom/prineside/tdi2/CameraController;->screenToStage(Lcom/badlogic/gdx/math/Vector2;)V

    iget-boolean p3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->d:Z

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->a:Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result p3

    const/high16 v0, 0x41800000    # 16.0f

    cmpl-float p3, p3, v0

    if-lez p3, :cond_1

    new-instance p3, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p3}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v0, p3}, Lcom/prineside/tdi2/CameraController;->stageToMap(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v3}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/Map;->fitGateToMapPos(FFLcom/prineside/tdi2/Gate;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v3}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v3

    iget-object v4, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v4}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v4

    iget-object v5, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v5}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/prineside/tdi2/Item$D;->F_GATE:Lcom/prineside/tdi2/items/GateItem$GateItemFactory;

    invoke-virtual {v3, v0}, Lcom/prineside/tdi2/items/GateItem$GateItemFactory;->create(Lcom/prineside/tdi2/Gate;)Lcom/prineside/tdi2/items/GateItem;

    move-result-object v3

    iget-object v4, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v4, v4, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/systems/MapEditorSystem;->startDraggingItem(Lcom/prineside/tdi2/Item;)Z

    iput-boolean v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->d:Z

    iget-object v3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v3, v2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->d(Lcom/prineside/tdi2/screens/MapEditorScreen;Z)Z

    iget-object v3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v4

    invoke-static {v3, v4}, Lcom/prineside/tdi2/screens/MapEditorScreen;->f(Lcom/prineside/tdi2/screens/MapEditorScreen;I)I

    iget-object v3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v4

    invoke-static {v3, v4}, Lcom/prineside/tdi2/screens/MapEditorScreen;->h(Lcom/prineside/tdi2/screens/MapEditorScreen;I)I

    iget-object v3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/prineside/tdi2/screens/MapEditorScreen;->j(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate$Side;

    iget-object v3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v3, v3, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v4

    invoke-virtual {v0}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v5

    invoke-virtual {v0}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v0

    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMapGate(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget v3, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p3, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v3, p3}, Lcom/prineside/tdi2/Map;->getTileByMapPos(FF)Lcom/prineside/tdi2/Tile;

    move-result-object p3

    if-eqz p3, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    invoke-virtual {v0, p3}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v0

    iget-object v3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v3, v3, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {v3, v0}, Lcom/prineside/tdi2/systems/MapEditorSystem;->startDraggingItem(Lcom/prineside/tdi2/Item;)Z

    iput-boolean v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->d:Z

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0, v2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->d(Lcom/prineside/tdi2/screens/MapEditorScreen;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-virtual {p3}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v2

    invoke-static {v0, v2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->f(Lcom/prineside/tdi2/screens/MapEditorScreen;I)I

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-virtual {p3}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v2

    invoke-static {v0, v2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->h(Lcom/prineside/tdi2/screens/MapEditorScreen;I)I

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {p3}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v2

    invoke-virtual {p3}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result p3

    invoke-virtual {v0, v2, p3, v1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMapTile(IILcom/prineside/tdi2/Tile;)V

    :cond_1
    iget-object p3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p3, p3, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {p3}, Lcom/prineside/tdi2/systems/MapEditorSystem;->getDraggingItem()Lcom/prineside/tdi2/Item;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p3, p3, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {p3, p1, p2}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setDraggingItemScreenPos(FF)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public touchUp(IIII)Z
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->getDraggingItem()Lcom/prineside/tdi2/Item;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->finishDragging()V

    :cond_0
    iput-boolean v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->d:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->k(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->touchUp(IIII)Z

    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;->k:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1, v1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->d(Lcom/prineside/tdi2/screens/MapEditorScreen;Z)Z

    return v1
.end method
