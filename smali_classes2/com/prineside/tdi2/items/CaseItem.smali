.class public Lcom/prineside/tdi2/items/CaseItem;
.super Lcom/prineside/tdi2/Item;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;
    }
.end annotation


# instance fields
.field public caseType:Lcom/prineside/tdi2/enums/CaseType;

.field public containsPapers:Z

.field public d:Ljava/lang/String;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public encrypted:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/Item;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/enums/CaseType;ZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/Item;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    iput-boolean p2, p0, Lcom/prineside/tdi2/items/CaseItem;->encrypted:Z

    iput-boolean p3, p0, Lcom/prineside/tdi2/items/CaseItem;->containsPapers:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CaseType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/enums/CaseType;ZZLcom/prineside/tdi2/items/CaseItem$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/prineside/tdi2/items/CaseItem;-><init>(Lcom/prineside/tdi2/enums/CaseType;ZZ)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/items/CaseItem;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/items/CaseItem;->e(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/items/CaseItem;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/items/CaseItem;->d(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic d(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/Boolean;)V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    iget-object v1, p0, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-boolean v2, p0, Lcom/prineside/tdi2/items/CaseItem;->containsPapers:Z

    invoke-virtual {v0, v1, p2, v2}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;ZZ)Lcom/prineside/tdi2/items/CaseItem;

    move-result-object p2

    iput-object p2, p1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->currentItem:Lcom/prineside/tdi2/Item;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object p2, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    return-void
.end method

.method private synthetic e(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/Boolean;)V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    iget-object v1, p0, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    iget-boolean v2, p0, Lcom/prineside/tdi2/items/CaseItem;->encrypted:Z

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, v1, v2, p2}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;ZZ)Lcom/prineside/tdi2/items/CaseItem;

    move-result-object p2

    iput-object p2, p1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->currentItem:Lcom/prineside/tdi2/Item;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object p2, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    return-void
.end method


# virtual methods
.method public canBeUnpacked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/items/CaseItem;->encrypted:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public cpy()Lcom/prineside/tdi2/Item;
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    iget-object v1, p0, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    iget-boolean v2, p0, Lcom/prineside/tdi2/items/CaseItem;->encrypted:Z

    iget-boolean v3, p0, Lcom/prineside/tdi2/items/CaseItem;->containsPapers:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;ZZ)Lcom/prineside/tdi2/items/CaseItem;

    move-result-object v0

    return-object v0
.end method

