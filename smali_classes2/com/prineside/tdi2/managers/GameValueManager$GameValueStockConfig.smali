.class public Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/GameValueManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameValueStockConfig"
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/TextureRegionConfig;",
            ">;"
        }
    .end annotation
.end field

.field public iconString:Ljava/lang/String;

.field public stockValue:D

.field public titleAlias:Ljava/lang/String;

.field public type:Lcom/prineside/tdi2/enums/GameValueType;

.field public units:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()Lcom/badlogic/gdx/utils/Array;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/TextureRegionConfig;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->a:Lcom/badlogic/gdx/utils/Array;

    if-nez v1, :cond_4

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/prineside/tdi2/utils/TextureRegionConfig;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v3, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v1, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->iconString:Ljava/lang/String;

    const-string v2, "@tower-ability"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v4, ":"

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->iconString:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    aget-object v3, v1, v3

    invoke-static {v3}, Lcom/prineside/tdi2/enums/TowerType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/TowerType;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    aget-object v5, v1, v5

    invoke-virtual {v3}, Lcom/prineside/tdi2/Tower$Factory;->getShadowTextures()Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    const/4 v7, 0x0

    :goto_0
    iget v8, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v8, :cond_0

    new-instance v8, Lcom/prineside/tdi2/utils/TextureRegionConfig;

    iget-object v9, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v9, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object v9, v9, v7

    invoke-direct {v8, v9}, Lcom/prineside/tdi2/utils/TextureRegionConfig;-><init>(Lcom/prineside/tdi2/utils/TextureRegionConfig;)V

    iget-object v9, v8, Lcom/prineside/tdi2/utils/TextureRegionConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    const v10, 0x3e8f5c29    # 0.28f

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v11, v11, v10}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    iget-object v9, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/prineside/tdi2/Tower$Factory;->getBaseTextures()Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    :goto_1
    iget v7, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v7, :cond_1

    new-instance v7, Lcom/prineside/tdi2/utils/TextureRegionConfig;

    iget-object v8, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object v8, v8, v2

    invoke-direct {v7, v8}, Lcom/prineside/tdi2/utils/TextureRegionConfig;-><init>(Lcom/prineside/tdi2/utils/TextureRegionConfig;)V

    iget-object v8, v7, Lcom/prineside/tdi2/utils/TextureRegionConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v8, Lcom/badlogic/gdx/graphics/Color;->r:F

    const v10, 0x3f0f5c29    # 0.56f

    mul-float v9, v9, v10

    iput v9, v8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v9, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v9, v9, v10

    iput v9, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v9, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v9, v9, v10

    iput v9, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v8, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/Tower$Factory;->getAbilityTextures(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v2, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v3, Lcom/prineside/tdi2/utils/TextureRegionConfig;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v7

    const v8, -0x435c28f6    # -0.02f

    const v9, 0x3c23d70a    # 0.01f

    const v10, 0x3e6147ae    # 0.22f

    const v11, 0x3e6147ae    # 0.22f

    const v12, 0x3ee147ae    # 0.44f

    const v13, 0x3ee147ae    # 0.44f

    sget-object v4, Lcom/prineside/tdi2/managers/GameValueManager;->ICON_BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    move-object v6, v3

    move-object v14, v4

    invoke-direct/range {v6 .. v14}, Lcom/prineside/tdi2/utils/TextureRegionConfig;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v3, Lcom/prineside/tdi2/utils/TextureRegionConfig;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v15

    const v16, 0x3c23d70a    # 0.01f

    const v17, -0x435c28f6    # -0.02f

    const v18, 0x3e6147ae    # 0.22f

    const v19, 0x3e6147ae    # 0.22f

    const v20, 0x3ee147ae    # 0.44f

    const v21, 0x3ee147ae    # 0.44f

    move-object v14, v3

    move-object/from16 v22, v4

    invoke-direct/range {v14 .. v22}, Lcom/prineside/tdi2/utils/TextureRegionConfig;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v3, Lcom/prineside/tdi2/utils/TextureRegionConfig;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v15

    const v16, -0x435c28f6    # -0.02f

    const v20, 0x3ef5c28f    # 0.48f

    const v21, 0x3ef5c28f    # 0.48f

    move-object v14, v3

    invoke-direct/range {v14 .. v22}, Lcom/prineside/tdi2/utils/TextureRegionConfig;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v3, Lcom/prineside/tdi2/utils/TextureRegionConfig;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v7

    const v9, -0x435c28f6    # -0.02f

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lcom/prineside/tdi2/utils/TextureRegionConfig;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    array-length v2, v1

    const/4 v3, 0x4

    if-le v2, v3, :cond_4

    iget-object v2, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v12, Lcom/prineside/tdi2/utils/TextureRegionConfig;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    aget-object v1, v1, v3

    invoke-virtual {v4, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v5

    const v6, -0x435c28f6    # -0.02f

    const v7, 0x3e6b851f    # 0.23f

    const v8, 0x3e6147ae    # 0.22f

    const v9, 0x3e6147ae    # 0.22f

    const v10, 0x3ee147ae    # 0.44f

    const v11, 0x3ee147ae    # 0.44f

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/prineside/tdi2/utils/TextureRegionConfig;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFF)V

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    iget-object v1, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->iconString:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->iconString:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v13, Lcom/prineside/tdi2/utils/TextureRegionConfig;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    aget-object v2, v1, v2

    invoke-virtual {v5, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Lcom/prineside/tdi2/utils/TextureRegionConfig;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFF)V

    invoke-virtual {v4, v13}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v13, Lcom/prineside/tdi2/utils/TextureRegionConfig;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v5

    const v6, -0x435c28f6    # -0.02f

    const v7, 0x3c23d70a    # 0.01f

    const v8, 0x3e6147ae    # 0.22f

    const v9, 0x3e6147ae    # 0.22f

    const v10, 0x3ee147ae    # 0.44f

    const v11, 0x3ee147ae    # 0.44f

    sget-object v23, Lcom/prineside/tdi2/managers/GameValueManager;->ICON_BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    move-object v4, v13

    move-object/from16 v12, v23

    invoke-direct/range {v4 .. v12}, Lcom/prineside/tdi2/utils/TextureRegionConfig;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v4, Lcom/prineside/tdi2/utils/TextureRegionConfig;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v15

    const v16, 0x3c23d70a    # 0.01f

    const v17, -0x435c28f6    # -0.02f

    const v18, 0x3e6147ae    # 0.22f

    const v19, 0x3e6147ae    # 0.22f

    const v20, 0x3ee147ae    # 0.44f

    const v21, 0x3ee147ae    # 0.44f

    move-object v14, v4

    move-object/from16 v22, v23

    invoke-direct/range {v14 .. v22}, Lcom/prineside/tdi2/utils/TextureRegionConfig;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v4, Lcom/prineside/tdi2/utils/TextureRegionConfig;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v15

    const v16, -0x435c28f6    # -0.02f

    const v20, 0x3ef5c28f    # 0.48f

    const v21, 0x3ef5c28f    # 0.48f

    move-object v14, v4

    invoke-direct/range {v14 .. v22}, Lcom/prineside/tdi2/utils/TextureRegionConfig;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v12, Lcom/prineside/tdi2/utils/TextureRegionConfig;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    aget-object v1, v1, v3

    invoke-virtual {v4, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v5

    const v6, -0x435c28f6    # -0.02f

    const v7, -0x435c28f6    # -0.02f

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/prineside/tdi2/utils/TextureRegionConfig;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFF)V

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v10, Lcom/prineside/tdi2/utils/TextureRegionConfig;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v3, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->iconString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/prineside/tdi2/utils/TextureRegionConfig;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFF)V

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    iget-object v1, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->a:Lcom/badlogic/gdx/utils/Array;

    return-object v1
.end method
