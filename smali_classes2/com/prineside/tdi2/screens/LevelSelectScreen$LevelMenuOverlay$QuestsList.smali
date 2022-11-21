.class Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QuestsList"
.end annotation


# instance fields
.field public final synthetic M:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevel;)V
    .locals 32

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iput-object v7, v6, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList;->M:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const v10, 0x44598000    # 870.0f

    const/high16 v0, 0x435e0000    # 222.0f

    invoke-virtual {v6, v10, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v0, v8, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v0, v0

    const/high16 v11, 0x42580000    # 54.0f

    mul-float v0, v0, v11

    const/high16 v12, 0x42500000    # 52.0f

    add-float/2addr v0, v12

    const/high16 v1, 0x435c0000    # 220.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/high16 v13, 0x435c0000    # 220.0f

    goto :goto_0

    :cond_0
    move v13, v0

    :goto_0
    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v14}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v14, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v14, v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v15, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {v15, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-virtual {v15, v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v15, v10, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v6, v15}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "gradient-bottom"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x2f2f2fff

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0, v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->REGULAR_QUESTS_SLOTS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v4

    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    const-class v0, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v3, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v17, 0x0

    :goto_1
    iget-object v0, v8, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v9, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v9, :cond_d

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/prineside/tdi2/BasicLevelQuestConfig;

    int-to-float v0, v2

    mul-float v0, v0, v11

    sub-float v0, v13, v0

    sub-float/2addr v0, v12

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v12, "blank"

    invoke-virtual {v10, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    invoke-direct {v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v10, Lcom/badlogic/gdx/graphics/Color;

    const v12, 0x3e0f5c29    # 0.14f

    invoke-direct {v10, v5, v5, v5, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v10, 0x42500000    # 52.0f

    const v12, 0x44598000    # 870.0f

    invoke-virtual {v11, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v11, v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v9}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->isCompleted()Z

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v12

    const v5, 0x3d8f5c29    # 0.07f

    iput v5, v12, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v12, "gradient-right"

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    invoke-direct {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v10

    const v11, 0x3e8f5c29    # 0.28f

    iput v11, v10, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/high16 v10, 0x42500000    # 52.0f

    const v11, 0x44598000    # 870.0f

    invoke-virtual {v5, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v12, 0x0

    invoke-virtual {v5, v12, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v14, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_2

    :cond_1
    const/high16 v10, 0x42500000    # 52.0f

    const v11, 0x44598000    # 870.0f

    const/4 v12, 0x0

    cmpl-float v5, v17, v12

    if-nez v5, :cond_2

    move/from16 v17, v0

    :cond_2
    :goto_2
    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v5, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v5, v12, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v14, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v0, 0x1

    if-lt v1, v4, :cond_3

    invoke-virtual {v9}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->isScripted()Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v10, 0x1

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz v10, :cond_4

    const-string v18, "[#777777]???????[]"

    goto :goto_4

    :cond_4
    invoke-virtual {v9, v0, v0}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->getTitle(ZZ)Ljava/lang/CharSequence;

    move-result-object v18

    :goto_4
    move-object/from16 v12, v18

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move/from16 v20, v1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x18

    invoke-virtual {v1, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v1

    sget-object v8, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v11, v12, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->clear()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->getPrizes(Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->getExtraDustInEndless(Lcom/prineside/tdi2/GameValueProvider;)I

    move-result v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v1

    invoke-static {v1}, Lcom/prineside/tdi2/enums/DifficultyMode;->isEndless(Lcom/prineside/tdi2/enums/DifficultyMode;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-lez v0, :cond_5

    new-instance v1, Lcom/prineside/tdi2/ItemStack;

    sget-object v11, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    invoke-direct {v1, v11, v0}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_5
    const/4 v0, 0x0

    :goto_5
    iget v1, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    const/high16 v11, 0x42000000    # 32.0f

    if-ge v0, v1, :cond_8

    iget-object v1, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ItemStack;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v12

    sget-object v8, Lcom/prineside/tdi2/Item$D;->STAR:Lcom/prineside/tdi2/items/StarItem;

    const/high16 v21, 0x40000000    # 2.0f

    if-eq v12, v8, :cond_7

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    invoke-virtual {v8}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v8

    sget-object v12, Lcom/prineside/tdi2/enums/ItemType;->GREEN_PAPER:Lcom/prineside/tdi2/enums/ItemType;

    if-eq v8, v12, :cond_7

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    invoke-virtual {v8}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v8

    sget-object v12, Lcom/prineside/tdi2/enums/ItemType;->ACCELERATOR:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v8, v12, :cond_6

    goto :goto_6

    :cond_6
    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v12, v12, Lcom/prineside/tdi2/managers/UiManager;->itemCellRarityCoats:[[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    rem-int/lit8 v22, v0, 0x2

    aget-object v12, v12, v22

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v1, v12, v1

    invoke-direct {v8, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v1, 0x41e80000    # 29.0f

    const/high16 v12, 0x40000000    # 2.0f

    goto :goto_7

    :cond_7
    :goto_6
    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    const/4 v12, 0x1

    invoke-virtual {v8, v11, v12}, Lcom/prineside/tdi2/Item;->generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v8

    sget-object v12, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v12, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$1;

    invoke-direct {v12, v6, v7, v9, v1}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$1;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList;Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevelQuestConfig;Lcom/prineside/tdi2/ItemStack;)V

    invoke-virtual {v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    const/high16 v1, 0x42000000    # 32.0f

    const/4 v12, 0x0

    :goto_7
    invoke-virtual {v8, v1, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v11, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v11, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    const/high16 v11, 0x42000000    # 32.0f

    invoke-virtual {v8, v1, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    add-float v12, v12, v21

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    add-int/lit8 v0, v0, 0x1

    const/high16 v8, 0x41400000    # 12.0f

    move-object/from16 v6, p0

    goto/16 :goto_5

    :cond_8
    const/4 v6, 0x0

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v0, v9}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getQuestSkipPrice(Lcom/prineside/tdi2/BasicLevelQuestConfig;)I

    move-result v8

    if-lez v8, :cond_9

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->dailyQuestManager:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->getDailyLootCurrentQuest()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v9, Lcom/prineside/tdi2/BasicLevelQuestConfig;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v11, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "icon-double-triangle-right"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v25

    new-instance v26, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$2;

    move-object/from16 v0, v26

    move/from16 v12, v20

    move-object/from16 v1, p0

    move/from16 v16, v2

    move-object/from16 v2, p1

    move-object/from16 v30, v3

    move v3, v8

    move v8, v4

    move-object v4, v9

    move-object v6, v5

    const/16 v31, 0x0

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList$2;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList;Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;ILcom/prineside/tdi2/BasicLevelQuestConfig;Lcom/prineside/tdi2/BasicLevel;)V

    sget-object v27, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v28, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P400:Lcom/badlogic/gdx/graphics/Color;

    sget-object v29, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P600:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v24, v11

    invoke-direct/range {v24 .. v29}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v0, 0x42000000    # 32.0f

    invoke-virtual {v11, v0, v0}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v0, 0x41800000    # 16.0f

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v11, v0, v1}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x42800000    # 64.0f

    const/high16 v2, 0x42500000    # 52.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto :goto_8

    :cond_9
    move/from16 v16, v2

    move-object/from16 v30, v3

    move v8, v4

    move-object v6, v5

    move/from16 v12, v20

    const/high16 v2, 0x42500000    # 52.0f

    const/16 v31, 0x0

    :goto_8
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz v10, :cond_a

    const-string v1, "[#777777]??? / ???[]"

    goto :goto_9

    :cond_a
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->getCurrentValue(Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;)D

    move-result-wide v19

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->getRequiredValue(Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;)J

    move-result-wide v3

    long-to-double v3, v3

    const/16 v23, 0x1

    move-object/from16 v18, v9

    move-wide/from16 v21, v3

    invoke-virtual/range {v18 .. v23}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->formatValueForUi(DDZ)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_9
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v9}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "icon-check"

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    goto :goto_a

    :cond_b
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    :goto_a
    const/high16 v1, 0x42000000    # 32.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v9}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_c

    add-int/lit8 v1, v12, 0x1

    goto :goto_b

    :cond_c
    move v1, v12

    :goto_b
    add-int/lit8 v0, v16, 0x1

    move-object/from16 v6, p0

    move v2, v0

    move v4, v8

    move-object/from16 v3, v30

    const/4 v5, 0x0

    const/4 v9, 0x0

    const v10, 0x44598000    # 870.0f

    const/high16 v11, 0x42580000    # 54.0f

    const/high16 v12, 0x42500000    # 52.0f

    move-object/from16 v8, p2

    goto/16 :goto_1

    :cond_d
    const/16 v31, 0x0

    cmpl-float v0, v17, v31

    if-eqz v0, :cond_e

    const/16 v16, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual/range {v15 .. v21}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollTo(FFFFZZ)V

    :cond_e
    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/screens/LevelSelectScreen$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevel;)V

    return-void
.end method
