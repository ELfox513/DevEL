.class Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/shared/InventoryOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SubcategoryItems"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

.field public items:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field

.field public rarityType:Lcom/prineside/tdi2/enums/RarityType;

.field public subcategoryType:Lcom/prineside/tdi2/enums/ItemSubcategoryType;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V
    .locals 1

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/badlogic/gdx/utils/Array;

    const-class v0, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->items:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ui/shared/InventoryOverlay$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    return-void
.end method


# virtual methods
.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->subcategoryType:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->itemManager:Lcom/prineside/tdi2/managers/ItemManager;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/ItemManager;->getSubcategoryColor(Lcom/prineside/tdi2/enums/ItemSubcategoryType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->rarityType:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityBrightColor(Lcom/prineside/tdi2/enums/RarityType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public getIconAlias()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->subcategoryType:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->itemManager:Lcom/prineside/tdi2/managers/ItemManager;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/ItemManager;->getSubcategoryIconAlias(Lcom/prineside/tdi2/enums/ItemSubcategoryType;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->rarityType:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityIcon(Lcom/prineside/tdi2/enums/RarityType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->subcategoryType:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->itemManager:Lcom/prineside/tdi2/managers/ItemManager;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/ItemManager;->getSubcategoryName(Lcom/prineside/tdi2/enums/ItemSubcategoryType;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$SubcategoryItems;->rarityType:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityName(Lcom/prineside/tdi2/enums/RarityType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
