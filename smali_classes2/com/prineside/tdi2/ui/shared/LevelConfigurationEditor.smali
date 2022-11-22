.class public Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public b:Lcom/prineside/tdi2/BasicLevel;

.field public c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public e:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

.field public f:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

.field public g:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;


# direct methods
.method public constructor <init>()V
    .locals 21

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v2, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->OVERLAY:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v3, 0x8d

    const-string v4, "LevelConfigurationEditor main"

    invoke-virtual {v1, v2, v3, v4}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "blank"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v3

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x18

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v6

    sget-object v14, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v5, v6, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOff:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setLeftWidth(F)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOff:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setBottomHeight(F)V

    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v3

    invoke-direct {v13, v2, v14, v14, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v2, v13, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v3

    const/high16 v5, 0x41200000    # 10.0f

    add-float/2addr v3, v5

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setLeftWidth(F)V

    iget-object v2, v13, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v3

    add-float/2addr v3, v5

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setRightWidth(F)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v9

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v11

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    sget-object v8, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v16

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    const/4 v10, 0x0

    const v15, 0x3e8f5c29    # 0.28f

    invoke-direct {v8, v10, v10, v10, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v17

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v18

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v10, v10, v10, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v19

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v20

    move-object v15, v12

    invoke-direct/range {v15 .. v20}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    move-object v8, v2

    const/4 v3, 0x0

    move-object v10, v14

    invoke-direct/range {v8 .. v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v8

    add-float/2addr v8, v5

    invoke-interface {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setLeftWidth(F)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v8

    add-float/2addr v8, v5

    invoke-interface {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setRightWidth(F)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/4 v15, 0x0

    invoke-virtual {v8, v7, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(IZ)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v9

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v8}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v8

    invoke-direct {v11, v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    sget-object v10, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v12

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v13

    move-object v8, v2

    move-object v10, v14

    invoke-direct/range {v8 .. v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->cursor:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-interface {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setMinWidth(F)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v6

    add-float/2addr v6, v5

    invoke-interface {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setLeftWidth(F)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v6

    add-float/2addr v6, v5

    invoke-interface {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setRightWidth(F)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v2, v15}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v6, 0x44960000    # 1200.0f

    const/high16 v8, 0x447a0000    # 1000.0f

    invoke-virtual {v1, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v1, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const v6, 0x333333ff

    invoke-direct {v4, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/high16 v9, 0x41000000    # 8.0f

    invoke-virtual {v6, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getScrollPaneStyle(F)Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    const/high16 v4, 0x43700000    # 240.0f

    invoke-virtual {v1, v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollingDisabled(ZZ)V

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->O0()V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v4, 0x44610000    # 900.0f

    const v6, 0x44628000    # 906.0f

    invoke-virtual {v1, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/high16 v9, 0x41800000    # 16.0f

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getScrollPaneStyle(F)Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    move-result-object v8

    invoke-direct {v1, v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    const/high16 v4, 0x446b0000    # 940.0f

    invoke-virtual {v1, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v4, 0x43820000    # 260.0f

    const/high16 v6, 0x42a80000    # 84.0f

    invoke-virtual {v1, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v1, v15}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v4, 0x437a0000    # 250.0f

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    new-instance v5, Lcom/prineside/tdi2/ui/shared/p;

    invoke-direct {v5, v0, v1}, Lcom/prineside/tdi2/ui/shared/p;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    const-string v6, "Save"

    invoke-direct {v2, v6, v4, v5}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    const/high16 v4, 0x43480000    # 200.0f

    const/high16 v5, 0x42800000    # 64.0f

    invoke-virtual {v2, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v4, 0x44390000    # 740.0f

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->N0()V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->hide()V

    return-void
.end method

.method public static synthetic A(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b0()V

    return-void
.end method

.method private synthetic A0()V
    .locals 7

    const-string v0, ".json"

    const-string v1, "levels/"

    :try_start_0
    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v2, v2, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/managers/BasicLevelManager;->unloadLevel(Ljava/lang/String;)V

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v5, v5, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->delete()Z

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    new-instance v4, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/files/FileHandle;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->loadAndRegisterLevelFromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/BasicLevel;

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->N0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to restore level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v2, v2, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ItemCreationOverlay"

    invoke-static {v2, v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic B(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->i0(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic B0()V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    new-instance v1, Lcom/prineside/tdi2/ui/shared/k0;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/ui/shared/k0;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V

    const-string v2, "Reset level configuration? Original configuration will be used"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic C(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/badlogic/gdx/utils/Array;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->W(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method private synthetic C0()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v0, v0, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->unloadLevel(Ljava/lang/String;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "levels/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v2, v2, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->delete()Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BasicLevelManager;->levelsOrdered:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/BasicLevel;

    iput-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->N0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to delete level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v2, v2, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ItemCreationOverlay"

    invoke-static {v2, v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic D(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->B0()V

    return-void
.end method

.method private synthetic D0()V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    new-instance v1, Lcom/prineside/tdi2/ui/shared/m0;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/ui/shared/m0;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V

    const-string v2, "Delete this level? Map will be kept as a local file (create a level with the same name to access it)"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic E(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/BasicLevelQuestConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->v0(Lcom/prineside/tdi2/BasicLevelQuestConfig;)V

    return-void
.end method

.method private synthetic E0()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "levels/maps/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v2, v2, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->delete()Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    invoke-virtual {v0}, Lcom/prineside/tdi2/BasicLevel;->reloadMap()Lcom/prineside/tdi2/Map;

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->N0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to delete level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v2, v2, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ItemCreationOverlay"

    invoke-static {v2, v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic F(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->q0()V

    return-void
.end method

.method private synthetic F0()V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    new-instance v1, Lcom/prineside/tdi2/ui/shared/v0;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/ui/shared/v0;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V

    const-string v2, "Reset map? Map will be restored to the original state"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic G(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/BasicLevel$WaveQuest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->s0(Lcom/prineside/tdi2/BasicLevel$WaveQuest;)V

    return-void
.end method

.method private synthetic G0(Lcom/prineside/tdi2/BasicLevel;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->N0()V

    return-void
.end method

.method public static synthetic H(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/badlogic/gdx/scenes/scene2d/Group;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->X(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    return-void
.end method

.method private synthetic H0()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    new-instance v1, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$1;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V

    const-string v2, "Level name"

    const-string v3, ""

    const-string v4, "0-9, a-Z and dot, minimum 2 characters. Name can\'t be changed, choose wisely"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/prineside/tdi2/managers/UiManager;->getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic I(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->f0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic J(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->l0(I)V

    return-void
.end method

.method public static synthetic K(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->C0()V

    return-void
.end method

.method public static synthetic L(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/badlogic/gdx/utils/Array;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->Z(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method public static synthetic M(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->c0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic N(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->F0()V

    return-void
.end method

.method public static synthetic O(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)Lcom/prineside/tdi2/BasicLevel;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    return-object p0
.end method

.method public static synthetic P(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/BasicLevel;)Lcom/prineside/tdi2/BasicLevel;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    return-object p1
.end method

.method public static synthetic Q(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->O0()V

    return-void
.end method

.method public static synthetic R(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->N0()V

    return-void
.end method

.method private synthetic U(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/ItemStack;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->N0()V

    return-void
.end method

.method private synthetic V(Lcom/prineside/tdi2/ItemStack;Lcom/prineside/tdi2/Item;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ItemStack;->setItem(Lcom/prineside/tdi2/Item;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->N0()V

    return-void
.end method

.method private synthetic W(Lcom/badlogic/gdx/utils/Array;)V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->N0()V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->itemCreationOverlay:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v1

    new-instance v2, Lcom/prineside/tdi2/ui/shared/x0;

    invoke-direct {v2, p0, v0}, Lcom/prineside/tdi2/ui/shared/x0;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/ItemStack;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v2, v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->show(Lcom/prineside/tdi2/Item;Lcom/prineside/tdi2/utils/ObjectRetriever;Z)V

    return-void
.end method

.method private synthetic X(Lcom/badlogic/gdx/scenes/scene2d/Group;)V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/BasicLevel;->saveToDisk()V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v1

    const-string v2, "Done!"

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v1, 0x44390000    # 740.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v1, 0x43480000    # 200.0f

    const/high16 v3, 0x42800000    # 64.0f

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const p1, 0x3e99999a    # 0.3f

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->exp5Out:Lcom/badlogic/gdx/math/Interpolation$ExpOut;

    invoke-static {v2, v3, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;

    move-result-object p1

    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->removeActor()Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->N0()V

    :cond_0
    return-void
.end method

.method private synthetic Y(Lcom/badlogic/gdx/utils/Array;I)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->N0()V

    return-void
.end method

.method private synthetic Z(Lcom/badlogic/gdx/utils/Array;)V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/Requirement;

    invoke-direct {v0}, Lcom/prineside/tdi2/Requirement;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/enums/RequirementType;->ALL_TIME_STATISTIC:Lcom/prineside/tdi2/enums/RequirementType;

    iput-object v1, v0, Lcom/prineside/tdi2/Requirement;->type:Lcom/prineside/tdi2/enums/RequirementType;

    sget-object v1, Lcom/prineside/tdi2/enums/StatisticsType;->WIP:Lcom/prineside/tdi2/enums/StatisticsType;

    iput-object v1, v0, Lcom/prineside/tdi2/Requirement;->statisticsType:Lcom/prineside/tdi2/enums/StatisticsType;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iput-wide v1, v0, Lcom/prineside/tdi2/Requirement;->statisticsValue:D

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->N0()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->z0()V

    return-void
.end method

.method private synthetic a0()V
    .locals 4

    const-string v0, ".json"

    :try_start_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "levels/maps/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v3, v3, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->delete()Z

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v2, v2, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/BasicLevelManager;->unloadLevel(Ljava/lang/String;)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "levels/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v3, v3, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->delete()Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BasicLevelManager;->levelsOrdered:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/BasicLevel;

    iput-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->N0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to delete level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v2, v2, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ItemCreationOverlay"

    invoke-static {v2, v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->g0(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic b0()V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    new-instance v1, Lcom/prineside/tdi2/ui/shared/s0;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/ui/shared/s0;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V

    const-string v2, "Delete this level and its map?"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->p0(Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;)V

    return-void
.end method

.method private synthetic c0(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/BasicLevel;->stagePosition:I

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->O0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ItemCreationOverlay"

    invoke-static {v1, p1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->h0(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic d0(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/BasicLevel;->seed:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ItemCreationOverlay"

    invoke-static {v1, p1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/BasicLevelQuestConfig;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->y0(Lcom/prineside/tdi2/BasicLevelQuestConfig;Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic e0(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/prineside/tdi2/BasicLevel;->hasLeaderboards:Z

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->k0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic f0(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/BasicLevel;->fastForwardFrame:I

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget v1, v0, Lcom/prineside/tdi2/BasicLevel;->fastForwardFrame:I

    if-gez v1, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Lcom/prineside/tdi2/BasicLevel;->fastForwardFrame:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ItemCreationOverlay"

    invoke-static {v1, p1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic g(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->e0(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic g0(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/prineside/tdi2/BasicLevel;->fixedQuests:Z

    return-void
.end method

.method public static synthetic h(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->E0()V

    return-void
.end method

.method private synthetic h0(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/prineside/tdi2/BasicLevel;->isBonus:Z

    return-void
.end method

.method public static synthetic i(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/BasicLevelQuestConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->w0(Lcom/prineside/tdi2/BasicLevelQuestConfig;)V

    return-void
.end method

.method private synthetic i0(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/prineside/tdi2/BasicLevel;->customWaves:Z

    return-void
.end method

.method public static synthetic j(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->a0()V

    return-void
.end method

.method private synthetic j0(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/prineside/tdi2/BasicLevel;->dailyQuest:Z

    return-void
.end method

.method public static synthetic k(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->n0(Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;I)V

    return-void
.end method

.method private synthetic k0(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/BasicLevel;->priceInMoney:I

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget v1, v0, Lcom/prineside/tdi2/BasicLevel;->priceInMoney:I

    if-gez v1, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Lcom/prineside/tdi2/BasicLevel;->priceInMoney:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ItemCreationOverlay"

    invoke-static {v1, p1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic l(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->j0(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic l0(I)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v1, v0, Lcom/prineside/tdi2/BasicLevel;->enemyWaves:[Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/prineside/tdi2/BasicLevel;->enemyWaves:[Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;

    goto :goto_1

    :cond_0
    array-length v0, v1

    sub-int/2addr v0, v3

    new-array v0, v0, [Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v4, v3, Lcom/prineside/tdi2/BasicLevel;->enemyWaves:[Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;

    array-length v5, v4

    if-ge v1, v5, :cond_2

    if-eq v1, p1, :cond_1

    aget-object v3, v4, v1

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-object v0, v3, Lcom/prineside/tdi2/BasicLevel;->enemyWaves:[Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;

    :goto_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->N0()V

    return-void
.end method

.method public static synthetic m(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->o0(Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;I)V

    return-void
.end method

.method private synthetic m0(I)V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    new-instance v1, Lcom/prineside/tdi2/ui/shared/o0;

    invoke-direct {v1, p0, p1}, Lcom/prineside/tdi2/ui/shared/o0;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;I)V

    const-string p1, "Delete wave?"

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic n(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->d0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic n0(Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;I)V
    .locals 5

    iget-object v0, p1, Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;->enemyGroups:[Lcom/prineside/tdi2/EnemyGroup;

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    const-string p2, "Last enemy group can\'t be deleted"

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    array-length v0, v0

    sub-int/2addr v0, v2

    new-array v0, v0, [Lcom/prineside/tdi2/EnemyGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p1, Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;->enemyGroups:[Lcom/prineside/tdi2/EnemyGroup;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    if-eq v1, p2, :cond_1

    aget-object v3, v3, v1

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-object v0, p1, Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;->enemyGroups:[Lcom/prineside/tdi2/EnemyGroup;

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->N0()V

    return-void
.end method

.method public static synthetic o(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->A0()V

    return-void
.end method

.method private synthetic o0(Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;I)V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    new-instance v1, Lcom/prineside/tdi2/ui/shared/j0;

    invoke-direct {v1, p0, p1, p2}, Lcom/prineside/tdi2/ui/shared/j0;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;I)V

    const-string p1, "Delete group?"

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic p(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/ItemStack;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->U(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/ItemStack;)V

    return-void
.end method

.method private synthetic p0(Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;)V
    .locals 13

    iget-object v0, p1, Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;->enemyGroups:[Lcom/prineside/tdi2/EnemyGroup;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Lcom/prineside/tdi2/EnemyGroup;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p1, Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;->enemyGroups:[Lcom/prineside/tdi2/EnemyGroup;

    add-int/lit8 v1, v1, -0x1

    new-instance p1, Lcom/prineside/tdi2/EnemyGroup;

    sget-object v4, Lcom/prineside/tdi2/enums/EnemyType;->REGULAR:Lcom/prineside/tdi2/enums/EnemyType;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x41a00000    # 20.0f

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v12, 0xa

    move-object v3, p1

    invoke-direct/range {v3 .. v12}, Lcom/prineside/tdi2/EnemyGroup;-><init>(Lcom/prineside/tdi2/enums/EnemyType;FFIFFFFI)V

    aput-object p1, v2, v1

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->N0()V

    return-void
.end method

.method public static synthetic q(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/BasicLevel$WaveQuest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->r0(Lcom/prineside/tdi2/BasicLevel$WaveQuest;)V

    return-void
.end method

.method private synthetic q0()V
    .locals 14

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v1, v0, Lcom/prineside/tdi2/BasicLevel;->enemyWaves:[Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-array v1, v2, [Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;

    iput-object v1, v0, Lcom/prineside/tdi2/BasicLevel;->enemyWaves:[Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;

    goto :goto_0

    :cond_0
    array-length v0, v1

    add-int/2addr v0, v2

    new-array v0, v0, [Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iput-object v0, v1, Lcom/prineside/tdi2/BasicLevel;->enemyWaves:[Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v0, v0, Lcom/prineside/tdi2/BasicLevel;->enemyWaves:[Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;

    array-length v1, v0

    sub-int/2addr v1, v2

    new-instance v2, Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;

    new-instance v13, Lcom/prineside/tdi2/EnemyGroup;

    sget-object v4, Lcom/prineside/tdi2/enums/EnemyType;->REGULAR:Lcom/prineside/tdi2/enums/EnemyType;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x41a00000    # 20.0f

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v12, 0xa

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lcom/prineside/tdi2/EnemyGroup;-><init>(Lcom/prineside/tdi2/enums/EnemyType;FFIFFFFI)V

    invoke-direct {v2, v13}, Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;-><init>(Lcom/prineside/tdi2/EnemyGroup;)V

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->N0()V

    return-void
.end method

.method public static synthetic r(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->m0(I)V

    return-void
.end method

.method private synthetic r0(Lcom/prineside/tdi2/BasicLevel$WaveQuest;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v0, v0, Lcom/prineside/tdi2/BasicLevel;->waveQuests:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->N0()V

    return-void
.end method

.method public static synthetic s(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/BasicLevel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->G0(Lcom/prineside/tdi2/BasicLevel;)V

    return-void
.end method

.method private synthetic s0(Lcom/prineside/tdi2/BasicLevel$WaveQuest;)V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    new-instance v1, Lcom/prineside/tdi2/ui/shared/r0;

    invoke-direct {v1, p0, p1}, Lcom/prineside/tdi2/ui/shared/r0;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/BasicLevel$WaveQuest;)V

    const-string p1, "Delete wave quest?"

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic t(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->D0()V

    return-void
.end method

.method private synthetic t0()V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "W:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v1, v1, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v5, v5, Lcom/prineside/tdi2/BasicLevel;->waveQuests:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v7, 0x1

    if-ge v3, v6, :cond_1

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->id:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    :try_start_0
    array-length v6, v5

    sub-int/2addr v6, v7

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    const/4 v5, 0x0

    :goto_1
    if-le v5, v4, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v4, v7

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    invoke-direct {v1, v2, v0, v7}, Lcom/prineside/tdi2/BasicLevel$WaveQuest;-><init>(Lcom/prineside/tdi2/BasicLevel;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v0, v0, Lcom/prineside/tdi2/BasicLevel;->waveQuests:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->N0()V

    return-void
.end method

.method public static synthetic u(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->t0()V

    return-void
.end method

.method private synthetic u0()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    new-instance v1, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$2;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$2;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v2, v2, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    const-string v3, "Map name"

    const-string v4, ""

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/prineside/tdi2/managers/UiManager;->getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic v(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->H0()V

    return-void
.end method

.method private synthetic v0(Lcom/prineside/tdi2/BasicLevelQuestConfig;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v0, v0, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->N0()V

    return-void
.end method

.method public static synthetic w(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->u0()V

    return-void
.end method

.method private synthetic w0(Lcom/prineside/tdi2/BasicLevelQuestConfig;)V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    new-instance v1, Lcom/prineside/tdi2/ui/shared/n0;

    invoke-direct {v1, p0, p1}, Lcom/prineside/tdi2/ui/shared/n0;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/BasicLevelQuestConfig;)V

    const-string p1, "Delete quest?"

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic x(Lcom/prineside/tdi2/BasicLevelQuestConfig;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->x0(Lcom/prineside/tdi2/BasicLevelQuestConfig;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic x0(Lcom/prineside/tdi2/BasicLevelQuestConfig;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->scripted:Z

    return-void
.end method

.method public static synthetic y(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/ItemStack;Lcom/prineside/tdi2/Item;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->V(Lcom/prineside/tdi2/ItemStack;Lcom/prineside/tdi2/Item;)V

    return-void
.end method

.method public static synthetic y0(Lcom/prineside/tdi2/BasicLevelQuestConfig;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/BasicLevelQuestConfig;->duringGame:Z

    return-void
.end method

.method public static synthetic z(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/badlogic/gdx/utils/Array;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->Y(Lcom/badlogic/gdx/utils/Array;I)V

    return-void
.end method

.method private synthetic z0()V
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Q:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v1, v1, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v5, v5, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v6, :cond_1

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/BasicLevelQuestConfig;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/prineside/tdi2/BasicLevelQuestConfig;->id:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    :try_start_0
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    const/4 v5, 0x0

    :goto_1
    if-le v5, v4, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/prineside/tdi2/BasicLevelQuestConfig;

    const/4 v7, 0x0

    sget-object v8, Lcom/prineside/tdi2/enums/StatisticsType;->PT:Lcom/prineside/tdi2/enums/StatisticsType;

    const-wide/16 v9, 0x168

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/prineside/tdi2/BasicLevelQuestConfig;-><init>(Ljava/lang/String;ZLcom/prineside/tdi2/enums/StatisticsType;JZLcom/prineside/tdi2/BasicLevel;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v1, v1, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->N0()V

    return-void
.end method


# virtual methods
.method public final I0(Lcom/badlogic/gdx/utils/Array;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Requirement;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-class v2, Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    iget v5, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/high16 v7, 0x42400000    # 48.0f

    if-ge v4, v5, :cond_8

    iget-object v5, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/Requirement;

    aget-object v5, v5, v4

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    const/high16 v11, 0x40800000    # 4.0f

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v12, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    sget-object v12, Lcom/prineside/tdi2/enums/RequirementType;->values:[Lcom/prineside/tdi2/enums/RequirementType;

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems([Ljava/lang/Object;)V

    iget-object v12, v5, Lcom/prineside/tdi2/Requirement;->type:Lcom/prineside/tdi2/enums/RequirementType;

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    new-instance v12, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$24;

    invoke-direct {v12, v0, v5, v10}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$24;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/Requirement;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    const/high16 v12, 0x437a0000    # 250.0f

    invoke-virtual {v10, v12, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v10, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "icon-times"

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v13

    new-instance v14, Lcom/prineside/tdi2/ui/shared/t0;

    invoke-direct {v14, v0, v1, v4}, Lcom/prineside/tdi2/ui/shared/t0;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/badlogic/gdx/utils/Array;I)V

    sget-object v15, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v16, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P400:Lcom/badlogic/gdx/graphics/Color;

    sget-object v17, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P700:Lcom/badlogic/gdx/graphics/Color;

    move-object v12, v10

    invoke-direct/range {v12 .. v17}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v12, 0x42000000    # 32.0f

    invoke-virtual {v10, v12, v12}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v12, 0x41000000    # 8.0f

    invoke-virtual {v10, v12, v12}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    sget-object v10, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$35;->a:[I

    iget-object v13, v5, Lcom/prineside/tdi2/Requirement;->type:Lcom/prineside/tdi2/enums/RequirementType;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v10, v10, v13

    const/high16 v13, 0x42800000    # 64.0f

    const/high16 v14, 0x42c80000    # 100.0f

    const-string v15, ""

    const/high16 v3, 0x43c80000    # 400.0f

    const/4 v12, 0x1

    if-eq v10, v12, :cond_7

    const/4 v12, 0x2

    const-string v6, "Stars"

    if-eq v10, v12, :cond_5

    const/4 v12, 0x3

    if-eq v10, v12, :cond_3

    const/4 v6, 0x4

    if-eq v10, v6, :cond_1

    const/4 v6, 0x5

    if-eq v10, v6, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v10, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    sget-object v10, Lcom/prineside/tdi2/enums/StatisticsType;->values:[Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems([Ljava/lang/Object;)V

    iget-object v10, v5, Lcom/prineside/tdi2/Requirement;->statisticsType:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    new-instance v10, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$32;

    invoke-direct {v10, v0, v5, v6}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$32;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/Requirement;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    invoke-virtual {v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6, v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v11, v5, Lcom/prineside/tdi2/Requirement;->statisticsValue:D

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v11, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v3, v6, v11}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    invoke-virtual {v3, v14, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const-string v6, "Value"

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setMessageText(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v11, 0x43480000    # 200.0f

    invoke-virtual {v6, v11, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v7, 0x40800000    # 4.0f

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v6, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$33;

    invoke-direct {v6, v0, v5, v3}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$33;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/Requirement;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    goto/16 :goto_4

    :cond_1
    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v11, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {v6, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    new-instance v11, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v11, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    const/4 v12, 0x0

    :goto_1
    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v13, v13, Lcom/prineside/tdi2/managers/BasicLevelManager;->levelsOrdered:Lcom/badlogic/gdx/utils/Array;

    iget v14, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v12, v14, :cond_2

    iget-object v13, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v13, [Lcom/prineside/tdi2/BasicLevel;

    aget-object v13, v13, v12

    iget-object v13, v13, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v11, v13}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v11, v5, Lcom/prineside/tdi2/Requirement;->openedLevelName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    new-instance v11, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$31;

    invoke-direct {v11, v0, v5, v6}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$31;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/Requirement;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto/16 :goto_4

    :cond_3
    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v12, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    new-instance v12, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v12, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    const/4 v10, 0x0

    :goto_2
    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v13, v13, Lcom/prineside/tdi2/managers/BasicLevelManager;->stagesOrdered:Lcom/badlogic/gdx/utils/Array;

    iget v14, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v10, v14, :cond_4

    iget-object v13, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v13, [Lcom/prineside/tdi2/BasicLevelStage;

    aget-object v13, v13, v10

    iget-object v13, v13, Lcom/prineside/tdi2/BasicLevelStage;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    const/high16 v14, 0x42c80000    # 100.0f

    goto :goto_2

    :cond_4
    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v10, v5, Lcom/prineside/tdi2/Requirement;->stageName:Ljava/lang/String;

    invoke-virtual {v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    new-instance v10, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$29;

    invoke-direct {v10, v0, v5, v11}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$29;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/Requirement;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    invoke-virtual {v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10, v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v10, 0x40800000    # 4.0f

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, v5, Lcom/prineside/tdi2/Requirement;->stageStars:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v3, v11, v12}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    const/high16 v11, 0x42800000    # 64.0f

    const/high16 v12, 0x42c80000    # 100.0f

    invoke-virtual {v3, v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setMessageText(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v11, 0x43480000    # 200.0f

    invoke-virtual {v6, v11, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v7, 0x40800000    # 4.0f

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v6, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$30;

    invoke-direct {v6, v0, v5, v3}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$30;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/Requirement;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    goto/16 :goto_4

    :cond_5
    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v12, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    new-instance v12, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v12, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    const/4 v13, 0x0

    :goto_3
    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v14, v14, Lcom/prineside/tdi2/managers/BasicLevelManager;->levelsOrdered:Lcom/badlogic/gdx/utils/Array;

    iget v10, v14, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v13, v10, :cond_6

    iget-object v10, v14, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v10, [Lcom/prineside/tdi2/BasicLevel;

    aget-object v10, v10, v13

    iget-object v10, v10, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v12, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v10, v5, Lcom/prineside/tdi2/Requirement;->levelName:Ljava/lang/String;

    invoke-virtual {v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    new-instance v10, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$27;

    invoke-direct {v10, v0, v5, v11}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$27;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/Requirement;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    invoke-virtual {v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10, v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v10, 0x40800000    # 4.0f

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, v5, Lcom/prineside/tdi2/Requirement;->levelStars:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v3, v11, v12}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    const/high16 v11, 0x42800000    # 64.0f

    const/high16 v12, 0x42c80000    # 100.0f

    invoke-virtual {v3, v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setMessageText(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v11, 0x43480000    # 200.0f

    invoke-virtual {v6, v11, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v7, 0x40800000    # 4.0f

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v6, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$28;

    invoke-direct {v6, v0, v5, v3}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$28;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/Requirement;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    goto :goto_4

    :cond_7
    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v11, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {v6, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    sget-object v11, Lcom/prineside/tdi2/enums/ResearchType;->values:[Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems([Ljava/lang/Object;)V

    iget-object v11, v5, Lcom/prineside/tdi2/Requirement;->researchType:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    new-instance v11, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$25;

    invoke-direct {v11, v0, v5, v6}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$25;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/Requirement;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6, v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v6, 0x40800000    # 4.0f

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v5, Lcom/prineside/tdi2/Requirement;->researchLevel:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v11, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v3, v6, v11}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    const/high16 v6, 0x42800000    # 64.0f

    const/high16 v11, 0x42c80000    # 100.0f

    invoke-virtual {v3, v11, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const-string v6, "Level"

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setMessageText(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v11, 0x43480000    # 200.0f

    invoke-virtual {v6, v11, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v7, 0x40800000    # 4.0f

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v6, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$26;

    invoke-direct {v6, v0, v5, v3}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$26;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/Requirement;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    :goto_4
    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_8
    new-instance v2, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    new-instance v4, Lcom/prineside/tdi2/ui/shared/u0;

    invoke-direct {v4, v0, v1}, Lcom/prineside/tdi2/ui/shared/u0;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/badlogic/gdx/utils/Array;)V

    const-string v1, "Add requirement"

    invoke-direct {v2, v1, v3, v4}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x43480000    # 200.0f

    invoke-virtual {v1, v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    return-void
.end method

.method public final J0(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 v0, 0x43c80000    # 400.0f

    const/high16 v1, 0x42400000    # 48.0f

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    return-void
.end method

.method public final K0()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    return-void
.end method

.method public final L0(Ljava/lang/String;ZLcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/LabelToggleButton;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/prineside/tdi2/ui/actors/LabelToggleButton;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->M0(ZLjava/lang/String;ZLcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    move-result-object p1

    return-object p1
.end method

.method public final M0(ZLjava/lang/String;ZLcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/LabelToggleButton;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Z",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/prineside/tdi2/ui/actors/LabelToggleButton;"
        }
    .end annotation

    new-instance v6, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    const/16 v3, 0x18

    const/high16 v4, 0x42000000    # 32.0f

    move-object v0, v6

    move-object v1, p2

    move v2, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFLcom/prineside/tdi2/utils/ObjectRetriever;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 p2, 0x42400000    # 48.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_0
    return-object v6
.end method

.method public final N0()V
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    if-nez v1, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/BasicLevelManager;->levelsOrdered:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/BasicLevel;

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->O0()V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42200000    # 40.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v5, v5, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x1e

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v5, 0x43480000    # 200.0f

    invoke-virtual {v3, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/high16 v6, 0x442f0000    # 700.0f

    invoke-virtual {v3, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "levels/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v9, v9, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".json"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    sget-object v7, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v7}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v7

    sget-object v10, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v7, v10, :cond_1

    sget-object v7, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v7}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v7

    sget-object v11, Lcom/badlogic/gdx/Application$ApplicationType;->HeadlessDesktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v7, v11, :cond_2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "levels/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v12, v12, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v7

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v11, v11, Lcom/prineside/tdi2/managers/BasicLevelManager;->defaultLevelNames:Lcom/badlogic/gdx/utils/Array;

    iget-object v12, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v12, v12, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v11, v12, v2}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v11

    const/16 v12, 0x15

    const/high16 v13, 0x41200000    # 10.0f

    if-eqz v11, :cond_3

    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v15, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v15

    const-string v2, "Default"

    invoke-direct {v14, v2, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v3, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_3
    new-instance v2, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v15, 0x18

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v14

    new-instance v8, Lcom/prineside/tdi2/ui/shared/y0;

    invoke-direct {v8, v0}, Lcom/prineside/tdi2/ui/shared/y0;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V

    const-string v12, "Clone"

    invoke-direct {v2, v12, v14, v8}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v8, 0x43160000    # 150.0f

    invoke-virtual {v2, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    if-eqz v7, :cond_5

    if-eqz v1, :cond_4

    new-instance v1, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    new-instance v7, Lcom/prineside/tdi2/ui/shared/v;

    invoke-direct {v7, v0}, Lcom/prineside/tdi2/ui/shared/v;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V

    const-string v12, "Reset configuration"

    invoke-direct {v1, v12, v2, v7}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto :goto_0

    :cond_4
    if-nez v11, :cond_5

    new-instance v1, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    new-instance v7, Lcom/prineside/tdi2/ui/shared/b0;

    invoke-direct {v7, v0}, Lcom/prineside/tdi2/ui/shared/b0;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V

    const-string v12, "Delete"

    invoke-direct {v1, v12, v2, v7}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_5
    :goto_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "levels/maps/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v7, v7, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v2}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v2

    if-eq v2, v10, :cond_6

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v2}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v2

    sget-object v7, Lcom/badlogic/gdx/Application$ApplicationType;->HeadlessDesktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v2, v7, :cond_7

    :cond_6
    const/4 v1, 0x0

    :cond_7
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "levels/maps/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v10, v10, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v11, :cond_8

    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    new-instance v1, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    new-instance v9, Lcom/prineside/tdi2/ui/shared/c0;

    invoke-direct {v9, v0}, Lcom/prineside/tdi2/ui/shared/c0;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V

    const-string v10, "Reset map"

    invoke-direct {v1, v10, v7, v9}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_8
    if-nez v11, :cond_9

    if-eqz v2, :cond_9

    new-instance v1, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    new-instance v7, Lcom/prineside/tdi2/ui/shared/d0;

    invoke-direct {v7, v0}, Lcom/prineside/tdi2/ui/shared/d0;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V

    const-string v9, "Delete (+map)"

    invoke-direct {v1, v9, v2, v7}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->K0()V

    const-string v1, "Stage"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->T(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    const-class v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/BasicLevelManager;->stagesOrdered:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/BasicLevelStage;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v7, Lcom/prineside/tdi2/BasicLevelStage;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/prineside/tdi2/BasicLevelStage;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_a
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems(Lcom/badlogic/gdx/utils/Array;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v3, v3, Lcom/prineside/tdi2/BasicLevel;->stageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v7, v7, Lcom/prineside/tdi2/BasicLevel;->stageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getStage(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevelStage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/BasicLevelStage;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    new-instance v2, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$3;

    invoke-direct {v2, v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$3;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->J0(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->K0()V

    const-string v1, "Position in stage"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->T(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v1, "Levels will be sorted by this value, higher = further in the list"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->hint(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget v1, v1, Lcom/prineside/tdi2/BasicLevel;->stagePosition:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/prineside/tdi2/ui/shared/e0;

    invoke-direct {v2, v0}, Lcom/prineside/tdi2/ui/shared/e0;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->textField(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->K0()V

    const-string v1, "Seed"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->T(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v1, "Random seed - enemy waves depend on it"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->hint(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget v1, v1, Lcom/prineside/tdi2/BasicLevel;->seed:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/prineside/tdi2/ui/shared/f0;

    invoke-direct {v2, v0}, Lcom/prineside/tdi2/ui/shared/f0;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->textField(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->K0()V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-boolean v1, v1, Lcom/prineside/tdi2/BasicLevel;->hasLeaderboards:Z

    new-instance v2, Lcom/prineside/tdi2/ui/shared/g0;

    invoke-direct {v2, v0}, Lcom/prineside/tdi2/ui/shared/g0;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V

    const-string v3, "Has leaderboards"

    invoke-virtual {v0, v3, v1, v2}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->L0(Ljava/lang/String;ZLcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    const-string v1, "Should the game send replays for this level to the server and show leaderboards?"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->hint(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->K0()V

    const-string v1, "Forced difficulty"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->T(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    const-class v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-static {}, Lcom/prineside/tdi2/enums/DifficultyMode;->values()[Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v3

    array-length v7, v3

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v7, :cond_b

    aget-object v10, v3, v9

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_b
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v2, v2, Lcom/prineside/tdi2/BasicLevel;->forcedDifficulty:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-nez v2, :cond_c

    const-string v2, "-"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    goto :goto_3

    :cond_c
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    :goto_3
    new-instance v2, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$4;

    invoke-direct {v2, v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$4;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->J0(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->K0()V

    const-string v1, "Fast forward frame"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->T(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v1, "Game will start the first wave and auto-run to this frame at start"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->hint(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget v1, v1, Lcom/prineside/tdi2/BasicLevel;->fastForwardFrame:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/prineside/tdi2/ui/shared/h0;

    invoke-direct {v2, v0}, Lcom/prineside/tdi2/ui/shared/h0;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->textField(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->K0()V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-boolean v1, v1, Lcom/prineside/tdi2/BasicLevel;->fixedQuests:Z

    new-instance v2, Lcom/prineside/tdi2/ui/shared/i0;

    invoke-direct {v2, v0}, Lcom/prineside/tdi2/ui/shared/i0;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V

    const-string v3, "Fixed quests"

    invoke-virtual {v0, v3, v1, v2}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->L0(Ljava/lang/String;ZLcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    const-string v1, "If enabled, quests prizes / difficulty will not be affected by research (for example, Prestige mode hard quests research)"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->hint(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->K0()V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-boolean v1, v1, Lcom/prineside/tdi2/BasicLevel;->isBonus:Z

    new-instance v2, Lcom/prineside/tdi2/ui/shared/z0;

    invoke-direct {v2, v0}, Lcom/prineside/tdi2/ui/shared/z0;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V

    const-string v3, "Bonus"

    invoke-virtual {v0, v3, v1, v2}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->L0(Ljava/lang/String;ZLcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    const-string v1, "Will mark this level as bonus one"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->hint(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->K0()V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-boolean v1, v1, Lcom/prineside/tdi2/BasicLevel;->customWaves:Z

    new-instance v2, Lcom/prineside/tdi2/ui/shared/a1;

    invoke-direct {v2, v0}, Lcom/prineside/tdi2/ui/shared/a1;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V

    const-string v3, "Custom waves"

    invoke-virtual {v0, v3, v1, v2}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->L0(Ljava/lang/String;ZLcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    const-string v1, "Level has custom (scripted) waves, wave timeline won\'t be available in level\'s menu"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->hint(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->K0()V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-boolean v1, v1, Lcom/prineside/tdi2/BasicLevel;->dailyQuest:Z

    new-instance v2, Lcom/prineside/tdi2/ui/shared/b1;

    invoke-direct {v2, v0}, Lcom/prineside/tdi2/ui/shared/b1;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V

    const-string v3, "Daily quest"

    invoke-virtual {v0, v3, v1, v2}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->L0(Ljava/lang/String;ZLcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    const-string v1, "Daily quest level names should start with \'DQ\'"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->hint(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->K0()V

    const-string v1, "Price in Green Papers"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->T(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget v1, v1, Lcom/prineside/tdi2/BasicLevel;->priceInMoney:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/prineside/tdi2/ui/shared/c1;

    invoke-direct {v2, v0}, Lcom/prineside/tdi2/ui/shared/c1;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->textField(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->K0()V

    const-string v1, "Price in Resources"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->T(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v13, v6, v13, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "blank"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    new-instance v7, Lcom/badlogic/gdx/graphics/Color;

    const v9, 0x3e0f5c29    # 0.14f

    invoke-direct {v7, v6, v6, v6, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v2, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v7, v2

    const/4 v10, 0x0

    :goto_4
    const/high16 v11, 0x43960000    # 300.0f

    const/high16 v12, 0x42400000    # 48.0f

    const/high16 v14, 0x41700000    # 15.0f

    const/high16 v5, 0x40800000    # 4.0f

    if-ge v10, v7, :cond_d

    aget-object v8, v2, v10

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/managers/ResourceManager;->getName(Lcom/prineside/tdi2/enums/ResourceType;)Ljava/lang/String;

    move-result-object v6

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v13, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v13

    invoke-direct {v9, v6, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/managers/ResourceManager;->getColor(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v6, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v9, v9, Lcom/prineside/tdi2/BasicLevel;->priceInResources:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v9, v9, v12

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iget-object v12, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v6, v9, v12}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    invoke-virtual {v6, v11, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9, v11, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v5, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$5;

    invoke-direct {v5, v0, v8, v6}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$5;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/enums/ResourceType;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    add-int/lit8 v10, v10, 0x1

    const/high16 v5, 0x43480000    # 200.0f

    const/4 v6, 0x0

    const/high16 v8, 0x43160000    # 150.0f

    const v9, 0x3e0f5c29    # 0.14f

    const/high16 v13, 0x41200000    # 10.0f

    goto :goto_4

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->K0()V

    const-string v1, "Difficulty milestones"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->T(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v1, "Wave numbers on which difficulty will start to grow significantly"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->hint(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/4 v6, 0x0

    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {v2, v7, v6, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    const/4 v2, 0x0

    :goto_5
    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v6, v6, Lcom/prineside/tdi2/BasicLevel;->difficultyMilestones:[I

    array-length v6, v6

    const/high16 v7, 0x41000000    # 8.0f

    if-ge v2, v6, :cond_e

    new-instance v6, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iget-object v8, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v8, v8, Lcom/prineside/tdi2/BasicLevel;->difficultyMilestones:[I

    aget v8, v8, v2

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v6, v8, v9}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    invoke-virtual {v6, v11, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8, v11, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v7, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$6;

    invoke-direct {v7, v0, v2, v6}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$6;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;ILcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->K0()V

    const-string v1, "Enemy waves"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->T(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v1, "Use fixed enemy waves configuration"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->hint(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/4 v6, 0x0

    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {v2, v8, v6, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v2, v2, Lcom/prineside/tdi2/BasicLevel;->enemyWaves:[Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;

    const-string v6, "icon-times"

    const-string v8, ""

    if-eqz v2, :cond_10

    array-length v10, v2

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_6
    if-ge v11, v10, :cond_10

    aget-object v7, v2, v11

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v15, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v15

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v9, 0x3e0f5c29    # 0.14f

    const/4 v14, 0x0

    invoke-direct {v5, v14, v14, v14, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v5

    invoke-virtual {v12, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v12, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    const/16 v14, 0xa

    invoke-virtual {v9, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    const/high16 v14, 0x41700000    # 15.0f

    invoke-virtual {v9, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    const/high16 v14, 0x41200000    # 10.0f

    invoke-virtual {v9, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    add-int/lit8 v14, v13, 0x1

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    move-object/from16 v16, v2

    const/16 v2, 0x1e

    invoke-virtual {v4, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    invoke-direct {v9, v15, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v4, 0x42000000    # 32.0f

    const/high16 v9, 0x42200000    # 40.0f

    invoke-virtual {v2, v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x15

    invoke-virtual {v4, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    new-instance v9, Lcom/prineside/tdi2/ui/shared/d1;

    invoke-direct {v9, v0, v13}, Lcom/prineside/tdi2/ui/shared/d1;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;I)V

    invoke-direct {v2, v8, v4, v9}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x42200000    # 40.0f

    const/high16 v22, 0x42200000    # 40.0f

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v22}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v13, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Lcom/badlogic/gdx/graphics/Color;->GRAY:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v4, v9, v13, v15}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v18

    const/high16 v19, 0x40800000    # 4.0f

    const/high16 v20, 0x40800000    # 4.0f

    const/high16 v21, 0x42000000    # 32.0f

    const/high16 v22, 0x42000000    # 32.0f

    invoke-virtual/range {v17 .. v22}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v4, 0x42200000    # 40.0f

    invoke-virtual {v2, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x15

    invoke-virtual {v5, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P600:Lcom/badlogic/gdx/graphics/Color;

    iput-object v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v9, "Type"

    invoke-direct {v5, v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v9, "Count"

    invoke-direct {v5, v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v9, "HP"

    invoke-direct {v5, v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v9, "Speed"

    invoke-direct {v5, v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v9, "Delay"

    invoke-direct {v5, v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v9, "Interval"

    invoke-direct {v5, v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v9, "Coins"

    invoke-direct {v5, v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v9, "Score"

    invoke-direct {v5, v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v9, "XP"

    invoke-direct {v5, v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-object v4, v7, Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;->enemyGroups:[Lcom/prineside/tdi2/EnemyGroup;

    array-length v5, v4

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_7
    if-ge v9, v5, :cond_f

    aget-object v15, v4, v9

    move-object/from16 v17, v4

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    move/from16 v18, v5

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    new-instance v5, Lcom/badlogic/gdx/utils/Array;

    move/from16 v19, v10

    sget-object v10, Lcom/prineside/tdi2/enums/EnemyType;->values:[Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {v5, v10}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v5, v15, Lcom/prineside/tdi2/EnemyGroup;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    new-instance v5, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$7;

    invoke-direct {v5, v0, v15, v4}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$7;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/EnemyGroup;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x43160000    # 150.0f

    const/high16 v10, 0x42200000    # 40.0f

    invoke-virtual {v4, v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v4, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iget v5, v15, Lcom/prineside/tdi2/EnemyGroup;->count:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v10, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v4, v5, v10}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    new-instance v5, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$8;

    invoke-direct {v5, v0, v15, v4}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$8;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/EnemyGroup;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x42700000    # 60.0f

    const/high16 v10, 0x42200000    # 40.0f

    invoke-virtual {v4, v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v4, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iget v5, v15, Lcom/prineside/tdi2/EnemyGroup;->health:F

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    iget-object v10, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v4, v5, v10}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    new-instance v5, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$9;

    invoke-direct {v5, v0, v15, v4}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$9;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/EnemyGroup;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v10, 0x42200000    # 40.0f

    invoke-virtual {v4, v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v4, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iget v5, v15, Lcom/prineside/tdi2/EnemyGroup;->speed:F

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    iget-object v10, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v4, v5, v10}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    new-instance v5, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$10;

    invoke-direct {v5, v0, v15, v4}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$10;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/EnemyGroup;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x42960000    # 75.0f

    const/high16 v10, 0x42200000    # 40.0f

    invoke-virtual {v4, v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v10, 0x40800000    # 4.0f

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v4, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iget v10, v15, Lcom/prineside/tdi2/EnemyGroup;->delay:F

    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v4, v10, v5}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    new-instance v5, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$11;

    invoke-direct {v5, v0, v15, v4}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$11;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/EnemyGroup;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x42960000    # 75.0f

    const/high16 v10, 0x42200000    # 40.0f

    invoke-virtual {v4, v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v4, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iget v5, v15, Lcom/prineside/tdi2/EnemyGroup;->interval:F

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    iget-object v10, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v4, v5, v10}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    new-instance v5, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$12;

    invoke-direct {v5, v0, v15, v4}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$12;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/EnemyGroup;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x42960000    # 75.0f

    const/high16 v10, 0x42200000    # 40.0f

    invoke-virtual {v4, v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v4, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iget v5, v15, Lcom/prineside/tdi2/EnemyGroup;->bounty:F

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    iget-object v10, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v4, v5, v10}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    new-instance v5, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$13;

    invoke-direct {v5, v0, v15, v4}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$13;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/EnemyGroup;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x42960000    # 75.0f

    const/high16 v10, 0x42200000    # 40.0f

    invoke-virtual {v4, v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v4, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iget v5, v15, Lcom/prineside/tdi2/EnemyGroup;->killScore:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v10, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v4, v5, v10}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    new-instance v5, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$14;

    invoke-direct {v5, v0, v15, v4}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$14;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/EnemyGroup;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x42960000    # 75.0f

    const/high16 v10, 0x42200000    # 40.0f

    invoke-virtual {v4, v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v4, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iget v5, v15, Lcom/prineside/tdi2/EnemyGroup;->killExp:F

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    iget-object v10, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v4, v5, v10}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    new-instance v5, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$15;

    invoke-direct {v5, v0, v15, v4}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$15;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/EnemyGroup;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x42960000    # 75.0f

    const/high16 v10, 0x42200000    # 40.0f

    invoke-virtual {v4, v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v4, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v10, 0x15

    invoke-virtual {v5, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    new-instance v10, Lcom/prineside/tdi2/ui/shared/q;

    invoke-direct {v10, v0, v7, v13}, Lcom/prineside/tdi2/ui/shared/q;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;I)V

    invoke-direct {v4, v8, v5, v10}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P600:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P400:Lcom/badlogic/gdx/graphics/Color;

    move/from16 v26, v14

    sget-object v14, Lcom/badlogic/gdx/graphics/Color;->GRAY:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v5, v10, v15, v14}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v21

    const/high16 v22, 0x40800000    # 4.0f

    const/high16 v23, 0x40800000    # 4.0f

    const/high16 v24, 0x42000000    # 32.0f

    const/high16 v25, 0x42000000    # 32.0f

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v25}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x42300000    # 44.0f

    const/high16 v10, 0x42200000    # 40.0f

    invoke-virtual {v4, v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    const/4 v4, 0x1

    add-int/2addr v13, v4

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v10, v19

    move/from16 v14, v26

    goto/16 :goto_7

    :cond_f
    move/from16 v19, v10

    move/from16 v26, v14

    new-instance v4, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x18

    invoke-virtual {v5, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    new-instance v9, Lcom/prineside/tdi2/ui/shared/r;

    invoke-direct {v9, v0, v7}, Lcom/prineside/tdi2/ui/shared/r;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;)V

    const-string v7, "Add group"

    invoke-direct {v4, v7, v5, v9}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x43160000    # 150.0f

    const/high16 v7, 0x42200000    # 40.0f

    invoke-virtual {v4, v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v7, 0x40800000    # 4.0f

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v16

    move/from16 v13, v26

    const/high16 v4, 0x42200000    # 40.0f

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v12, 0x42400000    # 48.0f

    const/high16 v14, 0x41700000    # 15.0f

    const/16 v15, 0x18

    goto/16 :goto_6

    :cond_10
    new-instance v1, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x18

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    new-instance v4, Lcom/prineside/tdi2/ui/shared/s;

    invoke-direct {v4, v0}, Lcom/prineside/tdi2/ui/shared/s;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V

    const-string v5, "Add wave"

    invoke-direct {v1, v5, v2, v4}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x42400000    # 48.0f

    const/high16 v4, 0x43480000    # 200.0f

    invoke-virtual {v1, v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->K0()V

    const-string v1, "Visibility requirements"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->T(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v1, v1, Lcom/prineside/tdi2/BasicLevel;->showRequirements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->I0(Lcom/badlogic/gdx/utils/Array;)V

    const-string v1, "Unlock requirements"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->T(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v1, v1, Lcom/prineside/tdi2/BasicLevel;->openRequirements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->I0(Lcom/badlogic/gdx/utils/Array;)V

    const-string v1, "Wave quests"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->T(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/4 v4, 0x0

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v2, v5, v4, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v2, v2, Lcom/prineside/tdi2/BasicLevel;->waveQuests:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/high16 v5, 0x435c0000    # 220.0f

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    new-instance v10, Lcom/badlogic/gdx/graphics/Color;

    const v11, 0x3e0f5c29    # 0.14f

    const/4 v12, 0x0

    invoke-direct {v10, v12, v12, v12, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/16 v10, 0xa

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v10, 0x41700000    # 15.0f

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v10, 0x41200000    # 10.0f

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iget-object v10, v4, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->id:Ljava/lang/String;

    iget-object v11, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v5, v10, v11}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    new-instance v10, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$16;

    invoke-direct {v10, v0, v4, v5}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$16;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/BasicLevel$WaveQuest;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v10, 0x43200000    # 160.0f

    const/high16 v11, 0x42200000    # 40.0f

    invoke-virtual {v5, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iget v10, v4, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->waves:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v5, v10, v11}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    new-instance v10, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$17;

    invoke-direct {v10, v0, v4, v5}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$17;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/BasicLevel$WaveQuest;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v10, 0x42600000    # 56.0f

    const/high16 v11, 0x42200000    # 40.0f

    invoke-virtual {v5, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v10, 0x40800000    # 4.0f

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v5, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v11, 0x15

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v10

    new-instance v11, Lcom/prineside/tdi2/ui/shared/t;

    invoke-direct {v11, v0, v4}, Lcom/prineside/tdi2/ui/shared/t;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/BasicLevel$WaveQuest;)V

    invoke-direct {v5, v8, v10, v11}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x42200000    # 40.0f

    const/high16 v21, 0x42200000    # 40.0f

    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v21}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v10, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v11, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v12, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v13, Lcom/badlogic/gdx/graphics/Color;->GRAY:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v10, v11, v12, v13}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v17

    const/high16 v18, 0x40800000    # 4.0f

    const/high16 v19, 0x40800000    # 4.0f

    const/high16 v20, 0x42000000    # 32.0f

    const/high16 v21, 0x42000000    # 32.0f

    invoke-virtual/range {v16 .. v21}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v9, 0x41200000    # 10.0f

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v9, 0x42200000    # 40.0f

    invoke-virtual {v5, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v4, v4, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->prizes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v5, v4}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->S(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/utils/Array;)V

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    goto/16 :goto_8

    :cond_11
    new-instance v1, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x18

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    new-instance v4, Lcom/prineside/tdi2/ui/shared/u;

    invoke-direct {v4, v0}, Lcom/prineside/tdi2/ui/shared/u;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V

    const-string v7, "Add wave quest"

    invoke-direct {v1, v7, v2, v4}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x42400000    # 48.0f

    const/high16 v4, 0x43480000    # 200.0f

    invoke-virtual {v1, v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->K0()V

    const-string v1, "Quests"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->T(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/4 v4, 0x0

    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {v2, v7, v4, v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-object v2, v2, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/BasicLevelQuestConfig;

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    new-instance v10, Lcom/badlogic/gdx/graphics/Color;

    const v11, 0x3e0f5c29    # 0.14f

    const/4 v12, 0x0

    invoke-direct {v10, v12, v12, v12, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    const/16 v13, 0xa

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    const/high16 v13, 0x41700000    # 15.0f

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    const/high16 v13, 0x41200000    # 10.0f

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v10, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iget-object v13, v4, Lcom/prineside/tdi2/BasicLevelQuestConfig;->id:Ljava/lang/String;

    iget-object v14, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v10, v13, v14}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    new-instance v13, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$18;

    invoke-direct {v13, v0, v4, v10}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$18;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/BasicLevelQuestConfig;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    const/high16 v13, 0x42200000    # 40.0f

    invoke-virtual {v10, v5, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v10, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v15, 0x15

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v14

    new-instance v5, Lcom/prineside/tdi2/ui/shared/w;

    invoke-direct {v5, v0, v4}, Lcom/prineside/tdi2/ui/shared/w;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/BasicLevelQuestConfig;)V

    invoke-direct {v10, v8, v14, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x42200000    # 40.0f

    const/high16 v21, 0x42200000    # 40.0f

    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v21}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v14, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v11, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v12, Lcom/badlogic/gdx/graphics/Color;->GRAY:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10, v5, v14, v11, v12}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v17

    const/high16 v18, 0x40800000    # 4.0f

    const/high16 v19, 0x40800000    # 4.0f

    const/high16 v20, 0x42000000    # 32.0f

    const/high16 v21, 0x42000000    # 32.0f

    invoke-virtual/range {v16 .. v21}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v9, 0x41200000    # 10.0f

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v10, 0x42200000    # 40.0f

    invoke-virtual {v5, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    const/high16 v11, 0x41700000    # 15.0f

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-boolean v10, v4, Lcom/prineside/tdi2/BasicLevelQuestConfig;->scripted:Z

    new-instance v11, Lcom/prineside/tdi2/ui/shared/x;

    invoke-direct {v11, v4}, Lcom/prineside/tdi2/ui/shared/x;-><init>(Lcom/prineside/tdi2/BasicLevelQuestConfig;)V

    const-string v12, "Scripted"

    const/4 v14, 0x0

    invoke-virtual {v0, v14, v12, v10, v11}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->M0(ZLjava/lang/String;ZLcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-boolean v10, v4, Lcom/prineside/tdi2/BasicLevelQuestConfig;->duringGame:Z

    new-instance v11, Lcom/prineside/tdi2/ui/shared/y;

    invoke-direct {v11, v4}, Lcom/prineside/tdi2/ui/shared/y;-><init>(Lcom/prineside/tdi2/BasicLevelQuestConfig;)V

    const-string v12, "One game"

    invoke-virtual {v0, v14, v12, v10, v11}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->M0(ZLjava/lang/String;ZLcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    const/high16 v11, 0x41700000    # 15.0f

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v10, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iget-object v11, v4, Lcom/prineside/tdi2/BasicLevelQuestConfig;->scriptedTitle:Ljava/lang/String;

    if-nez v11, :cond_12

    move-object v11, v8

    :cond_12
    iget-object v12, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v10, v11, v12}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    new-instance v11, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$19;

    invoke-direct {v11, v0, v10, v4}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$19;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;Lcom/prineside/tdi2/BasicLevelQuestConfig;)V

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    const-string v11, "Scripted alias"

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setMessageText(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    const/high16 v11, 0x41700000    # 15.0f

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    const/high16 v11, 0x43820000    # 260.0f

    const/high16 v12, 0x42200000    # 40.0f

    invoke-virtual {v10, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v11, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    new-instance v11, Lcom/badlogic/gdx/utils/Array;

    sget-object v12, Lcom/prineside/tdi2/enums/StatisticsType;->values:[Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-direct {v11, v12}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v11, v4, Lcom/prineside/tdi2/BasicLevelQuestConfig;->statisticsType:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    new-instance v11, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$20;

    invoke-direct {v11, v0, v4, v10}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$20;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/BasicLevelQuestConfig;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    const/high16 v11, 0x43aa0000    # 340.0f

    const/high16 v12, 0x42200000    # 40.0f

    invoke-virtual {v10, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v10, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iget-wide v13, v4, Lcom/prineside/tdi2/BasicLevelQuestConfig;->requiredValue:J

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    iget-object v13, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v10, v11, v13}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    new-instance v11, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$21;

    invoke-direct {v11, v0, v4, v10}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$21;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/BasicLevelQuestConfig;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    const/high16 v11, 0x43200000    # 160.0f

    invoke-virtual {v10, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    const/high16 v11, 0x41700000    # 15.0f

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    const/high16 v10, 0x41200000    # 10.0f

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v4, v4, Lcom/prineside/tdi2/BasicLevelQuestConfig;->prizes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v9, v4}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->S(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/utils/Array;)V

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v7, 0x40800000    # 4.0f

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    const/high16 v5, 0x435c0000    # 220.0f

    goto/16 :goto_9

    :cond_13
    new-instance v1, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    new-instance v3, Lcom/prineside/tdi2/ui/shared/z;

    invoke-direct {v3, v0}, Lcom/prineside/tdi2/ui/shared/z;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V

    const-string v4, "Add quest"

    invoke-direct {v1, v4, v2, v3}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x42400000    # 48.0f

    const/high16 v3, 0x43480000    # 200.0f

    invoke-virtual {v1, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->K0()V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    return-void
.end method

.method public final O0()V
    .locals 11

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BasicLevelManager;->stagesOrdered:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x42400000    # 48.0f

    const/16 v4, 0x18

    const/high16 v5, 0x43700000    # 240.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/BasicLevelStage;

    invoke-virtual {v1}, Lcom/prineside/tdi2/BasicLevelStage;->sortLevels()V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/prineside/tdi2/BasicLevelStage;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/prineside/tdi2/BasicLevelStage;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v10, 0x15

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v8, 0x3f0f5c29    # 0.56f

    invoke-virtual {v7, v6, v6, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/4 v6, 0x1

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v6, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-virtual {v6, v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v7, 0x40800000    # 4.0f

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-object v1, v1, Lcom/prineside/tdi2/BasicLevelStage;->levels:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/BasicLevel;

    new-instance v7, Lcom/prineside/tdi2/ui/actors/RectButton;

    iget-object v8, v6, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    new-instance v10, Lcom/prineside/tdi2/ui/shared/l0;

    invoke-direct {v10, p0, v6}, Lcom/prineside/tdi2/ui/shared/l0;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/BasicLevel;)V

    invoke-direct {v7, v8, v9, v10}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iget-object v8, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    if-ne v8, v6, :cond_1

    sget-object v6, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sget-object v8, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v6, v6, v6, v8}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/4 v6, 0x0

    invoke-virtual {v7, v6}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    :cond_1
    sget-object v6, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v6, v6, v6, v6}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconLabelColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v6, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6, v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v1

    new-instance v4, Lcom/prineside/tdi2/ui/shared/w0;

    invoke-direct {v4, p0}, Lcom/prineside/tdi2/ui/shared/w0;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V

    const-string v7, "Add level"

    invoke-direct {v0, v7, v1, v4}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconLabelColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v8, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P700:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v4, v7, v8, v1}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x42c00000    # 96.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-void
.end method

.method public final S(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/utils/Array;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Table;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/high16 v6, 0x42c00000    # 96.0f

    const/16 v7, 0x18

    const-string v8, ""

    const/4 v9, 0x0

    if-ge v4, v5, :cond_0

    iget-object v5, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/ItemStack;

    aget-object v5, v5, v4

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v10, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v11

    const/high16 v12, 0x43100000    # 144.0f

    invoke-virtual {v11, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v6, Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-direct {v6}, Lcom/prineside/tdi2/ui/actors/ItemCell;-><init>()V

    invoke-virtual {v6}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setCompact()V

    invoke-virtual {v6, v4, v3}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setColRow(II)V

    invoke-virtual {v5}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v11

    invoke-virtual {v6, v11, v3}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setItem(Lcom/prineside/tdi2/Item;I)V

    const/high16 v11, 0x42000000    # 32.0f

    invoke-virtual {v6, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    new-instance v9, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$22;

    invoke-direct {v9, v0, v5}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$22;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/ItemStack;)V

    invoke-virtual {v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v10, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual {v5}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iget-object v11, v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v6, v9, v11}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    const/high16 v9, 0x42b80000    # 92.0f

    const/high16 v11, 0x41f00000    # 30.0f

    invoke-virtual {v6, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v9, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$23;

    invoke-direct {v9, v0, v5, v6}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$23;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/ItemStack;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v10, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    new-instance v9, Lcom/prineside/tdi2/ui/shared/p0;

    invoke-direct {v9, v0, v2, v5}, Lcom/prineside/tdi2/ui/shared/p0;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/ItemStack;)V

    invoke-direct {v6, v8, v7, v9}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "blank"

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x42000000    # 32.0f

    const/high16 v17, 0x42000000    # 32.0f

    move-object v12, v6

    invoke-virtual/range {v12 .. v17}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v8, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Lcom/badlogic/gdx/graphics/Color;->GRAY:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "icon-times"

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v13

    const/high16 v14, 0x40400000    # 3.0f

    const/high16 v15, 0x40400000    # 3.0f

    const/high16 v16, 0x41c00000    # 24.0f

    const/high16 v17, 0x41c00000    # 24.0f

    invoke-virtual/range {v12 .. v17}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v6, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v5, 0x42840000    # 66.0f

    const/high16 v7, 0x42e00000    # 112.0f

    invoke-virtual {v6, v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v10, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_0
    new-instance v3, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    new-instance v5, Lcom/prineside/tdi2/ui/shared/q0;

    invoke-direct {v5, v0, v2}, Lcom/prineside/tdi2/ui/shared/q0;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/badlogic/gdx/utils/Array;)V

    invoke-direct {v3, v8, v4, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    const-string v2, "item-cell-a-shape"

    goto :goto_1

    :cond_1
    const-string v2, "item-cell-b-shape"

    :goto_1
    invoke-virtual {v4, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x42c00000    # 96.0f

    const/high16 v15, 0x42d20000    # 105.0f

    move-object v10, v3

    invoke-virtual/range {v10 .. v15}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x3e8f5c29    # 0.28f

    invoke-direct {v2, v9, v9, v9, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x3f0f5c29    # 0.56f

    invoke-direct {v4, v9, v9, v9, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v7, 0x3e0f5c29    # 0.14f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v5, v13, v13, v13, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->GRAY:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v2, v4, v5, v7}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "icon-plus"

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    const/high16 v9, 0x42000000    # 32.0f

    const/high16 v10, 0x42120000    # 36.5f

    const/high16 v11, 0x42000000    # 32.0f

    const/high16 v12, 0x42000000    # 32.0f

    move-object v7, v3

    invoke-virtual/range {v7 .. v12}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x42d20000    # 105.0f

    invoke-virtual {v2, v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-void
.end method

.method public final T(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 v1, 0x41200000    # 10.0f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    return-object v0
.end method

.method public hide()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->darkOverlay:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    const-string v1, "ItemCreationOverlay"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->removeCaller(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->unfocusAll()V

    return-void
.end method

.method public hint(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 p1, 0x3f800000    # 1.0f

    const v1, 0x3f0f5c29    # 0.56f

    invoke-virtual {v0, p1, p1, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 v1, -0x3f400000    # -6.0f

    const/4 v2, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p1, v1, v2, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 v1, 0x44610000    # 900.0f

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    return-object v0
.end method

.method public show()V
    .locals 5

    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->isDeveloperModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    const-string v1, "Developer mode research required"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->darkOverlay:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    iget v1, v1, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->zIndex:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-instance v3, Lcom/prineside/tdi2/ui/shared/a0;

    invoke-direct {v3, p0}, Lcom/prineside/tdi2/ui/shared/a0;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;)V

    const-string v4, "ItemCreationOverlay"

    invoke-virtual {v0, v4, v1, v3}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->addCaller(Ljava/lang/String;ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public show(Lcom/prineside/tdi2/BasicLevel;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->b:Lcom/prineside/tdi2/BasicLevel;

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->N0()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->show()V

    return-void
.end method

.method public textField(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;"
        }
    .end annotation

    new-instance v0, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v0, p1, v1}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    const/high16 p1, 0x43c80000    # 400.0f

    const/high16 v1, 0x42800000    # 64.0f

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 v1, 0x43960000    # 300.0f

    const/high16 v2, 0x42400000    # 48.0f

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance p1, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$34;

    invoke-direct {p1, p0, p2, v0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor$34;-><init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/utils/ObjectRetriever;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    return-object v0
.end method
