.class Lcom/prineside/tdi2/ui/shared/InventoryOverlay$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/InventoryOverlay$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$12;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay$12;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$12$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$12$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$12;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$12;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$12$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$12;

    iget-object v2, v2, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$12;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/ItemStack;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v2

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$12$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$12;

    iget-object v3, v3, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$12;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v3}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/ItemStack;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->sellItems(Lcom/prineside/tdi2/Item;I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$12$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$12;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$12;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->B(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$12$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$12;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$12;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->update()V

    return-void
.end method
