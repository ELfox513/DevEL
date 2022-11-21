.class Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorInventoryMenuListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$MapEditorInventoryMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/MapEditorScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_MapEditorInventoryMenuListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/MapEditorScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MapEditorScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorInventoryMenuListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorInventoryMenuListener;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;)V

    return-void
.end method


# virtual methods
.method public categoryTabChanged()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorInventoryMenuListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->n(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->cells:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorInventoryMenuListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v2}, Lcom/prineside/tdi2/screens/MapEditorScreen;->n(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->cells:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->setActive(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorInventoryMenuListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->m(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/ItemStack;)Lcom/prineside/tdi2/ItemStack;

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorInventoryMenuListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-virtual {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->updateSelectedItemMenu()V

    return-void
.end method

.method public itemSlotClicked(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorInventoryMenuListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedBarrier:Z

    iput-boolean v1, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTile:Z

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->n(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->deselectAll()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->setActive(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorInventoryMenuListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->getItemStack()Lcom/prineside/tdi2/ItemStack;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->m(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/ItemStack;)Lcom/prineside/tdi2/ItemStack;

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorInventoryMenuListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-virtual {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->updateSelectedItemMenu()V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorInventoryMenuListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->l(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ItemStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object p1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemType;->TILE:Lcom/prineside/tdi2/enums/ItemType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorInventoryMenuListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->l(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ItemStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/items/TileItem;

    :cond_0
    return-void
.end method
