.class public Lcom/prineside/tdi2/ui/shared/CameraTools;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;
    }
.end annotation


# instance fields
.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public b:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/UiManager$UiLayer;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public d:Lcom/badlogic/gdx/math/Vector2;

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public l:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

.field public m:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

.field public n:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public p:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public q:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public r:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public s:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public t:I

.field public u:[Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

.field public v:Z

.field public w:Z

.field public x:I


# direct methods
.method public constructor <init>()V
    .locals 27

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v2, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->OVERLAY:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v3, 0x232a

    const-string v4, "DeveloperConsole camera tools"

    invoke-virtual {v0, v2, v3, v4}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    iput-object v0, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    const-class v3, Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v2, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->b:Lcom/badlogic/gdx/utils/Array;

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v2, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->d:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v2, 0x43960000    # 300.0f

    iput v2, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->e:F

    const/high16 v2, 0x42c80000    # 100.0f

    iput v2, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->f:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->g:F

    const/high16 v4, 0x42480000    # 50.0f

    iput v4, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->h:F

    const/16 v4, 0x9

    new-array v4, v4, [Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    iput-object v4, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->u:[Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->w:Z

    const/4 v5, 0x0

    iput v5, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->x:I

    sget-object v6, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v7, Lcom/prineside/tdi2/ui/shared/CameraTools$1;

    invoke-direct {v7, v1}, Lcom/prineside/tdi2/ui/shared/CameraTools$1;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;)V

    invoke-interface {v6, v7}, Lcom/badlogic/gdx/Application;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x15

    invoke-virtual {v7, v14, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(IZ)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v9

    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

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

    sget-object v15, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v12

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    sget-object v13, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v16

    move-object v8, v6

    move-object v10, v7

    move-object v2, v13

    move-object/from16 v13, v16

    invoke-direct/range {v8 .. v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v6, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->cursor:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-interface {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setMinWidth(F)V

    iget-object v6, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v9

    const/high16 v10, 0x40a00000    # 5.0f

    add-float/2addr v9, v10

    invoke-interface {v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setLeftWidth(F)V

    iget-object v6, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v9

    add-float/2addr v9, v10

    invoke-interface {v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setRightWidth(F)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v9

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v12, "blank"

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    sget-object v13, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v11

    invoke-direct {v6, v9, v7, v7, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v9, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v11

    add-float/2addr v11, v10

    invoke-interface {v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setLeftWidth(F)V

    iget-object v9, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v11

    add-float/2addr v11, v10

    invoke-interface {v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setRightWidth(F)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v11, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v16

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v18

    new-instance v19, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v22

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    new-instance v11, Lcom/badlogic/gdx/graphics/Color;

    const/4 v13, 0x0

    const v3, 0x3e8f5c29    # 0.28f

    invoke-direct {v11, v13, v13, v13, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v23

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v24

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    new-instance v11, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v11, v13, v13, v13, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v25

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v26

    move-object/from16 v21, v19

    invoke-direct/range {v21 .. v26}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    move-object v2, v15

    move-object v15, v9

    move-object/from16 v17, v7

    move-object/from16 v20, v6

    invoke-direct/range {v15 .. v20}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V

    iput-object v9, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v6, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v9

    const/high16 v11, 0x41200000    # 10.0f

    add-float/2addr v9, v11

    invoke-interface {v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setLeftWidth(F)V

    iget-object v6, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v9

    add-float/2addr v9, v11

    invoke-interface {v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setRightWidth(F)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    new-instance v15, Lcom/badlogic/gdx/graphics/Color;

    const v8, 0x263238dd

    invoke-direct {v15, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v9, v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    const/high16 v9, 0x44480000    # 800.0f

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v15

    invoke-virtual {v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v15

    invoke-virtual {v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v15

    invoke-virtual {v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    const-string v5, "UI layers"

    invoke-direct {v15, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v9, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v4, Lcom/prineside/tdi2/ui/actors/LabelButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    new-instance v15, Lcom/prineside/tdi2/ui/shared/CameraTools$2;

    invoke-direct {v15, v1}, Lcom/prineside/tdi2/ui/shared/CameraTools$2;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;)V

    const-string v14, "Toggle all"

    invoke-direct {v4, v14, v5, v15}, Lcom/prineside/tdi2/ui/actors/LabelButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    new-instance v9, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v9, v13, v13, v13, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v6, 0x437a0000    # 250.0f

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v5, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v6, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getScrollPaneStyle(F)Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    move-result-object v9

    invoke-direct {v5, v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollingDisabled(ZZ)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x15

    invoke-virtual {v5, v6, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(IZ)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v16

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v19

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    const v9, 0x3f0f5c29    # 0.56f

    invoke-direct {v6, v13, v13, v13, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v20

    move-object v15, v4

    move-object/from16 v18, v5

    invoke-direct/range {v15 .. v20}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v2, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->cursor:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-interface {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setMinWidth(F)V

    iget-object v2, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v5

    add-float/2addr v5, v10

    invoke-interface {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setLeftWidth(F)V

    iget-object v2, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v5

    add-float/2addr v5, v10

    invoke-interface {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setRightWidth(F)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x18

    invoke-virtual {v7, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    const-string v14, "Cam controller"

    invoke-direct {v6, v14, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    new-instance v7, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v13, v13, v13, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    const-string v6, "Max velocity"

    invoke-direct {v3, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5, v5, v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iget v5, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->e:F

    mul-float v5, v5, v11

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v11

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    new-instance v5, Lcom/prineside/tdi2/ui/shared/CameraTools$3;

    invoke-direct {v5, v1, v3}, Lcom/prineside/tdi2/ui/shared/CameraTools$3;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x42f00000    # 120.0f

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v10, 0x15

    invoke-virtual {v7, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    const-string v10, "Acceleration"

    invoke-direct {v3, v10, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v7, v7, v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iget v7, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->f:F

    mul-float v7, v7, v11

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v11

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v4}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    new-instance v7, Lcom/prineside/tdi2/ui/shared/CameraTools$4;

    invoke-direct {v7, v1, v3}, Lcom/prineside/tdi2/ui/shared/CameraTools$4;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v10, 0x15

    invoke-virtual {v7, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    const-string v10, "Decay"

    invoke-direct {v3, v10, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v7, v7, v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iget v7, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->f:F

    mul-float v7, v7, v11

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v11

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v4}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    new-instance v7, Lcom/prineside/tdi2/ui/shared/CameraTools$5;

    invoke-direct {v7, v1, v3}, Lcom/prineside/tdi2/ui/shared/CameraTools$5;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v10, 0x15

    invoke-virtual {v7, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    const-string v10, "Zoom speed"

    invoke-direct {v3, v10, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v7, v7, v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iget v7, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->g:F

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float v7, v7, v10

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v4}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    new-instance v4, Lcom/prineside/tdi2/ui/shared/CameraTools$6;

    invoke-direct {v4, v1, v3}, Lcom/prineside/tdi2/ui/shared/CameraTools$6;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    const-string v5, "pos"

    invoke-direct {v3, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v4, v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v3, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v3, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x15

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    const-string v6, "zoom"

    invoke-direct {v3, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v4, v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x15

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v3, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    const-string v7, "velocity"

    invoke-direct {v3, v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v4, v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v3, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v3, Lcom/prineside/tdi2/ui/actors/LabelButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    new-instance v5, Lcom/prineside/tdi2/ui/shared/CameraTools$7;

    invoke-direct {v5, v1}, Lcom/prineside/tdi2/ui/shared/CameraTools$7;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;)V

    const-string v6, "Stop"

    invoke-direct {v3, v6, v4, v5}, Lcom/prineside/tdi2/ui/actors/LabelButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v2, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v2, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    const-string v2, "cameraTools"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    const-string v2, "selectedScenarioIdx"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->t:I

    const-string v2, "loopScenario"

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->v:Z

    const-string v2, "drawScenarioOnMap"

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->w:Z

    const-string v2, "loadedScenarios"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;

    :try_start_0
    const-string v3, "idx"

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "scenario"

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    move-result-object v0

    iget-object v4, v1, Lcom/prineside/tdi2/ui/shared/CameraTools;->u:[Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    aput-object v0, v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "CameraTools"

    const-string v4, "failed to load scenario"

    invoke-static {v3, v4, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->update()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/shared/CameraTools;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->y()V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/shared/CameraTools;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->b:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/ui/shared/CameraTools;)[Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->u:[Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    return-object p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/shared/CameraTools;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->t:I

    return p0
.end method

.method public static synthetic e(Lcom/prineside/tdi2/ui/shared/CameraTools;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->A()V

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/ui/shared/CameraTools;)Lcom/prineside/tdi2/CameraController;
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->w()Lcom/prineside/tdi2/CameraController;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/prineside/tdi2/ui/shared/CameraTools;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->x:I

    return p0
.end method

.method public static synthetic h(Lcom/prineside/tdi2/ui/shared/CameraTools;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->x:I

    return p1
.end method

.method public static synthetic i(Lcom/prineside/tdi2/ui/shared/CameraTools;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->B()V

    return-void
.end method

.method public static synthetic j(Lcom/prineside/tdi2/ui/shared/CameraTools;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    return-object p0
.end method

.method public static synthetic k(Lcom/prineside/tdi2/ui/shared/CameraTools;)F
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->e:F

    return p0
.end method

.method public static synthetic l(Lcom/prineside/tdi2/ui/shared/CameraTools;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->e:F

    return p1
.end method

.method public static synthetic m(Lcom/prineside/tdi2/ui/shared/CameraTools;)F
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->f:F

    return p0
.end method

.method public static synthetic n(Lcom/prineside/tdi2/ui/shared/CameraTools;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->f:F

    return p1
.end method

.method public static synthetic o(Lcom/prineside/tdi2/ui/shared/CameraTools;)F
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->h:F

    return p0
.end method

.method public static synthetic p(Lcom/prineside/tdi2/ui/shared/CameraTools;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->h:F

    return p1
.end method

.method public static synthetic q(Lcom/prineside/tdi2/ui/shared/CameraTools;)F
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->g:F

    return p0
.end method

.method public static synthetic r(Lcom/prineside/tdi2/ui/shared/CameraTools;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->g:F

    return p1
.end method

.method public static synthetic s(Lcom/prineside/tdi2/ui/shared/CameraTools;)Lcom/badlogic/gdx/math/Vector2;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->d:Lcom/badlogic/gdx/math/Vector2;

    return-object p0
.end method

.method public static synthetic t(Lcom/prineside/tdi2/ui/shared/CameraTools;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->v:Z

    return p0
.end method

.method public static synthetic u(Lcom/prineside/tdi2/ui/shared/CameraTools;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->v:Z

    return p1
.end method

.method public static synthetic v(Lcom/prineside/tdi2/ui/shared/CameraTools;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->w:Z

    return p1
.end method


# virtual methods
.method public final A()V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->getSelectedScenario()Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget v2, v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->length:I

    mul-int/lit8 v2, v2, 0x10

    const/16 v4, 0x302

    if-ge v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    int-to-float v6, v4

    const/high16 v7, 0x42f00000    # 120.0f

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    const/4 v5, 0x0

    :goto_1
    iget v7, v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->length:I

    const/high16 v8, 0x42c00000    # 96.0f

    const v9, 0x3f0f5c29    # 0.56f

    const/16 v10, 0x15

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v12, 0x1

    const/high16 v13, 0x41c00000    # 24.0f

    const/high16 v14, 0x3f800000    # 1.0f

    if-gt v5, v7, :cond_1

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    invoke-direct {v7, v15, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v7, v14, v14, v14, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    mul-int/lit8 v3, v5, 0x10

    int-to-float v3, v3

    sub-float/2addr v3, v14

    invoke-virtual {v7, v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v7, v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v7, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget v3, v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->fps:I

    add-int/2addr v5, v3

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_2
    const/4 v5, 0x3

    const v7, 0x3e0f5c29    # 0.14f

    const v15, 0x3e8f5c29    # 0.28f

    const-string v8, "blank"

    const/4 v12, 0x0

    if-ge v3, v5, :cond_3

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    rem-int/lit8 v8, v3, 0x2

    if-nez v8, :cond_2

    invoke-virtual {v5, v12, v12, v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    goto :goto_3

    :cond_2
    invoke-virtual {v5, v12, v12, v12, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :goto_3
    invoke-virtual {v5, v6, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    rsub-int/lit8 v7, v3, 0x2

    mul-int/lit8 v7, v7, 0x18

    add-int/lit8 v7, v7, 0x18

    int-to-float v7, v7

    invoke-virtual {v5, v12, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v3, v3, 0x1

    const/high16 v8, 0x42c00000    # 96.0f

    const v9, 0x3f0f5c29    # 0.56f

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    iget v3, v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->startFrame:I

    const/high16 v5, 0x42900000    # 72.0f

    if-eqz v3, :cond_4

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget v6, v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->startFrame:I

    mul-int/lit8 v6, v6, 0x10

    int-to-float v6, v6

    invoke-virtual {v3, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v3, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v3, v12, v12, v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_4
    if-le v4, v2, :cond_5

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sub-int/2addr v4, v2

    int-to-float v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    int-to-float v2, v2

    invoke-virtual {v3, v2, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v3, v12, v12, v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_5
    const/4 v2, 0x0

    :goto_4
    iget v3, v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->length:I

    if-gt v2, v3, :cond_6

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v3, v14, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    mul-int/lit8 v4, v2, 0x10

    int-to-float v4, v4

    invoke-virtual {v3, v4, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v4, 0x3d8f5c29    # 0.07f

    invoke-virtual {v3, v14, v14, v14, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_5
    iget v3, v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->length:I

    if-gt v2, v3, :cond_7

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v3, v11, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    mul-int/lit8 v4, v2, 0x10

    int-to-float v4, v4

    invoke-virtual {v3, v4, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v3, v14, v14, v14, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget v3, v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->fps:I

    div-int v3, v2, v3

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ":"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    invoke-direct {v6, v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v3, 0x3f0f5c29    # 0.56f

    invoke-virtual {v6, v14, v14, v14, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    sub-float/2addr v4, v14

    invoke-virtual {v6, v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v6, v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget v6, v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->fps:I

    add-int/2addr v2, v6

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_6
    iget-object v3, v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->keyframes:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_b

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    aget-object v3, v3, v2

    iget v4, v3, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->x:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    const/high16 v6, 0x40c00000    # 6.0f

    const-string v7, "small-circle"

    const/high16 v9, 0x41400000    # 12.0f

    if-nez v4, :cond_8

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v10, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v4, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget v10, v3, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->frame:I

    mul-int/lit8 v10, v10, 0x10

    int-to-float v10, v10

    sub-float/2addr v10, v6

    const/high16 v13, 0x42980000    # 76.0f

    invoke-virtual {v4, v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v10, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_8
    iget v4, v3, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->y:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_9

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v10, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v4, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget v10, v3, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->frame:I

    mul-int/lit8 v10, v10, 0x10

    int-to-float v10, v10

    sub-float/2addr v10, v6

    const/high16 v13, 0x42500000    # 52.0f

    invoke-virtual {v4, v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v10, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_9
    iget v4, v3, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->z:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_a

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v7, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v4, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget v3, v3, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->frame:I

    mul-int/lit8 v3, v3, 0x10

    int-to-float v3, v3

    sub-float/2addr v3, v6

    const/high16 v6, 0x41e00000    # 28.0f

    invoke-virtual {v4, v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_b
    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    new-instance v3, Lcom/prineside/tdi2/ui/shared/CameraTools$21;

    invoke-direct {v3, v0}, Lcom/prineside/tdi2/ui/shared/CameraTools$21;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget v2, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->x:I

    if-gez v2, :cond_c

    const/4 v3, 0x0

    iput v3, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->x:I

    goto :goto_7

    :cond_c
    iget v1, v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->length:I

    if-le v2, v1, :cond_d

    iput v1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->x:I

    :cond_d
    :goto_7
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v2, 0x42c00000    # 96.0f

    invoke-virtual {v1, v11, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const v2, 0x3f47ae14    # 0.78f

    invoke-virtual {v1, v12, v14, v14, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->z()V

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    :goto_8
    return-void
.end method

.method public final B()V
    .locals 26

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->getSelectedScenario()Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Frame: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    new-instance v8, Lcom/prineside/tdi2/ui/shared/CameraTools$22;

    invoke-direct {v8, v0, v1}, Lcom/prineside/tdi2/ui/shared/CameraTools$22;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;)V

    const-string v9, "Clear"

    invoke-direct {v3, v9, v7, v8}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v7, 0x42c00000    # 96.0f

    invoke-virtual {v3, v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    new-instance v10, Lcom/prineside/tdi2/ui/shared/CameraTools$23;

    invoke-direct {v10, v0, v1}, Lcom/prineside/tdi2/ui/shared/CameraTools$23;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;)V

    const-string v11, "Cam -> Frame"

    invoke-direct {v3, v11, v9, v10}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v9, 0x43200000    # 160.0f

    invoke-virtual {v3, v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    new-instance v10, Lcom/prineside/tdi2/ui/shared/CameraTools$24;

    invoke-direct {v10, v0}, Lcom/prineside/tdi2/ui/shared/CameraTools$24;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;)V

    const-string v11, "Frame -> Cam (calculate)"

    invoke-direct {v3, v11, v9, v10}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v9, 0x43800000    # 256.0f

    invoke-virtual {v3, v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget v2, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->x:I

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->getKeyframe(I)Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    move-result-object v2

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v10, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v10, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    const/high16 v11, 0x41000000    # 8.0f

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v12

    const-string v13, "x"

    invoke-direct {v10, v13, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v12, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    const/4 v13, 0x0

    if-eqz v2, :cond_1

    iget v14, v2, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->x:F

    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-eqz v14, :cond_0

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v14, 0x1

    :goto_1
    new-instance v15, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    const-string v20, ""

    if-eqz v14, :cond_2

    move-object/from16 v14, v20

    goto :goto_2

    :cond_2
    iget v14, v2, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->x:F

    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v14

    :goto_2
    iget-object v10, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v15, v14, v10}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    new-instance v10, Lcom/prineside/tdi2/ui/shared/CameraTools$25;

    invoke-direct {v10, v0, v1, v15}, Lcom/prineside/tdi2/ui/shared/CameraTools$25;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v15, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v3, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10, v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v10, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v15, "icon-times"

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v16

    new-instance v14, Lcom/prineside/tdi2/ui/shared/CameraTools$26;

    invoke-direct {v14, v0, v1}, Lcom/prineside/tdi2/ui/shared/CameraTools$26;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;)V

    sget-object v21, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v22, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v17, v14

    move-object v14, v10

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v12

    move-object/from16 v19, v22

    invoke-direct/range {v14 .. v19}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v15, 0x40800000    # 4.0f

    invoke-virtual {v10, v15, v15}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v10, v8, v8}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    if-eqz v2, :cond_3

    iget-object v10, v2, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iX:Lcom/prineside/tdi2/enums/InterpolationType;

    if-nez v10, :cond_4

    :cond_3
    sget-object v10, Lcom/prineside/tdi2/enums/InterpolationType;->linear:Lcom/prineside/tdi2/enums/InterpolationType;

    :cond_4
    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {v14, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    sget-object v7, Lcom/prineside/tdi2/enums/InterpolationType;->values:[Lcom/prineside/tdi2/enums/InterpolationType;

    invoke-virtual {v14, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems([Ljava/lang/Object;)V

    invoke-virtual {v14, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    new-instance v6, Lcom/prineside/tdi2/ui/shared/CameraTools$27;

    invoke-direct {v6, v0, v1, v2, v14}, Lcom/prineside/tdi2/ui/shared/CameraTools$27;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    invoke-virtual {v14, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v3, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v14, 0x43000000    # 128.0f

    invoke-virtual {v6, v14, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v6, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v13

    invoke-virtual {v13, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v13

    invoke-virtual {v13, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v13

    invoke-virtual {v13, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "blank"

    invoke-virtual {v15, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v15

    invoke-direct {v13, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v15, 0x3e0f5c29    # 0.14f

    invoke-virtual {v13, v5, v5, v5, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v13, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v6, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "small-circle"

    invoke-virtual {v15, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v15

    invoke-direct {v13, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v13, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v15, 0x0

    invoke-static {v15, v15}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v8

    invoke-static {v10}, Lcom/prineside/tdi2/enums/InterpolationType;->getObject(Lcom/prineside/tdi2/enums/InterpolationType;)Lcom/badlogic/gdx/math/Interpolation;

    move-result-object v5

    const/high16 v4, 0x43700000    # 240.0f

    const/high16 v14, 0x3fc00000    # 1.5f

    invoke-static {v4, v15, v14, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v5

    invoke-static {v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    invoke-virtual {v6, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/prineside/tdi2/ui/actors/LinearChartActor;

    invoke-direct {v5}, Lcom/prineside/tdi2/ui/actors/LinearChartActor;-><init>()V

    invoke-virtual {v5, v10}, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->setChart(Lcom/prineside/tdi2/enums/InterpolationType;)V

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    const v8, 0x3e8f5c29    # 0.28f

    invoke-direct {v6, v15, v15, v15, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v5, v12, v6}, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->setColor(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v6, 0x43000000    # 128.0f

    const/high16 v10, 0x41c00000    # 24.0f

    invoke-virtual {v5, v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v10, 0x41000000    # 8.0f

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x15

    invoke-virtual {v10, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v10

    const-string v13, "y"

    invoke-direct {v5, v13, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v10, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    if-eqz v2, :cond_6

    iget v5, v2, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->y:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v5, 0x1

    :goto_4
    new-instance v13, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    if-eqz v5, :cond_7

    move-object/from16 v5, v20

    goto :goto_5

    :cond_7
    iget v5, v2, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->y:F

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    :goto_5
    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v13, v5, v6}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    new-instance v5, Lcom/prineside/tdi2/ui/shared/CameraTools$28;

    invoke-direct {v5, v0, v1, v13}, Lcom/prineside/tdi2/ui/shared/CameraTools$28;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v13, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v3, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v6, 0x42c00000    # 96.0f

    const/high16 v13, 0x41c00000    # 24.0f

    invoke-virtual {v5, v6, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    move-object/from16 v13, v23

    invoke-virtual {v6, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    new-instance v8, Lcom/prineside/tdi2/ui/shared/CameraTools$29;

    invoke-direct {v8, v0, v1}, Lcom/prineside/tdi2/ui/shared/CameraTools$29;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;)V

    move-object/from16 v24, v13

    const/high16 v4, 0x43000000    # 128.0f

    const/high16 v13, 0x3fc00000    # 1.5f

    move-object v14, v5

    const/high16 v13, 0x40800000    # 4.0f

    move-object v15, v6

    move-object/from16 v16, v8

    move-object/from16 v17, v21

    move-object/from16 v18, v12

    move-object/from16 v19, v22

    invoke-direct/range {v14 .. v19}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v5, v13, v13}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v5, v6, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    if-eqz v2, :cond_8

    iget-object v5, v2, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iY:Lcom/prineside/tdi2/enums/InterpolationType;

    if-nez v5, :cond_9

    :cond_8
    sget-object v5, Lcom/prineside/tdi2/enums/InterpolationType;->linear:Lcom/prineside/tdi2/enums/InterpolationType;

    :cond_9
    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v8, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems([Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    new-instance v8, Lcom/prineside/tdi2/ui/shared/CameraTools$30;

    invoke-direct {v8, v0, v1, v2, v6}, Lcom/prineside/tdi2/ui/shared/CameraTools$30;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-virtual {v6, v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v8, 0x41000000    # 8.0f

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v14

    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v15, 0x43800000    # 256.0f

    invoke-virtual {v14, v15, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v14

    invoke-virtual {v14, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v14

    invoke-direct {v8, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3e0f5c29    # 0.14f

    invoke-virtual {v8, v13, v13, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v8, v15, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v13, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v13

    invoke-direct {v8, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v8, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v4, 0x0

    invoke-static {v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v13

    invoke-static {v5}, Lcom/prineside/tdi2/enums/InterpolationType;->getObject(Lcom/prineside/tdi2/enums/InterpolationType;)Lcom/badlogic/gdx/math/Interpolation;

    move-result-object v14

    move-object/from16 v25, v9

    const/high16 v9, 0x43700000    # 240.0f

    const/high16 v15, 0x3fc00000    # 1.5f

    invoke-static {v9, v4, v15, v14}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v9

    invoke-static {v9}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/prineside/tdi2/ui/actors/LinearChartActor;

    invoke-direct {v6}, Lcom/prineside/tdi2/ui/actors/LinearChartActor;-><init>()V

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->setChart(Lcom/prineside/tdi2/enums/InterpolationType;)V

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v8, 0x3e8f5c29    # 0.28f

    invoke-direct {v5, v4, v4, v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v10, v5}, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->setColor(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v6, 0x43000000    # 128.0f

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-virtual {v5, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x15

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    const-string v8, "z"

    invoke-direct {v5, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    if-eqz v2, :cond_b

    iget v5, v2, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->z:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_6

    :cond_a
    const/4 v10, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v10, 0x1

    :goto_7
    new-instance v5, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    if-eqz v10, :cond_c

    goto :goto_8

    :cond_c
    iget v8, v2, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->z:F

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v20

    :goto_8
    move-object/from16 v8, v20

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v5, v8, v9}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    new-instance v8, Lcom/prineside/tdi2/ui/shared/CameraTools$31;

    invoke-direct {v8, v0, v1, v5}, Lcom/prineside/tdi2/ui/shared/CameraTools$31;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v8, 0x42c00000    # 96.0f

    const/high16 v9, 0x41c00000    # 24.0f

    invoke-virtual {v5, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v8, 0x41000000    # 8.0f

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    move-object/from16 v9, v24

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v15

    new-instance v8, Lcom/prineside/tdi2/ui/shared/CameraTools$32;

    invoke-direct {v8, v0, v1}, Lcom/prineside/tdi2/ui/shared/CameraTools$32;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;)V

    move-object v14, v5

    move-object/from16 v16, v8

    move-object/from16 v17, v21

    move-object/from16 v18, v12

    move-object/from16 v19, v22

    invoke-direct/range {v14 .. v19}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v8, 0x40800000    # 4.0f

    invoke-virtual {v5, v8, v8}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v5, v8, v8}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v8, 0x41000000    # 8.0f

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    if-eqz v2, :cond_d

    iget-object v5, v2, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iZ:Lcom/prineside/tdi2/enums/InterpolationType;

    if-nez v5, :cond_e

    :cond_d
    sget-object v5, Lcom/prineside/tdi2/enums/InterpolationType;->linear:Lcom/prineside/tdi2/enums/InterpolationType;

    :cond_e
    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems([Ljava/lang/Object;)V

    invoke-virtual {v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    new-instance v7, Lcom/prineside/tdi2/ui/shared/CameraTools$33;

    invoke-direct {v7, v0, v1, v2, v8}, Lcom/prineside/tdi2/ui/shared/CameraTools$33;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x43000000    # 128.0f

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-virtual {v1, v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    const/high16 v8, 0x43800000    # 256.0f

    const/high16 v9, 0x41800000    # 16.0f

    invoke-virtual {v7, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    const/high16 v10, 0x40800000    # 4.0f

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v7, 0x3e0f5c29    # 0.14f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v2, v10, v10, v10, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v2, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    move-object/from16 v8, v25

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v2, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-static {v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v7

    invoke-static {v5}, Lcom/prineside/tdi2/enums/InterpolationType;->getObject(Lcom/prineside/tdi2/enums/InterpolationType;)Lcom/badlogic/gdx/math/Interpolation;

    move-result-object v8

    const/high16 v9, 0x3fc00000    # 1.5f

    const/high16 v10, 0x43700000    # 240.0f

    invoke-static {v10, v4, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v7

    invoke-static {v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/LinearChartActor;

    invoke-direct {v1}, Lcom/prineside/tdi2/ui/actors/LinearChartActor;-><init>()V

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->setChart(Lcom/prineside/tdi2/enums/InterpolationType;)V

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x3e8f5c29    # 0.28f

    invoke-direct {v2, v4, v4, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v6, v2}, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->setColor(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x43000000    # 128.0f

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_f
    return-void
.end method

.method public getSelectedScenario()Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->u:[Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    iget v1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->t:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v0

    return v0
.end method

.method public postRender(F)V
    .locals 31

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->x()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getKeyboardFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x8b

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Input;->isKeyJustPressed(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->isVisible()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/CameraTools;->setVisible(Z)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x42

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Input;->isKeyJustPressed(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->unfocusAll()V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->w()Lcom/prineside/tdi2/CameraController;

    move-result-object v1

    sget-object v3, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v4, 0x81

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_e

    if-eqz v1, :cond_8

    sget-object v3, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v6, 0x15

    invoke-interface {v3, v6}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->d:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->f:F

    mul-float v7, v7, p1

    sub-float/2addr v6, v7

    iput v6, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    sget-object v6, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v7, 0x16

    invoke-interface {v6, v7}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->d:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->f:F

    mul-float v7, v7, p1

    add-float/2addr v6, v7

    iput v6, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v3, 0x1

    :cond_4
    sget-object v6, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v7, 0x13

    invoke-interface {v6, v7}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->d:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v8, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->f:F

    mul-float v8, v8, p1

    add-float/2addr v7, v8

    iput v7, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v6, 0x1

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    sget-object v7, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v8, 0x14

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->d:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v8, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->f:F

    mul-float v8, v8, p1

    sub-float/2addr v7, v8

    iput v7, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v6, 0x1

    :cond_6
    sget-object v7, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v8, 0x4c

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v7

    if-eqz v7, :cond_7

    iget v7, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->g:F

    mul-float v7, v7, p1

    goto :goto_2

    :cond_7
    const/4 v7, 0x0

    :goto_2
    sget-object v8, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v9, 0x4b

    invoke-interface {v8, v9}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v8

    if-eqz v8, :cond_9

    iget v7, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->g:F

    neg-float v7, v7

    mul-float v7, v7, p1

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_9
    :goto_3
    sget-object v8, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v9, 0x8

    invoke-interface {v8, v9}, Lcom/badlogic/gdx/Input;->isKeyJustPressed(I)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v0, v4, v2}, Lcom/prineside/tdi2/ui/shared/CameraTools;->setSelectedScenarioIdx(IZ)V

    goto :goto_4

    :cond_a
    sget-object v8, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v9, 0x9

    invoke-interface {v8, v9}, Lcom/badlogic/gdx/Input;->isKeyJustPressed(I)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v0, v2, v2}, Lcom/prineside/tdi2/ui/shared/CameraTools;->setSelectedScenarioIdx(IZ)V

    goto :goto_4

    :cond_b
    sget-object v8, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v9, 0xa

    invoke-interface {v8, v9}, Lcom/badlogic/gdx/Input;->isKeyJustPressed(I)Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, 0x2

    invoke-virtual {v0, v8, v2}, Lcom/prineside/tdi2/ui/shared/CameraTools;->setSelectedScenarioIdx(IZ)V

    goto :goto_4

    :cond_c
    sget-object v8, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v9, 0xb

    invoke-interface {v8, v9}, Lcom/badlogic/gdx/Input;->isKeyJustPressed(I)Z

    move-result v8

    if-eqz v8, :cond_d

    const/4 v8, 0x3

    invoke-virtual {v0, v8, v2}, Lcom/prineside/tdi2/ui/shared/CameraTools;->setSelectedScenarioIdx(IZ)V

    goto :goto_4

    :cond_d
    sget-object v8, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v9, 0xc

    invoke-interface {v8, v9}, Lcom/badlogic/gdx/Input;->isKeyJustPressed(I)Z

    move-result v8

    if-eqz v8, :cond_f

    const/4 v8, 0x4

    invoke-virtual {v0, v8, v2}, Lcom/prineside/tdi2/ui/shared/CameraTools;->setSelectedScenarioIdx(IZ)V

    goto :goto_4

    :cond_e
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_f
    :goto_4
    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v8, 0x45

    invoke-interface {v2, v8}, Lcom/badlogic/gdx/Input;->isKeyJustPressed(I)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->getSelectedScenario()Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    move-result-object v2

    if-eqz v2, :cond_10

    if-eqz v1, :cond_10

    iget-boolean v8, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->v:Z

    invoke-virtual {v1, v2, v5, v8}, Lcom/prineside/tdi2/CameraController;->playScenario(Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;FZ)V

    goto :goto_5

    :cond_10
    if-nez v2, :cond_11

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    const-string v8, "Camera scenario is not loaded"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9, v9, v9}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    :cond_11
    :goto_5
    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->d:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpg-float v9, v8, v5

    if-gez v9, :cond_12

    iget v9, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->e:F

    neg-float v10, v9

    cmpg-float v8, v8, v10

    if-gez v8, :cond_13

    neg-float v8, v9

    iput v8, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    goto :goto_6

    :cond_12
    iget v9, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->e:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_13

    iput v9, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    :cond_13
    :goto_6
    iget v8, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v9, v8, v5

    if-gez v9, :cond_14

    iget v9, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->e:F

    neg-float v10, v9

    cmpg-float v8, v8, v10

    if-gez v8, :cond_15

    neg-float v8, v9

    iput v8, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_7

    :cond_14
    iget v9, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->e:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_15

    iput v9, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    :cond_15
    :goto_7
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/prineside/tdi2/CameraController;->getLookPos()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v8, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->d:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v8}, Lcom/badlogic/gdx/math/Vector2;->isZero()Z

    move-result v8

    if-nez v8, :cond_19

    iget v8, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->d:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v10, v10, p1

    add-float/2addr v8, v10

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v9, v9, p1

    add-float/2addr v2, v9

    invoke-virtual {v1, v8, v2}, Lcom/prineside/tdi2/CameraController;->lookAt(FF)V

    if-nez v3, :cond_17

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->d:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v8, v3, v5

    if-lez v8, :cond_16

    iget v8, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->h:F

    mul-float v8, v8, p1

    sub-float/2addr v3, v8

    iput v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_17

    iput v5, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    goto :goto_8

    :cond_16
    iget v8, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->h:F

    mul-float v8, v8, p1

    add-float/2addr v3, v8

    iput v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_17

    iput v5, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    :cond_17
    :goto_8
    if-nez v6, :cond_19

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->d:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v6, v3, v5

    if-lez v6, :cond_18

    iget v6, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->h:F

    mul-float v6, v6, p1

    sub-float/2addr v3, v6

    iput v3, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_19

    iput v5, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_9

    :cond_18
    iget v6, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->h:F

    mul-float v6, v6, p1

    add-float/2addr v3, v6

    iput v3, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_19

    iput v5, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    :cond_19
    :goto_9
    cmpl-float v2, v7, v5

    if-eqz v2, :cond_1a

    iget-wide v2, v1, Lcom/prineside/tdi2/CameraController;->zoom:D

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Lcom/prineside/tdi2/CameraController;->setZoom(D)V

    :cond_1a
    const v2, 0x3f0f5c29    # 0.56f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/prineside/tdi2/CameraController;->getLookPos()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    float-to-int v6, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v10, v1, Lcom/prineside/tdi2/CameraController;->zoom:D

    double-to-float v8, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float v8, v8, v10

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->d:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v10, 0x41200000    # 10.0f

    mul-float v8, v8, v10

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->d:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v8, v8, v10

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_1b
    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v7, "No camera"

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v6, v3, v3, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->getSelectedScenario()Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    move-result-object v6

    if-eqz v1, :cond_26

    iget-boolean v7, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->w:Z

    if-eqz v7, :cond_26

    if-eqz v6, :cond_26

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v7, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v8, v8, Lcom/prineside/tdi2/managers/RenderingManager;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v7

    new-instance v15, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v15}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sget-object v13, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v12, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDebugFont(Z)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v19

    iget-object v9, v1, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    iget v9, v6, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->length:I

    int-to-float v9, v9

    iget v10, v6, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->fps:I

    int-to-float v10, v10

    div-float v11, v9, v10

    const-wide/16 v20, 0x0

    const/high16 v22, 0x7fc00000    # Float.NaN

    move-wide/from16 v9, v20

    move-wide/from16 v23, v9

    const/high16 v16, 0x7fc00000    # Float.NaN

    const/high16 v17, 0x7fc00000    # Float.NaN

    const/high16 v18, 0x7fc00000    # Float.NaN

    :goto_b
    float-to-double v3, v11

    cmpg-double v25, v9, v3

    if-gtz v25, :cond_1d

    double-to-float v2, v9

    invoke-virtual {v6, v2}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->calculate(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v26

    if-nez v26, :cond_1c

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    move-result v26

    if-nez v26, :cond_1c

    iget v5, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_1c

    iget v5, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual {v15, v13}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-object/from16 v27, v1

    div-double v0, v23, v3

    double-to-float v0, v0

    invoke-virtual {v5, v12, v0}, Lcom/badlogic/gdx/graphics/Color;->lerp(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v14, v13}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double v3, v9, v3

    double-to-float v1, v3

    invoke-virtual {v0, v12, v1}, Lcom/badlogic/gdx/graphics/Color;->lerp(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Color;

    iget v0, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v18, v3

    iget v5, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v3, v3, v5

    move-wide/from16 v23, v9

    move-object v9, v8

    move-object v10, v7

    move v5, v11

    move/from16 v11, v16

    move-object/from16 v28, v12

    move/from16 v12, v17

    move-object/from16 v29, v13

    move v13, v0

    move-object v0, v14

    move v14, v1

    move-object v1, v15

    move v15, v4

    move/from16 v16, v3

    move-object/from16 v17, v1

    move-object/from16 v18, v0

    invoke-static/range {v9 .. v18}, Lcom/prineside/tdi2/utils/DrawUtils;->texturedLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_c

    :cond_1c
    move-object/from16 v27, v1

    move-wide/from16 v23, v9

    move v5, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object v0, v14

    move-object v1, v15

    :goto_c
    iget v3, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v4, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    const-wide v9, 0x3fa999999999999aL    # 0.05

    add-double v9, v23, v9

    move-object v14, v0

    move-object v15, v1

    move/from16 v18, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move v11, v5

    move-object/from16 v1, v27

    move-object/from16 v12, v28

    move-object/from16 v13, v29

    const v2, 0x3f0f5c29    # 0.56f

    const/4 v5, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_b

    :cond_1d
    move-object/from16 v27, v1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "circle"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_d
    iget v5, v6, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->length:I

    if-ge v2, v5, :cond_22

    int-to-float v5, v2

    iget v9, v6, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->fps:I

    int-to-float v9, v9

    div-float/2addr v5, v9

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->calculate(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    if-eq v2, v1, :cond_21

    const/4 v1, 0x0

    :goto_e
    iget-object v9, v6, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->keyframes:Lcom/badlogic/gdx/utils/Array;

    iget v10, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v10, :cond_20

    iget-object v9, v9, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v9, [Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    aget-object v15, v9, v1

    iget v9, v15, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->frame:I

    if-ne v9, v2, :cond_1e

    const/4 v13, 0x0

    const v14, 0x3f0f5c29    # 0.56f

    invoke-virtual {v8, v13, v13, v13, v14}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget v9, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/high16 v10, 0x41000000    # 8.0f

    sub-float v11, v9, v10

    iget v9, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float v12, v9, v10

    const/high16 v16, 0x41800000    # 16.0f

    const/high16 v17, 0x41800000    # 16.0f

    move-object v9, v8

    move-object v10, v0

    const/16 v18, 0x0

    move/from16 v13, v16

    const v23, 0x3f0f5c29    # 0.56f

    move/from16 v14, v17

    invoke-virtual/range {v9 .. v14}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object v9, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    iget v9, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v12, v9, v10

    iget v9, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/high16 v10, 0x40400000    # 3.0f

    add-float v13, v9, v10

    const/high16 v14, 0x40000000    # 2.0f

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v9, v19

    move-object v10, v8

    move-object/from16 v30, v15

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-virtual/range {v9 .. v16}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    move-object/from16 v9, v30

    goto :goto_f

    :cond_1e
    const/16 v18, 0x0

    const v23, 0x3f0f5c29    # 0.56f

    move-object v9, v15

    :goto_f
    iget v9, v9, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->frame:I

    if-lt v9, v2, :cond_1f

    goto :goto_10

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_20
    const/16 v18, 0x0

    const v23, 0x3f0f5c29    # 0.56f

    :goto_10
    move v1, v2

    goto :goto_11

    :cond_21
    const/16 v18, 0x0

    const v23, 0x3f0f5c29    # 0.56f

    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    :cond_22
    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x3e0f5c29    # 0.14f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v2, v9, v9, v9, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v2

    move-wide/from16 v14, v20

    const/4 v5, 0x0

    const/high16 v9, 0x7fc00000    # Float.NaN

    const/high16 v10, 0x7fc00000    # Float.NaN

    :goto_12
    cmpg-double v12, v14, v3

    if-gtz v12, :cond_24

    double-to-float v12, v14

    invoke-virtual {v6, v12}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->calculate(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_23

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_23

    iget v12, v13, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_23

    iget v12, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_23

    iget v12, v13, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v11, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v12, v11, v9, v10}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenPoints(FFFF)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v0

    double-to-float v9, v9

    int-to-float v12, v5

    const/16 v16, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v17, v9, v10

    const/high16 v18, 0x40000000    # 2.0f

    move-object v9, v8

    move-object v10, v7

    move v11, v12

    move/from16 v19, v12

    move/from16 v12, v16

    move-object v0, v13

    move/from16 v13, v19

    move-wide/from16 v22, v14

    move/from16 v14, v17

    move/from16 v15, v18

    move/from16 v16, v2

    move/from16 v17, v2

    invoke-static/range {v9 .. v17}, Lcom/prineside/tdi2/utils/DrawUtils;->texturedLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFF)V

    goto :goto_13

    :cond_23
    move-object v0, v13

    move-wide/from16 v22, v14

    :goto_13
    iget v9, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v10, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-int/lit8 v5, v5, 0x1

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    add-double v14, v22, v0

    goto :goto_12

    :cond_24
    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v17

    move-object/from16 v0, v27

    iget-object v1, v0, Lcom/prineside/tdi2/CameraController;->currentScenario:Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    if-eqz v1, :cond_25

    iget v1, v0, Lcom/prineside/tdi2/CameraController;->scenarioTime:F

    float-to-double v1, v1

    const-wide v3, 0x3f747ae147ae147bL    # 0.005

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {v6, v1}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->calculate(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    iget v2, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v5, v0, Lcom/prineside/tdi2/CameraController;->scenarioTime:F

    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v9, v3

    double-to-float v3, v9

    invoke-virtual {v6, v3}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->calculate(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    iget v4, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_25

    iget v4, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_25

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_25

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_25

    iget v4, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v4, v3, v2, v1}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenPoints(FFFF)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    div-double/2addr v1, v3

    double-to-float v1, v1

    iget v0, v0, Lcom/prineside/tdi2/CameraController;->scenarioTime:F

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v3

    double-to-float v13, v5

    const/4 v12, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v14, v1, v0

    const/high16 v15, 0x40800000    # 4.0f

    move-object v9, v8

    move-object v10, v7

    move v11, v13

    move/from16 v16, v17

    invoke-static/range {v9 .. v17}, Lcom/prineside/tdi2/utils/DrawUtils;->texturedLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFF)V

    :cond_25
    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->z()V

    :cond_27
    return-void
.end method

.method public setSelectedScenarioIdx(IZ)V
    .locals 2

    if-ltz p1, :cond_2

    const/16 v0, 0x8

    if-gt p1, v0, :cond_2

    iput p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->t:I

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->w()Lcom/prineside/tdi2/CameraController;

    move-result-object p1

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->getSelectedScenario()Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget v0, p2, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->startFrame:I

    int-to-float v0, v0

    iget v1, p2, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->fps:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-boolean v1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->v:Z

    invoke-virtual {p1, p2, v0, v1}, Lcom/prineside/tdi2/CameraController;->playScenario(Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;FZ)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "controller "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " scenario "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraTools"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->updateScenarioMenu()V

    return-void

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "idx is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->update()V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->unfocusAll()V

    :goto_0
    return-void
.end method

.method public update()V
    .locals 12

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->layers:[Lcom/badlogic/gdx/utils/Array;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    const/4 v3, 0x0

    :goto_1
    iget v4, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v4, :cond_0

    iget-object v4, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    aget-object v4, v4, v3

    new-instance v11, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    iget-object v6, v4, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->name:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v7

    const/16 v8, 0x15

    const/high16 v9, 0x41a80000    # 21.0f

    new-instance v10, Lcom/prineside/tdi2/ui/shared/CameraTools$8;

    invoke-direct {v10, p0, v4}, Lcom/prineside/tdi2/ui/shared/CameraTools$8;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFLcom/prineside/tdi2/utils/ObjectRetriever;)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->updateScenarioMenu()V

    return-void
.end method

.method public updateScenarioMenu()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    const-string v4, "Scenarios"

    invoke-direct {v2, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    const/4 v2, 0x1

    :goto_0
    const/4 v4, 0x5

    const/16 v5, 0x15

    const/high16 v6, 0x41c00000    # 24.0f

    const/4 v7, 0x0

    if-gt v2, v4, :cond_2

    new-instance v4, Lcom/prineside/tdi2/ui/actors/RectButton;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    new-instance v9, Lcom/prineside/tdi2/ui/shared/CameraTools$9;

    invoke-direct {v9, v0, v2}, Lcom/prineside/tdi2/ui/shared/CameraTools$9;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;I)V

    invoke-direct {v4, v8, v5, v9}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iget v5, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->t:I

    add-int/lit8 v8, v2, -0x1

    if-ne v5, v8, :cond_0

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v5, v5, v5, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v5, v5, v5, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabelColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    goto :goto_1

    :cond_0
    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v7, v7, v7, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v9, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v9, v7, v7, v7, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v10, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v10, v7, v7, v7, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v11, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v11, v7, v7, v7, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v4, v5, v9, v10, v11}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->u:[Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    aget-object v5, v5, v8

    if-nez v5, :cond_1

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v5, v5, v5, v7}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabelColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v5, v5, v5, v7}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabelColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    :goto_1
    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    iget-boolean v10, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->v:Z

    const/16 v11, 0x15

    const/high16 v12, 0x41800000    # 16.0f

    const/4 v13, 0x0

    new-instance v14, Lcom/prineside/tdi2/ui/shared/CameraTools$10;

    invoke-direct {v14, v0}, Lcom/prineside/tdi2/ui/shared/CameraTools$10;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;)V

    const-string v9, "Loop"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v8, 0x42800000    # 64.0f

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    iget-boolean v11, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->w:Z

    const/16 v12, 0x15

    const/high16 v13, 0x41800000    # 16.0f

    const/4 v14, 0x0

    new-instance v15, Lcom/prineside/tdi2/ui/shared/CameraTools$11;

    invoke-direct {v15, v0}, Lcom/prineside/tdi2/ui/shared/CameraTools$11;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;)V

    const-string v10, "Draw"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->getSelectedScenario()Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v8, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iget-object v9, v2, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->name:Ljava/lang/String;

    iget-object v10, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v8, v9, v10}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    new-instance v9, Lcom/prineside/tdi2/ui/shared/CameraTools$12;

    invoke-direct {v9, v0, v2, v8}, Lcom/prineside/tdi2/ui/shared/CameraTools$12;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    const/high16 v9, 0x43200000    # 160.0f

    invoke-virtual {v8, v9, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v8, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "icon-times"

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    new-instance v12, Lcom/prineside/tdi2/ui/shared/CameraTools$13;

    invoke-direct {v12, v0}, Lcom/prineside/tdi2/ui/shared/CameraTools$13;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;)V

    sget-object v13, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v14, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P300:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    move-object v10, v8

    invoke-direct/range {v10 .. v15}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v9, 0x40800000    # 4.0f

    invoke-virtual {v8, v9, v9}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v8, v3, v3}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v10

    const-string v11, "FPS:"

    invoke-direct {v8, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v10, 0x3f0f5c29    # 0.56f

    invoke-virtual {v8, v4, v4, v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v8, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iget v11, v2, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->fps:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v8, v11, v12}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    new-instance v11, Lcom/prineside/tdi2/ui/shared/CameraTools$14;

    invoke-direct {v11, v0, v2, v8}, Lcom/prineside/tdi2/ui/shared/CameraTools$14;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    const/high16 v11, 0x42400000    # 48.0f

    invoke-virtual {v8, v11, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v12

    const-string v13, "Start:"

    invoke-direct {v8, v13, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v8, v4, v4, v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v8, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iget v12, v2, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->startFrame:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v8, v12, v13}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    new-instance v12, Lcom/prineside/tdi2/ui/shared/CameraTools$15;

    invoke-direct {v12, v0, v2, v8}, Lcom/prineside/tdi2/ui/shared/CameraTools$15;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    const/high16 v12, 0x42700000    # 60.0f

    invoke-virtual {v8, v12, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v12

    const-string v13, "Length:"

    invoke-direct {v8, v13, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v8, v4, v4, v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v8, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iget v10, v2, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->length:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    iget-object v12, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v8, v10, v12}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    new-instance v10, Lcom/prineside/tdi2/ui/shared/CameraTools$16;

    invoke-direct {v10, v0, v2, v8}, Lcom/prineside/tdi2/ui/shared/CameraTools$16;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v11, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "icon-triangle-right"

    invoke-virtual {v8, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v13

    new-instance v14, Lcom/prineside/tdi2/ui/shared/CameraTools$17;

    invoke-direct {v14, v0}, Lcom/prineside/tdi2/ui/shared/CameraTools$17;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;)V

    sget-object v15, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v16, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P300:Lcom/badlogic/gdx/graphics/Color;

    sget-object v17, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    move-object v12, v2

    invoke-direct/range {v12 .. v17}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2, v9, v9}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v2, v3, v3}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/prineside/tdi2/ui/actors/LabelButton;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v8, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v8

    new-instance v9, Lcom/prineside/tdi2/ui/shared/CameraTools$18;

    invoke-direct {v9, v0}, Lcom/prineside/tdi2/ui/shared/CameraTools$18;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;)V

    const-string v10, "From JSON"

    invoke-direct {v2, v10, v8, v9}, Lcom/prineside/tdi2/ui/actors/LabelButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/prineside/tdi2/ui/actors/LabelButton;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    new-instance v9, Lcom/prineside/tdi2/ui/shared/CameraTools$19;

    invoke-direct {v9, v0}, Lcom/prineside/tdi2/ui/shared/CameraTools$19;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;)V

    const-string v10, "To JSON"

    invoke-direct {v2, v10, v5, v9}, Lcom/prineside/tdi2/ui/actors/LabelButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x3e8f5c29    # 0.28f

    invoke-direct {v2, v7, v7, v7, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v10

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x3e3e3eff

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v11

    const/high16 v1, 0x41400000    # 12.0f

    invoke-interface {v10, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setMinWidth(F)V

    invoke-interface {v11, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setMinWidth(F)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v4

    invoke-direct/range {v8 .. v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-direct {v1, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->A()V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->B()V

    goto :goto_2

    :cond_3
    new-instance v2, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    new-instance v4, Lcom/prineside/tdi2/ui/shared/CameraTools$20;

    invoke-direct {v4, v0}, Lcom/prineside/tdi2/ui/shared/CameraTools$20;-><init>(Lcom/prineside/tdi2/ui/shared/CameraTools;)V

    const-string v5, "New scenario"

    invoke-direct {v2, v5, v3, v4}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x43400000    # 192.0f

    const/high16 v3, 0x42000000    # 32.0f

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    :goto_2
    return-void
.end method

.method public final w()Lcom/prineside/tdi2/CameraController;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->getCurrentScreen()Lcom/prineside/tdi2/Screen;

    move-result-object v0

    instance-of v0, v0, Lcom/prineside/tdi2/screens/GameScreen;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->getCurrentScreen()Lcom/prineside/tdi2/Screen;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/screens/GameScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/GameScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_input:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/InputSystem;->cameraController:Lcom/prineside/tdi2/CameraController;

    return-object v0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->getCurrentScreen()Lcom/prineside/tdi2/Screen;

    move-result-object v0

    instance-of v0, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->getCurrentScreen()Lcom/prineside/tdi2/Screen;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/screens/ResearchesScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    return-object v0

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->getCurrentScreen()Lcom/prineside/tdi2/Screen;

    move-result-object v0

    instance-of v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->getCurrentScreen()Lcom/prineside/tdi2/Screen;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final x()Z
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->CAMERA_TOOLS_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final y()V
    .locals 6

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget v3, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->t:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "selectedScenarioIdx"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v3, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->v:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "loopScenario"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v3, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->w:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "drawScenarioOnMap"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "loadedScenarios"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->u:[Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "idx"

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "scenario"

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->u:[Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cameraTools"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    const-string v0, "CameraTools"

    const-string v1, "saved preferences"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final z()V
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->w()Lcom/prineside/tdi2/CameraController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/prineside/tdi2/CameraController;->currentScenario:Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    if-eqz v2, :cond_0

    iget v0, v0, Lcom/prineside/tdi2/CameraController;->scenarioTime:F

    iget v1, v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->fps:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setX(F)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools;->x:I

    mul-int/lit8 v1, v1, 0x10

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr v1, v2

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    :cond_1
    return-void
.end method
