.class Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/LevelSelectScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LevelElement"
.end annotation


# instance fields
.field public M:Lcom/prineside/tdi2/BasicLevel;

.field public N:Z

.field public O:Z

.field public P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public R:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final synthetic S:Lcom/prineside/tdi2/screens/LevelSelectScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/LevelSelectScreen;Lcom/prineside/tdi2/BasicLevel;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v1, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->S:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->N:Z

    iput-boolean v3, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->O:Z

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v5, v2, Lcom/prineside/tdi2/BasicLevel;->stageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getStage(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevelStage;

    move-result-object v4

    iput-object v2, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->M:Lcom/prineside/tdi2/BasicLevel;

    const/high16 v5, 0x43a00000    # 320.0f

    const/high16 v6, 0x43700000    # 240.0f

    invoke-virtual {v0, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v7, v2}, Lcom/prineside/tdi2/managers/BasicLevelManager;->isOpened(Lcom/prineside/tdi2/BasicLevel;)Z

    move-result v7

    if-nez p3, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "level_select_level_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    :cond_0
    const/high16 v8, -0x3ea00000    # -14.0f

    const-string v9, "blank"

    const/4 v10, 0x0

    if-eqz p3, :cond_1

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "ui-level-selection-thumb-shadow-right"

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v12, 0x41600000    # 14.0f

    const/high16 v13, 0x43580000    # 216.0f

    invoke-virtual {v11, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v11, v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "ui-level-selection-thumb-shadow-bottom"

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v12, 0x438e0000    # 284.0f

    const/high16 v13, 0x41600000    # 14.0f

    invoke-virtual {v11, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v12, 0x42100000    # 36.0f

    invoke-virtual {v11, v12, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_0

    :cond_1
    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v12, 0x3f0f5c29    # 0.56f

    invoke-virtual {v11, v10, v10, v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v11, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v12, 0x41200000    # 10.0f

    const/high16 v13, -0x3ee00000    # -10.0f

    invoke-virtual {v11, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :goto_0
    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v11, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v11, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v11, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    invoke-direct {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v11, 0x439b0000    # 310.0f

    const/high16 v12, 0x43660000    # 230.0f

    invoke-virtual {v5, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v13, Lcom/prineside/tdi2/Config;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v14, 0x40a00000    # 5.0f

    invoke-virtual {v5, v14, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual/range {p2 .. p2}, Lcom/prineside/tdi2/BasicLevel;->getPreview()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v15

    invoke-direct {v5, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v5, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v5, v14, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "ui-level-selection-thumb-inner-shadow"

    invoke-virtual {v15, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    invoke-direct {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v10, 0x43390000    # 185.0f

    invoke-virtual {v5, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v5, v14, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    if-nez v7, :cond_2

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v5, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v5, v14, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v5, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v9

    const v10, 0x3f666666    # 0.9f

    iput v10, v9, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_2
    if-eqz v7, :cond_3

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v5, v2}, Lcom/prineside/tdi2/managers/BasicLevelManager;->playedBefore(Lcom/prineside/tdi2/BasicLevel;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "ui-level-selection-new-level-tag"

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v9, 0x42b80000    # 92.0f

    const/high16 v10, 0x42b80000    # 92.0f

    invoke-virtual {v5, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v9, 0x43640000    # 228.0f

    const/high16 v10, 0x43140000    # 148.0f

    invoke-virtual {v5, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_3
    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/high16 v9, 0x41900000    # 18.0f

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v5, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v9, 0x43980000    # 304.0f

    const/high16 v11, 0x41d00000    # 26.0f

    invoke-virtual {v5, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v11, v2, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v15, 0x24

    invoke-virtual {v13, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v13

    sget-object v10, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v12, v13, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v9, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v11

    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v11

    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-boolean v11, v2, Lcom/prineside/tdi2/BasicLevel;->isBonus:Z

    const/high16 v12, 0x41000000    # 8.0f

    const/16 v13, 0x15

    const/high16 v14, 0x40800000    # 4.0f

    if-eqz v11, :cond_4

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v15, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v15

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v15, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v3, "bonus"

    invoke-direct {v11, v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_4
    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v7, :cond_5

    const v5, 0x3e4ccccd    # 0.2f

    invoke-virtual {v9, v3, v3, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :cond_5
    const v5, 0x3e8f5c29    # 0.28f

    const/4 v8, 0x1

    const/high16 v9, 0x42000000    # 32.0f

    if-eqz v7, :cond_9

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v7, v2}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getGainedStars(Lcom/prineside/tdi2/BasicLevel;)I

    move-result v7

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v14, "icon-star"

    invoke-virtual {v12, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v11, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v12, 0x434a0000    # 202.0f

    const/high16 v15, 0x41a80000    # 21.0f

    invoke-virtual {v11, v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/4 v12, 0x3

    if-lt v7, v12, :cond_6

    iget-object v12, v4, Lcom/prineside/tdi2/BasicLevelStage;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_6
    const v12, 0x3e0f5c29    # 0.14f

    invoke-virtual {v11, v3, v3, v3, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :goto_1
    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v11, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v12, 0x436c0000    # 236.0f

    invoke-virtual {v11, v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/4 v12, 0x2

    if-lt v7, v12, :cond_7

    iget-object v12, v4, Lcom/prineside/tdi2/BasicLevelStage;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_2

    :cond_7
    const v12, 0x3e0f5c29    # 0.14f

    invoke-virtual {v11, v3, v3, v3, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :goto_2
    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v11, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v12, 0x43870000    # 270.0f

    invoke-virtual {v11, v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    if-lt v7, v8, :cond_8

    iget-object v4, v4, Lcom/prineside/tdi2/BasicLevelStage;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_3

    :cond_8
    const v4, 0x3e0f5c29    # 0.14f

    invoke-virtual {v11, v3, v3, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :goto_3
    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-wide v11, v2, Lcom/prineside/tdi2/BasicLevel;->maxScore:J

    invoke-static {v11, v12}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v12

    invoke-direct {v11, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v4, v7, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v11, 0x41a00000    # 20.0f

    invoke-virtual {v4, v7, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v7, 0x43480000    # 200.0f

    const/high16 v11, 0x42b40000    # 90.0f

    invoke-virtual {v4, v7, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v7, 0x14

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v7, v2, Lcom/prineside/tdi2/BasicLevel;->maxReachedWave:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x18

    invoke-virtual {v12, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v12

    invoke-direct {v11, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v4, v7, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v7, 0x42780000    # 62.0f

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-virtual {v4, v7, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v7, 0x43480000    # 200.0f

    const/high16 v10, 0x42600000    # 56.0f

    invoke-virtual {v4, v7, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v7, 0x14

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "icon-wave"

    invoke-virtual {v7, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v4, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v7, 0x43870000    # 270.0f

    const/high16 v10, 0x425c0000    # 55.0f

    invoke-virtual {v4, v7, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v7, 0x43200000    # 160.0f

    invoke-virtual {v4, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v8, 0x0

    goto/16 :goto_f

    :cond_9
    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setFillParent(Z)V

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v7, 0x0

    :goto_4
    iget-object v10, v2, Lcom/prineside/tdi2/BasicLevel;->openRequirements:Lcom/badlogic/gdx/utils/Array;

    iget v11, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v11, :cond_c

    invoke-virtual {v10, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/prineside/tdi2/Requirement;

    iget-object v11, v10, Lcom/prineside/tdi2/Requirement;->type:Lcom/prineside/tdi2/enums/RequirementType;

    sget-object v8, Lcom/prineside/tdi2/enums/RequirementType;->STAGE_STARS:Lcom/prineside/tdi2/enums/RequirementType;

    if-ne v11, v8, :cond_b

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v13, v10, Lcom/prineside/tdi2/Requirement;->stageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getStage(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevelStage;

    move-result-object v11

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v13, v11}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getGainedStars(Lcom/prineside/tdi2/BasicLevelStage;)I

    move-result v13

    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " / "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v3, 0x24

    invoke-virtual {v15, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v15

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v12, v15, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v14, v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iget v3, v10, Lcom/prineside/tdi2/Requirement;->stageStars:I

    if-le v3, v13, :cond_a

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v14, v3, v3, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    goto :goto_5

    :cond_a
    iget-object v3, v11, Lcom/prineside/tdi2/BasicLevelStage;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_5
    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v9, v10, Lcom/prineside/tdi2/Requirement;->stageStars:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x24

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v12

    iget-object v14, v11, Lcom/prineside/tdi2/BasicLevelStage;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v10, v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v3, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "icon-star-stack"

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v9, v11, Lcom/prineside/tdi2/BasicLevelStage;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v9, 0x42400000    # 48.0f

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v9, 0x41000000    # 8.0f

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    goto :goto_6

    :cond_b
    const/16 v13, 0x24

    :goto_6
    add-int/lit8 v7, v7, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/high16 v9, 0x42000000    # 32.0f

    const/high16 v12, 0x41000000    # 8.0f

    const/16 v13, 0x15

    const/high16 v14, 0x40800000    # 4.0f

    goto/16 :goto_4

    :cond_c
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/4 v7, 0x0

    :goto_7
    iget-object v8, v2, Lcom/prineside/tdi2/BasicLevel;->openRequirements:Lcom/badlogic/gdx/utils/Array;

    iget v9, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v9, :cond_f

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/Requirement;

    iget-object v9, v8, Lcom/prineside/tdi2/Requirement;->type:Lcom/prineside/tdi2/enums/RequirementType;

    sget-object v10, Lcom/prineside/tdi2/enums/RequirementType;->STAGE_STARS:Lcom/prineside/tdi2/enums/RequirementType;

    if-ne v9, v10, :cond_d

    goto :goto_8

    :cond_d
    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v8}, Lcom/prineside/tdi2/Requirement;->getIconTextureName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    const/high16 v11, 0x42000000    # 32.0f

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    const/high16 v11, 0x40800000    # 4.0f

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v8}, Lcom/prineside/tdi2/Requirement;->isSatisfied()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, v4, Lcom/prineside/tdi2/BasicLevelStage;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_8

    :cond_e
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v9, v8, v8, v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_f
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->hasChildren()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v7, 0x41000000    # 8.0f

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_10
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/4 v7, 0x0

    :goto_9
    iget-object v8, v2, Lcom/prineside/tdi2/BasicLevel;->priceInResources:[I

    array-length v9, v8

    if-ge v7, v9, :cond_13

    aget v8, v8, v7

    if-lez v8, :cond_12

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    sget-object v10, Lcom/prineside/tdi2/Resource;->TEXTURE_REGION_NAMES:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    const/high16 v10, 0x42000000    # 32.0f

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    const/high16 v10, 0x40800000    # 4.0f

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v9, v2, Lcom/prineside/tdi2/BasicLevel;->priceInResources:[I

    aget v9, v9, v7

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v11, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    aget-object v11, v11, v7

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/ProgressManager;->getResources(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v10

    if-le v9, v10, :cond_11

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9, v9, v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    goto :goto_a

    :cond_11
    iget-object v9, v4, Lcom/prineside/tdi2/BasicLevelStage;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_12
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_13
    iget v7, v2, Lcom/prineside/tdi2/BasicLevel;->priceInMoney:I

    if-lez v7, :cond_15

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "icon-money"

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    const/high16 v9, 0x42000000    # 32.0f

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    const/high16 v9, 0x40800000    # 4.0f

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget v8, v2, Lcom/prineside/tdi2/BasicLevel;->priceInMoney:I

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v9}, Lcom/prineside/tdi2/managers/ProgressManager;->getGreenPapers()I

    move-result v9

    if-le v8, v9, :cond_14

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8, v8, v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    goto :goto_b

    :cond_14
    iget-object v4, v4, Lcom/prineside/tdi2/BasicLevelStage;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_15
    :goto_b
    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/ResearchManager;->getInstances()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    const/4 v6, 0x0

    :goto_c
    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v4, :cond_19

    iget-object v4, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Research;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/prineside/tdi2/Research;->isUnlocksTower()Z

    move-result v7

    if-eqz v7, :cond_17

    iget v7, v4, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-nez v7, :cond_17

    iget-object v7, v4, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget-object v7, v7, Lcom/prineside/tdi2/Research$ResearchLevel;->requirements:[Lcom/prineside/tdi2/Requirement;

    array-length v9, v7

    const/4 v10, 0x0

    :goto_d
    if-ge v10, v9, :cond_18

    aget-object v11, v7, v10

    iget-object v12, v11, Lcom/prineside/tdi2/Requirement;->type:Lcom/prineside/tdi2/enums/RequirementType;

    sget-object v13, Lcom/prineside/tdi2/enums/RequirementType;->OPENED_LEVEL:Lcom/prineside/tdi2/enums/RequirementType;

    if-ne v12, v13, :cond_16

    iget-object v11, v11, Lcom/prineside/tdi2/Requirement;->openedLevelName:Ljava/lang/String;

    iget-object v12, v2, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v6, v4, Lcom/prineside/tdi2/Research;->relatedToTowerType:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v3, v6}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/Tower$Factory;->getShadowTextures()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/utils/TextureRegionConfig;

    const/high16 v6, 0x436e0000    # 238.0f

    const/high16 v7, 0x42c00000    # 96.0f

    const/high16 v9, -0x3ea00000    # -14.0f

    invoke-virtual {v3, v6, v9, v7}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->createImage(FFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v4, v4, Lcom/prineside/tdi2/Research;->relatedToTowerType:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/Tower$Factory;->getIconTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    const/high16 v3, 0x42c00000    # 96.0f

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-virtual {v4, v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v3, 0x436e0000    # 238.0f

    const/high16 v11, -0x3ea00000    # -14.0f

    invoke-virtual {v4, v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_e

    :cond_16
    const/high16 v11, -0x3ea00000    # -14.0f

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_17
    const/4 v8, 0x0

    :cond_18
    const/high16 v11, -0x3ea00000    # -14.0f

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_c

    :cond_19
    const/4 v8, 0x0

    :goto_e
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-lock-vertical"

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v4, 0x42400000    # 48.0f

    invoke-virtual {v3, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v4, 0x430d0000    # 141.0f

    const/high16 v6, -0x3e780000    # -17.0f

    invoke-virtual {v3, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v4, 0x3f0f5c29    # 0.56f

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-lock-vertical"

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v3, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v4, 0x42400000    # 48.0f

    invoke-virtual {v3, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v4, 0x43080000    # 136.0f

    const/high16 v6, -0x3ec00000    # -12.0f

    invoke-virtual {v3, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :goto_f
    if-nez p3, :cond_1f

    const/4 v6, 0x0

    :goto_10
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/AuthManager;->xpPlayedLevels:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v4, :cond_1b

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v6

    iget-object v4, v2, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v6, 0x1

    goto :goto_11

    :cond_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_1b
    const/4 v6, 0x0

    :goto_11
    const/4 v3, 0x0

    :goto_12
    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/AuthManager;->localXpPlayedLevels:Lcom/badlogic/gdx/utils/Array;

    iget v7, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v7, :cond_1d

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v7, v2, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const/4 v8, 0x1

    goto :goto_13

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1d
    move v8, v6

    :goto_13
    iget-object v3, v2, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/AuthManager;->bonusXpLevel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/high16 v4, 0x42680000    # 58.0f

    if-eqz v8, :cond_1e

    new-instance v3, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7, v7, v7, v5}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    const/16 v6, 0x8

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-direct {v3, v5, v6}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-virtual {v3, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget v3, v3, Lcom/prineside/tdi2/managers/AuthManager;->playedLevelXpCoeff:F

    sub-float v3, v7, v3

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v3, v3, v5

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v3

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "% XP"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x15

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v5, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x42000000    # 32.0f

    invoke-virtual {v5, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto/16 :goto_14

    :cond_1e
    if-eqz v3, :cond_1f

    new-instance v3, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    const v6, 0x3ecccccd    # 0.4f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v7, v7, v7, v6}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    const/16 v6, 0x8

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    invoke-direct {v3, v5, v6}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-virtual {v3, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget v3, v3, Lcom/prineside/tdi2/managers/AuthManager;->bonusLevelXpCoeff:F

    sub-float/2addr v3, v7

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v3, v3, v5

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v3

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "% XP"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x15

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v5, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v6, 0x42000000    # 32.0f

    invoke-virtual {v5, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v4, 0x3f19999a    # 0.6f

    invoke-static {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    const v6, 0x3f19999a    # 0.6f

    invoke-static {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v3

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_1f
    :goto_14
    if-nez p3, :cond_20

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v3, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement$1;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;Lcom/prineside/tdi2/screens/LevelSelectScreen;Lcom/prineside/tdi2/BasicLevel;)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->s()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x42000000    # 32.0f
        0x42c80000    # 100.0f
        0x42000000    # 32.0f
        0x42b80000    # 92.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x42000000    # 32.0f
        0x42c80000    # 100.0f
        0x42000000    # 32.0f
        0x42b80000    # 92.0f
        0x0
    .end array-data
.end method

.method public static synthetic p(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->N:Z

    return p1
.end method

.method public static synthetic q(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->s()V

    return-void
.end method

.method public static synthetic r(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->O:Z

    return p1
.end method


# virtual methods
.method public final s()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->M:Lcom/prineside/tdi2/BasicLevel;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->isOpened(Lcom/prineside/tdi2/BasicLevel;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->M:Lcom/prineside/tdi2/BasicLevel;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->isMastered(Lcom/prineside/tdi2/BasicLevel;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->N:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-static {}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->d()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->O:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-static {}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->e()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-static {}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->f()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->N:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-static {}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->g()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->O:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-static {}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->h()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-static {}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->i()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->N:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-static {}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->j()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->O:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-static {}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->k()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->M:Lcom/prineside/tdi2/BasicLevel;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->canBePurchased(Lcom/prineside/tdi2/BasicLevel;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-static {}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->l()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object v1

    invoke-static {}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->m()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-static {}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->l()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object v1

    invoke-static {}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->m()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-static {}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->n()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-static {}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->n()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    return-void
.end method

.method public setTopLeaderboards(Lcom/badlogic/gdx/utils/Array;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-crown"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v1, 0x42000000    # 32.0f

    invoke-virtual {v0, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v1, 0x41800000    # 16.0f

    const/high16 v2, 0x43440000    # 196.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;

    int-to-float v2, v0

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v3, v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    new-instance v5, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;

    iget-object v6, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->nickname:Ljava/lang/String;

    const/16 v7, 0x15

    const/high16 v8, 0x43700000    # 240.0f

    invoke-direct {v5, v6, v7, v7, v8}, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;-><init>(Ljava/lang/CharSequence;IIF)V

    const v6, 0x3f0f5c29    # 0.56f

    mul-float v6, v6, v3

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v9, v9, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v6, 0x426c0000    # 59.0f

    const/high16 v9, 0x43460000    # 198.0f

    const/high16 v10, 0x41d00000    # 26.0f

    mul-float v2, v2, v10

    sub-float/2addr v9, v2

    const/high16 v2, 0x40000000    # 2.0f

    sub-float v2, v9, v2

    invoke-virtual {v5, v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->nickname:Ljava/lang/String;

    invoke-direct {v2, v1, v7, v7, v8}, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;-><init>(Ljava/lang/CharSequence;IIF)V

    const/high16 v1, 0x42640000    # 57.0f

    invoke-virtual {v2, v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v4, v4, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
