.class public Lcom/prineside/tdi2/items/RandomTileItem;
.super Lcom/prineside/tdi2/Item;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/items/RandomTileItem$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;,
        Lcom/prineside/tdi2/items/RandomTileItem$Serializer;
    }
.end annotation


# instance fields
.field public quality:F


# direct methods
.method public constructor <init>(F)V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/Item;-><init>()V

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_1
    iput p1, p0, Lcom/prineside/tdi2/items/RandomTileItem;->quality:F

    return-void
.end method

.method public synthetic constructor <init>(FLcom/prineside/tdi2/items/RandomTileItem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/items/RandomTileItem;-><init>(F)V

    return-void
.end method


# virtual methods
.method public addSellItems(Lcom/badlogic/gdx/utils/Array;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->PRESTIGE_DUST_DROP_RATE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    double-to-float v0, v0

    new-instance v1, Lcom/prineside/tdi2/ItemStack;

    sget-object v2, Lcom/prineside/tdi2/Item$D;->PRESTIGE_DUST:Lcom/prineside/tdi2/items/PrestigeDustItem;

    iget v3, p0, Lcom/prineside/tdi2/items/RandomTileItem;->quality:F

    const/high16 v4, 0x43470000    # 199.0f

    mul-float v3, v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    mul-float v3, v3, v0

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public canBeSold()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canBeUnpacked()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cpy()Lcom/prineside/tdi2/Item;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_RANDOM_TILE:Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;

    iget v1, p0, Lcom/prineside/tdi2/items/RandomTileItem;->quality:F

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;->create(F)Lcom/prineside/tdi2/items/RandomTileItem;

    move-result-object v0

    return-object v0
.end method

.method public from(Lcom/prineside/tdi2/Item;)Lcom/prineside/tdi2/Item;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_RANDOM_TILE:Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;

    check-cast p1, Lcom/prineside/tdi2/items/RandomTileItem;

    iget p1, p1, Lcom/prineside/tdi2/items/RandomTileItem;->quality:F

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;->create(F)Lcom/prineside/tdi2/items/RandomTileItem;

    move-result-object p1

    return-object p1
.end method

.method public generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 4

    const/high16 p2, 0x43000000    # 128.0f

    div-float p2, p1, p2

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "random-tile"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v1, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/prineside/tdi2/items/RandomTileItem;->quality:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/high16 v3, 0x41a80000    # 21.0f

    mul-float v3, v3, p2

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v1, 0x42080000    # 34.0f

    mul-float v1, v1, p2

    const/high16 v2, 0x42920000    # 73.0f

    mul-float p2, p2, v2

    invoke-virtual {p1, v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-object v0
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

    iget v1, p0, Lcom/prineside/tdi2/items/RandomTileItem;->quality:F

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

    iget v0, p0, Lcom/prineside/tdi2/items/RandomTileItem;->quality:F

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

    const-string v1, "random_tile"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/prineside/tdi2/enums/ItemType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemType;->RANDOM_TILE:Lcom/prineside/tdi2/enums/ItemType;

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

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/ItemStack;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    sget-object v1, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v2, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget v5, p0, Lcom/prineside/tdi2/items/RandomTileItem;->quality:F

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/ProgressManager;->otherItemsRandom:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v4, v5, v2, p1}, Lcom/prineside/tdi2/managers/TileManager;->createRandomTile(FLcom/badlogic/gdx/math/RandomXS128;Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)Lcom/prineside/tdi2/Tile;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object p1

    new-instance v1, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v1, p1, v3}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object v0
.end method

.method public sameAs(Lcom/prineside/tdi2/Item;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Item;->sameAs(Lcom/prineside/tdi2/Item;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/prineside/tdi2/items/RandomTileItem;

    iget p1, p1, Lcom/prineside/tdi2/items/RandomTileItem;->quality:F

    iget v0, p0, Lcom/prineside/tdi2/items/RandomTileItem;->quality:F

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

    iget v0, p0, Lcom/prineside/tdi2/items/RandomTileItem;->quality:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "quality"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
