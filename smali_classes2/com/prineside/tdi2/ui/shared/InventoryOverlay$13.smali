.class Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13;
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
.field public final synthetic a:Lcom/prineside/tdi2/CraftRecipe;

.field public final synthetic b:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/CraftRecipe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13;->b:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13;->a:Lcom/prineside/tdi2/CraftRecipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13;->b:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13;->a:Lcom/prineside/tdi2/CraftRecipe;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->e(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/CraftRecipe;)Lcom/prineside/tdi2/CraftRecipe;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13;->b:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->x(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;[I)[I

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v0, Lcom/prineside/tdi2/managers/UiManager;->itemCountSelectionOverlay:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "craft_button"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13;->a:Lcom/prineside/tdi2/CraftRecipe;

    iget-object v2, v2, Lcom/prineside/tdi2/CraftRecipe;->result:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Item;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13;->a:Lcom/prineside/tdi2/CraftRecipe;

    iget-object v0, v0, Lcom/prineside/tdi2/CraftRecipe;->result:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v5

    new-instance v6, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13$1;

    invoke-direct {v6, p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13$1;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->show(Ljava/lang/CharSequence;IILcom/prineside/tdi2/Item;Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$ItemCountSelectionListener;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13;->b:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->y(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    return-void
.end method
