.class Lcom/prineside/tdi2/ui/shared/InventoryOverlay$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$ItemCountSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/shared/InventoryOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public countChanged(I)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->b(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    return-void
.end method

.method public selectionCanceled()V
    .locals 0

    return-void
.end method

.method public selectionConfirmed(I)V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->l(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/ProgressManager;->sellItems(Lcom/prineside/tdi2/Item;I)Z

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->update()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    return-void
.end method
