.class public Lcom/prineside/tdi2/CraftRecipe$Ingredient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/CraftRecipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ingredient"
.end annotation


# static fields
.field public static final a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public count:I

.field public exampleItems:[Lcom/prineside/tdi2/Item;

.field public ignoresDiscounts:Z

.field public itemParams:[I

.field public itemRarity:Lcom/prineside/tdi2/enums/RarityType;

.field public itemType:Lcom/prineside/tdi2/enums/ItemType;

.field public minCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->a:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/enums/ItemType;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->itemRarity:Lcom/prineside/tdi2/enums/RarityType;

    iput-object v0, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->itemParams:[I

    const/4 v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->minCount:I

    iput-object p1, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->itemType:Lcom/prineside/tdi2/enums/ItemType;

    iput p2, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->count:I

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/enums/ItemType;ILcom/prineside/tdi2/enums/RarityType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->itemParams:[I

    const/4 v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->minCount:I

    iput-object p1, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->itemType:Lcom/prineside/tdi2/enums/ItemType;

    iput p2, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->count:I

    iput-object p3, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->itemRarity:Lcom/prineside/tdi2/enums/RarityType;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/enums/ItemType;ILcom/prineside/tdi2/enums/RarityType;[I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->minCount:I

    iput-object p1, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->itemType:Lcom/prineside/tdi2/enums/ItemType;

    iput p2, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->count:I

    iput-object p3, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->itemRarity:Lcom/prineside/tdi2/enums/RarityType;

    iput-object p4, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->itemParams:[I

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/enums/ItemType;I[I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->itemRarity:Lcom/prineside/tdi2/enums/RarityType;

    const/4 v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->minCount:I

    iput-object p1, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->itemType:Lcom/prineside/tdi2/enums/ItemType;

    iput p2, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->count:I

    iput-object p3, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->itemParams:[I

    return-void
.end method


# virtual methods
.method public fits(Lcom/prineside/tdi2/Item;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->itemType:Lcom/prineside/tdi2/enums/ItemType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->itemRarity:Lcom/prineside/tdi2/enums/RarityType;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->itemRarity:Lcom/prineside/tdi2/enums/RarityType;

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->itemParams:[I

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->itemParams:[I

    array-length v3, v1

    if-ge v0, v3, :cond_4

    add-int/lit8 v3, v0, 0x1

    aget v3, v1, v3

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/prineside/tdi2/enums/ItemDataType;->values:[Lcom/prineside/tdi2/enums/ItemDataType;

    aget v1, v1, v0

    aget-object v1, v4, v1

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/Item;->getData(Lcom/prineside/tdi2/enums/ItemDataType;)I

    move-result v1

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public getCountWithGVs()I
    .locals 4

    iget-boolean v0, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->ignoresDiscounts:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->count:I

    return v0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->CRAFTING_PRICE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    iget v2, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->count:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    double-to-float v0, v2

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v0

    iget v1, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->minCount:I

    if-ge v0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public getExampleItems()[Lcom/prineside/tdi2/Item;
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->exampleItems:[Lcom/prineside/tdi2/Item;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/prineside/tdi2/Item;

    iput-object v0, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->exampleItems:[Lcom/prineside/tdi2/Item;

    const/4 v1, 0x0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->itemManager:Lcom/prineside/tdi2/managers/ItemManager;

    iget-object v3, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->itemType:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v2

    invoke-interface {v2}, Lcom/prineside/tdi2/Item$Factory;->createDefault()Lcom/prineside/tdi2/Item;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->exampleItems:[Lcom/prineside/tdi2/Item;

    return-object v0
.end method

.method public getSuitableItemsFromInventory()Lcom/badlogic/gdx/utils/Array;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v1, p0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->itemType:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsByType(Lcom/prineside/tdi2/enums/ItemType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/ItemStack;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->fits(Lcom/prineside/tdi2/Item;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/ItemStack;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->a:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method
