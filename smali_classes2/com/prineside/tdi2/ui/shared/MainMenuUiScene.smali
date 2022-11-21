.class public Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:[F

.field public static final e:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public a:Lcom/prineside/tdi2/ui/actors/ModelView;

.field public b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [F

    sput-object v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->d:[F

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->e:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/4 v0, -0x1

    iput v0, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->c:I

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->recreate()V

    return-void
.end method

.method public static synthetic a()[F
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->d:[F

    return-object v0
.end method

.method public static synthetic b()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->e:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method


# virtual methods
.method public getContents()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->a:Lcom/prineside/tdi2/ui/actors/ModelView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    :cond_0
    return-object v0
.end method

.method public rebuildIfNeeded()V
    .locals 14

    const-string v0, "t-"

    const-string v1, "MainMenuUiScene"

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/ResearchManager;->getInstances()Lcom/badlogic/gdx/utils/Array;

    move-result-object v9

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/ResearchManager;->getLinks()Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v5, :cond_0

    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/Research;

    mul-int/lit8 v2, v2, 0x1d

    iget v5, v5, Lcom/prineside/tdi2/Research;->installedLevel:I

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/prineside/tdi2/enums/TrophyType;->values:[Lcom/prineside/tdi2/enums/TrophyType;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    const/4 v12, 0x1

    if-ge v6, v5, :cond_2

    aget-object v8, v4, v6

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->trophyManager:Lcom/prineside/tdi2/managers/TrophyManager;

    invoke-virtual {v10, v8}, Lcom/prineside/tdi2/managers/TrophyManager;->getConfig(Lcom/prineside/tdi2/enums/TrophyType;)Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->isReceived()Z

    move-result v8

    if-eqz v8, :cond_1

    mul-int/lit8 v2, v2, 0x1d

    add-int/2addr v2, v12

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->c:I

    if-eq v4, v2, :cond_12

    :try_start_0
    iput v2, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->c:I

    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->a:Lcom/prineside/tdi2/ui/actors/ModelView;

    if-nez v4, :cond_6

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x43aa0000    # 340.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "small-circle"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v11

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "blank"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v8

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    sget-object v5, Lcom/prineside/tdi2/enums/ResearchType;->ROOT:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/ResearchManager;->getResearchInstance(Lcom/prineside/tdi2/enums/ResearchType;)Lcom/prineside/tdi2/Research;

    move-result-object v10

    new-array v6, v12, [F

    const/high16 v4, 0x41200000    # 10.0f

    aput v4, v6, v3

    new-instance v13, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$4;

    move-object v4, v13

    move-object v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$4;-><init>(Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;[FLcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/Research;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x44200000    # 640.0f

    invoke-virtual {v4, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    sget-object v5, Lcom/prineside/tdi2/enums/TrophyType;->values:[Lcom/prineside/tdi2/enums/TrophyType;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v3, v6, :cond_5

    aget-object v8, v5, v3

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->trophyManager:Lcom/prineside/tdi2/managers/TrophyManager;

    invoke-virtual {v9, v8}, Lcom/prineside/tdi2/managers/TrophyManager;->getConfig(Lcom/prineside/tdi2/enums/TrophyType;)Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;

    move-result-object v8

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    invoke-virtual {v8}, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->isReceived()Z

    move-result v10

    if-eqz v10, :cond_3

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    invoke-virtual {v8}, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->getIconTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v8

    invoke-direct {v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_3

    :cond_3
    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    invoke-virtual {v8}, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->getWhiteTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v8

    invoke-direct {v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v8, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_3
    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    const/high16 v9, 0x42400000    # 48.0f

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    const/high16 v9, 0x40800000    # 4.0f

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    add-int/2addr v7, v12

    rem-int/lit8 v8, v7, 0xc

    if-nez v8, :cond_4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v3, 0x42000000    # 32.0f

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto/16 :goto_9

    :cond_6
    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v4

    sget-object v5, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v5}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->a:Lcom/prineside/tdi2/ui/actors/ModelView;

    iget v8, v6, Lcom/prineside/tdi2/ui/actors/ModelView;->width:I

    if-ne v8, v4, :cond_7

    iget v8, v6, Lcom/prineside/tdi2/ui/actors/ModelView;->height:I

    if-eq v8, v5, :cond_8

    :cond_7
    invoke-virtual {v6, v4, v5}, Lcom/prineside/tdi2/ui/actors/ModelView;->setSize(II)V

    :cond_8
    new-instance v4, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/AssetManager;->getSceneModel()Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;)V

    const-string v5, "researches"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getNode(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v5

    if-eqz v5, :cond_f

    const/4 v6, 0x0

    :goto_4
    iget v8, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v8, :cond_c

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/Research$ResearchLink;

    iget-object v10, v8, Lcom/prineside/tdi2/Research$ResearchLink;->child:Lcom/prineside/tdi2/Research;

    iget v10, v10, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-eqz v10, :cond_9

    iget-object v10, v8, Lcom/prineside/tdi2/Research$ResearchLink;->parent:Lcom/prineside/tdi2/Research;

    iget v10, v10, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-nez v10, :cond_b

    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v8, Lcom/prineside/tdi2/Research$ResearchLink;->parent:Lcom/prineside/tdi2/Research;

    invoke-virtual {v11}, Lcom/prineside/tdi2/Research;->getShortName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Lcom/prineside/tdi2/Research$ResearchLink;->child:Lcom/prineside/tdi2/Research;

    invoke-virtual {v8}, Lcom/prineside/tdi2/Research;->getShortName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v3, v3}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getChild(Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v8

    if-nez v8, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->detach()V

    :cond_b
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_c
    const/4 v6, 0x0

    :goto_6
    iget v7, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v7, :cond_f

    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/Research;

    iget-object v8, v7, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v3, v3}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getChild(Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v8

    iget v10, v7, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-nez v10, :cond_e

    if-nez v8, :cond_d

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "3d scene node not exists for research "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->detach()V

    :cond_e
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_f
    const-string v5, "trophies"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getNode(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v5

    if-eqz v5, :cond_11

    sget-object v6, Lcom/prineside/tdi2/enums/TrophyType;->values:[Lcom/prineside/tdi2/enums/TrophyType;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v7, :cond_11

    aget-object v9, v6, v8

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->trophyManager:Lcom/prineside/tdi2/managers/TrophyManager;

    invoke-virtual {v10, v9}, Lcom/prineside/tdi2/managers/TrophyManager;->getConfig(Lcom/prineside/tdi2/enums/TrophyType;)Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->isReceived()Z

    move-result v10

    if-nez v10, :cond_10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10, v3, v3}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getChild(Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->detach()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "-beam"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9, v3, v3}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getChild(Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v9

    if-eqz v9, :cond_10

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->detach()V

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_11
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->a:Lcom/prineside/tdi2/ui/actors/ModelView;

    const v3, 0x3e3851ec    # 0.18f

    invoke-virtual {v0, v4, v3}, Lcom/prineside/tdi2/ui/actors/ModelView;->setModel(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    iput v2, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->c:I

    const-string v2, "Failed to build 3d scene"

    invoke-static {v1, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_12
    :goto_9
    return-void
.end method

.method public recreate()V
    .locals 18

    move-object/from16 v8, p0

    const/4 v0, -0x1

    iput v0, v8, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->c:I

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isThreeDeeModelsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v8, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->a:Lcom/prineside/tdi2/ui/actors/ModelView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/ModelView;->dispose()V

    const/4 v0, 0x0

    iput-object v0, v8, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->a:Lcom/prineside/tdi2/ui/actors/ModelView;

    :cond_0
    iget-object v0, v8, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearListeners()V

    iget-object v0, v8, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v1, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$1;

    invoke-direct {v1, v8}, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$1;-><init>(Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v0, v8, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, v8, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->a:Lcom/prineside/tdi2/ui/actors/ModelView;

    if-nez v0, :cond_2

    new-instance v9, Lcom/badlogic/gdx/graphics/g3d/Environment;

    invoke-direct {v9}, Lcom/badlogic/gdx/graphics/g3d/Environment;-><init>()V

    new-instance v7, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->AmbientLight:J

    const v3, 0x3f0ccccd    # 0.55f

    const v4, 0x3f0ccccd    # 0.55f

    const v5, 0x3f0ccccd    # 0.55f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JFFFF)V

    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    new-instance v6, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    invoke-direct {v6}, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;-><init>()V

    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/graphics/g3d/Environment;->add(Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    new-instance v7, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    invoke-direct {v7}, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;-><init>()V

    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/graphics/g3d/Environment;->add(Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    new-instance v10, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    invoke-direct {v10}, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P200:Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const v5, 0x3e99999a    # 0.3f

    move-object v0, v10

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->set(Lcom/badlogic/gdx/graphics/Color;FFFF)Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/graphics/g3d/Environment;->add(Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    const/4 v0, 0x1

    new-array v10, v0, [Z

    const/4 v1, 0x0

    aput-boolean v0, v10, v1

    new-array v11, v0, [F

    aput v2, v11, v1

    new-array v12, v0, [F

    const v3, 0x3ec28f5c    # 0.38f

    aput v3, v12, v1

    new-array v13, v0, [F

    aput v2, v13, v1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v14

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v15

    new-instance v5, Lcom/prineside/tdi2/ui/actors/ModelView;

    new-instance v16, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v13

    move-object v4, v11

    move-object/from16 v17, v5

    move-object v5, v12

    invoke-direct/range {v0 .. v7}, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$2;-><init>(Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;[Z[F[F[FLcom/badlogic/gdx/graphics/g3d/environment/PointLight;Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;)V

    const/4 v6, 0x1

    move-object/from16 v1, v17

    move v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move-object v5, v9

    invoke-direct/range {v1 .. v6}, Lcom/prineside/tdi2/ui/actors/ModelView;-><init>(IILcom/prineside/tdi2/ui/actors/ModelView$Transformer;Lcom/badlogic/gdx/graphics/g3d/Environment;Z)V

    move-object/from16 v6, v17

    iput-object v6, v8, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->a:Lcom/prineside/tdi2/ui/actors/ModelView;

    new-instance v7, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$3;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v13

    move-object v4, v11

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$3;-><init>(Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;[Z[F[F[F)V

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    :cond_2
    :goto_0
    return-void
.end method
