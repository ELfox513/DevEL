.class Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;
.super Lcom/badlogic/gdx/InputAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/MapEditorScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_HoverSelectInputProcessor"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/MapEditorScreen;

.field public hoverBarriers:Z

.field public hoverTiles:Z

.field public selectBarriers:Z

.field public selectTiles:Z


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MapEditorScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->selectTiles:Z

    iput-boolean p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->selectBarriers:Z

    iput-boolean p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->hoverTiles:Z

    iput-boolean p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->hoverBarriers:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;)V

    return-void
.end method


# virtual methods
.method public handleMove(II)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v1, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/CameraController;->screenToMap(Lcom/badlogic/gdx/math/Vector2;)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->hoverBarriers:Z

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v3}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/prineside/tdi2/Map;->fitGateToMapPos(FFLcom/prineside/tdi2/Gate;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1, p2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->o(Lcom/prineside/tdi2/screens/MapEditorScreen;Z)Z

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result p2

    invoke-static {p1, p2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->p(Lcom/prineside/tdi2/screens/MapEditorScreen;I)I

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result p2

    invoke-static {p1, p2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->q(Lcom/prineside/tdi2/screens/MapEditorScreen;I)I

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->r(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate$Side;

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1, v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->s(Lcom/prineside/tdi2/screens/MapEditorScreen;Z)Z

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1, v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->o(Lcom/prineside/tdi2/screens/MapEditorScreen;Z)Z

    iget-boolean p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->hoverTiles:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v2, 0x43000000    # 128.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p1, v1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->u(Lcom/prineside/tdi2/screens/MapEditorScreen;I)I

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p1, v1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->w(Lcom/prineside/tdi2/screens/MapEditorScreen;I)I

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->t(Lcom/prineside/tdi2/screens/MapEditorScreen;)I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v2, v2, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v2

    iget v2, v2, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->v(Lcom/prineside/tdi2/screens/MapEditorScreen;)I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v2, v2, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v2

    iget v2, v2, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->s(Lcom/prineside/tdi2/screens/MapEditorScreen;Z)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1, v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->s(Lcom/prineside/tdi2/screens/MapEditorScreen;Z)Z

    :goto_1
    return-void
.end method

.method public mouseMoved(II)Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapEditorSystem;->getDraggingItem()Lcom/prineside/tdi2/Item;

    move-result-object v0

    if-eqz v0, :cond_0

    int-to-float p1, p1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/MapEditorSystem;->draggingShift:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p2, p2

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->handleMove(II)V

    const/4 p1, 0x0

    return p1
.end method

.method public touchDragged(III)Z
    .locals 1

    iget-object p3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p3, p3, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {p3}, Lcom/prineside/tdi2/systems/MapEditorSystem;->getDraggingItem()Lcom/prineside/tdi2/Item;

    move-result-object p3

    if-eqz p3, :cond_0

    int-to-float p1, p1

    iget-object p3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p3, p3, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    iget-object p3, p3, Lcom/prineside/tdi2/systems/MapEditorSystem;->draggingShift:Lcom/badlogic/gdx/math/Vector2;

    iget v0, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p2, p2

    iget p3, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr p2, p3

    float-to-int p2, p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->handleMove(II)V

    const/4 p1, 0x0

    return p1
.end method

.method public touchUp(IIII)Z
    .locals 2

    iget-object p3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p4, p3, Lcom/prineside/tdi2/screens/MapEditorScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-static {p3}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p3

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p3, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/prineside/tdi2/CameraController;->screenToMap(Lcom/badlogic/gdx/math/Vector2;)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->selectBarriers:Z

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p1

    iget-object p4, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p4}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p4

    iget p4, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v1

    invoke-virtual {p1, p4, v0, v1}, Lcom/prineside/tdi2/Map;->fitGateToMapPos(FFLcom/prineside/tdi2/Gate;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iput-boolean p2, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedBarrier:Z

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result p2

    iput p2, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedGateX:I

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result p2

    iput p2, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedGateY:I

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->y(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate$Side;

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iput-boolean p3, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTile:Z

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iput-boolean p3, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedBarrier:Z

    iget-boolean p4, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->selectTiles:Z

    if-eqz p4, :cond_2

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p4

    iget p4, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v0, 0x43000000    # 128.0f

    div-float/2addr p4, v0

    float-to-int p4, p4

    iput p4, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTileX:I

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p4

    iget p4, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float/2addr p4, v0

    float-to-int p4, p4

    iput p4, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTileY:I

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p4

    iget p4, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v0, 0x0

    cmpg-float p4, p4, v0

    if-ltz p4, :cond_1

    iget-object p4, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p4}, Lcom/prineside/tdi2/screens/MapEditorScreen;->a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p4

    iget p4, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float p4, p4, v0

    if-ltz p4, :cond_1

    iget-object p4, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget v0, p4, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTileX:I

    iget-object p4, p4, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p4, p4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p4}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p4

    iget p4, p4, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge v0, p4, :cond_1

    iget-object p4, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget v0, p4, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTileY:I

    iget-object p4, p4, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p4, p4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p4}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p4

    iget p4, p4, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ge v0, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTile:Z

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-boolean p2, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTile:Z

    if-eqz p2, :cond_3

    iget-object p1, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget p4, p2, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTileX:I

    iget p2, p2, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTileY:I

    invoke-virtual {p1, p4, p2}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    goto :goto_1

    :cond_2
    iput-boolean p3, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTile:Z

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-boolean p2, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedBarrier:Z

    if-nez p2, :cond_4

    iget-boolean p2, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTile:Z

    if-eqz p2, :cond_5

    :cond_4
    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->m(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/ItemStack;)Lcom/prineside/tdi2/ItemStack;

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->n(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->deselectAll()V

    :cond_5
    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-virtual {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->updateSelectedItemMenu()V

    return p3
.end method
