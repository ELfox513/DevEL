.class Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;
.super Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener$MapEditorSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/MapEditorScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_MapEditorSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/MapEditorScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MapEditorScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MapEditorSystem$MapEditorSystemListener$MapEditorSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;)V

    return-void
.end method


# virtual methods
.method public draggingPositionChanged()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/MapEditorSystem;->draggingItemScreenPos:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/MapEditorScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/CameraController;->screenToStage(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/MapEditorScreen;->draggingItemHelper:Lcom/prineside/tdi2/ui/components/DraggingItemHelper;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v3}, Lcom/prineside/tdi2/ui/components/DraggingItemHelper;->setPosition(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->n(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    move-result-object v1

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v0}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->isStagePointOnInventory(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->draggingItemHelper:Lcom/prineside/tdi2/ui/components/DraggingItemHelper;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/components/DraggingItemHelper;->setScale(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v1, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->draggingItemHelper:Lcom/prineside/tdi2/ui/components/DraggingItemHelper;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->A(Lcom/prineside/tdi2/screens/MapEditorScreen;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ui/components/DraggingItemHelper;->setScale(F)V

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapEditorSystem;->getDraggingItem()Lcom/prineside/tdi2/Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/enums/ItemType;->TILE:Lcom/prineside/tdi2/enums/ItemType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->k(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;

    move-result-object v0

    iput-boolean v4, v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->hoverBarriers:Z

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->k(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;

    move-result-object v0

    iput-boolean v3, v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->hoverTiles:Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/ItemType;->GATE:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->k(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;

    move-result-object v0

    iput-boolean v3, v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->hoverBarriers:Z

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->k(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;

    move-result-object v0

    iput-boolean v4, v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->hoverTiles:Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->k(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;

    move-result-object v0

    iput-boolean v4, v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->hoverBarriers:Z

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->k(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;

    move-result-object v0

    iput-boolean v4, v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->hoverTiles:Z

    :goto_1
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->k(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/MapEditorSystem;->draggingItemScreenPos:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v2, v2

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->handleMove(II)V

    return-void
.end method

.method public mapGateChanged(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V
    .locals 1

    iget-object p4, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-boolean v0, p4, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedBarrier:Z

    if-eqz v0, :cond_0

    iget v0, p4, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedGateX:I

    if-ne v0, p1, :cond_0

    iget p1, p4, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedGateY:I

    if-ne p1, p2, :cond_0

    invoke-static {p4}, Lcom/prineside/tdi2/screens/MapEditorScreen;->x(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate$Side;

    move-result-object p1

    if-ne p1, p3, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-virtual {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->updateSelectedItemMenu()V

    :cond_0
    return-void
.end method

.method public mapSizeChanged()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v1, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget v0, v0, Lcom/prineside/tdi2/Map;->widthPixels:I

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v2, v2, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v2

    iget v2, v2, Lcom/prineside/tdi2/Map;->heightPixels:I

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/CameraController;->setMapSize(II)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->mapShiftButtons:Lcom/prineside/tdi2/ui/components/MapShiftButtons;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->update()V

    return-void
.end method

.method public mapTileChanged(IILcom/prineside/tdi2/Tile;)V
    .locals 1

    iget-object p3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-boolean v0, p3, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTile:Z

    if-eqz v0, :cond_0

    iget v0, p3, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTileX:I

    if-ne v0, p1, :cond_0

    iget p1, p3, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTileY:I

    if-ne p1, p2, :cond_0

    invoke-virtual {p3}, Lcom/prineside/tdi2/screens/MapEditorScreen;->updateSelectedItemMenu()V

    :cond_0
    return-void
.end method

.method public mapValidationFailed(Lcom/prineside/tdi2/Map$InvalidMapException;)V
    .locals 2

    invoke-virtual {p1}, Lcom/prineside/tdi2/Map$InvalidMapException;->getFixHintMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MapEditorScreen"

    invoke-static {v1, v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Map$InvalidMapException;->getFixHintMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public modeChanged(Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->z(Lcom/prineside/tdi2/screens/MapEditorScreen;)V

    return-void
.end method

.method public startedDragging()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v1, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->draggingItemHelper:Lcom/prineside/tdi2/ui/components/DraggingItemHelper;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapEditorSystem;->getDraggingItem()Lcom/prineside/tdi2/Item;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ui/components/DraggingItemHelper;->show(Lcom/prineside/tdi2/Item;)V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/MapEditorSystem;->draggingItemScreenPos:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/MapEditorScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/CameraController;->screenToStage(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->n(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    move-result-object v1

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v0}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->isStagePointOnInventory(FF)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->draggingItemHelper:Lcom/prineside/tdi2/ui/components/DraggingItemHelper;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/ui/components/DraggingItemHelper;->setScale(FZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v2, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->draggingItemHelper:Lcom/prineside/tdi2/ui/components/DraggingItemHelper;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->A(Lcom/prineside/tdi2/screens/MapEditorScreen;)F

    move-result v0

    invoke-virtual {v2, v0, v1}, Lcom/prineside/tdi2/ui/components/DraggingItemHelper;->setScale(FZ)V

    :goto_0
    return-void
.end method

.method public stoppedDragging(Lcom/prineside/tdi2/Item;)V
    .locals 9

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->draggingItemHelper:Lcom/prineside/tdi2/ui/components/DraggingItemHelper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/DraggingItemHelper;->hide()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->k(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->hoverTiles:Z

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->k(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;

    move-result-object v0

    iput-boolean v1, v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->hoverBarriers:Z

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v2, v2, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/MapEditorSystem;->draggingItemScreenPos:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v0, v3, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v2, v2, Lcom/prineside/tdi2/screens/MapEditorScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/CameraController;->screenToStage(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->n(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    move-result-object v2

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->isStagePointOnInventory(FF)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "MapEditorScreen"

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/systems/InventorySystem;->add(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    const-string p1, "over inventory"

    invoke-static {v4, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/math/Vector2;-><init>(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/CameraController;->stageToMap(Lcom/badlogic/gdx/math/Vector2;)V

    sget-object v0, Lcom/prineside/tdi2/screens/MapEditorScreen$1;->a:[I

    iget-object v5, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v5, v5, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {v5}, Lcom/prineside/tdi2/systems/MapEditorSystem;->getDraggingItem()Lcom/prineside/tdi2/Item;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v0, v0, v5

    const-string v5, "out of map"

    if-eq v0, v1, :cond_6

    const/4 v6, 0x2

    if-eq v0, v6, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget v6, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v7, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v7}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v7

    invoke-virtual {v0, v6, v2, v7}, Lcom/prineside/tdi2/Map;->fitGateToMapPos(FFLcom/prineside/tdi2/Gate;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v0

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v2

    iget-object v4, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v4}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v4

    invoke-virtual {p1, v0, v2, v4}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->c(Lcom/prineside/tdi2/screens/MapEditorScreen;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v2, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->e(Lcom/prineside/tdi2/screens/MapEditorScreen;)I

    move-result v0

    iget-object v4, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v4}, Lcom/prineside/tdi2/screens/MapEditorScreen;->g(Lcom/prineside/tdi2/screens/MapEditorScreen;)I

    move-result v4

    iget-object v5, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v5}, Lcom/prineside/tdi2/screens/MapEditorScreen;->i(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate$Side;

    move-result-object v5

    invoke-virtual {v2, v0, v4, v5, p1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMapGate(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_GATE:Lcom/prineside/tdi2/items/GateItem$GateItemFactory;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/items/GateItem$GateItemFactory;->create(Lcom/prineside/tdi2/Gate;)Lcom/prineside/tdi2/items/GateItem;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/systems/InventorySystem;->add(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->getDraggingItem()Lcom/prineside/tdi2/Item;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/items/GateItem;

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v2, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v0

    iget-object v4, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v4}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v4

    iget-object v5, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v5}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v5

    iget-object p1, p1, Lcom/prineside/tdi2/items/GateItem;->gate:Lcom/prineside/tdi2/Gate;

    invoke-virtual {v2, v0, v4, v5, p1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMapGate(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iput-boolean v1, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedBarrier:Z

    iput-boolean v3, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTile:Z

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v0

    iput v0, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedGateX:I

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v0

    iput v0, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedGateY:I

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->y(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate$Side;

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-virtual {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->updateSelectedItemMenu()V

    goto/16 :goto_3

    :cond_5
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/systems/InventorySystem;->add(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    invoke-static {v4, v5}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    iget v0, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v6, 0x43000000    # 128.0f

    div-float v7, v0, v6

    float-to-int v7, v7

    iget v8, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float/2addr v8, v6

    float-to-int v6, v8

    const/4 v8, 0x0

    cmpg-float v0, v0, v8

    if-ltz v0, :cond_a

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget v0, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge v7, v0, :cond_a

    iget v0, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v0, v0, v8

    if-ltz v0, :cond_a

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget v0, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-lt v6, v0, :cond_7

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p1

    invoke-virtual {p1, v7, v6}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->c(Lcom/prineside/tdi2/screens/MapEditorScreen;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v2, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->e(Lcom/prineside/tdi2/screens/MapEditorScreen;)I

    move-result v0

    iget-object v4, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v4}, Lcom/prineside/tdi2/screens/MapEditorScreen;->g(Lcom/prineside/tdi2/screens/MapEditorScreen;)I

    move-result v4

    invoke-virtual {v2, v0, v4, p1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMapTile(IILcom/prineside/tdi2/Tile;)V

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/systems/InventorySystem;->add(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->getDraggingItem()Lcom/prineside/tdi2/Item;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/items/TileItem;

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    invoke-virtual {v0, v7, v6, p1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMapTile(IILcom/prineside/tdi2/Tile;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iput-boolean v3, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedBarrier:Z

    iput-boolean v1, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTile:Z

    iput v7, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTileX:I

    iput v6, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTileY:I

    invoke-virtual {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->updateSelectedItemMenu()V

    goto :goto_3

    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/systems/InventorySystem;->add(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    invoke-static {v4, v5}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1, v3}, Lcom/prineside/tdi2/screens/MapEditorScreen;->s(Lcom/prineside/tdi2/screens/MapEditorScreen;Z)Z

    return-void
.end method
