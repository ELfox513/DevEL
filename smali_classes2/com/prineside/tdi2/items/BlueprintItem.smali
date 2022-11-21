.class public Lcom/prineside/tdi2/items/BlueprintItem;
.super Lcom/prineside/tdi2/Item;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/items/BlueprintItem$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;,
        Lcom/prineside/tdi2/items/BlueprintItem$Serializer;
    }
.end annotation


# instance fields
.field public d:Lcom/prineside/tdi2/enums/BlueprintType;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/enums/BlueprintType;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/Item;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/items/BlueprintItem;->d:Lcom/prineside/tdi2/enums/BlueprintType;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/enums/BlueprintType;Lcom/prineside/tdi2/items/BlueprintItem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/items/BlueprintItem;-><init>(Lcom/prineside/tdi2/enums/BlueprintType;)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/items/BlueprintItem;)Lcom/prineside/tdi2/enums/BlueprintType;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/items/BlueprintItem;->d:Lcom/prineside/tdi2/enums/BlueprintType;

    return-object p0
.end method


# virtual methods
.method public addSellItems(Lcom/badlogic/gdx/utils/Array;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/prineside/tdi2/items/BlueprintItem$1;->a:[I

    iget-object v1, p0, Lcom/prineside/tdi2/items/BlueprintItem;->d:Lcom/prineside/tdi2/enums/BlueprintType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x3a98

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x1964

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x9c4

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x3e8

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x12c

    :goto_0
    new-instance v1, Lcom/prineside/tdi2/ItemStack;

    sget-object v2, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    invoke-direct {v1, v2, v0}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public canBeSold()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public from(Lcom/prineside/tdi2/Item;)Lcom/prineside/tdi2/Item;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_BLUEPRINT:Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;

    check-cast p1, Lcom/prineside/tdi2/items/BlueprintItem;

    iget-object p1, p1, Lcom/prineside/tdi2/items/BlueprintItem;->d:Lcom/prineside/tdi2/enums/BlueprintType;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->create(Lcom/prineside/tdi2/enums/BlueprintType;)Lcom/prineside/tdi2/items/BlueprintItem;

    move-result-object p1

    return-object p1
.end method

.method public generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3

    if-eqz p2, :cond_0

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {p2, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->F_BLUEPRINT:Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;

    invoke-static {v1}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->a(Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;)[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/items/BlueprintItem;->d:Lcom/prineside/tdi2/enums/BlueprintType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v0, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-static {p1}, Lcom/prineside/tdi2/Item;->a(F)F

    move-result v1

    invoke-static {p1}, Lcom/prineside/tdi2/Item;->a(F)F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v1, 0x3e8f5c29    # 0.28f

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->F_BLUEPRINT:Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;

    invoke-static {v1}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->a(Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;)[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/items/BlueprintItem;->d:Lcom/prineside/tdi2/enums/BlueprintType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v0, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-object p2

    :cond_0
    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_BLUEPRINT:Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;

    invoke-static {v0}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->a(Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;)[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/items/BlueprintItem;->d:Lcom/prineside/tdi2/enums/BlueprintType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-direct {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {p2, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    return-object p2
.end method

.method public getBlueprintType()Lcom/prineside/tdi2/enums/BlueprintType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/items/BlueprintItem;->d:Lcom/prineside/tdi2/enums/BlueprintType;

    return-object v0
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

    iget-object v2, p0, Lcom/prineside/tdi2/items/BlueprintItem;->d:Lcom/prineside/tdi2/enums/BlueprintType;

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

    const-string v1, "item_description_BLUEPRINT"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriceInAcceleratorsForResearchReset(I)D
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/items/BlueprintItem$1;->a:[I

    iget-object v1, p0, Lcom/prineside/tdi2/items/BlueprintItem;->d:Lcom/prineside/tdi2/enums/BlueprintType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    mul-int/lit16 p1, p1, 0x3a98

    goto :goto_0

    :pswitch_1
    mul-int/lit16 p1, p1, 0x1964

    goto :goto_0

    :pswitch_2
    mul-int/lit16 p1, p1, 0x9c4

    goto :goto_0

    :pswitch_3
    mul-int/lit16 p1, p1, 0x3e8

    goto :goto_0

    :pswitch_4
    mul-int/lit16 p1, p1, 0x12c

    :goto_0
    sget-object v0, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/items/GreenPaperItem;->getPriceInAcceleratorsForResearchReset(I)D

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRarity()Lcom/prineside/tdi2/enums/RarityType;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/items/BlueprintItem$1;->a:[I

    iget-object v1, p0, Lcom/prineside/tdi2/items/BlueprintItem;->d:Lcom/prineside/tdi2/enums/BlueprintType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->LEGENDARY:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->EPIC:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->VERY_RARE:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->RARE:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->COMMON:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSubcategory()Lcom/prineside/tdi2/enums/ItemSubcategoryType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->M_BLUEPRINT:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/items/BlueprintItem$1;->a:[I

    iget-object v1, p0, Lcom/prineside/tdi2/items/BlueprintItem;->d:Lcom/prineside/tdi2/enums/BlueprintType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "item_title_BLUEPRINT_SPECIAL_IV"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "item_title_BLUEPRINT_SPECIAL_III"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "item_title_BLUEPRINT_SPECIAL_II"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "item_title_BLUEPRINT_SPECIAL_I"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "item_title_BLUEPRINT_EXPERIENCE"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "item_title_BLUEPRINT_AGILITY"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_6
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "item_title_BLUEPRINT_POWER"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getType()Lcom/prineside/tdi2/enums/ItemType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemType;->BLUEPRINT:Lcom/prineside/tdi2/enums/ItemType;

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
    check-cast p1, Lcom/prineside/tdi2/items/BlueprintItem;

    iget-object p1, p1, Lcom/prineside/tdi2/items/BlueprintItem;->d:Lcom/prineside/tdi2/enums/BlueprintType;

    iget-object v0, p0, Lcom/prineside/tdi2/items/BlueprintItem;->d:Lcom/prineside/tdi2/enums/BlueprintType;

    if-eq p1, v0, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Item;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    iget-object v0, p0, Lcom/prineside/tdi2/items/BlueprintItem;->d:Lcom/prineside/tdi2/enums/BlueprintType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "blueprintType"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
