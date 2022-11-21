.class public Lcom/prineside/tdi2/items/GameValueLevelItem;
.super Lcom/prineside/tdi2/Item;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/items/GameValueLevelItem$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/items/GameValueLevelItem$GameValueLevelItemFactory;,
        Lcom/prineside/tdi2/items/GameValueLevelItem$Serializer;
    }
.end annotation


# static fields
.field public static final d:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public delta:D

.field public gameValueType:Lcom/prineside/tdi2/enums/GameValueType;

.field public levelName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/items/GameValueLevelItem;->d:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/enums/GameValueType;Ljava/lang/String;D)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/Item;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/prineside/tdi2/items/GameValueLevelItem;->gameValueType:Lcom/prineside/tdi2/enums/GameValueType;

    iput-object p2, p0, Lcom/prineside/tdi2/items/GameValueLevelItem;->levelName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/prineside/tdi2/items/GameValueLevelItem;->delta:D

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Level name is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "GameValueType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/enums/GameValueType;Ljava/lang/String;DLcom/prineside/tdi2/items/GameValueLevelItem$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/items/GameValueLevelItem;-><init>(Lcom/prineside/tdi2/enums/GameValueType;Ljava/lang/String;D)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/items/GameValueLevelItem;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/items/GameValueLevelItem;->d(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/items/GameValueLevelItem;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/items/GameValueLevelItem;->e(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic d(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    sget-object v2, Lcom/prineside/tdi2/Item$D;->F_GAME_VALUE_LEVEL:Lcom/prineside/tdi2/items/GameValueLevelItem$GameValueLevelItemFactory;

    iget-object v3, p0, Lcom/prineside/tdi2/items/GameValueLevelItem;->gameValueType:Lcom/prineside/tdi2/enums/GameValueType;

    iget-object v4, p0, Lcom/prineside/tdi2/items/GameValueLevelItem;->levelName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/prineside/tdi2/items/GameValueLevelItem$GameValueLevelItemFactory;->create(Lcom/prineside/tdi2/enums/GameValueType;DLjava/lang/String;)Lcom/prineside/tdi2/items/GameValueLevelItem;

    move-result-object v0

    iput-object v0, p1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->currentItem:Lcom/prineside/tdi2/Item;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateItemIcon()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bad value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GameValueLevelItem"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic e(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_GAME_VALUE_LEVEL:Lcom/prineside/tdi2/items/GameValueLevelItem$GameValueLevelItemFactory;

    iget-object v1, p0, Lcom/prineside/tdi2/items/GameValueLevelItem;->gameValueType:Lcom/prineside/tdi2/enums/GameValueType;

    iget-wide v2, p0, Lcom/prineside/tdi2/items/GameValueLevelItem;->delta:D

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/prineside/tdi2/items/GameValueLevelItem$GameValueLevelItemFactory;->create(Lcom/prineside/tdi2/enums/GameValueType;DLjava/lang/String;)Lcom/prineside/tdi2/items/GameValueLevelItem;

    move-result-object v0

    iput-object v0, p1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->currentItem:Lcom/prineside/tdi2/Item;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateItemIcon()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bad value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GameValueLevelItem"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cpy()Lcom/prineside/tdi2/Item;
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_GAME_VALUE_LEVEL:Lcom/prineside/tdi2/items/GameValueLevelItem$GameValueLevelItemFactory;

    iget-object v1, p0, Lcom/prineside/tdi2/items/GameValueLevelItem;->gameValueType:Lcom/prineside/tdi2/enums/GameValueType;

    iget-wide v2, p0, Lcom/prineside/tdi2/items/GameValueLevelItem;->delta:D

    iget-object v4, p0, Lcom/prineside/tdi2/items/GameValueLevelItem;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/prineside/tdi2/items/GameValueLevelItem$GameValueLevelItemFactory;->create(Lcom/prineside/tdi2/enums/GameValueType;DLjava/lang/String;)Lcom/prineside/tdi2/items/GameValueLevelItem;

    move-result-object v0

    return-object v0
.end method

