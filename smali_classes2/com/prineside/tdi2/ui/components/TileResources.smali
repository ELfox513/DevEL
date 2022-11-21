.class public Lcom/prineside/tdi2/ui/components/TileResources;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# instance fields
.field public M:Lcom/prineside/tdi2/tiles/SourceTile;

.field public N:F

.field public O:Z


# direct methods
.method public constructor <init>(F)V
    .locals 2

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput p1, p0, Lcom/prineside/tdi2/ui/components/TileResources;->N:F

    const/4 v0, 0x0

    const/high16 v1, 0x43af0000    # 350.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/prineside/tdi2/ui/components/TileResources;->O:Z

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v0, 0x42a00000    # 80.0f

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    return-void
.end method


# virtual methods
.method public getTile()Lcom/prineside/tdi2/tiles/SourceTile;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TileResources;->M:Lcom/prineside/tdi2/tiles/SourceTile;

    return-object v0
.end method

.method public setTile(Lcom/prineside/tdi2/tiles/SourceTile;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/prineside/tdi2/ui/components/TileResources;->O:Z

    const/16 v3, 0x15

    if-eqz v2, :cond_0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x18

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    :goto_0
    iget-boolean v4, v0, Lcom/prineside/tdi2/ui/components/TileResources;->O:Z

    if-eqz v4, :cond_1

    const/high16 v4, 0x41c00000    # 24.0f

    goto :goto_1

    :cond_1
    const/high16 v4, 0x42000000    # 32.0f

    :goto_1
    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/TileResources;->M:Lcom/prineside/tdi2/tiles/SourceTile;

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/high16 v8, 0x42400000    # 48.0f

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget v8, v0, Lcom/prineside/tdi2/ui/components/TileResources;->N:F

    invoke-virtual {v7, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v8, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v10, v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    if-ge v12, v10, :cond_5

    aget-object v15, v8, v12

    invoke-virtual {v1, v15}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourcesCount(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v14

    if-lez v14, :cond_4

    if-lez v13, :cond_3

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    iget-boolean v3, v0, Lcom/prineside/tdi2/ui/components/TileResources;->O:Z

    if-eqz v3, :cond_2

    const/high16 v3, 0x41200000    # 10.0f

    goto :goto_3

    :cond_2
    const/high16 v3, 0x41c00000    # 24.0f

    :goto_3
    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_3
    add-int/2addr v13, v14

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    sget-object v16, Lcom/prineside/tdi2/Resource;->TEXTURE_REGION_NAMES:[Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    aget-object v5, v16, v17

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

    invoke-virtual {v5, v15}, Lcom/prineside/tdi2/managers/ResourceManager;->getColor(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    int-to-double v5, v14

    invoke-static {v5, v6, v11}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

    invoke-virtual {v5, v15}, Lcom/prineside/tdi2/managers/ResourceManager;->getColor(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_4
    add-int/lit8 v12, v12, 0x1

    const/16 v3, 0x15

    goto :goto_2

    :cond_5
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "blank"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    const/high16 v4, 0x41e80000    # 29.0f

    const/high16 v5, 0x41000000    # 8.0f

    const v6, 0x3f0f5c29    # 0.56f

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v13, :cond_6

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v1, v9, v9, v9, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget v3, v0, Lcom/prineside/tdi2/ui/components/TileResources;->N:F

    invoke-virtual {v1, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "no_resources"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const v2, 0x3e8f5c29    # 0.28f

    invoke-virtual {v1, v8, v8, v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    iget v2, v0, Lcom/prineside/tdi2/ui/components/TileResources;->N:F

    const/high16 v3, 0x42000000    # 32.0f

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto/16 :goto_7

    :cond_6
    sget-object v2, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v7, v2

    const/4 v10, 0x0

    :goto_4
    if-ge v11, v7, :cond_8

    aget-object v12, v2, v11

    invoke-virtual {v1, v12}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourcesCount(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourceDensity()F

    move-result v15

    mul-float v14, v14, v15

    int-to-float v15, v13

    div-float/2addr v14, v15

    cmpl-float v15, v14, v9

    if-lez v15, :cond_7

    new-instance v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v15, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

    invoke-virtual {v6, v12}, Lcom/prineside/tdi2/managers/ResourceManager;->getColor(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    invoke-virtual {v15, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v6, v0, Lcom/prineside/tdi2/ui/components/TileResources;->N:F

    mul-float v6, v6, v14

    invoke-virtual {v15, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget v6, v0, Lcom/prineside/tdi2/ui/components/TileResources;->N:F

    mul-float v6, v6, v10

    invoke-virtual {v15, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-float/2addr v10, v14

    :cond_7
    add-int/lit8 v11, v11, 0x1

    const v6, 0x3f0f5c29    # 0.56f

    goto :goto_4

    :cond_8
    cmpg-float v1, v10, v8

    if-gez v1, :cond_9

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v2, 0x3f0f5c29    # 0.56f

    invoke-virtual {v1, v9, v9, v9, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget v2, v0, Lcom/prineside/tdi2/ui/components/TileResources;->N:F

    sub-float v6, v8, v10

    mul-float v2, v2, v6

    invoke-virtual {v1, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget v2, v0, Lcom/prineside/tdi2/ui/components/TileResources;->N:F

    mul-float v2, v2, v10

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, -0x75757501

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x420c0000    # 35.0f

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget v2, v0, Lcom/prineside/tdi2/ui/components/TileResources;->N:F

    mul-float v2, v2, v10

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_9
    iget v1, v0, Lcom/prineside/tdi2/ui/components/TileResources;->N:F

    const/high16 v2, 0x43b40000    # 360.0f

    const-string v3, "%"

    const/high16 v4, 0x42c80000    # 100.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    mul-float v4, v4, v10

    float-to-int v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "resource_density"

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v4, v4, v10

    float-to-int v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v2, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v1, 0x3f0f5c29    # 0.56f

    invoke-virtual {v2, v8, v8, v8, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v2, v9, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v3, 0x42200000    # 40.0f

    cmpl-float v1, v10, v1

    if-lez v1, :cond_c

    const/16 v1, 0x10

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget v1, v0, Lcom/prineside/tdi2/ui/components/TileResources;->N:F

    mul-float v10, v10, v1

    const/high16 v4, 0x41200000    # 10.0f

    sub-float/2addr v10, v4

    sub-float v4, v1, v3

    cmpl-float v4, v10, v4

    if-lez v4, :cond_b

    sub-float v10, v1, v3

    :cond_b
    invoke-virtual {v2, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    goto :goto_7

    :cond_c
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget v1, v0, Lcom/prineside/tdi2/ui/components/TileResources;->N:F

    mul-float v1, v1, v10

    const/high16 v4, 0x41200000    # 10.0f

    add-float/2addr v1, v4

    cmpg-float v4, v1, v3

    if-gez v4, :cond_d

    goto :goto_6

    :cond_d
    move v3, v1

    :goto_6
    invoke-virtual {v2, v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    :goto_7
    return-void
.end method
