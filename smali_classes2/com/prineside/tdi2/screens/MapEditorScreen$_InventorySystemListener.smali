.class Lcom/prineside/tdi2/screens/MapEditorScreen$_InventorySystemListener;
.super Lcom/prineside/tdi2/systems/InventorySystem$InventorySystemListener$InventorySystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/MapEditorScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_InventorySystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/MapEditorScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MapEditorScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InventorySystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/InventorySystem$InventorySystemListener$InventorySystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_InventorySystemListener;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;)V

    return-void
.end method


# virtual methods
.method public added(Lcom/prineside/tdi2/ItemStack;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InventorySystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->n(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->rebuildSlot(Lcom/prineside/tdi2/ItemStack;Z)V

    return-void
.end method

.method public removed(Lcom/prineside/tdi2/ItemStack;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InventorySystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->n(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->rebuildSlot(Lcom/prineside/tdi2/ItemStack;Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InventorySystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->l(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result p1

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InventorySystemListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->m(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/ItemStack;)Lcom/prineside/tdi2/ItemStack;

    :cond_0
    return-void
.end method
