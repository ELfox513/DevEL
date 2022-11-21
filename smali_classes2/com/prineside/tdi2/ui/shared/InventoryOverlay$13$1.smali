.class Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$ItemCountSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public countChanged(I)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13;->b:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->y(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    return-void
.end method

.method public selectionCanceled()V
    .locals 0

    return-void
.end method

.method public selectionConfirmed(I)V
    .locals 6

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/Item;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13;

    iget-object v3, v3, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13;->a:Lcom/prineside/tdi2/CraftRecipe;

    iget-object v4, v3, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v5, :cond_2

    iget-object v3, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/CraftRecipe$Ingredient;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->getSuitableItemsFromInventory()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    const/4 v4, 0x0

    iget v5, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v5, :cond_1

    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13;

    iget-object v4, v4, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13;->b:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v4}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->w(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)[I

    move-result-object v4

    aget v4, v4, v2

    iget v5, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-gt v5, v4, :cond_0

    const/4 v4, 0x0

    :cond_0
    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/ItemStack;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v4

    :cond_1
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1, v3, v0, p1}, Lcom/prineside/tdi2/managers/ProgressManager;->startCrafting(Lcom/prineside/tdi2/CraftRecipe;Lcom/badlogic/gdx/utils/Array;I)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$13;->b:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->update()V

    return-void
.end method
