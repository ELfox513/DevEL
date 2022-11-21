.class Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$2;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/CameraController;Lcom/prineside/tdi2/GameSystemProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/prineside/tdi2/GameSystemProvider;

.field public final synthetic c:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$2;->c:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$2;->b:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$2;->b:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->getMode()Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    move-result-object p1

    sget-object p2, Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;->DRAG:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$2;->c:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->scrollPane:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setFlickScroll(Z)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$2;->b:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->getMode()Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    move-result-object p1

    sget-object p2, Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;->DRAG:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$2;->c:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->scrollPane:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setFlickScroll(Z)V

    :cond_0
    return-void
.end method
