.class Lcom/prineside/tdi2/screens/MapEditorScreen$_ScrollFocusInputProcessor;
.super Lcom/badlogic/gdx/InputAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/MapEditorScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_ScrollFocusInputProcessor"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/MapEditorScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MapEditorScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_ScrollFocusInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_ScrollFocusInputProcessor;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;)V

    return-void
.end method


# virtual methods
.method public mouseMoved(II)Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_ScrollFocusInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_ScrollFocusInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/CameraController;->screenToStage(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_ScrollFocusInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->n(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    move-result-object p1

    iget p2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, p2, v0}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->isStagePointOnInventory(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getScrollFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    iget-object p2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_ScrollFocusInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->n(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    move-result-object p2

    iget-object p2, p2, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->scrollPane:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    if-eq p1, p2, :cond_2

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object p2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_ScrollFocusInputProcessor;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->n(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    move-result-object p2

    iget-object p2, p2, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->scrollPane:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getScrollFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    :cond_2
    :goto_0
    return v1
.end method