.method public fillItemCreationForm(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
    .locals 3

    const-string v0, "Case type"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->label(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v1, p1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->selectBoxStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    sget-object v1, Lcom/prineside/tdi2/enums/CaseType;->values:[Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems([Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    new-instance v1, Lcom/prineside/tdi2/items/CaseItem$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/prineside/tdi2/items/CaseItem$1;-><init>(Lcom/prineside/tdi2/items/CaseItem;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->selectBox(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/items/CaseItem;->encrypted:Z

    new-instance v1, Lcom/prineside/tdi2/items/a;

    invoke-direct {v1, p0, p1}, Lcom/prineside/tdi2/items/a;-><init>(Lcom/prineside/tdi2/items/CaseItem;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    const-string v2, "Encrypted"

    invoke-virtual {p1, v2, v0, v1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->toggle(Ljava/lang/String;ZLcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    iget-boolean v0, p0, Lcom/prineside/tdi2/items/CaseItem;->containsPapers:Z

    new-instance v1, Lcom/prineside/tdi2/items/b;

    invoke-direct {v1, p0, p1}, Lcom/prineside/tdi2/items/b;-><init>(Lcom/prineside/tdi2/items/CaseItem;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    const-string v2, "Contains papers"

    invoke-virtual {p1, v2, v0, v1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->toggle(Ljava/lang/String;ZLcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    return-void
.end method

.method public from(Lcom/prineside/tdi2/Item;)Lcom/prineside/tdi2/Item;
    .locals 3

    check-cast p1, Lcom/prineside/tdi2/items/CaseItem;

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    iget-object v1, p1, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    iget-boolean v2, p1, Lcom/prineside/tdi2/items/CaseItem;->encrypted:Z

    iget-boolean p1, p1, Lcom/prineside/tdi2/items/CaseItem;->containsPapers:Z

    invoke-virtual {v0, v1, v2, p1}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;ZZ)Lcom/prineside/tdi2/items/CaseItem;

    move-result-object p1

    return-object p1
.end method

.method public generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v0, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v1, Lcom/prineside/tdi2/Item$D;->F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    invoke-static {v1}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->a(Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;)[[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    iget-boolean v2, p0, Lcom/prineside/tdi2/items/CaseItem;->encrypted:Z

    aget-object v1, v1, v2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {p2, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-static {p1}, Lcom/prineside/tdi2/Item;->a(F)F

    move-result v2

    invoke-static {p1}, Lcom/prineside/tdi2/Item;->a(F)F

    move-result v3

    neg-float v3, v3

    invoke-virtual {p2, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v2, 0x3e8f5c29    # 0.28f

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v3, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_0
    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {p2, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-object v0
.end method

.method public getCasePriceInAccelerators()I
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    sget-object v1, Lcom/prineside/tdi2/enums/CaseType;->CYAN:Lcom/prineside/tdi2/enums/CaseType;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x64

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCasePriceInKeys()I
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/items/CaseItem$2;->a:[I

    iget-object v1, p0, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0xa

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v2
.end method

.method public getCasePriceInPapers()I
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/items/CaseItem$2;->a:[I

    iget-object v1, p0, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x7530

    return v0

    :cond_1
    const v0, 0x1d4c0

    return v0

    :cond_2
    const/16 v0, 0x1d4c

    return v0

    :cond_3
    const/16 v0, 0x1b58

    return v0
.end method

.method public getCategory()Lcom/prineside/tdi2/enums/ItemCategoryType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemCategoryType;->PACKS:Lcom/prineside/tdi2/enums/ItemCategoryType;

    return-object v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/items/CaseItem$2;->a:[I

    iget-object v1, p0, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$PINK;->P600:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P400:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$INDIGO;->P400:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getData()Lcom/badlogic/gdx/utils/IntArray;
    .locals 3

    invoke-super {p0}, Lcom/prineside/tdi2/Item;->getData()Lcom/badlogic/gdx/utils/IntArray;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/ItemDataType;->TYPE:Lcom/prineside/tdi2/enums/ItemDataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    sget-object v1, Lcom/prineside/tdi2/enums/ItemDataType;->CASE_ENCRYPTED:Lcom/prineside/tdi2/enums/ItemDataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-boolean v2, p0, Lcom/prineside/tdi2/items/CaseItem;->encrypted:Z

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    sget-object v1, Lcom/prineside/tdi2/enums/ItemDataType;->CASE_CONTAINS_PAPERS:Lcom/prineside/tdi2/enums/ItemDataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-boolean v2, p0, Lcom/prineside/tdi2/items/CaseItem;->containsPapers:Z

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    return-object v0
.end method

.method public getDecryptionTime()F
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/items/CaseItem$2;->a:[I

    iget-object v1, p0, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const v1, 0x46a8c000    # 21600.0f

    packed-switch v0, :pswitch_data_0

    const v0, 0x47a8c000    # 86400.0f

    return v0

    :pswitch_0
    return v1

    :pswitch_1
    const v0, 0x477d2000    # 64800.0f

    return v0

    :pswitch_2
    return v1

    :pswitch_3
    const v0, 0x4728c000    # 43200.0f

    return v0

    :pswitch_4
    const v0, 0x4628c000    # 10800.0f

    return v0

    :pswitch_5
    const v0, 0x45a8c000    # 5400.0f

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/items/CaseItem;->encrypted:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "item_description_CASE_encrypted"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "item_description_CASE"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGuaranteedItemType()Lcom/prineside/tdi2/enums/RarityType;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/items/CaseItem$2;->a:[I

    iget-object v1, p0, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

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
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->VERY_RARE:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :cond_2
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->EPIC:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0
.end method

.method public getIconDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    invoke-static {v0}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->a(Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;)[[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    iget-boolean v1, p0, Lcom/prineside/tdi2/items/CaseItem;->encrypted:Z

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/items/CaseItem$2;->a:[I

    iget-object v1, p0, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x3

    return v0

    :pswitch_1
    const/16 v0, 0x8

    return v0

    :pswitch_2
    const/4 v0, 0x6

    return v0

    :pswitch_3
    const/4 v0, 0x7

    return v0

    :pswitch_4
    const/4 v0, 0x5

    return v0

    :pswitch_5
    const/4 v0, 0x4

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemRarityChances()[I
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/items/CaseItem$2;->a:[I

    iget-object v1, p0, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    return-object v0

    :pswitch_1
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    return-object v0

    :pswitch_2
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    return-object v0

    :pswitch_3
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    return-object v0

    :pswitch_4
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    return-object v0

    :pswitch_5
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x64
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe
        0x1e
        0x18
        0x14
        0xc
    .end array-data

    :array_2
    .array-data 4
        0x33
        0x22
        0xc
        0x3
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x1d
        0x26
        0x12
        0xc
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x46
        0x19
        0x5
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x58
        0xc
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getRarity()Lcom/prineside/tdi2/enums/RarityType;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/items/CaseItem$2;->a:[I

    iget-object v1, p0, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->COMMON:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->EPIC:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->LEGENDARY:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->VERY_RARE:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->EPIC:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->RARE:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->COMMON:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSubcategory()Lcom/prineside/tdi2/enums/ItemSubcategoryType;
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/items/CaseItem;->encrypted:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->P_ENCRYPTED:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->P_DECRYPTED:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    :goto_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/items/CaseItem;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item_title_CASE_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/items/CaseItem;->d:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    iget-object v1, p0, Lcom/prineside/tdi2/items/CaseItem;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/prineside/tdi2/enums/ItemType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemType;->CASE:Lcom/prineside/tdi2/enums/ItemType;

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

.method public openPack(Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)Lcom/badlogic/gdx/utils/Array;
    .locals 29
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

    move-object/from16 v0, p0

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/prineside/tdi2/ItemStack;

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-direct {v1, v3, v4, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/ProgressManager;->caseRandoms:[Lcom/badlogic/gdx/math/RandomXS128;

    iget-object v5, v0, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v2, v2, v5

    new-instance v5, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    sget-object v6, Lcom/prineside/tdi2/items/CaseItem$2;->a:[I

    iget-object v7, v0, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/high16 v19, 0x41000000    # 8.0f

    const/16 v15, 0x14

    const/high16 v20, 0x40800000    # 4.0f

    const/16 v14, 0xb

    const/4 v13, 0x6

    const/16 v12, 0x19

    const/16 v7, 0x26

    const/16 v8, 0xc

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    const/4 v10, 0x5

    const/high16 v23, 0x40000000    # 2.0f

    const/4 v3, 0x1

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_2a

    :pswitch_0
    new-instance v3, Lcom/prineside/tdi2/ItemStack;

    sget-object v4, Lcom/prineside/tdi2/Item$D;->F_BLUEPRINT:Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;

    sget-object v5, Lcom/prineside/tdi2/enums/BlueprintType;->AGILITY:Lcom/prineside/tdi2/enums/BlueprintType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->create(Lcom/prineside/tdi2/enums/BlueprintType;)Lcom/prineside/tdi2/items/BlueprintItem;

    move-result-object v4

    const/16 v5, 0x13

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v6

    add-int/2addr v6, v7

    invoke-direct {v3, v4, v6}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Lcom/prineside/tdi2/ItemStack;

    sget-object v4, Lcom/prineside/tdi2/Item$D;->F_BLUEPRINT:Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;

    sget-object v6, Lcom/prineside/tdi2/enums/BlueprintType;->POWER:Lcom/prineside/tdi2/enums/BlueprintType;

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->create(Lcom/prineside/tdi2/enums/BlueprintType;)Lcom/prineside/tdi2/items/BlueprintItem;

    move-result-object v4

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v6

    add-int/2addr v6, v7

    invoke-direct {v3, v4, v6}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Lcom/prineside/tdi2/ItemStack;

    sget-object v4, Lcom/prineside/tdi2/Item$D;->F_BLUEPRINT:Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;

    sget-object v6, Lcom/prineside/tdi2/enums/BlueprintType;->EXPERIENCE:Lcom/prineside/tdi2/enums/BlueprintType;

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->create(Lcom/prineside/tdi2/enums/BlueprintType;)Lcom/prineside/tdi2/items/BlueprintItem;

    move-result-object v4

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v7

    invoke-direct {v3, v4, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/16 :goto_2a

    :pswitch_1
    const/16 v6, 0xe

    sget-object v7, Lcom/prineside/tdi2/enums/RarityType;->COMMON:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    const/16 v6, 0x1e

    sget-object v7, Lcom/prineside/tdi2/enums/RarityType;->RARE:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    const/16 v6, 0x18

    sget-object v7, Lcom/prineside/tdi2/enums/RarityType;->VERY_RARE:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    sget-object v6, Lcom/prineside/tdi2/enums/RarityType;->EPIC:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual {v5, v15, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    sget-object v6, Lcom/prineside/tdi2/enums/RarityType;->LEGENDARY:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual {v5, v8, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    const/16 v21, 0x0

    :goto_0
    iget v6, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eq v6, v4, :cond_a

    iget-boolean v7, v0, Lcom/prineside/tdi2/items/CaseItem;->containsPapers:Z

    if-eqz v7, :cond_0

    if-nez v21, :cond_0

    new-instance v6, Lcom/prineside/tdi2/ItemStack;

    sget-object v7, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1c

    mul-int/lit16 v8, v8, 0x3e8

    invoke-direct {v6, v7, v8}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/16 v21, 0x1

    goto :goto_0

    :cond_0
    if-ne v6, v3, :cond_1

    sget-object v6, Lcom/prineside/tdi2/enums/RarityType;->LEGENDARY:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    goto :goto_1

    :cond_1
    invoke-static {v2, v5}, Lcom/prineside/tdi2/utils/PMath;->getByChance(Lcom/badlogic/gdx/math/RandomXS128;Lcom/badlogic/gdx/utils/IntArray;)I

    move-result v6

    :goto_1
    invoke-virtual {v2}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v11

    sget-object v7, Lcom/prineside/tdi2/enums/RarityType;->COMMON:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_2

    const/high16 v7, 0x41800000    # 16.0f

    const/high16 v12, 0x41800000    # 16.0f

    goto :goto_2

    :cond_2
    sget-object v7, Lcom/prineside/tdi2/enums/RarityType;->RARE:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_3

    const/high16 v12, 0x41000000    # 8.0f

    goto :goto_2

    :cond_3
    sget-object v7, Lcom/prineside/tdi2/enums/RarityType;->VERY_RARE:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_4

    const/high16 v12, 0x40800000    # 4.0f

    goto :goto_2

    :cond_4
    sget-object v7, Lcom/prineside/tdi2/enums/RarityType;->EPIC:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_5

    const/high16 v12, 0x40000000    # 2.0f

    goto :goto_2

    :cond_5
    const/high16 v12, 0x3f800000    # 1.0f

    :goto_2
    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->itemManager:Lcom/prineside/tdi2/managers/ItemManager;

    sget-object v8, Lcom/prineside/tdi2/enums/RarityType;->values:[Lcom/prineside/tdi2/enums/RarityType;

    aget-object v8, v8, v6

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v6}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v6

    sget-object v15, Lcom/prineside/tdi2/enums/GameValueType;->BIT_DUST_DROP_RATE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v6, v15}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v9

    double-to-float v15, v9

    const/16 v18, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object v6, v7

    move-object v7, v2

    const/4 v10, 0x3

    move v9, v11

    const/4 v4, 0x3

    const/4 v11, 0x5

    move v10, v12

    const/4 v12, 0x5

    move v11, v13

    const/4 v13, 0x5

    move v12, v14

    const/4 v14, 0x5

    move v13, v15

    const/4 v15, 0x5

    move/from16 v14, v18

    move/from16 v15, v24

    move/from16 v16, v25

    move/from16 v17, v26

    move-object/from16 v18, p1

    invoke-virtual/range {v6 .. v18}, Lcom/prineside/tdi2/managers/ItemManager;->generateItemByRarity(Lcom/badlogic/gdx/math/RandomXS128;Lcom/prineside/tdi2/enums/RarityType;FFFFFFFFZLcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v6

    const/4 v7, 0x0

    :goto_3
    iget v8, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v8, :cond_7

    iget-object v8, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/ItemStack;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/Item;->sameAs(Lcom/prineside/tdi2/Item;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    :goto_4
    if-nez v7, :cond_8

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    invoke-virtual {v8}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v8

    sget-object v9, Lcom/prineside/tdi2/enums/ItemType;->RESOURCE:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v8, v9, :cond_8

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/items/ResourceItem;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v8, v8, Lcom/prineside/tdi2/items/ResourceItem;->resourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v9, v8}, Lcom/prineside/tdi2/managers/ProgressManager;->isResourceOpened(Lcom/prineside/tdi2/enums/ResourceType;)Z

    move-result v8

    if-nez v8, :cond_8

    const/4 v7, 0x1

    :cond_8
    if-nez v7, :cond_9

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_9
    const/16 v4, 0x8

    const/4 v10, 0x5

    goto/16 :goto_0

    :cond_a
    const/4 v4, 0x3

    iget-boolean v5, v0, Lcom/prineside/tdi2/items/CaseItem;->containsPapers:Z

    if-eqz v5, :cond_46

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v5

    move v6, v5

    :goto_5
    if-ne v6, v5, :cond_b

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v6

    goto :goto_5

    :cond_b
    if-nez v5, :cond_c

    sget-object v4, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_AGILITY:Lcom/prineside/tdi2/items/BlueprintItem;

    goto :goto_6

    :cond_c
    if-ne v5, v3, :cond_d

    sget-object v4, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_EXPERIENCE:Lcom/prineside/tdi2/items/BlueprintItem;

    goto :goto_6

    :cond_d
    sget-object v4, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_POWER:Lcom/prineside/tdi2/items/BlueprintItem;

    :goto_6
    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v7

    const/16 v8, 0x8

    add-int/2addr v7, v8

    invoke-static {v1, v4, v7}, Lcom/prineside/tdi2/managers/ProgressManager;->addItemToStacksArray(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    if-nez v6, :cond_e

    sget-object v4, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_AGILITY:Lcom/prineside/tdi2/items/BlueprintItem;

    goto :goto_7

    :cond_e
    if-ne v6, v3, :cond_f

    sget-object v4, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_EXPERIENCE:Lcom/prineside/tdi2/items/BlueprintItem;

    goto :goto_7

    :cond_f
    sget-object v4, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_POWER:Lcom/prineside/tdi2/items/BlueprintItem;

    :goto_7
    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v8

    invoke-static {v1, v4, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->addItemToStacksArray(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    sget-object v2, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_SPECIAL_II:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-static {v1, v2, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->addItemToStacksArray(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    goto/16 :goto_2a

    :pswitch_2
    const/4 v4, 0x3

    const/16 v6, 0x33

    sget-object v7, Lcom/prineside/tdi2/enums/RarityType;->COMMON:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    const/16 v6, 0x22

    sget-object v7, Lcom/prineside/tdi2/enums/RarityType;->RARE:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    sget-object v6, Lcom/prineside/tdi2/enums/RarityType;->VERY_RARE:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual {v5, v8, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    sget-object v6, Lcom/prineside/tdi2/enums/RarityType;->EPIC:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    const/16 v19, 0x0

    :goto_8
    iget v6, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eq v6, v13, :cond_19

    iget-boolean v7, v0, Lcom/prineside/tdi2/items/CaseItem;->containsPapers:Z

    if-eqz v7, :cond_10

    if-nez v19, :cond_10

    new-instance v6, Lcom/prineside/tdi2/ItemStack;

    sget-object v7, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v8

    add-int/2addr v8, v12

    mul-int/lit16 v8, v8, 0xc8

    invoke-direct {v6, v7, v8}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/16 v19, 0x1

    goto :goto_8

    :cond_10
    if-ne v6, v3, :cond_11

    sget-object v6, Lcom/prineside/tdi2/enums/RarityType;->VERY_RARE:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    goto :goto_9

    :cond_11
    invoke-static {v2, v5}, Lcom/prineside/tdi2/utils/PMath;->getByChance(Lcom/badlogic/gdx/math/RandomXS128;Lcom/badlogic/gdx/utils/IntArray;)I

    move-result v6

    :goto_9
    invoke-virtual {v2}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v9

    sget-object v7, Lcom/prineside/tdi2/enums/RarityType;->COMMON:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_12

    const/high16 v10, 0x40800000    # 4.0f

    goto :goto_a

    :cond_12
    sget-object v7, Lcom/prineside/tdi2/enums/RarityType;->RARE:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_13

    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_a

    :cond_13
    const/high16 v10, 0x3f800000    # 1.0f

    :goto_a
    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->itemManager:Lcom/prineside/tdi2/managers/ItemManager;

    sget-object v8, Lcom/prineside/tdi2/enums/RarityType;->values:[Lcom/prineside/tdi2/enums/RarityType;

    aget-object v8, v8, v6

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v11}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v11

    sget-object v12, Lcom/prineside/tdi2/enums/GameValueType;->BIT_DUST_DROP_RATE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v11

    double-to-float v12, v11

    const/16 v24, 0x0

    const/16 v25, 0x0

    sget-object v11, Lcom/prineside/tdi2/enums/RarityType;->EPIC:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-lt v6, v11, :cond_14

    const/high16 v26, 0x40000000    # 2.0f

    goto :goto_b

    :cond_14
    const/16 v26, 0x0

    :goto_b
    const/16 v27, 0x0

    move-object v6, v7

    move-object v7, v2

    move v11, v15

    move v15, v12

    move/from16 v12, v16

    const/16 v28, 0x6

    move v13, v15

    const/16 v15, 0xb

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v16, v26

    move/from16 v17, v27

    move-object/from16 v18, p1

    invoke-virtual/range {v6 .. v18}, Lcom/prineside/tdi2/managers/ItemManager;->generateItemByRarity(Lcom/badlogic/gdx/math/RandomXS128;Lcom/prineside/tdi2/enums/RarityType;FFFFFFFFZLcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v6

    const/4 v7, 0x0

    :goto_c
    iget v8, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v8, :cond_16

    iget-object v8, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/ItemStack;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/Item;->sameAs(Lcom/prineside/tdi2/Item;)Z

    move-result v8

    if-eqz v8, :cond_15

    const/4 v7, 0x1

    goto :goto_d

    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_16
    const/4 v7, 0x0

    :goto_d
    if-nez v7, :cond_17

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    invoke-virtual {v8}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v8

    sget-object v9, Lcom/prineside/tdi2/enums/ItemType;->RESOURCE:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v8, v9, :cond_17

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/items/ResourceItem;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v8, v8, Lcom/prineside/tdi2/items/ResourceItem;->resourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v9, v8}, Lcom/prineside/tdi2/managers/ProgressManager;->isResourceOpened(Lcom/prineside/tdi2/enums/ResourceType;)Z

    move-result v8

    if-nez v8, :cond_17

    const/4 v7, 0x1

    :cond_17
    if-nez v7, :cond_18

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_18
    const/16 v12, 0x19

    const/4 v13, 0x6

    const/16 v14, 0xb

    goto/16 :goto_8

    :cond_19
    iget-boolean v5, v0, Lcom/prineside/tdi2/items/CaseItem;->containsPapers:Z

    if-eqz v5, :cond_46

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v5

    move v6, v5

    :goto_e
    if-ne v6, v5, :cond_1a

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v6

    goto :goto_e

    :cond_1a
    if-nez v5, :cond_1b

    sget-object v4, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_AGILITY:Lcom/prineside/tdi2/items/BlueprintItem;

    :goto_f
    const/4 v14, 0x5

    goto :goto_10

    :cond_1b
    if-ne v5, v3, :cond_1c

    sget-object v4, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_EXPERIENCE:Lcom/prineside/tdi2/items/BlueprintItem;

    goto :goto_f

    :cond_1c
    sget-object v4, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_POWER:Lcom/prineside/tdi2/items/BlueprintItem;

    goto :goto_f

    :goto_10
    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v5

    const/4 v13, 0x4

    add-int/2addr v5, v13

    invoke-static {v1, v4, v5}, Lcom/prineside/tdi2/managers/ProgressManager;->addItemToStacksArray(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    if-nez v6, :cond_1d

    sget-object v4, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_AGILITY:Lcom/prineside/tdi2/items/BlueprintItem;

    goto :goto_11

    :cond_1d
    if-ne v6, v3, :cond_1e

    sget-object v4, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_EXPERIENCE:Lcom/prineside/tdi2/items/BlueprintItem;

    goto :goto_11

    :cond_1e
    sget-object v4, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_POWER:Lcom/prineside/tdi2/items/BlueprintItem;

    :goto_11
    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v13

    invoke-static {v1, v4, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->addItemToStacksArray(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    sget-object v2, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_SPECIAL_I:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-static {v1, v2, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->addItemToStacksArray(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    goto/16 :goto_2a

    :pswitch_3
    const/4 v4, 0x3

    const/16 v28, 0x6

    const/16 v6, 0x1d

    sget-object v9, Lcom/prineside/tdi2/enums/RarityType;->COMMON:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    invoke-virtual {v5, v6, v9}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    sget-object v6, Lcom/prineside/tdi2/enums/RarityType;->RARE:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual {v5, v7, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    const/16 v6, 0x12

    sget-object v7, Lcom/prineside/tdi2/enums/RarityType;->VERY_RARE:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    sget-object v6, Lcom/prineside/tdi2/enums/RarityType;->EPIC:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual {v5, v8, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    sget-object v6, Lcom/prineside/tdi2/enums/RarityType;->LEGENDARY:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    const/16 v24, 0x0

    :cond_1f
    :goto_12
    iget v6, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v7, 0x7

    if-eq v6, v7, :cond_29

    iget-boolean v7, v0, Lcom/prineside/tdi2/items/CaseItem;->containsPapers:Z

    if-eqz v7, :cond_20

    if-nez v24, :cond_20

    new-instance v6, Lcom/prineside/tdi2/ItemStack;

    sget-object v7, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    const/16 v15, 0xb

    invoke-virtual {v2, v15}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v8

    const/16 v14, 0x19

    add-int/2addr v8, v14

    mul-int/lit16 v8, v8, 0x1f4

    invoke-direct {v6, v7, v8}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/16 v24, 0x1

    goto :goto_12

    :cond_20
    const/16 v14, 0x19

    const/16 v15, 0xb

    if-ne v6, v3, :cond_21

    sget-object v6, Lcom/prineside/tdi2/enums/RarityType;->EPIC:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    goto :goto_13

    :cond_21
    invoke-static {v2, v5}, Lcom/prineside/tdi2/utils/PMath;->getByChance(Lcom/badlogic/gdx/math/RandomXS128;Lcom/badlogic/gdx/utils/IntArray;)I

    move-result v6

    :goto_13
    invoke-virtual {v2}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v9

    sget-object v7, Lcom/prineside/tdi2/enums/RarityType;->COMMON:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_22

    const/high16 v10, 0x41000000    # 8.0f

    goto :goto_14

    :cond_22
    sget-object v7, Lcom/prineside/tdi2/enums/RarityType;->RARE:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_23

    const/high16 v10, 0x40800000    # 4.0f

    goto :goto_14

    :cond_23
    sget-object v7, Lcom/prineside/tdi2/enums/RarityType;->VERY_RARE:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_24

    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_14

    :cond_24
    const/high16 v10, 0x3f800000    # 1.0f

    :goto_14
    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->itemManager:Lcom/prineside/tdi2/managers/ItemManager;

    sget-object v8, Lcom/prineside/tdi2/enums/RarityType;->values:[Lcom/prineside/tdi2/enums/RarityType;

    aget-object v8, v8, v6

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v13}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v13

    sget-object v14, Lcom/prineside/tdi2/enums/GameValueType;->BIT_DUST_DROP_RATE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v13

    double-to-float v13, v13

    const/4 v14, 0x0

    const/16 v16, 0x0

    sget-object v17, Lcom/prineside/tdi2/enums/RarityType;->LEGENDARY:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    if-lt v6, v15, :cond_25

    const/high16 v17, 0x40000000    # 2.0f

    goto :goto_15

    :cond_25
    const/16 v17, 0x0

    :goto_15
    const/16 v18, 0x0

    move-object v6, v7

    move-object v7, v2

    const/16 v15, 0x19

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, p1

    invoke-virtual/range {v6 .. v18}, Lcom/prineside/tdi2/managers/ItemManager;->generateItemByRarity(Lcom/badlogic/gdx/math/RandomXS128;Lcom/prineside/tdi2/enums/RarityType;FFFFFFFFZLcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v6

    const/4 v7, 0x0

    :goto_16
    iget v8, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v8, :cond_27

    iget-object v8, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/ItemStack;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/Item;->sameAs(Lcom/prineside/tdi2/Item;)Z

    move-result v8

    if-eqz v8, :cond_26

    const/4 v7, 0x1

    goto :goto_17

    :cond_26
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    :cond_27
    const/4 v7, 0x0

    :goto_17
    if-nez v7, :cond_28

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    invoke-virtual {v8}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v8

    sget-object v9, Lcom/prineside/tdi2/enums/ItemType;->RESOURCE:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v8, v9, :cond_28

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/items/ResourceItem;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v8, v8, Lcom/prineside/tdi2/items/ResourceItem;->resourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v9, v8}, Lcom/prineside/tdi2/managers/ProgressManager;->isResourceOpened(Lcom/prineside/tdi2/enums/ResourceType;)Z

    move-result v8

    if-nez v8, :cond_28

    const/4 v7, 0x1

    :cond_28
    if-nez v7, :cond_1f

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_29
    iget-boolean v5, v0, Lcom/prineside/tdi2/items/CaseItem;->containsPapers:Z

    if-eqz v5, :cond_46

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v5

    move v6, v5

    :goto_18
    if-ne v6, v5, :cond_2a

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v6

    goto :goto_18

    :cond_2a
    if-nez v5, :cond_2b

    sget-object v5, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_AGILITY:Lcom/prineside/tdi2/items/BlueprintItem;

    goto :goto_19

    :cond_2b
    if-ne v5, v3, :cond_2c

    sget-object v5, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_EXPERIENCE:Lcom/prineside/tdi2/items/BlueprintItem;

    goto :goto_19

    :cond_2c
    sget-object v5, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_POWER:Lcom/prineside/tdi2/items/BlueprintItem;

    :goto_19
    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x6

    invoke-static {v1, v5, v8}, Lcom/prineside/tdi2/managers/ProgressManager;->addItemToStacksArray(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    if-nez v6, :cond_2d

    sget-object v5, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_AGILITY:Lcom/prineside/tdi2/items/BlueprintItem;

    goto :goto_1a

    :cond_2d
    if-ne v6, v3, :cond_2e

    sget-object v5, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_EXPERIENCE:Lcom/prineside/tdi2/items/BlueprintItem;

    goto :goto_1a

    :cond_2e
    sget-object v5, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_POWER:Lcom/prineside/tdi2/items/BlueprintItem;

    :goto_1a
    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    invoke-static {v1, v5, v6}, Lcom/prineside/tdi2/managers/ProgressManager;->addItemToStacksArray(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    sget-object v5, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_SPECIAL_I:Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v1, v5, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->addItemToStacksArray(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    goto/16 :goto_2a

    :pswitch_4
    const/4 v4, 0x3

    const/4 v13, 0x4

    const/4 v14, 0x5

    const/16 v6, 0x46

    sget-object v7, Lcom/prineside/tdi2/enums/RarityType;->COMMON:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    sget-object v6, Lcom/prineside/tdi2/enums/RarityType;->RARE:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x19

    invoke-virtual {v5, v7, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    sget-object v6, Lcom/prineside/tdi2/enums/RarityType;->VERY_RARE:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual {v5, v14, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    const/16 v19, 0x0

    :goto_1b
    iget v6, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eq v6, v14, :cond_36

    iget-boolean v6, v0, Lcom/prineside/tdi2/items/CaseItem;->containsPapers:Z

    if-eqz v6, :cond_2f

    if-nez v19, :cond_2f

    new-instance v6, Lcom/prineside/tdi2/ItemStack;

    sget-object v7, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    const/16 v12, 0xb

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v8

    add-int/2addr v8, v15

    mul-int/lit8 v8, v8, 0x64

    invoke-direct {v6, v7, v8}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/16 v19, 0x1

    goto :goto_1b

    :cond_2f
    const/16 v12, 0xb

    invoke-static {v2, v5}, Lcom/prineside/tdi2/utils/PMath;->getByChance(Lcom/badlogic/gdx/math/RandomXS128;Lcom/badlogic/gdx/utils/IntArray;)I

    move-result v6

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v9

    sget-object v7, Lcom/prineside/tdi2/enums/RarityType;->COMMON:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_30

    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_1c

    :cond_30
    const/high16 v10, 0x3f800000    # 1.0f

    :goto_1c
    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->itemManager:Lcom/prineside/tdi2/managers/ItemManager;

    sget-object v8, Lcom/prineside/tdi2/enums/RarityType;->values:[Lcom/prineside/tdi2/enums/RarityType;

    aget-object v8, v8, v6

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v12}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v12

    sget-object v13, Lcom/prineside/tdi2/enums/GameValueType;->BIT_DUST_DROP_RATE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v12

    double-to-float v13, v12

    const/16 v17, 0x0

    const/16 v18, 0x0

    sget-object v12, Lcom/prineside/tdi2/enums/RarityType;->VERY_RARE:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    if-lt v6, v12, :cond_31

    const/high16 v20, 0x40000000    # 2.0f

    goto :goto_1d

    :cond_31
    const/16 v20, 0x0

    :goto_1d
    const/16 v24, 0x0

    move-object v6, v7

    move-object v7, v2

    const/16 v25, 0xb

    move/from16 v12, v16

    move/from16 v14, v17

    const/16 v26, 0x14

    move/from16 v15, v18

    move/from16 v16, v20

    move/from16 v17, v24

    move-object/from16 v18, p1

    invoke-virtual/range {v6 .. v18}, Lcom/prineside/tdi2/managers/ItemManager;->generateItemByRarity(Lcom/badlogic/gdx/math/RandomXS128;Lcom/prineside/tdi2/enums/RarityType;FFFFFFFFZLcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v6

    const/4 v7, 0x0

    :goto_1e
    iget v8, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v8, :cond_33

    iget-object v8, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/ItemStack;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/Item;->sameAs(Lcom/prineside/tdi2/Item;)Z

    move-result v8

    if-eqz v8, :cond_32

    const/4 v7, 0x1

    goto :goto_1f

    :cond_32
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    :cond_33
    const/4 v7, 0x0

    :goto_1f
    if-nez v7, :cond_34

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    invoke-virtual {v8}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v8

    sget-object v9, Lcom/prineside/tdi2/enums/ItemType;->RESOURCE:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v8, v9, :cond_34

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/items/ResourceItem;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v8, v8, Lcom/prineside/tdi2/items/ResourceItem;->resourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v9, v8}, Lcom/prineside/tdi2/managers/ProgressManager;->isResourceOpened(Lcom/prineside/tdi2/enums/ResourceType;)Z

    move-result v8

    if-nez v8, :cond_34

    const/4 v7, 0x1

    :cond_34
    if-nez v7, :cond_35

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_35
    const/4 v13, 0x4

    const/4 v14, 0x5

    const/16 v15, 0x14

    goto/16 :goto_1b

    :cond_36
    iget-boolean v5, v0, Lcom/prineside/tdi2/items/CaseItem;->containsPapers:Z

    if-eqz v5, :cond_46

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v5

    move v6, v5

    :goto_20
    if-ne v6, v5, :cond_37

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v6

    goto :goto_20

    :cond_37
    if-nez v5, :cond_38

    sget-object v5, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_AGILITY:Lcom/prineside/tdi2/items/BlueprintItem;

    :goto_21
    const/4 v15, 0x4

    goto :goto_22

    :cond_38
    if-ne v5, v3, :cond_39

    sget-object v5, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_EXPERIENCE:Lcom/prineside/tdi2/items/BlueprintItem;

    goto :goto_21

    :cond_39
    sget-object v5, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_POWER:Lcom/prineside/tdi2/items/BlueprintItem;

    goto :goto_21

    :goto_22
    invoke-virtual {v2, v15}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v7

    add-int/2addr v7, v4

    invoke-static {v1, v5, v7}, Lcom/prineside/tdi2/managers/ProgressManager;->addItemToStacksArray(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    if-nez v6, :cond_3a

    sget-object v3, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_AGILITY:Lcom/prineside/tdi2/items/BlueprintItem;

    goto :goto_23

    :cond_3a
    if-ne v6, v3, :cond_3b

    sget-object v3, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_EXPERIENCE:Lcom/prineside/tdi2/items/BlueprintItem;

    goto :goto_23

    :cond_3b
    sget-object v3, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_POWER:Lcom/prineside/tdi2/items/BlueprintItem;

    :goto_23
    invoke-virtual {v2, v15}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v4

    invoke-static {v1, v3, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->addItemToStacksArray(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    goto/16 :goto_2a

    :pswitch_5
    const/4 v4, 0x3

    const/4 v15, 0x4

    const/16 v6, 0x58

    sget-object v7, Lcom/prineside/tdi2/enums/RarityType;->COMMON:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    sget-object v6, Lcom/prineside/tdi2/enums/RarityType;->RARE:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual {v5, v8, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    const/16 v19, 0x0

    :goto_24
    iget v6, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eq v6, v15, :cond_43

    iget-boolean v6, v0, Lcom/prineside/tdi2/items/CaseItem;->containsPapers:Z

    if-eqz v6, :cond_3c

    if-nez v19, :cond_3c

    sget-object v6, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    const/4 v14, 0x5

    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v7

    const/16 v20, 0x8

    add-int/lit8 v7, v7, 0x8

    mul-int/lit8 v7, v7, 0x64

    invoke-static {v1, v6, v7}, Lcom/prineside/tdi2/managers/ProgressManager;->addItemToStacksArray(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    const/16 v19, 0x1

    goto :goto_24

    :cond_3c
    const/4 v14, 0x5

    const/16 v20, 0x8

    invoke-static {v2, v5}, Lcom/prineside/tdi2/utils/PMath;->getByChance(Lcom/badlogic/gdx/math/RandomXS128;Lcom/badlogic/gdx/utils/IntArray;)I

    move-result v6

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->itemManager:Lcom/prineside/tdi2/managers/ItemManager;

    sget-object v8, Lcom/prineside/tdi2/enums/RarityType;->values:[Lcom/prineside/tdi2/enums/RarityType;

    aget-object v8, v8, v6

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v12, Lcom/prineside/tdi2/enums/ResourceType;->SCALAR:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/ProgressManager;->isResourceOpened(Lcom/prineside/tdi2/enums/ResourceType;)Z

    move-result v11

    if-eqz v11, :cond_3d

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_25

    :cond_3d
    const/4 v11, 0x0

    :goto_25
    const/high16 v12, 0x3f800000    # 1.0f

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v13}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v13

    sget-object v14, Lcom/prineside/tdi2/enums/GameValueType;->BIT_DUST_DROP_RATE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v13

    double-to-float v13, v13

    const/4 v14, 0x0

    const/16 v17, 0x0

    sget-object v18, Lcom/prineside/tdi2/enums/RarityType;->RARE:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    if-lt v6, v15, :cond_3e

    const/high16 v18, 0x40000000    # 2.0f

    goto :goto_26

    :cond_3e
    const/16 v18, 0x0

    :goto_26
    const/16 v24, 0x0

    move-object v6, v7

    move-object v7, v2

    const/16 v25, 0x5

    const/16 v26, 0x4

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v24

    move-object/from16 v18, p1

    invoke-virtual/range {v6 .. v18}, Lcom/prineside/tdi2/managers/ItemManager;->generateItemByRarity(Lcom/badlogic/gdx/math/RandomXS128;Lcom/prineside/tdi2/enums/RarityType;FFFFFFFFZLcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v6

    const/4 v7, 0x0

    :goto_27
    iget v8, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v8, :cond_40

    iget-object v8, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/ItemStack;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/Item;->sameAs(Lcom/prineside/tdi2/Item;)Z

    move-result v8

    if-eqz v8, :cond_3f

    const/4 v7, 0x1

    goto :goto_28

    :cond_3f
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    :cond_40
    const/4 v7, 0x0

    :goto_28
    if-nez v7, :cond_41

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    invoke-virtual {v8}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v8

    sget-object v9, Lcom/prineside/tdi2/enums/ItemType;->RESOURCE:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v8, v9, :cond_41

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/items/ResourceItem;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v8, v8, Lcom/prineside/tdi2/items/ResourceItem;->resourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v9, v8}, Lcom/prineside/tdi2/managers/ProgressManager;->isResourceOpened(Lcom/prineside/tdi2/enums/ResourceType;)Z

    move-result v8

    if-nez v8, :cond_41

    const/4 v7, 0x1

    :cond_41
    if-nez v7, :cond_42

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_42
    const/4 v15, 0x4

    goto/16 :goto_24

    :cond_43
    iget-boolean v5, v0, Lcom/prineside/tdi2/items/CaseItem;->containsPapers:Z

    if-eqz v5, :cond_46

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v5

    if-nez v5, :cond_44

    sget-object v3, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_AGILITY:Lcom/prineside/tdi2/items/BlueprintItem;

    goto :goto_29

    :cond_44
    if-ne v5, v3, :cond_45

    sget-object v3, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_EXPERIENCE:Lcom/prineside/tdi2/items/BlueprintItem;

    goto :goto_29

    :cond_45
    sget-object v3, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_POWER:Lcom/prineside/tdi2/items/BlueprintItem;

    :goto_29
    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v1, v3, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->addItemToStacksArray(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    :cond_46
    :goto_2a
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/enums/CaseType;

    iput-object p1, p0, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/items/CaseItem;->encrypted:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/items/CaseItem;->containsPapers:Z

    return-void
.end method

.method public sameAs(Lcom/prineside/tdi2/Item;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Item;->sameAs(Lcom/prineside/tdi2/Item;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/prineside/tdi2/items/CaseItem;

    iget-object v0, p1, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    iget-object v2, p0, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    if-ne v0, v2, :cond_1

    iget-boolean p1, p1, Lcom/prineside/tdi2/items/CaseItem;->encrypted:Z

    iget-boolean v0, p0, Lcom/prineside/tdi2/items/CaseItem;->encrypted:Z

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Item;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    iget-object v0, p0, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "caseType"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/items/CaseItem;->encrypted:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "encrypted"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/items/CaseItem;->containsPapers:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "containsPapers"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/items/CaseItem;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/items/CaseItem;->encrypted:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/items/CaseItem;->containsPapers:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    return-void
.end method
