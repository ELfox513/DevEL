.class public Lcom/prineside/tdi2/Research$EndlessResearchLevel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Research;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EndlessResearchLevel"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/Research;

.field public blueprintType:Lcom/prineside/tdi2/enums/BlueprintType;

.field public final effects:[Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

.field public final prestigeTokens:I

.field public final priceBase:I

.field public final randomSeed:I


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/Research;IILcom/prineside/tdi2/enums/BlueprintType;I[Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/Research$EndlessResearchLevel;->a:Lcom/prineside/tdi2/Research;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Lcom/prineside/tdi2/Research$EndlessResearchLevel;->prestigeTokens:I

    iput p2, p0, Lcom/prineside/tdi2/Research$EndlessResearchLevel;->priceBase:I

    iput p3, p0, Lcom/prineside/tdi2/Research$EndlessResearchLevel;->randomSeed:I

    iput-object p6, p0, Lcom/prineside/tdi2/Research$EndlessResearchLevel;->effects:[Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iput-object p4, p0, Lcom/prineside/tdi2/Research$EndlessResearchLevel;->blueprintType:Lcom/prineside/tdi2/enums/BlueprintType;

    return-void
.end method


# virtual methods
.method public getPrice(I)Lcom/badlogic/gdx/utils/Array;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/Research$EndlessResearchLevel;->a:Lcom/prineside/tdi2/Research;

    iget-object v0, v0, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    array-length v0, v0

    if-le p1, v0, :cond_13

    invoke-static {}, Lcom/prineside/tdi2/Research;->a()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v1, p0, Lcom/prineside/tdi2/Research$EndlessResearchLevel;->a:Lcom/prineside/tdi2/Research;

    iget v1, v1, Lcom/prineside/tdi2/Research;->endlessPriceLevel:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/utils/FastRandom;->random:Lcom/badlogic/gdx/math/RandomXS128;

    iget v3, p0, Lcom/prineside/tdi2/Research$EndlessResearchLevel;->randomSeed:I

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, p1

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/RandomXS128;->setSeed(J)V

    iget v3, p0, Lcom/prineside/tdi2/Research$EndlessResearchLevel;->prestigeTokens:I

    const/4 v4, 0x1

    if-lez v3, :cond_1

    int-to-double v5, v3

    const-wide v7, 0x3fb999999999999aL    # 0.1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    sub-int/2addr v1, v4

    int-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v0

    double-to-float v0, v5

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v0

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/prineside/tdi2/Research$EndlessResearchLevel;->a:Lcom/prineside/tdi2/Research;

    iget v0, v0, Lcom/prineside/tdi2/Research;->endlessPriceLevel:I

    if-le p1, v0, :cond_0

    int-to-float v1, v3

    const v2, 0x3ccccccd    # 0.025f

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float p1, p1, v2

    mul-float v1, v1, p1

    float-to-int p1, v1

    add-int/2addr v3, p1

    :cond_0
    invoke-static {}, Lcom/prineside/tdi2/Research;->a()Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->PRESTIGE_TOKEN:Lcom/prineside/tdi2/items/PrestigeTokenItem;

    invoke-direct {v0, v1, v3}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v5

    sub-int/2addr v1, v0

    int-to-float v1, v1

    const v6, 0x3c0b4396    # 0.0085f

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v7

    const v8, 0x3ac49ba6    # 0.0015f

    mul-float v7, v7, v8

    add-float/2addr v7, v6

    mul-float v7, v7, v1

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v7, v6

    int-to-float v0, v0

    div-float/2addr v1, v0

    const v0, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, v0

    add-float/2addr v1, v6

    iget v0, p0, Lcom/prineside/tdi2/Research$EndlessResearchLevel;->priceBase:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-double v0, v0

    float-to-double v6, v7

    invoke-static {v0, v1, v6, v7}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v0

    const-wide v6, 0x3fe3333333333333L    # 0.6

    mul-double v0, v0, v6

    iget-object v6, p0, Lcom/prineside/tdi2/Research$EndlessResearchLevel;->a:Lcom/prineside/tdi2/Research;

    iget v6, v6, Lcom/prineside/tdi2/Research;->endlessPriceExp:F

    float-to-double v6, v6

    invoke-static {v0, v1, v6, v7}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    iget-object v1, p0, Lcom/prineside/tdi2/Research$EndlessResearchLevel;->a:Lcom/prineside/tdi2/Research;

    iget v1, v1, Lcom/prineside/tdi2/Research;->endlessPriceLevel:I

    if-le p1, v1, :cond_2

    int-to-float v6, v0

    const v7, 0x3d99999a    # 0.075f

    sub-int v1, p1, v1

    int-to-float v1, v1

    mul-float v1, v1, v7

    mul-float v6, v6, v1

    float-to-int v1, v6

    add-int/2addr v0, v1

    :cond_2
    const v1, 0x3fa66666    # 1.3f

    int-to-float v6, v0

    if-nez v5, :cond_3

    mul-float v6, v6, v1

    :cond_3
    const v7, 0x3fb33333    # 1.4f

    mul-float v6, v6, v7

    float-to-int v6, v6

    invoke-static {v6}, Lcom/prineside/tdi2/Research;->b(I)I

    move-result v6

    invoke-static {}, Lcom/prineside/tdi2/Research;->a()Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    new-instance v8, Lcom/prineside/tdi2/ItemStack;

    sget-object v9, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    invoke-direct {v8, v9, v6}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v6, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v7, v6

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v7

    const/high16 v8, 0x3e800000    # 0.25f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    sget-object v6, Lcom/prineside/tdi2/enums/ResourceType;->INFIAR:Lcom/prineside/tdi2/enums/ResourceType;

    :cond_4
    if-ne v5, v4, :cond_5

    int-to-float v5, v0

    mul-float v5, v5, v1

    goto :goto_0

    :cond_5
    int-to-float v5, v0

    :goto_0
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v5, v5, v1

    float-to-double v7, v5

    const v1, 0x3f7d70a4    # 0.99f

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v5

    const v9, 0x3ca3d70a    # 0.02f

    mul-float v5, v5, v9

    add-float/2addr v5, v1

    float-to-double v9, v5

    invoke-static {v7, v8, v9, v10}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v7

    const-wide/high16 v9, 0x3fd0000000000000L    # 0.25

    mul-double v7, v7, v9

    sget-object v1, Lcom/prineside/tdi2/Research$1;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v1, v1, v5

    const/4 v5, 0x3

    if-eq v1, v4, :cond_a

    if-eq v1, v3, :cond_9

    if-eq v1, v5, :cond_8

    const/4 v3, 0x4

    if-eq v1, v3, :cond_7

    const/4 v3, 0x5

    if-eq v1, v3, :cond_6

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Lcom/prineside/tdi2/Research;->a()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    new-instance v3, Lcom/prineside/tdi2/ItemStack;

    sget-object v6, Lcom/prineside/tdi2/Item$D;->RESOURCE_INFIAR:Lcom/prineside/tdi2/items/ResourceItem;

    const-wide v9, 0x3fe999999999999aL    # 0.8

    mul-double v7, v7, v9

    double-to-int v7, v7

    invoke-static {v7}, Lcom/prineside/tdi2/Research;->b(I)I

    move-result v7

    invoke-direct {v3, v6, v7}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/prineside/tdi2/Research;->a()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    new-instance v3, Lcom/prineside/tdi2/ItemStack;

    sget-object v6, Lcom/prineside/tdi2/Item$D;->RESOURCE_TENSOR:Lcom/prineside/tdi2/items/ResourceItem;

    const-wide v9, 0x3feccccccccccccdL    # 0.9

    mul-double v7, v7, v9

    double-to-int v7, v7

    invoke-static {v7}, Lcom/prineside/tdi2/Research;->b(I)I

    move-result v7

    invoke-direct {v3, v6, v7}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/prineside/tdi2/Research;->a()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    new-instance v3, Lcom/prineside/tdi2/ItemStack;

    sget-object v6, Lcom/prineside/tdi2/Item$D;->RESOURCE_MATRIX:Lcom/prineside/tdi2/items/ResourceItem;

    double-to-int v7, v7

    invoke-static {v7}, Lcom/prineside/tdi2/Research;->b(I)I

    move-result v7

    invoke-direct {v3, v6, v7}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/prineside/tdi2/Research;->a()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    new-instance v3, Lcom/prineside/tdi2/ItemStack;

    sget-object v6, Lcom/prineside/tdi2/Item$D;->RESOURCE_VECTOR:Lcom/prineside/tdi2/items/ResourceItem;

    const-wide/high16 v9, 0x3ff4000000000000L    # 1.25

    mul-double v7, v7, v9

    double-to-int v7, v7

    invoke-static {v7}, Lcom/prineside/tdi2/Research;->b(I)I

    move-result v7

    invoke-direct {v3, v6, v7}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_a
    invoke-static {}, Lcom/prineside/tdi2/Research;->a()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    new-instance v3, Lcom/prineside/tdi2/ItemStack;

    sget-object v6, Lcom/prineside/tdi2/Item$D;->RESOURCE_SCALAR:Lcom/prineside/tdi2/items/ResourceItem;

    const-wide/high16 v9, 0x3ff8000000000000L    # 1.5

    mul-double v7, v7, v9

    double-to-int v7, v7

    invoke-static {v7}, Lcom/prineside/tdi2/Research;->b(I)I

    move-result v7

    invoke-direct {v3, v6, v7}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :goto_1
    const/16 v1, 0x4b0

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x1964

    if-le v0, v1, :cond_c

    sub-int v1, v0, v1

    const/16 v3, 0x96

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x226

    div-int/2addr v1, v2

    if-ge v1, v4, :cond_b

    goto :goto_2

    :cond_b
    move v4, v1

    :goto_2
    invoke-static {v4}, Lcom/prineside/tdi2/Research;->b(I)I

    move-result v1

    invoke-static {}, Lcom/prineside/tdi2/Research;->a()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    new-instance v3, Lcom/prineside/tdi2/ItemStack;

    sget-object v4, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v3, v4, v1}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_c
    iget-object v1, p0, Lcom/prineside/tdi2/Research$EndlessResearchLevel;->blueprintType:Lcom/prineside/tdi2/enums/BlueprintType;

    if-eqz v1, :cond_d

    sget-object v2, Lcom/prineside/tdi2/Item$D;->F_BLUEPRINT:Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->create(Lcom/prineside/tdi2/enums/BlueprintType;)Lcom/prineside/tdi2/items/BlueprintItem;

    move-result-object v1

    invoke-static {}, Lcom/prineside/tdi2/Research;->a()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    new-instance v3, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v3, v1, p1}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_d
    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_3
    const/16 v2, 0x36

    if-ge p1, v2, :cond_e

    mul-int/lit16 v2, p1, 0x1f4

    add-int/lit16 v2, v2, 0x7d0

    mul-int v2, v2, p1

    add-int/lit16 v2, v2, 0x1b58

    if-le v0, v2, :cond_e

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_e
    const/16 p1, 0x1b

    if-lt v1, p1, :cond_f

    sget-object p1, Lcom/prineside/tdi2/enums/BlueprintType;->SPECIAL_IV:Lcom/prineside/tdi2/enums/BlueprintType;

    div-int/lit8 v1, v1, 0x1b

    goto :goto_4

    :cond_f
    const/16 p1, 0x9

    if-lt v1, p1, :cond_10

    sget-object p1, Lcom/prineside/tdi2/enums/BlueprintType;->SPECIAL_III:Lcom/prineside/tdi2/enums/BlueprintType;

    div-int/lit8 v1, v1, 0x9

    goto :goto_4

    :cond_10
    if-lt v1, v5, :cond_11

    sget-object p1, Lcom/prineside/tdi2/enums/BlueprintType;->SPECIAL_II:Lcom/prineside/tdi2/enums/BlueprintType;

    div-int/lit8 v1, v1, 0x3

    goto :goto_4

    :cond_11
    sget-object p1, Lcom/prineside/tdi2/enums/BlueprintType;->SPECIAL_I:Lcom/prineside/tdi2/enums/BlueprintType;

    :goto_4
    if-eqz v1, :cond_12

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_BLUEPRINT:Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->create(Lcom/prineside/tdi2/enums/BlueprintType;)Lcom/prineside/tdi2/items/BlueprintItem;

    move-result-object p1

    invoke-static {}, Lcom/prineside/tdi2/Research;->a()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    new-instance v2, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v2, p1, v1}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_12
    :goto_5
    sget-object p1, Lcom/prineside/tdi2/utils/FastRandom;->random:Lcom/badlogic/gdx/math/RandomXS128;

    const/16 v0, 0x2710

    invoke-static {v0}, Lcom/prineside/tdi2/utils/FastRandom;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/math/RandomXS128;->setSeed(J)V

    invoke-static {}, Lcom/prineside/tdi2/Research;->a()Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    return-object p1

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level must be > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method
