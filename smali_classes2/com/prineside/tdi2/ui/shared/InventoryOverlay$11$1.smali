.class Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11;

    iget-object v3, v3, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v3}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11;

    iget-object v3, v3, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v3}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/ItemStack;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v3

    const-wide v4, 0x41cdcd64ff800000L    # 9.99999999E8

    cmpl-double v6, v0, v4

    if-ltz v6, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v4, v3, Lcom/prineside/tdi2/items/TileItem;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v5, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11;

    iget-object v5, v5, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v5}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/ItemStack;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v5

    iget-object v6, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11;

    iget-object v6, v6, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v6}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    iget-object v6, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/ItemStack;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/prineside/tdi2/managers/ProgressManager;->removeItems(Lcom/prineside/tdi2/Item;I)Z

    move-result v4

    if-eqz v4, :cond_2

    check-cast v3, Lcom/prineside/tdi2/items/TileItem;

    iget-object v3, v3, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    invoke-virtual {v3}, Lcom/prineside/tdi2/Tile;->getPrestigeScore()D

    move-result-wide v3

    iget-object v5, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11;

    iget-object v5, v5, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v5}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/ItemStack;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    :goto_1
    mul-double v3, v3, v5

    add-double/2addr v0, v3

    goto :goto_2

    :cond_1
    instance-of v4, v3, Lcom/prineside/tdi2/items/GateItem;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v5, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11;

    iget-object v5, v5, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v5}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/ItemStack;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v5

    iget-object v6, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11;

    iget-object v6, v6, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v6}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    iget-object v6, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/ItemStack;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/prineside/tdi2/managers/ProgressManager;->removeItems(Lcom/prineside/tdi2/Item;I)Z

    move-result v4

    if-eqz v4, :cond_2

    check-cast v3, Lcom/prineside/tdi2/items/GateItem;

    iget-object v3, v3, Lcom/prineside/tdi2/items/GateItem;->gate:Lcom/prineside/tdi2/Gate;

    invoke-virtual {v3}, Lcom/prineside/tdi2/Gate;->getPrestigeScore()D

    move-result-wide v3

    iget-object v5, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11;

    iget-object v5, v5, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v5}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->d(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/ItemStack;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    :goto_3
    const-wide v2, 0x406f400000000000L    # 250.0

    mul-double v0, v0, v2

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->PRESTIGE_DUST_DROP_RATE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v3, Lcom/prineside/tdi2/Item$D;->PRESTIGE_DUST:Lcom/prineside/tdi2/items/PrestigeDustItem;

    double-to-int v0, v0

    invoke-virtual {v2, v3, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/prineside/tdi2/Item;I)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->B(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$11;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->update()V

    return-void
.end method
