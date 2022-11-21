.class public Lcom/prineside/tdi2/items/RandomBarrierItem;
.super Lcom/prineside/tdi2/Item;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/items/RandomBarrierItem$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/items/RandomBarrierItem$RandomBarrierItemFactory;,
        Lcom/prineside/tdi2/items/RandomBarrierItem$Serializer;
    }
.end annotation


# instance fields
.field public quality:F


# direct methods
.method public constructor <init>(F)V
    .locals 3

    invoke-direct {p0}, Lcom/prineside/tdi2/Item;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iput p1, p0, Lcom/prineside/tdi2/items/RandomBarrierItem;->quality:F

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quality is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(FLcom/prineside/tdi2/items/RandomBarrierItem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/items/RandomBarrierItem;-><init>(F)V

    return-void
.end method


# virtual methods
.method public canBeUnpacked()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cpy()Lcom/prineside/tdi2/Item;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_RANDOM_BARRIER:Lcom/prineside/tdi2/items/RandomBarrierItem$RandomBarrierItemFactory;

    iget v1, p0, Lcom/prineside/tdi2/items/RandomBarrierItem;->quality:F

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/items/RandomBarrierItem$RandomBarrierItemFactory;->create(F)Lcom/prineside/tdi2/items/RandomBarrierItem;

    move-result-object v0

    return-object v0
.end method

.method public fillItemCreationForm(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
    .locals 2

    const-string v0, "Quality"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->label(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v0, p0, Lcom/prineside/tdi2/items/RandomBarrierItem;->quality:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/prineside/tdi2/items/RandomBarrierItem$1;

    invoke-direct {v1, p0, p1}, Lcom/prineside/tdi2/items/RandomBarrierItem$1;-><init>(Lcom/prineside/tdi2/items/RandomBarrierItem;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    invoke-virtual {p1, v0, v1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->textField(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    return-void
.end method

.method public from(Lcom/prineside/tdi2/Item;)Lcom/prineside/tdi2/Item;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_RANDOM_BARRIER:Lcom/prineside/tdi2/items/RandomBarrierItem$RandomBarrierItemFactory;

    check-cast p1, Lcom/prineside/tdi2/items/RandomBarrierItem;

    iget p1, p1, Lcom/prineside/tdi2/items/RandomBarrierItem;->quality:F

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/items/RandomBarrierItem$RandomBarrierItemFactory;->create(F)Lcom/prineside/tdi2/items/RandomBarrierItem;

    move-result-object p1

    return-object p1
.end method

.method public generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "random-barrier"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {p2, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    return-object p2
.end method

.method public getCategory()Lcom/prineside/tdi2/enums/ItemCategoryType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemCategoryType;->PACKS:Lcom/prineside/tdi2/enums/ItemCategoryType;

    return-object v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "quality"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/items/RandomBarrierItem;->quality:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/100"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRarity()Lcom/prineside/tdi2/enums/RarityType;
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/items/RandomBarrierItem;->quality:F

    invoke-static {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityFromQuality(F)Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v0

    return-object v0
.end method

.method public getSubcategory()Lcom/prineside/tdi2/enums/ItemSubcategoryType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->P_DECRYPTED:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "item_title_RANDOM_BARRIER"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/prineside/tdi2/enums/ItemType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemType;->RANDOM_BARRIER:Lcom/prineside/tdi2/enums/ItemType;

    return-object v0
.end method

.method public isCountable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public openPack(Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)Lcom/badlogic/gdx/utils/Array;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/badlogic/gdx/utils/Array;

    const-class v0, Lcom/prineside/tdi2/ItemStack;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_GATE:Lcom/prineside/tdi2/items/GateItem$GateItemFactory;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->gateManager:Lcom/prineside/tdi2/managers/GateManager;

    sget-object v3, Lcom/prineside/tdi2/enums/GateType;->BARRIER_TYPE:Lcom/prineside/tdi2/enums/GateType;

    iget v4, p0, Lcom/prineside/tdi2/items/RandomBarrierItem;->quality:F

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/ProgressManager;->otherItemsRandom:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v1, v3, v4, v5}, Lcom/prineside/tdi2/managers/GateManager;->createRandomGate(Lcom/prineside/tdi2/enums/GateType;FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/Gate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/items/GateItem$GateItemFactory;->create(Lcom/prineside/tdi2/Gate;)Lcom/prineside/tdi2/items/GateItem;

    move-result-object v0

    new-instance v1, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v1, v0, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object p1
.end method

.method public sameAs(Lcom/prineside/tdi2/Item;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Item;->sameAs(Lcom/prineside/tdi2/Item;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/prineside/tdi2/items/RandomBarrierItem;

    iget p1, p1, Lcom/prineside/tdi2/items/RandomBarrierItem;->quality:F

    iget v0, p0, Lcom/prineside/tdi2/items/RandomBarrierItem;->quality:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Item;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    iget v0, p0, Lcom/prineside/tdi2/items/RandomBarrierItem;->quality:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "quality"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
