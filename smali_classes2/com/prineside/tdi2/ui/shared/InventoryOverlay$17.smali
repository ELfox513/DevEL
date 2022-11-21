.class Lcom/prineside/tdi2/ui/shared/InventoryOverlay$17;
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

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$17;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$17;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->l(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v0

    instance-of v0, v0, Lcom/prineside/tdi2/items/RandomTileItem;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$17;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->l(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v0

    instance-of v0, v0, Lcom/prineside/tdi2/items/RandomBarrierItem;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x1f4

    :goto_1
    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$17;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->l(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->itemCountSelectionOverlay:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "open_pack_button"

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$17;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->l(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v6

    new-instance v7, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$17$1;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$17$1;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay$17;)V

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->show(Ljava/lang/CharSequence;IILcom/prineside/tdi2/Item;Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$ItemCountSelectionListener;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->itemCountSelectionOverlay:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->setSelectedCount(I)V

    return-void
.end method
