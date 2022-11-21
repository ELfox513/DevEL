.class public Lcom/prineside/tdi2/items/ResourceItem;
.super Lcom/prineside/tdi2/Item;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/items/ResourceItem$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;,
        Lcom/prineside/tdi2/items/ResourceItem$Serializer;
    }
.end annotation


# instance fields
.field public final resourceType:Lcom/prineside/tdi2/enums/ResourceType;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/enums/ResourceType;)V
    .locals 1

    invoke-direct {p0}, Lcom/prineside/tdi2/Item;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/prineside/tdi2/items/ResourceItem;->resourceType:Lcom/prineside/tdi2/enums/ResourceType;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ResourceType is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/enums/ResourceType;Lcom/prineside/tdi2/items/ResourceItem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/items/ResourceItem;-><init>(Lcom/prineside/tdi2/enums/ResourceType;)V

    return-void
.end method


# virtual methods
.method public addSellItems(Lcom/badlogic/gdx/utils/Array;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/prineside/tdi2/items/ResourceItem$1;->a:[I

    iget-object v1, p0, Lcom/prineside/tdi2/items/ResourceItem;->resourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    :cond_4
    :goto_0
    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v2, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    invoke-direct {v0, v2, v1}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public canBeSold()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cpy()Lcom/prineside/tdi2/Item;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_RESOURCE:Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;

    iget-object v1, p0, Lcom/prineside/tdi2/items/ResourceItem;->resourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;->create(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/prineside/tdi2/items/ResourceItem;

    move-result-object v0

    return-object v0
.end method

.method public from(Lcom/prineside/tdi2/Item;)Lcom/prineside/tdi2/Item;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_RESOURCE:Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;

    check-cast p1, Lcom/prineside/tdi2/items/ResourceItem;

    iget-object p1, p1, Lcom/prineside/tdi2/items/ResourceItem;->resourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;->create(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/prineside/tdi2/items/ResourceItem;

    move-result-object p1

    return-object p1
.end method

.method public generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 4

    if-eqz p2, :cond_0

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {p2, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    sget-object v2, Lcom/prineside/tdi2/Resource;->TEXTURE_REGION_NAMES:[Ljava/lang/String;

    iget-object v3, p0, Lcom/prineside/tdi2/items/ResourceItem;->resourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v0, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v1, 0x3e8f5c29    # 0.28f

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-static {p1}, Lcom/prineside/tdi2/Item;->a(F)F

    move-result v1

    invoke-static {p1}, Lcom/prineside/tdi2/Item;->a(F)F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v3, p0, Lcom/prineside/tdi2/items/ResourceItem;->resourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v0, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

    iget-object v1, p0, Lcom/prineside/tdi2/items/ResourceItem;->resourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/managers/ResourceManager;->getColor(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-object p2

    :cond_0
    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    sget-object v1, Lcom/prineside/tdi2/Resource;->TEXTURE_REGION_NAMES:[Ljava/lang/String;

    iget-object v2, p0, Lcom/prineside/tdi2/items/ResourceItem;->resourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {p2, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

    iget-object v0, p0, Lcom/prineside/tdi2/items/ResourceItem;->resourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/ResourceManager;->getColor(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-object p2
.end method

.method public getCategory()Lcom/prineside/tdi2/enums/ItemCategoryType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemCategoryType;->MATERIALS:Lcom/prineside/tdi2/enums/ItemCategoryType;

    return-object v0
.end method

.method public getData()Lcom/badlogic/gdx/utils/IntArray;
    .locals 3

    invoke-super {p0}, Lcom/prineside/tdi2/Item;->getData()Lcom/badlogic/gdx/utils/IntArray;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/ItemDataType;->TYPE:Lcom/prineside/tdi2/enums/ItemDataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/items/ResourceItem;->resourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    return-object v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "item_description_RESOURCE"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriceInAcceleratorsForResearchReset(I)D
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/items/ResourceItem$1;->a:[I

    iget-object v1, p0, Lcom/prineside/tdi2/items/ResourceItem;->resourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, 0xc

    goto :goto_0

    :cond_1
    mul-int/lit8 p1, p1, 0xa

    goto :goto_0

    :cond_2
    mul-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_3
    mul-int/lit8 p1, p1, 0x6

    goto :goto_0

    :cond_4
    mul-int/lit8 p1, p1, 0x4

    :goto_0
    sget-object v0, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/items/GreenPaperItem;->getPriceInAcceleratorsForResearchReset(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getRarity()Lcom/prineside/tdi2/enums/RarityType;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/items/ResourceItem$1;->a:[I

    iget-object v1, p0, Lcom/prineside/tdi2/items/ResourceItem;->resourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->LEGENDARY:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->EPIC:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :cond_2
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->VERY_RARE:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :cond_3
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->RARE:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :cond_4
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->COMMON:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0
.end method

.method public getSubcategory()Lcom/prineside/tdi2/enums/ItemSubcategoryType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->M_RESOURCE:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

    iget-object v1, p0, Lcom/prineside/tdi2/items/ResourceItem;->resourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ResourceManager;->getName(Lcom/prineside/tdi2/enums/ResourceType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/prineside/tdi2/enums/ItemType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemType;->RESOURCE:Lcom/prineside/tdi2/enums/ItemType;

    return-object v0
.end method

.method public isAffectedByDoubleGain()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCountable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public sameAs(Lcom/prineside/tdi2/Item;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Item;->sameAs(Lcom/prineside/tdi2/Item;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/prineside/tdi2/items/ResourceItem;

    iget-object p1, p1, Lcom/prineside/tdi2/items/ResourceItem;->resourceType:Lcom/prineside/tdi2/enums/ResourceType;

    iget-object v0, p0, Lcom/prineside/tdi2/items/ResourceItem;->resourceType:Lcom/prineside/tdi2/enums/ResourceType;

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Item;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    iget-object v0, p0, Lcom/prineside/tdi2/items/ResourceItem;->resourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceType"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
