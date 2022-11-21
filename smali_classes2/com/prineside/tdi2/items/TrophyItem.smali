.class public Lcom/prineside/tdi2/items/TrophyItem;
.super Lcom/prineside/tdi2/Item;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/items/TrophyItem$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/items/TrophyItem$TrophyItemFactory;,
        Lcom/prineside/tdi2/items/TrophyItem$Serializer;
    }
.end annotation


# instance fields
.field public final trophyType:Lcom/prineside/tdi2/enums/TrophyType;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/enums/TrophyType;)V
    .locals 1

    invoke-direct {p0}, Lcom/prineside/tdi2/Item;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/prineside/tdi2/items/TrophyItem;->trophyType:Lcom/prineside/tdi2/enums/TrophyType;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "TrophyType is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/enums/TrophyType;Lcom/prineside/tdi2/items/TrophyItem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/items/TrophyItem;-><init>(Lcom/prineside/tdi2/enums/TrophyType;)V

    return-void
.end method


# virtual methods
.method public cpy()Lcom/prineside/tdi2/Item;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_TROPHY:Lcom/prineside/tdi2/items/TrophyItem$TrophyItemFactory;

    iget-object v1, p0, Lcom/prineside/tdi2/items/TrophyItem;->trophyType:Lcom/prineside/tdi2/enums/TrophyType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/items/TrophyItem$TrophyItemFactory;->create(Lcom/prineside/tdi2/enums/TrophyType;)Lcom/prineside/tdi2/items/TrophyItem;

    move-result-object v0

    return-object v0
.end method

.method public fillItemCreationForm(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
    .locals 2

    const-string v0, "Trophy type"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->label(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v1, p1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->selectBoxStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    sget-object v1, Lcom/prineside/tdi2/enums/TrophyType;->values:[Lcom/prineside/tdi2/enums/TrophyType;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems([Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/prineside/tdi2/items/TrophyItem;->trophyType:Lcom/prineside/tdi2/enums/TrophyType;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    new-instance v1, Lcom/prineside/tdi2/items/TrophyItem$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/prineside/tdi2/items/TrophyItem$1;-><init>(Lcom/prineside/tdi2/items/TrophyItem;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->selectBox(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    return-void
.end method

.method public from(Lcom/prineside/tdi2/Item;)Lcom/prineside/tdi2/Item;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_TROPHY:Lcom/prineside/tdi2/items/TrophyItem$TrophyItemFactory;

    check-cast p1, Lcom/prineside/tdi2/items/TrophyItem;

    iget-object p1, p1, Lcom/prineside/tdi2/items/TrophyItem;->trophyType:Lcom/prineside/tdi2/enums/TrophyType;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/items/TrophyItem$TrophyItemFactory;->create(Lcom/prineside/tdi2/enums/TrophyType;)Lcom/prineside/tdi2/items/TrophyItem;

    move-result-object p1

    return-object p1
.end method

.method public generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->trophyManager:Lcom/prineside/tdi2/managers/TrophyManager;

    iget-object v0, p0, Lcom/prineside/tdi2/items/TrophyItem;->trophyType:Lcom/prineside/tdi2/enums/TrophyType;

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/managers/TrophyManager;->getConfig(Lcom/prineside/tdi2/enums/TrophyType;)Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->isReceived()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->trophyManager:Lcom/prineside/tdi2/managers/TrophyManager;

    iget-object v1, p0, Lcom/prineside/tdi2/items/TrophyItem;->trophyType:Lcom/prineside/tdi2/enums/TrophyType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/TrophyManager;->getConfig(Lcom/prineside/tdi2/enums/TrophyType;)Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->getIconTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {p2, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    return-object p2

    :cond_0
    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {p2, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-question"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v0, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-object p2
.end method

.method public getCategory()Lcom/prineside/tdi2/enums/ItemCategoryType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemCategoryType;->OTHER:Lcom/prineside/tdi2/enums/ItemCategoryType;

    return-object v0
.end method

.method public getData()Lcom/badlogic/gdx/utils/IntArray;
    .locals 3

    invoke-super {p0}, Lcom/prineside/tdi2/Item;->getData()Lcom/badlogic/gdx/utils/IntArray;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/ItemDataType;->TYPE:Lcom/prineside/tdi2/enums/ItemDataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/items/TrophyItem;->trophyType:Lcom/prineside/tdi2/enums/TrophyType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    return-object v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->trophyManager:Lcom/prineside/tdi2/managers/TrophyManager;

    iget-object v1, p0, Lcom/prineside/tdi2/items/TrophyItem;->trophyType:Lcom/prineside/tdi2/enums/TrophyType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/TrophyManager;->getConfig(Lcom/prineside/tdi2/enums/TrophyType;)Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRarity()Lcom/prineside/tdi2/enums/RarityType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->EPIC:Lcom/prineside/tdi2/enums/RarityType;

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

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "item_title_TROPHY"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/prineside/tdi2/enums/ItemType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemType;->TROPHY:Lcom/prineside/tdi2/enums/ItemType;

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
    check-cast p1, Lcom/prineside/tdi2/items/TrophyItem;

    iget-object p1, p1, Lcom/prineside/tdi2/items/TrophyItem;->trophyType:Lcom/prineside/tdi2/enums/TrophyType;

    iget-object v0, p0, Lcom/prineside/tdi2/items/TrophyItem;->trophyType:Lcom/prineside/tdi2/enums/TrophyType;

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Item;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    iget-object v0, p0, Lcom/prineside/tdi2/items/TrophyItem;->trophyType:Lcom/prineside/tdi2/enums/TrophyType;

    const-string v1, "trophyType"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
