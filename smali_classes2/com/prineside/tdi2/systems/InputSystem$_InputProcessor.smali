.class Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;
.super Lcom/badlogic/gdx/InputAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/InputSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_InputProcessor"
.end annotation


# instance fields
.field public final a:Lcom/badlogic/gdx/math/Vector2;

.field public final synthetic b:Lcom/prineside/tdi2/systems/InputSystem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/systems/InputSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->a:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/InputSystem;Lcom/prineside/tdi2/systems/InputSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;-><init>(Lcom/prineside/tdi2/systems/InputSystem;)V

    return-void
.end method


# virtual methods
.method public keyDown(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public mouseMoved(II)Z
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    invoke-static {v0}, Lcom/prineside/tdi2/systems/InputSystem;->b(Lcom/prineside/tdi2/systems/InputSystem;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object v2, v0, Lcom/prineside/tdi2/systems/InputSystem;->cameraController:Lcom/prineside/tdi2/CameraController;

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {v0}, Lcom/prineside/tdi2/systems/InputSystem;->e(Lcom/prineside/tdi2/systems/InputSystem;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object p2, p1, Lcom/prineside/tdi2/systems/InputSystem;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-static {p1}, Lcom/prineside/tdi2/systems/InputSystem;->e(Lcom/prineside/tdi2/systems/InputSystem;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/CameraController;->screenToMap(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    invoke-static {p2}, Lcom/prineside/tdi2/systems/InputSystem;->e(Lcom/prineside/tdi2/systems/InputSystem;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    invoke-static {v0}, Lcom/prineside/tdi2/systems/InputSystem;->e(Lcom/prineside/tdi2/systems/InputSystem;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, p2, v0}, Lcom/prineside/tdi2/Map;->getTileByMapPos(FF)Lcom/prineside/tdi2/Tile;

    move-result-object p1

    iget-object p2, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object p2, p2, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p2}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    invoke-static {v0}, Lcom/prineside/tdi2/systems/InputSystem;->e(Lcom/prineside/tdi2/systems/InputSystem;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    invoke-static {v2}, Lcom/prineside/tdi2/systems/InputSystem;->e(Lcom/prineside/tdi2/systems/InputSystem;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p2, v0, v2}, Lcom/prineside/tdi2/Map;->getGateByMapPos(FF)Lcom/prineside/tdi2/Gate;

    move-result-object p2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    invoke-static {v0}, Lcom/prineside/tdi2/systems/InputSystem;->f(Lcom/prineside/tdi2/systems/InputSystem;)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    invoke-static {v0}, Lcom/prineside/tdi2/systems/InputSystem;->h(Lcom/prineside/tdi2/systems/InputSystem;)Lcom/prineside/tdi2/Gate;

    move-result-object v0

    if-eq v0, p2, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/InputSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/InputSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object v3, v3, Lcom/prineside/tdi2/systems/InputSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/systems/InputSystem$InputSystemListener;

    iget-object v4, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    invoke-static {v4}, Lcom/prineside/tdi2/systems/InputSystem;->f(Lcom/prineside/tdi2/systems/InputSystem;)Lcom/prineside/tdi2/Tile;

    move-result-object v4

    iget-object v5, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    invoke-static {v5}, Lcom/prineside/tdi2/systems/InputSystem;->h(Lcom/prineside/tdi2/systems/InputSystem;)Lcom/prineside/tdi2/Gate;

    move-result-object v5

    invoke-interface {v3, v4, p1, v5, p2}, Lcom/prineside/tdi2/systems/InputSystem$InputSystemListener;->pointingMapElementChanged(Lcom/prineside/tdi2/Tile;Lcom/prineside/tdi2/Tile;Lcom/prineside/tdi2/Gate;Lcom/prineside/tdi2/Gate;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/InputSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    invoke-static {v0, p1}, Lcom/prineside/tdi2/systems/InputSystem;->g(Lcom/prineside/tdi2/systems/InputSystem;Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/Tile;

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    invoke-static {v0, p2}, Lcom/prineside/tdi2/systems/InputSystem;->i(Lcom/prineside/tdi2/systems/InputSystem;Lcom/prineside/tdi2/Gate;)Lcom/prineside/tdi2/Gate;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_DISABLE_TILE_HOVERING:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getHoveredTile()Lcom/prineside/tdi2/Tile;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/systems/MapSystem;->setHoveredTile(Lcom/prineside/tdi2/Tile;)V

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/MapSystem;->setHoveredGate(Lcom/prineside/tdi2/Gate;)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object p2, p2, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p2}, Lcom/prineside/tdi2/systems/MapSystem;->getHoveredGate()Lcom/prineside/tdi2/Gate;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object p2, p2, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/systems/MapSystem;->setHoveredGate(Lcom/prineside/tdi2/Gate;)V

    :cond_5
    iget-object p2, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object p2, p2, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/systems/MapSystem;->setHoveredTile(Lcom/prineside/tdi2/Tile;)V

    :cond_6
    :goto_1
    return v1
.end method

.method public touchUp(IIII)Z
    .locals 2

    iget-object p3, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    invoke-static {p3}, Lcom/prineside/tdi2/systems/InputSystem;->b(Lcom/prineside/tdi2/systems/InputSystem;)Z

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object p3, p3, Lcom/prineside/tdi2/systems/InputSystem;->cameraController:Lcom/prineside/tdi2/CameraController;

    if-nez p3, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p3, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->a:Lcom/badlogic/gdx/math/Vector2;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p3, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/InputSystem;->cameraController:Lcom/prineside/tdi2/CameraController;

    iget-object p2, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->a:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/CameraController;->screenToMap(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->a:Lcom/badlogic/gdx/math/Vector2;

    iget p3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, p3, p2}, Lcom/prineside/tdi2/Map;->getTileByMapPos(FF)Lcom/prineside/tdi2/Tile;

    move-result-object p1

    iget-object p2, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object p2, p2, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p2}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p2

    iget-object p3, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->a:Lcom/badlogic/gdx/math/Vector2;

    iget v0, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p3, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p2, v0, p3}, Lcom/prineside/tdi2/Map;->getGateByMapPos(FF)Lcom/prineside/tdi2/Gate;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0, p3}, Lcom/prineside/tdi2/systems/MapSystem;->setSelectedTile(Lcom/prineside/tdi2/Tile;)V

    iget-object p3, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object p3, p3, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p3, p2}, Lcom/prineside/tdi2/systems/MapSystem;->setSelectedGate(Lcom/prineside/tdi2/Gate;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0, p3}, Lcom/prineside/tdi2/systems/MapSystem;->setSelectedGate(Lcom/prineside/tdi2/Gate;)V

    iget-object p3, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object p3, p3, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p3, p1}, Lcom/prineside/tdi2/systems/MapSystem;->setSelectedTile(Lcom/prineside/tdi2/Tile;)V

    :goto_0
    iget-object p3, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object p3, p3, Lcom/prineside/tdi2/systems/InputSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p3}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object p3, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object p3, p3, Lcom/prineside/tdi2/systems/InputSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p3}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_2

    iget-object v1, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/InputSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/systems/InputSystem$InputSystemListener;

    invoke-interface {v1, p1, p2}, Lcom/prineside/tdi2/systems/InputSystem$InputSystemListener;->mapEntityTouched(Lcom/prineside/tdi2/Tile;Lcom/prineside/tdi2/Gate;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;->b:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/InputSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    :cond_3
    :goto_2
    return p4
.end method
