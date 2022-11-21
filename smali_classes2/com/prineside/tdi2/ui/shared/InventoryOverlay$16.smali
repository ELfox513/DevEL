.class Lcom/prineside/tdi2/ui/shared/InventoryOverlay$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->R()V
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

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$16;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->areF2pTimersDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$16;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->l(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/items/CaseItem;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->removeItems(Lcom/prineside/tdi2/Item;I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Item$D;->F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    iget-object v3, v0, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    const/4 v4, 0x0

    iget-boolean v0, v0, Lcom/prineside/tdi2/items/CaseItem;->containsPapers:Z

    invoke-virtual {v1, v3, v4, v0}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;ZZ)Lcom/prineside/tdi2/items/CaseItem;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/prineside/tdi2/Item;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$16;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->setSelectedItem(Lcom/prineside/tdi2/ItemStack;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$16;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->l(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/items/CaseItem;

    iget-object v1, v1, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->startDecryptingCase(Lcom/prineside/tdi2/enums/CaseType;)Z

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$16;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->update()V

    return-void
.end method
