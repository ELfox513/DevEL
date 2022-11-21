.class public Lcom/prineside/tdi2/items/OpenedResearchItem;
.super Lcom/prineside/tdi2/Item;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/items/OpenedResearchItem$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/items/OpenedResearchItem$OpenedResearchItemFactory;,
        Lcom/prineside/tdi2/items/OpenedResearchItem$Serializer;
    }
.end annotation


# instance fields
.field public final researchType:Lcom/prineside/tdi2/enums/ResearchType;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/enums/ResearchType;)V
    .locals 1

    invoke-direct {p0}, Lcom/prineside/tdi2/Item;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/prineside/tdi2/items/OpenedResearchItem;->researchType:Lcom/prineside/tdi2/enums/ResearchType;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ResearchType is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/enums/ResearchType;Lcom/prineside/tdi2/items/OpenedResearchItem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/items/OpenedResearchItem;-><init>(Lcom/prineside/tdi2/enums/ResearchType;)V

    return-void
.end method


# virtual methods
.method public cpy()Lcom/prineside/tdi2/Item;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_OPENED_RESEARCH:Lcom/prineside/tdi2/items/OpenedResearchItem$OpenedResearchItemFactory;

    iget-object v1, p0, Lcom/prineside/tdi2/items/OpenedResearchItem;->researchType:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/items/OpenedResearchItem$OpenedResearchItemFactory;->create(Lcom/prineside/tdi2/enums/ResearchType;)Lcom/prineside/tdi2/items/OpenedResearchItem;

    move-result-object v0

    return-object v0
.end method

.method public from(Lcom/prineside/tdi2/Item;)Lcom/prineside/tdi2/Item;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_OPENED_RESEARCH:Lcom/prineside/tdi2/items/OpenedResearchItem$OpenedResearchItemFactory;

    check-cast p1, Lcom/prineside/tdi2/items/OpenedResearchItem;

    iget-object p1, p1, Lcom/prineside/tdi2/items/OpenedResearchItem;->researchType:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/items/OpenedResearchItem$OpenedResearchItemFactory;->create(Lcom/prineside/tdi2/enums/ResearchType;)Lcom/prineside/tdi2/items/OpenedResearchItem;

    move-result-object p1

    return-object p1
.end method

.method public generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 6

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {p2, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    iget-object v2, p0, Lcom/prineside/tdi2/items/OpenedResearchItem;->researchType:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/ResearchManager;->getResearchInstance(Lcom/prineside/tdi2/enums/ResearchType;)Lcom/prineside/tdi2/Research;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Research;->category:Lcom/prineside/tdi2/ResearchCategory;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ResearchCategory;->getIcon()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    :goto_0
    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    iget-object v2, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3, v3, p1}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->createImage(FFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-research"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v1, 0x3ecccccd    # 0.4f

    mul-float v1, v1, p1

    invoke-virtual {v0, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v4, 0x3f19999a    # 0.6f

    mul-float p1, p1, v4

    const/high16 v4, 0x40a00000    # 5.0f

    sub-float v5, p1, v4

    invoke-virtual {v0, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v4, Lcom/prineside/tdi2/Config;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v0, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-object p2
.end method

.method public getCategory()Lcom/prineside/tdi2/enums/ItemCategoryType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemCategoryType;->OTHER:Lcom/prineside/tdi2/enums/ItemCategoryType;

    return-object v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "item_description_OPENED_RESEARCH"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRarity()Lcom/prineside/tdi2/enums/RarityType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->LEGENDARY:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0
.end method

.method public getSubcategory()Lcom/prineside/tdi2/enums/ItemSubcategoryType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->O_OTHER:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    iget-object v1, p0, Lcom/prineside/tdi2/items/OpenedResearchItem;->researchType:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ResearchManager;->getResearchInstance(Lcom/prineside/tdi2/enums/ResearchType;)Lcom/prineside/tdi2/Research;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Research;->getTitle()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/prineside/tdi2/enums/ItemType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemType;->OPENED_RESEARCH:Lcom/prineside/tdi2/enums/ItemType;

    return-object v0
.end method

.method public isCountable()Z
    .locals 1

    const/4 v0, 0x0

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
    check-cast p1, Lcom/prineside/tdi2/items/OpenedResearchItem;

    iget-object p1, p1, Lcom/prineside/tdi2/items/OpenedResearchItem;->researchType:Lcom/prineside/tdi2/enums/ResearchType;

    iget-object v0, p0, Lcom/prineside/tdi2/items/OpenedResearchItem;->researchType:Lcom/prineside/tdi2/enums/ResearchType;

    if-eq p1, v0, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Item;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    iget-object v0, p0, Lcom/prineside/tdi2/items/OpenedResearchItem;->researchType:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "researchType"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
