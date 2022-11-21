.class Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final b:Lcom/badlogic/gdx/math/Vector2;

.field public final c:Lcom/badlogic/gdx/math/Vector2;

.field public final d:Lcom/badlogic/gdx/math/Vector2;

.field public e:Z

.field public final synthetic f:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

.field public final synthetic g:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->g:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->f:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->b:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->c:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->d:Lcom/badlogic/gdx/math/Vector2;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->e:Z

    return-void
.end method


# virtual methods
.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->g:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->T:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->a(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->getMode()Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    move-result-object p1

    sget-object p4, Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;->DRAG:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    if-ne p1, p4, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->b:Lcom/badlogic/gdx/math/Vector2;

    iput p2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput p3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->g:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->c:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->g:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->c:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->d:Lcom/badlogic/gdx/math/Vector2;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->c:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->g:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->T:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->b(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;)Lcom/prineside/tdi2/CameraController;

    move-result-object p1

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->d:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/CameraController;->stageToScreen(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->g:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->T:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->a(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->getMode()Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    move-result-object p1

    sget-object p2, Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;->DRAG:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    if-ne p1, p2, :cond_0

    iget-boolean p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->e:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->b:Lcom/badlogic/gdx/math/Vector2;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->c:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result p1

    const/high16 p2, 0x41800000    # 16.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->g:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->T:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->a(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->g:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->p(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;)Lcom/prineside/tdi2/ItemStack;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/MapEditorSystem;->startDraggingItem(Lcom/prineside/tdi2/Item;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->g:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->T:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->a(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->d:Lcom/badlogic/gdx/math/Vector2;

    iget p3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, p3, p2}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setDraggingItemScreenPos(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->g:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->T:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->a(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->g:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->p(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;)Lcom/prineside/tdi2/ItemStack;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/InventorySystem;->remove(Lcom/prineside/tdi2/Item;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->e:Z

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->g:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->T:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->a(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->getDraggingItem()Lcom/prineside/tdi2/Item;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->g:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->T:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->a(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->d:Lcom/badlogic/gdx/math/Vector2;

    iget p3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, p3, p2}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setDraggingItemScreenPos(FF)V

    :cond_1
    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 0

    iget-boolean p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->e:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->g:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->T:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->a(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->getDraggingItem()Lcom/prineside/tdi2/Item;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->g:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->T:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->a(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->finishDragging()V

    :cond_0
    iput-boolean p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->e:Z

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->g:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;

    iget-object p3, p1, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->T:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->p(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;)Lcom/prineside/tdi2/ItemStack;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->rebuildSlot(Lcom/prineside/tdi2/ItemStack;Z)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->g:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->T:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->c(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->g:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->T:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->c(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object p1

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p2, p1, :cond_2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->g:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->T:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->c(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$MapEditorInventoryMenuListener;

    iget-object p3, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->g:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;

    invoke-interface {p1, p3}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$MapEditorInventoryMenuListener;->itemSlotClicked(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;->g:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->T:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->c(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :goto_1
    return-void
.end method
