.class Lcom/prineside/tdi2/ui/shared/InventoryOverlay$34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->update(F)V
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

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$34;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget v1, v0, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseTimeLeft:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCase:Lcom/prineside/tdi2/items/CaseItem;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Item$D;->F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;ZZ)Lcom/prineside/tdi2/items/CaseItem;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1, v0, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/prineside/tdi2/Item;I)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCase:Lcom/prineside/tdi2/items/CaseItem;

    invoke-virtual {v1, v0, v3, v3, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->openPack(Lcom/prineside/tdi2/Item;IZZ)Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$34;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->update()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$34;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->u(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    :cond_0
    return-void
.end method