.method public fillItemCreationForm(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
    .locals 2

    const-string v0, "Game value"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->label(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v1, p1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->selectBoxStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->values:[Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems([Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/prineside/tdi2/items/GameValueLevelItem;->gameValueType:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    new-instance v1, Lcom/prineside/tdi2/items/GameValueLevelItem$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/prineside/tdi2/items/GameValueLevelItem$1;-><init>(Lcom/prineside/tdi2/items/GameValueLevelItem;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->selectBox(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    const-string v0, "Delta"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->label(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-wide v0, p0, Lcom/prineside/tdi2/items/GameValueLevelItem;->delta:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/prineside/tdi2/items/d;

    invoke-direct {v1, p0, p1}, Lcom/prineside/tdi2/items/d;-><init>(Lcom/prineside/tdi2/items/GameValueLevelItem;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    invoke-virtual {p1, v0, v1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->textField(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    const-string v0, "Level name"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->label(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v0, p0, Lcom/prineside/tdi2/items/GameValueLevelItem;->levelName:Ljava/lang/String;

    new-instance v1, Lcom/prineside/tdi2/items/e;

    invoke-direct {v1, p0, p1}, Lcom/prineside/tdi2/items/e;-><init>(Lcom/prineside/tdi2/items/GameValueLevelItem;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    invoke-virtual {p1, v0, v1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->textField(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    return-void
.end method

.method public from(Lcom/prineside/tdi2/Item;)Lcom/prineside/tdi2/Item;
    .locals 2

    check-cast p1, Lcom/prineside/tdi2/items/GameValueLevelItem;

    iget-object v0, p1, Lcom/prineside/tdi2/items/GameValueLevelItem;->gameValueType:Lcom/prineside/tdi2/enums/GameValueType;

    iput-object v0, p0, Lcom/prineside/tdi2/items/GameValueLevelItem;->gameValueType:Lcom/prineside/tdi2/enums/GameValueType;

    iget-object v0, p1, Lcom/prineside/tdi2/items/GameValueLevelItem;->levelName:Ljava/lang/String;

    iput-object v0, p0, Lcom/prineside/tdi2/items/GameValueLevelItem;->levelName:Ljava/lang/String;

    iget-wide v0, p1, Lcom/prineside/tdi2/items/GameValueLevelItem;->delta:D

    iput-wide v0, p0, Lcom/prineside/tdi2/items/GameValueLevelItem;->delta:D

    return-object p0
.end method

.method public generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 6

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {p2, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "item-cell-game-value-level"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v1, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIME;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget-object v2, p0, Lcom/prineside/tdi2/items/GameValueLevelItem;->gameValueType:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->getIcon()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    :goto_0
    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    iget-object v2, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object v2, v2, v0

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v3, v3, p1

    const v4, 0x3da3d70a    # 0.08f

    mul-float v4, v4, p1

    const v5, 0x3f28f5c3    # 0.66f

    mul-float v5, v5, p1

    invoke-virtual {v2, v3, v4, v5}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->createImage(FFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v3

    iget-object v2, v2, Lcom/prineside/tdi2/utils/TextureRegionConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v2

    sget-object v4, Lcom/prineside/tdi2/managers/GameValueManager;->ICON_BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v4

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIME;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/prineside/tdi2/Config;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_1
    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public getCategory()Lcom/prineside/tdi2/enums/ItemCategoryType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemCategoryType;->OTHER:Lcom/prineside/tdi2/enums/ItemCategoryType;

    return-object v0
.end method

.method public getData()Lcom/badlogic/gdx/utils/IntArray;
    .locals 6

    invoke-super {p0}, Lcom/prineside/tdi2/Item;->getData()Lcom/badlogic/gdx/utils/IntArray;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/ItemDataType;->TYPE:Lcom/prineside/tdi2/enums/ItemDataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/items/GameValueLevelItem;->gameValueType:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    sget-object v1, Lcom/prineside/tdi2/enums/ItemDataType;->VALUE:Lcom/prineside/tdi2/enums/ItemDataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-wide v2, p0, Lcom/prineside/tdi2/items/GameValueLevelItem;->delta:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v2, v2, v4

    double-to-float v2, v2

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    return-object v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "item_description_GAME_VALUE_LEVEL"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRarity()Lcom/prineside/tdi2/enums/RarityType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->VERY_RARE:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0
.end method

.method public getSubcategory()Lcom/prineside/tdi2/enums/ItemSubcategoryType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->O_OTHER:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 6

    sget-object v0, Lcom/prineside/tdi2/items/GameValueLevelItem;->d:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget-object v2, p0, Lcom/prineside/tdi2/items/GameValueLevelItem;->gameValueType:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/GameValueManager;->getTitle(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget-wide v3, p0, Lcom/prineside/tdi2/items/GameValueLevelItem;->delta:D

    iget-object v5, p0, Lcom/prineside/tdi2/items/GameValueLevelItem;->gameValueType:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->units:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    invoke-virtual {v2, v3, v4, v5}, Lcom/prineside/tdi2/managers/GameValueManager;->formatEffectValue(DLcom/prineside/tdi2/managers/GameValueManager$ValueUnits;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "level"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/items/GameValueLevelItem;->levelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    return-object v0
.end method

.method public getType()Lcom/prineside/tdi2/enums/ItemType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemType;->GAME_VALUE_LEVEL:Lcom/prineside/tdi2/enums/ItemType;

    return-object v0
.end method

.method public isCountable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sameAs(Lcom/prineside/tdi2/Item;)Z
    .locals 6

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Item;->sameAs(Lcom/prineside/tdi2/Item;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/prineside/tdi2/items/GameValueLevelItem;

    iget-object v0, p1, Lcom/prineside/tdi2/items/GameValueLevelItem;->gameValueType:Lcom/prineside/tdi2/enums/GameValueType;

    iget-object v2, p0, Lcom/prineside/tdi2/items/GameValueLevelItem;->gameValueType:Lcom/prineside/tdi2/enums/GameValueType;

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-wide v2, p1, Lcom/prineside/tdi2/items/GameValueLevelItem;->delta:D

    iget-wide v4, p0, Lcom/prineside/tdi2/items/GameValueLevelItem;->delta:D

    cmpl-double p1, v2, v4

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Item;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    iget-object v0, p0, Lcom/prineside/tdi2/items/GameValueLevelItem;->gameValueType:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gameValueType"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/prineside/tdi2/items/GameValueLevelItem;->delta:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "delta"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/items/GameValueLevelItem;->levelName:Ljava/lang/String;

    const-string v1, "levelName"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
