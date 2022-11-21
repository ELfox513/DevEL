.class public Lcom/prineside/tdi2/CraftRecipe;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/CraftRecipe$Ingredient;
    }
.end annotation


# instance fields
.field public a:F

.field public b:I

.field public ingredients:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/CraftRecipe$Ingredient;",
            ">;"
        }
    .end annotation
.end field

.field public result:Lcom/prineside/tdi2/ItemStack;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/CraftRecipe;->b:I

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/CraftRecipe$Ingredient;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public getMaxQueueStackWithGVs()I
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/CraftRecipe;->b:I

    int-to-float v0, v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->CRAFTING_MAX_STACK:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->areF2pTimersDisabled()Z

    move-result v1

    const v2, 0xf4240

    if-eqz v1, :cond_0

    mul-int/lit16 v0, v0, 0xfa

    if-le v0, v2, :cond_0

    const v0, 0xf4240

    :cond_0
    return v0
.end method

.method public getTimeWithGVs()F
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/CraftRecipe;->a:F

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->CRAFTING_TIME:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v0, v0, v1

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public hasEnoughItemsToRun()Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/CraftRecipe;->ingredients:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x1

    if-ge v1, v3, :cond_3

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/CraftRecipe$Ingredient;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->getSuitableItemsFromInventory()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    const/4 v5, 0x0

    :goto_1
    iget v6, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v6, :cond_1

    iget-object v6, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/ItemStack;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v6

    invoke-virtual {v2}, Lcom/prineside/tdi2/CraftRecipe$Ingredient;->getCountWithGVs()I

    move-result v7

    if-lt v6, v7, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v4
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setStockMaxQueueStack(I)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/CraftRecipe;->b:I

    return-void
.end method

.method public setStockTime(F)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/CraftRecipe;->a:F

    return-void
.end method
