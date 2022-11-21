.class Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WaveQuestsLine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;
    }
.end annotation


# instance fields
.field public final synthetic M:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevel;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v1, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine;->M:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v5, v2, Lcom/prineside/tdi2/BasicLevel;->stageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getStage(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevelStage;

    move-result-object v4

    const v5, 0x44598000    # 870.0f

    const/high16 v6, 0x43300000    # 176.0f

    invoke-virtual {v0, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v5, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    const/4 v7, 0x0

    :goto_0
    iget-object v8, v2, Lcom/prineside/tdi2/BasicLevel;->waveQuests:Lcom/badlogic/gdx/utils/Array;

    iget v9, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v10, 0x0

    if-ge v7, v9, :cond_0

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    new-instance v9, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;

    invoke-direct {v9, v0, v10}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine;Lcom/prineside/tdi2/screens/LevelSelectScreen$1;)V

    iget v10, v8, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->waves:I

    iput v10, v9, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;->a:I

    iput-object v8, v9, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;->b:Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/prineside/tdi2/BasicLevel;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v7

    invoke-virtual {v7}, Lcom/prineside/tdi2/Map;->getBossWaves()Lcom/badlogic/gdx/utils/IntMap;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/IntMap;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/utils/IntMap$Entry;

    const/4 v11, 0x0

    :goto_2
    iget v12, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v11, v12, :cond_3

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;

    iget v12, v12, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;->a:I

    iget v13, v9, Lcom/badlogic/gdx/utils/IntMap$Entry;->key:I

    if-ne v12, v13, :cond_2

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;

    iget-object v12, v9, Lcom/badlogic/gdx/utils/IntMap$Entry;->value:Ljava/lang/Object;

    check-cast v12, Lcom/prineside/tdi2/enums/BossType;

    iput-object v12, v11, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;->c:Lcom/prineside/tdi2/enums/BossType;

    const/4 v11, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    :goto_3
    if-nez v11, :cond_1

    new-instance v11, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;

    invoke-direct {v11, v0, v10}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine;Lcom/prineside/tdi2/screens/LevelSelectScreen$1;)V

    iget v12, v9, Lcom/badlogic/gdx/utils/IntMap$Entry;->key:I

    iput v12, v11, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;->a:I

    iget-object v9, v9, Lcom/badlogic/gdx/utils/IntMap$Entry;->value:Ljava/lang/Object;

    check-cast v9, Lcom/prineside/tdi2/enums/BossType;

    iput-object v9, v11, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;->c:Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    new-instance v7, Lcom/prineside/tdi2/screens/w;

    invoke-direct {v7}, Lcom/prineside/tdi2/screens/w;-><init>()V

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/high16 v10, 0x44590000    # 868.0f

    invoke-virtual {v9, v10, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "gradient-left"

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v12, Lcom/badlogic/gdx/graphics/Color;

    const v13, 0x2f2f2fff

    invoke-direct {v12, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v12, 0x42a00000    # 80.0f

    invoke-virtual {v10, v12, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v14, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v10, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget v10, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v10, v8

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;

    iget v10, v10, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;->a:I

    const/high16 v14, 0x42480000    # 50.0f

    const/16 v15, 0x270f

    const/4 v11, 0x0

    const/16 v16, 0x0

    :goto_4
    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v11, v6, :cond_6

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;

    iget v6, v6, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;->a:I

    sub-int v6, v6, v16

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;

    iget v8, v8, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;->a:I

    if-ge v6, v15, :cond_5

    move v15, v6

    :cond_5
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v8

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    const/16 v6, 0xa

    if-le v15, v6, :cond_7

    const/16 v15, 0xa

    :cond_7
    int-to-float v6, v15

    div-float/2addr v14, v6

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/StrictMath;->ceil(D)D

    move-result-wide v14

    double-to-float v6, v14

    int-to-float v8, v10

    mul-float v8, v8, v6

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v14, "blank"

    invoke-virtual {v11, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v11, 0x40a00000    # 5.0f

    invoke-virtual {v10, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    const v15, 0x1d1d1dff

    invoke-direct {v8, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v8, 0x43050000    # 133.0f

    invoke-virtual {v10, v12, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget v10, v2, Lcom/prineside/tdi2/BasicLevel;->maxReachedWave:I

    sub-int v3, v10, v16

    const/16 v15, 0xe

    if-le v3, v15, :cond_8

    add-int/lit8 v10, v16, 0xe

    :cond_8
    const/high16 v3, 0x41880000    # 17.0f

    if-eqz v10, :cond_9

    new-instance v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v13

    invoke-direct {v15, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    int-to-float v13, v10

    mul-float v13, v13, v6

    invoke-virtual {v15, v13, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v13, v4, Lcom/prineside/tdi2/BasicLevelStage;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v15, v12, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v7, v15}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget v13, v2, Lcom/prineside/tdi2/BasicLevel;->maxReachedWave:I

    if-eq v10, v13, :cond_9

    add-int/lit8 v13, v16, 0x7

    int-to-float v13, v13

    mul-float v13, v13, v6

    add-float/2addr v13, v12

    sub-float/2addr v13, v3

    new-instance v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v15, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v3, 0x42340000    # 45.0f

    invoke-virtual {v15, v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const v12, 0x2f2f2fff

    invoke-direct {v3, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v15, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sub-float v3, v13, v11

    invoke-virtual {v15, v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v7, v15}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v3, 0x0

    :goto_5
    const/4 v12, 0x3

    if-ge v3, v12, :cond_9

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v15, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v15

    invoke-direct {v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v12, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v15, v4, Lcom/prineside/tdi2/BasicLevelStage;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    add-float v15, v13, v11

    mul-int/lit8 v11, v3, 0xa

    int-to-float v11, v11

    add-float/2addr v15, v11

    invoke-virtual {v12, v15, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v7, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v3, v3, 0x1

    const/high16 v11, 0x40a00000    # 5.0f

    goto :goto_5

    :cond_9
    int-to-float v3, v10

    mul-float v3, v3, v6

    const/high16 v8, 0x42a00000    # 80.0f

    add-float v12, v8, v3

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "small-triangle-mark-bottom"

    invoke-virtual {v8, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v10, 0x40a00000    # 5.0f

    invoke-virtual {v3, v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sub-float v10, v12, v10

    const/high16 v11, 0x430c0000    # 140.0f

    invoke-virtual {v3, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v10, v4, Lcom/prineside/tdi2/BasicLevelStage;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/high16 v10, 0x43480000    # 200.0f

    const/high16 v11, 0x41c00000    # 24.0f

    invoke-virtual {v3, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v10, 0x42c80000    # 100.0f

    sub-float v10, v12, v10

    const/high16 v13, 0x43160000    # 150.0f

    invoke-virtual {v3, v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v15, "icon-wave"

    invoke-virtual {v13, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v13

    invoke-direct {v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v13, v4, Lcom/prineside/tdi2/BasicLevelStage;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    const/high16 v13, 0x41000000    # 8.0f

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v2, v2, Lcom/prineside/tdi2/BasicLevel;->maxReachedWave:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x18

    invoke-virtual {v13, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v8

    sget-object v13, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v15, v8, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v10, v2, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iget-object v2, v4, Lcom/prineside/tdi2/BasicLevelStage;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    const/4 v2, 0x0

    :goto_6
    iget v3, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_15

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;

    iget v8, v3, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;->a:I

    int-to-float v8, v8

    mul-float v8, v8, v6

    const/high16 v10, 0x42a00000    # 80.0f

    add-float/2addr v8, v10

    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "ui-level-selection-milestone-top"

    invoke-virtual {v15, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    invoke-direct {v13, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v10, v3, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;->b:Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->isCompleted()Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, v4, Lcom/prineside/tdi2/BasicLevelStage;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v13, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v10

    new-instance v15, Lcom/badlogic/gdx/graphics/Color;

    const v11, 0x1d1d1dff

    invoke-direct {v15, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    const v11, 0x3ee147ae    # 0.44f

    invoke-virtual {v10, v15, v11}, Lcom/badlogic/gdx/graphics/Color;->lerp(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Color;

    goto :goto_7

    :cond_a
    new-instance v10, Lcom/badlogic/gdx/graphics/Color;

    const v11, 0x1d1d1dff

    invoke-direct {v10, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v13, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_7
    const/high16 v10, 0x41c00000    # 24.0f

    sub-float v11, v8, v10

    const/high16 v10, 0x42e40000    # 114.0f

    invoke-virtual {v13, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v15, 0x41500000    # 13.0f

    const/high16 v10, 0x42400000    # 48.0f

    invoke-virtual {v13, v10, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v7, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    invoke-direct {v15, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v10, Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v20, v5

    const v5, 0x1d1d1dff

    invoke-direct {v10, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v15, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v10, v3, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;->b:Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    if-eqz v10, :cond_d

    iget-object v10, v10, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->prizes:Lcom/badlogic/gdx/utils/Array;

    iget v10, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v21, v6

    const/4 v5, 0x0

    :goto_8
    iget-object v6, v3, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;->b:Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    iget-object v6, v6, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->prizes:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v22, v14

    iget v14, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v14, :cond_c

    iget-object v6, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/ItemStack;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v6

    sget-object v14, Lcom/prineside/tdi2/Item$D;->STAR:Lcom/prineside/tdi2/items/StarItem;

    if-ne v6, v14, :cond_b

    add-int/lit8 v10, v10, -0x1

    goto :goto_9

    :cond_b
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v14, v22

    goto :goto_8

    :cond_c
    :goto_9
    int-to-float v5, v10

    const/high16 v6, 0x41d00000    # 26.0f

    mul-float v5, v5, v6

    const/high16 v6, 0x42100000    # 36.0f

    add-float/2addr v5, v6

    move v6, v5

    goto :goto_a

    :cond_d
    move/from16 v21, v6

    move-object/from16 v22, v14

    const/high16 v6, 0x42100000    # 36.0f

    :goto_a
    iget-object v5, v3, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;->c:Lcom/prineside/tdi2/enums/BossType;

    const/high16 v10, 0x42680000    # 58.0f

    if-eqz v5, :cond_e

    add-float/2addr v6, v10

    :cond_e
    const/high16 v5, 0x42e40000    # 114.0f

    sub-float/2addr v5, v6

    invoke-virtual {v15, v11, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v5, 0x42400000    # 48.0f

    invoke-virtual {v15, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v7, v15}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v5, v3, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;->b:Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->isCompleted()Z

    move-result v5

    if-eqz v5, :cond_f

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v14, "gradient-top"

    invoke-virtual {v6, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v6, 0x429c0000    # 78.0f

    invoke-virtual {v5, v11, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v6, 0x42100000    # 36.0f

    const/high16 v13, 0x42400000    # 48.0f

    invoke-virtual {v5, v13, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_f
    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v6, v3, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;->a:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v15, 0x15

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v14

    sget-object v15, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v13, v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v5, v6, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v13, 0x42400000    # 48.0f

    invoke-virtual {v5, v13, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v13, 0x4

    invoke-virtual {v5, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v13, 0x42b40000    # 90.0f

    invoke-virtual {v5, v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v5, v3, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;->c:Lcom/prineside/tdi2/enums/BossType;

    if-eqz v5, :cond_10

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "level-select-wave-marker-boss-frame"

    invoke-virtual {v11, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    invoke-direct {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v11, 0x42860000    # 67.0f

    invoke-virtual {v5, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v10, 0x41e00000    # 28.0f

    sub-float v10, v8, v10

    const/high16 v11, 0x42180000    # 38.0f

    invoke-virtual {v5, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->waveManager:Lcom/prineside/tdi2/managers/WaveManager;

    iget-object v11, v3, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;->c:Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/WaveManager;->getWaveProcessorFactory(Lcom/prineside/tdi2/enums/BossType;)Lcom/prineside/tdi2/WaveProcessor$WaveProcessorFactory;

    move-result-object v10

    invoke-virtual {v10}, Lcom/prineside/tdi2/WaveProcessor$WaveProcessorFactory;->getIconTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v10

    invoke-direct {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    const/high16 v10, 0x42000000    # 32.0f

    const/high16 v11, 0x42000000    # 32.0f

    invoke-virtual {v5, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v10, 0x41800000    # 16.0f

    sub-float v10, v8, v10

    const/high16 v11, 0x42400000    # 48.0f

    invoke-virtual {v5, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_10
    iget-object v5, v3, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;->b:Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    if-eqz v5, :cond_14

    const/high16 v5, 0x42780000    # 62.0f

    iget-object v10, v3, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;->c:Lcom/prineside/tdi2/enums/BossType;

    if-eqz v10, :cond_11

    const/high16 v5, 0x41000000    # 8.0f

    :cond_11
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_b
    iget-object v13, v3, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;->b:Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    iget-object v13, v13, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->prizes:Lcom/badlogic/gdx/utils/Array;

    iget v14, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v10, v14, :cond_14

    invoke-virtual {v13, v10}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v13}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v14

    sget-object v15, Lcom/prineside/tdi2/Item$D;->STAR:Lcom/prineside/tdi2/items/StarItem;

    if-ne v14, v15, :cond_13

    invoke-virtual {v13}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v14

    const/4 v6, 0x0

    const/high16 v15, 0x41c00000    # 24.0f

    invoke-virtual {v14, v15, v6}, Lcom/prineside/tdi2/Item;->generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v14

    const/high16 v16, 0x41880000    # 17.0f

    sub-float v6, v8, v16

    const/high16 v15, 0x42fa0000    # 125.0f

    invoke-virtual {v14, v6, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    const v15, 0x2f2f2fff

    invoke-direct {v6, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v14, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v7, v14}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v13}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v6

    const/high16 v14, 0x41c00000    # 24.0f

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15}, Lcom/prineside/tdi2/Item;->generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v6

    const/high16 v18, 0x40e00000    # 7.0f

    sub-float v14, v8, v18

    const/high16 v15, 0x42fa0000    # 125.0f

    invoke-virtual {v6, v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    const v15, 0x2f2f2fff

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v6, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v13}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v6

    const/high16 v13, 0x41c00000    # 24.0f

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Lcom/prineside/tdi2/Item;->generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v6

    const/high16 v13, 0x41400000    # 12.0f

    sub-float v13, v8, v13

    const/high16 v14, 0x42fa0000    # 125.0f

    invoke-virtual {v6, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v13, v3, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;->b:Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    invoke-virtual {v13}, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->isCompleted()Z

    move-result v13

    if-eqz v13, :cond_12

    iget-object v13, v4, Lcom/prineside/tdi2/BasicLevelStage;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_12
    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_c

    :cond_13
    const v15, 0x2f2f2fff

    const/high16 v16, 0x41880000    # 17.0f

    invoke-virtual {v13}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v6

    const/high16 v14, 0x41c00000    # 24.0f

    const/4 v15, 0x1

    invoke-virtual {v6, v14, v15}, Lcom/prineside/tdi2/Item;->generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v6

    const/high16 v17, 0x41400000    # 12.0f

    sub-float v14, v8, v17

    int-to-float v15, v11

    const/high16 v19, 0x41d00000    # 26.0f

    mul-float v15, v15, v19

    sub-float v15, v5, v15

    invoke-virtual {v6, v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v14, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v6, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v14, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$1;

    invoke-direct {v14, v0, v1, v3, v13}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$1;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine;Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;Lcom/prineside/tdi2/ItemStack;)V

    invoke-virtual {v6, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    add-int/lit8 v11, v11, 0x1

    :goto_c
    add-int/lit8 v10, v10, 0x1

    const/high16 v6, 0x41200000    # 10.0f

    goto/16 :goto_b

    :cond_14
    const/high16 v16, 0x41880000    # 17.0f

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v20

    move/from16 v6, v21

    move-object/from16 v14, v22

    const/high16 v11, 0x41c00000    # 24.0f

    goto/16 :goto_6

    :cond_15
    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_d
    iget v4, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v4, :cond_17

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v4

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v5, v4, v2

    if-lez v5, :cond_16

    move v2, v4

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_17
    const/high16 v1, 0x42200000    # 40.0f

    add-float/2addr v2, v1

    const/high16 v1, 0x43300000    # 176.0f

    invoke-virtual {v7, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->layout()V

    const v1, 0x43d98000    # 435.0f

    sub-float/2addr v12, v1

    const/4 v1, 0x0

    cmpl-float v1, v12, v1

    if-lez v1, :cond_18

    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollX(F)V

    :cond_18
    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/screens/LevelSelectScreen$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevel;)V

    return-void
.end method

.method public static synthetic p(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine;->q(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;)I

    move-result p0

    return p0
.end method

.method public static synthetic q(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;->a:I

    iget p1, p1, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;->a:I

    invoke-static {p0, p1}, Lx1/i;->a(II)I

    move-result p0

    return p0
.end method
