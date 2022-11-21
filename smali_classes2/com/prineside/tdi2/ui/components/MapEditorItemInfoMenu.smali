.class public Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$MapEditorTileInfoMenuListener;
    }
.end annotation


# static fields
.field public static final B:Lcom/badlogic/gdx/graphics/Color;

.field public static final C:Lcom/badlogic/gdx/graphics/Color;

.field public static final D:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public final A:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$MapEditorTileInfoMenuListener;",
            ">;"
        }
    .end annotation
.end field

.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public b:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public currentItem:Lcom/prineside/tdi2/Item;

.field public d:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public expandCodeEditor:Z

.field public k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public r:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public s:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public selectBoxStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

.field public t:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public textFieldStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

.field public u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public v:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

.field public w:Z

.field public x:I

.field public y:I

.field public z:Lcom/prineside/tdi2/screens/MapEditorScreen;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x252525ff

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->B:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->C:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->D:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/screens/MapEditorScreen;)V
    .locals 27

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v2, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v3, 0x66

    const-string v4, "MapEditorItemInfoMenu"

    invoke-virtual {v1, v2, v3, v4}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    const/4 v2, -0x1

    iput v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->x:I

    iput v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->y:I

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->expandCodeEditor:Z

    new-instance v3, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->A:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->z:Lcom/prineside/tdi2/screens/MapEditorScreen;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v4, 0x44020000    # 520.0f

    const/high16 v5, 0x446a0000    # 936.0f

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v6, 0x43200000    # 160.0f

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x18

    invoke-virtual {v1, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v1

    sget-object v15, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v14, "blank"

    invoke-virtual {v7, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    sget-object v8, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v7

    invoke-direct {v12, v1, v15, v15, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v7

    const/high16 v20, 0x41200000    # 10.0f

    add-float v7, v7, v20

    invoke-interface {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setLeftWidth(F)V

    iget-object v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v7

    add-float v7, v7, v20

    invoke-interface {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setRightWidth(F)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v8

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    sget-object v11, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v10

    new-instance v16, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    sget-object v9, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v22

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    new-instance v9, Lcom/badlogic/gdx/graphics/Color;

    const/4 v6, 0x0

    const v4, 0x3e8f5c29    # 0.28f

    invoke-direct {v9, v6, v6, v6, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v23

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v24

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    new-instance v9, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v9, v6, v6, v6, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v25

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v26

    move-object/from16 v21, v16

    invoke-direct/range {v21 .. v26}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    move-object v7, v1

    move-object v9, v15

    move-object v4, v11

    move-object/from16 v11, v16

    invoke-direct/range {v7 .. v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->selectBoxStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v7

    add-float v7, v7, v20

    invoke-interface {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setLeftWidth(F)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->selectBoxStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v7

    add-float v7, v7, v20

    invoke-interface {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setRightWidth(F)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7, v13, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(IZ)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v7

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    sget-object v10, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v18

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v19

    move-object v4, v14

    move-object v14, v1

    move-object v9, v15

    move-object v15, v7

    move-object/from16 v16, v9

    move-object/from16 v17, v8

    invoke-direct/range {v14 .. v19}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->textFieldStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->cursor:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-interface {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setMinWidth(F)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->textFieldStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v7

    add-float v7, v7, v20

    invoke-interface {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setLeftWidth(F)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->textFieldStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v7

    add-float v7, v7, v20

    invoke-interface {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setRightWidth(F)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v7, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    new-instance v8, Lcom/prineside/tdi2/utils/InputVoid;

    invoke-direct {v8}, Lcom/prineside/tdi2/utils/InputVoid;-><init>()V

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v8, 0x44020000    # 520.0f

    invoke-virtual {v1, v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v8, 0x2b2b2bff

    invoke-direct {v5, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    const/16 v8, 0x8

    new-array v9, v8, [F

    fill-array-data v9, :array_0

    invoke-direct {v1, v5, v9}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v5, 0x42800000    # 64.0f

    invoke-virtual {v1, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v9, 0x42200000    # 40.0f

    const v10, 0x4450c000    # 835.0f

    invoke-virtual {v1, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v11, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v12, 0x1e

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    const-string v13, ""

    invoke-direct {v1, v13, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v11, 0x42f80000    # 124.0f

    invoke-virtual {v1, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v14, 0x42c80000    # 100.0f

    invoke-virtual {v1, v14, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v15, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v15}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v1

    sget-object v15, Lcom/prineside/tdi2/enums/GameValueType;->PRESTIGE_MODE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v15}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getBooleanValue(Lcom/prineside/tdi2/enums/GameValueType;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v15

    const v8, 0x4453c000    # 847.0f

    invoke-virtual {v1, v15, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v15, "icon-crown"

    invoke-virtual {v8, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v8, 0x44514000    # 837.0f

    invoke-virtual {v1, v11, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v8, 0x41c00000    # 24.0f

    const/high16 v11, 0x41c00000    # 24.0f

    invoke-virtual {v1, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v8, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P400:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v11, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v11, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v15, 0x15

    invoke-virtual {v11, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    const-string v15, "350 mP"

    invoke-direct {v1, v15, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v11, 0x431c0000    # 156.0f

    const v15, 0x444c4000    # 817.0f

    invoke-virtual {v1, v11, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v14, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_0
    new-instance v1, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "icon-edit"

    invoke-virtual {v8, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v18

    new-instance v8, Lcom/prineside/tdi2/ui/components/f;

    invoke-direct {v8, v0}, Lcom/prineside/tdi2/ui/components/f;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)V

    sget-object v20, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v21, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P300:Lcom/badlogic/gdx/graphics/Color;

    sget-object v22, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v17, v1

    move-object/from16 v19, v8

    invoke-direct/range {v17 .. v22}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->v:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v8, 0x42400000    # 48.0f

    invoke-virtual {v1, v8, v8}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->v:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v8, 0x41000000    # 8.0f

    const/high16 v11, 0x41000000    # 8.0f

    invoke-virtual {v1, v8, v11}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->v:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v1, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->v:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v8, 0x43a60000    # 332.0f

    invoke-virtual {v1, v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->v:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->v:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->v:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v8, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v8

    invoke-direct {v1, v13, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v8, 0x43be0000    # 380.0f

    invoke-virtual {v1, v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v14, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v8, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/16 v8, 0x10

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v8, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v8, 0x444d0000    # 820.0f

    const/high16 v10, 0x44020000    # 520.0f

    invoke-virtual {v1, v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v1, 0x1

    new-array v8, v1, [Z

    aput-boolean v2, v8, v2

    new-array v10, v1, [F

    aput v6, v10, v2

    new-array v1, v1, [Z

    aput-boolean v2, v1, v2

    new-instance v11, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$1;

    invoke-direct {v11, v0, v8, v10, v1}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$1;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;[Z[F[Z)V

    iput-object v11, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/Group;

    new-instance v12, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$2;

    invoke-direct {v12, v0, v8, v1, v10}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$2;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;[Z[Z[F)V

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v8, 0x43dc0000    # 440.0f

    const/high16 v10, 0x42c00000    # 96.0f

    invoke-virtual {v1, v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v8, 0x43440000    # 196.0f

    invoke-virtual {v1, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v4, 0x43dc0000    # 440.0f

    invoke-virtual {v1, v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const v9, 0x252525ff

    invoke-direct {v4, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    const/16 v9, 0x8

    new-array v11, v9, [F

    fill-array-data v11, :array_1

    invoke-direct {v1, v4, v11}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "icon-dollar"

    invoke-virtual {v4, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v1, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v4, 0x42000000    # 32.0f

    const/high16 v9, 0x41800000    # 16.0f

    invoke-virtual {v1, v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v4, 0x430c0000    # 140.0f

    invoke-virtual {v1, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v4, 0x43960000    # 300.0f

    invoke-virtual {v1, v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    const/high16 v4, 0x43200000    # 160.0f

    const/high16 v6, 0x44020000    # 520.0f

    invoke-virtual {v1, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$3;

    invoke-direct {v4, v0}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$3;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    new-instance v4, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    const v9, 0x252525ff

    invoke-direct {v6, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    const/16 v9, 0x8

    new-array v9, v9, [F

    fill-array-data v9, :array_2

    invoke-direct {v4, v6, v9}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "icon-triangle-bottom"

    invoke-virtual {v6, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v4, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, 0x43640000    # 228.0f

    const/high16 v9, 0x42480000    # 50.0f

    invoke-virtual {v4, v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v4, 0x43030000    # 131.0f

    invoke-virtual {v1, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    new-instance v3, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$4;

    invoke-direct {v3, v0}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$4;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "ui-map-editor-tile-info-menu-tab"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v3, 0x43030000    # 131.0f

    invoke-virtual {v1, v8, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "icon-info-square"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v1, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v3, 0x425c0000    # 55.0f

    const/high16 v4, 0x421c0000    # 39.0f

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->setMinimized(Z)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x446a0000    # 936.0f
        0x44020000    # 520.0f
        0x44674000    # 925.0f
        0x44020000    # 520.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x42c00000    # 96.0f
        0x43000000    # 128.0f
        0x42c00000    # 96.0f
        0x42ec0000    # 118.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x43150000    # 149.0f
        0x44020000    # 520.0f
        0x43200000    # 160.0f
        0x44020000    # 520.0f
        0x0
    .end array-data
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;Lcom/prineside/tdi2/Item;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->g(Lcom/prineside/tdi2/Item;)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->h()V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->A:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;Lcom/prineside/tdi2/tiles/PlatformTile;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->i(Lcom/prineside/tdi2/tiles/PlatformTile;II)V

    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->x:I

    return p1
.end method

.method public static synthetic f(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->y:I

    return p1
.end method

.method private synthetic g(Lcom/prineside/tdi2/Item;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MapEditorItemInfoMenu"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->notifySelectedTileChanged()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->currentItem:Lcom/prineside/tdi2/Item;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->setItem(Lcom/prineside/tdi2/Item;)V

    return-void
.end method

.method private synthetic h()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->currentItem:Lcom/prineside/tdi2/Item;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/ItemType;->TILE:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->currentItem:Lcom/prineside/tdi2/Item;

    check-cast v0, Lcom/prineside/tdi2/items/TileItem;

    iget-object v0, v0, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->itemCreationOverlay:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->currentItem:Lcom/prineside/tdi2/Item;

    new-instance v2, Lcom/prineside/tdi2/ui/components/g;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/ui/components/g;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->show(Lcom/prineside/tdi2/Item;Lcom/prineside/tdi2/utils/ObjectRetriever;Z)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->itemCreationOverlay:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->currentItem:Lcom/prineside/tdi2/Item;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->show(Lcom/prineside/tdi2/Item;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$MapEditorTileInfoMenuListener;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->A:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->A:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dispose()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    return-void
.end method

.method public final i(Lcom/prineside/tdi2/tiles/PlatformTile;II)V
    .locals 4

    const-string v0, "MapEditorItemInfoMenu"

    if-ltz p2, :cond_3

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    iget v1, v1, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge p2, v1, :cond_3

    if-ltz p3, :cond_3

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    iget v1, v1, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-lt p3, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v3, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast v1, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object p1, p1, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->cloneBuilding()Lcom/prineside/tdi2/Building;

    move-result-object p1

    iput-object p1, v1, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    sget-object p1, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->setItem(Lcom/prineside/tdi2/Item;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->z:Lcom/prineside/tdi2/screens/MapEditorScreen;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTile:Z

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedBarrier:Z

    iput p2, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTileX:I

    iput p3, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTileY:I

    iget-object p1, p1, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    iput-boolean v0, p1, Lcom/prineside/tdi2/systems/MapEditorSystem;->mapChanged:Z

    return-void

    :cond_2
    :goto_0
    const-string p1, "no tile or not a platform"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "out of map: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p2

    iget p2, p2, Lcom/prineside/tdi2/Map;->widthTiles:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " x "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p1

    iget p1, p1, Lcom/prineside/tdi2/Map;->heightTiles:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifySelectedTileChanged()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->A:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->A:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$MapEditorTileInfoMenuListener;

    invoke-interface {v1}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$MapEditorTileInfoMenuListener;->selectedTileModified()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

.method public removeListener(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$MapEditorTileInfoMenuListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->A:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setItem(Lcom/prineside/tdi2/Item;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->currentItem:Lcom/prineside/tdi2/Item;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v3, 0x42800000    # 64.0f

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/prineside/tdi2/Item;->generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/Item;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v2

    sget-object v7, Lcom/prineside/tdi2/enums/ItemType;->TILE:Lcom/prineside/tdi2/enums/ItemType;

    const/4 v8, 0x1

    if-ne v2, v7, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/prineside/tdi2/items/TileItem;

    iget-object v5, v2, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    invoke-virtual {v5}, Lcom/prineside/tdi2/Tile;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_0

    :cond_1
    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    invoke-virtual {v7}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    invoke-virtual {v7}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v2, v2, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tile;->getPrestigeScore()D

    move-result-wide v5

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v2

    sget-object v7, Lcom/prineside/tdi2/enums/ItemType;->GATE:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v2, v7, :cond_3

    move-object v2, v1

    check-cast v2, Lcom/prineside/tdi2/items/GateItem;

    iget-object v2, v2, Lcom/prineside/tdi2/items/GateItem;->gate:Lcom/prineside/tdi2/Gate;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Gate;->getPrestigeScore()D

    move-result-wide v5

    :goto_1
    const-wide v9, 0x408f400000000000L    # 1000.0

    mul-double v5, v5, v9

    :cond_3
    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz v2, :cond_5

    const-wide/16 v9, 0x0

    cmpl-double v7, v5, v9

    if-nez v7, :cond_4

    const-string v5, ""

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v6}, Ljava/lang/StrictMath;->round(D)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mP"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->v:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/ProgressManager;->isDeveloperModeEnabled()Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    sget-object v2, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$18;->c:[I

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v2, v2, v5

    const/4 v5, 0x2

    const/16 v7, 0x15

    const-string v9, "blank"

    const/high16 v11, 0x42c80000    # 100.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x42500000    # 52.0f

    const/high16 v13, 0x44020000    # 520.0f

    const/high16 v3, 0x42200000    # 40.0f

    const/4 v10, 0x0

    if-eq v2, v8, :cond_a

    if-eq v2, v5, :cond_7

    goto/16 :goto_24

    :cond_7
    move-object v2, v1

    check-cast v2, Lcom/prineside/tdi2/items/GateItem;

    iget-object v2, v2, Lcom/prineside/tdi2/items/GateItem;->gate:Lcom/prineside/tdi2/Gate;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Gate;->getType()Lcom/prineside/tdi2/enums/GateType;

    move-result-object v5

    sget-object v8, Lcom/prineside/tdi2/enums/GateType;->BARRIER_TYPE:Lcom/prineside/tdi2/enums/GateType;

    if-ne v5, v8, :cond_9

    check-cast v2, Lcom/prineside/tdi2/gates/BarrierTypeGate;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v8, v8, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v12, "blocked_enemies"

    invoke-virtual {v8, v12}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v6

    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v12, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v5, v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v6, 0x3e8f5c29    # 0.28f

    invoke-virtual {v5, v14, v14, v14, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v6, 0x44430000    # 780.0f

    invoke-virtual {v5, v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v6, 0x41880000    # 17.0f

    invoke-virtual {v5, v11, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const v7, 0x43ac8000    # 345.0f

    invoke-virtual {v6, v13, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v7, 0x43d20000    # 420.0f

    invoke-virtual {v6, v10, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v2, v2, Lcom/prineside/tdi2/gates/BarrierTypeGate;->blockedEnemies:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/enums/EnemyType;

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v12, 0x44160000    # 600.0f

    invoke-virtual {v8, v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v12, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->B:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v12, v6}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v12

    invoke-virtual {v12}, Lcom/prineside/tdi2/Enemy$Factory;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v12

    invoke-direct {v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    const/high16 v12, 0x40c00000    # 6.0f

    const/high16 v14, 0x42400000    # 48.0f

    invoke-virtual {v8, v14, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v8, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v12, v6}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prineside/tdi2/Enemy$Factory;->getTitle()Ljava/lang/String;

    move-result-object v6

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x18

    invoke-virtual {v12, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v12

    invoke-direct {v8, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v8, v11, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v8, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6, v13, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v7, 0x40800000    # 4.0f

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    goto/16 :goto_4

    :cond_8
    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto/16 :goto_24

    :cond_9
    invoke-virtual {v2}, Lcom/prineside/tdi2/Gate;->getType()Lcom/prineside/tdi2/enums/GateType;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/enums/GateType;->TELEPORT:Lcom/prineside/tdi2/enums/GateType;

    if-ne v5, v6, :cond_3a

    check-cast v2, Lcom/prineside/tdi2/gates/TeleportGate;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->gateManager:Lcom/prineside/tdi2/managers/GateManager;

    invoke-virtual {v7, v6}, Lcom/prineside/tdi2/managers/GateManager;->getFactory(Lcom/prineside/tdi2/enums/GateType;)Lcom/prineside/tdi2/Gate$Factory;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/prineside/tdi2/Gate$Factory;->getDescription(Lcom/prineside/tdi2/Gate;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/prineside/tdi2/gates/TeleportGate;->INDEX_NAMES:[Ljava/lang/String;

    iget v7, v2, Lcom/prineside/tdi2/gates/TeleportGate;->index:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/prineside/tdi2/gates/TeleportGate;->index:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x18

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v7

    sget-object v8, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v5, v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v2, 0x44430000    # 780.0f

    invoke-virtual {v5, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v2, 0x43dc0000    # 440.0f

    const/high16 v6, 0x41880000    # 17.0f

    invoke-virtual {v5, v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto/16 :goto_24

    :cond_a
    move-object v2, v1

    check-cast v2, Lcom/prineside/tdi2/items/TileItem;

    iget-object v6, v2, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v8, v0}, Lcom/prineside/tdi2/Tile;->fillMapEditorMenu(Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)V

    sget-object v6, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$18;->b:[I

    iget-object v8, v2, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    iget-object v8, v8, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v6, v6, v8

    const/high16 v8, 0x41000000    # 8.0f

    const/16 v12, 0x10

    const/high16 v11, 0x43be0000    # 380.0f

    const/high16 v15, 0x41800000    # 16.0f

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_24

    :pswitch_0
    iget-object v2, v2, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    check-cast v2, Lcom/prineside/tdi2/tiles/CoreTile;

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeCols()I

    move-result v6

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeRows()I

    move-result v7

    int-to-float v11, v6

    const/high16 v12, 0x42a00000    # 80.0f

    mul-float v11, v11, v12

    sub-float v11, v13, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    const v12, 0x443cc000    # 755.0f

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v7, :cond_3a

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v6, :cond_15

    invoke-virtual {v2, v3, v14}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgrade(II)Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    move-result-object v13

    if-nez v13, :cond_c

    move-object/from16 v18, v2

    :cond_b
    move v12, v6

    move/from16 v17, v7

    const/4 v15, 0x2

    goto/16 :goto_e

    :cond_c
    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    int-to-float v5, v3

    const/high16 v16, 0x42a00000    # 80.0f

    mul-float v5, v5, v16

    add-float/2addr v5, v11

    int-to-float v4, v14

    mul-float v4, v4, v16

    sub-float v4, v12, v4

    invoke-virtual {v10, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    new-instance v4, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$17;

    invoke-direct {v4, v0, v3, v14}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$17;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;II)V

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/TileManager$Factories;->CORE:Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/CoreTile;->getTier()Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->getTierColor(Lcom/prineside/tdi2/tiles/CoreTile$Tier;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v5, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v12, 0x42800000    # 64.0f

    invoke-virtual {v5, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v5, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    new-instance v12, Lcom/badlogic/gdx/graphics/Color;

    const v8, 0x1b1b1bff

    invoke-direct {v12, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v5, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v10, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-boolean v5, v13, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    if-eqz v5, :cond_d

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->triggeredActionManager:Lcom/prineside/tdi2/managers/TriggeredActionManager;

    invoke-virtual {v13}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getActionType()Lcom/prineside/tdi2/enums/TriggeredActionType;

    move-result-object v8

    sget-object v12, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v18, v2

    const/high16 v2, 0x42400000    # 48.0f

    invoke-virtual {v5, v8, v2, v12}, Lcom/prineside/tdi2/managers/TriggeredActionManager;->generateIcon(Lcom/prineside/tdi2/enums/TriggeredActionType;FLcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v5

    invoke-virtual {v5, v15, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v10, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_8

    :cond_d
    move-object/from16 v18, v2

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v13}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->getIcon()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    const/4 v5, 0x0

    :goto_7
    iget v8, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v8, :cond_e

    iget-object v8, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object v8, v8, v5

    const/high16 v12, 0x42400000    # 48.0f

    invoke-virtual {v8, v15, v15, v12}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->createImage(FFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_e
    :goto_8
    sget-object v2, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->values:[Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    array-length v5, v2

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v5, :cond_10

    aget-object v12, v2, v8

    invoke-virtual {v13, v12}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->hasLink(Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;)Z

    move-result v19

    if-eqz v19, :cond_f

    move-object/from16 v19, v2

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    invoke-virtual {v2, v15, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v20, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$18;->a:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v12, v20, v12

    const/high16 v15, -0x3f000000    # -8.0f

    move/from16 v21, v5

    const/high16 v5, 0x42900000    # 72.0f

    packed-switch v12, :pswitch_data_1

    goto/16 :goto_a

    :pswitch_1
    invoke-virtual {v2, v5, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v12, "tiny-arrow-bottom-right"

    invoke-virtual {v5, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto/16 :goto_a

    :pswitch_2
    invoke-virtual {v2, v15, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v12, "tiny-arrow-bottom-left"

    invoke-virtual {v5, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_a

    :pswitch_3
    invoke-virtual {v2, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v12, "tiny-arrow-top-right"

    invoke-virtual {v5, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_a

    :pswitch_4
    invoke-virtual {v2, v15, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v12, "tiny-arrow-top-left"

    invoke-virtual {v5, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_a

    :pswitch_5
    const/high16 v12, 0x42000000    # 32.0f

    invoke-virtual {v2, v5, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v15, "tiny-arrow-right"

    invoke-virtual {v5, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_a

    :pswitch_6
    const/high16 v12, 0x42000000    # 32.0f

    invoke-virtual {v2, v15, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v15, "tiny-arrow-left"

    invoke-virtual {v5, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_a

    :pswitch_7
    const/high16 v12, 0x42000000    # 32.0f

    invoke-virtual {v2, v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v15, "tiny-arrow-bottom"

    invoke-virtual {v5, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_a

    :pswitch_8
    const/high16 v12, 0x42000000    # 32.0f

    invoke-virtual {v2, v12, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v12, "tiny-arrow-top"

    invoke-virtual {v5, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    :goto_a
    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_b

    :cond_f
    move-object/from16 v19, v2

    move/from16 v21, v5

    :goto_b
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v19

    move/from16 v5, v21

    const/high16 v15, 0x41800000    # 16.0f

    goto/16 :goto_9

    :cond_10
    iget v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->x:I

    if-ne v3, v2, :cond_b

    iget v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->y:I

    if-ne v14, v2, :cond_b

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "ui-core-menu-upgrade-selection"

    invoke-virtual {v5, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v5, 0x42940000    # 74.0f

    const/high16 v8, 0x42940000    # 74.0f

    invoke-virtual {v2, v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v8, 0x40400000    # 3.0f

    invoke-virtual {v2, v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v2, v13, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget-object v5, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v8, v5

    check-cast v8, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    const/4 v10, 0x0

    aget-object v8, v8, v10

    iget v8, v8, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    check-cast v5, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v10, 0x1

    sub-int/2addr v2, v10

    aget-object v2, v5, v2

    iget v2, v2, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    iget-boolean v5, v13, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    if-eqz v5, :cond_12

    cmpl-float v5, v8, v2

    if-nez v5, :cond_11

    move v12, v6

    float-to-double v5, v8

    const/4 v15, 0x2

    invoke-static {v5, v6, v15, v10}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v17, v7

    goto/16 :goto_c

    :cond_11
    move v12, v6

    const/4 v15, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v7

    float-to-double v6, v8

    invoke-static {v6, v7, v15, v10}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-double v6, v2

    invoke-static {v6, v7, v15, v10}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_12
    move v12, v6

    move/from16 v17, v7

    const/4 v15, 0x2

    cmpl-float v5, v8, v2

    if-nez v5, :cond_13

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    float-to-double v5, v8

    invoke-virtual {v13}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/prineside/tdi2/managers/GameValueManager;->getUnits(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Lcom/prineside/tdi2/managers/GameValueManager;->formatEffectValue(DLcom/prineside/tdi2/managers/GameValueManager$ValueUnits;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    float-to-double v7, v8

    invoke-virtual {v13}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/prineside/tdi2/managers/GameValueManager;->getUnits(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v10}, Lcom/prineside/tdi2/managers/GameValueManager;->formatEffectValue(DLcom/prineside/tdi2/managers/GameValueManager$ValueUnits;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    float-to-double v7, v2

    invoke-virtual {v13}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/prineside/tdi2/managers/GameValueManager;->getUnits(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    move-result-object v2

    invoke-virtual {v6, v7, v8, v2}, Lcom/prineside/tdi2/managers/GameValueManager;->formatEffectValue(DLcom/prineside/tdi2/managers/GameValueManager$ValueUnits;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_c
    iget-boolean v5, v13, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    if-eqz v5, :cond_14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " [#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Color;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[]"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->triggeredActionManager:Lcom/prineside/tdi2/managers/TriggeredActionManager;

    invoke-virtual {v13}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getActionType()Lcom/prineside/tdi2/enums/TriggeredActionType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/TriggeredActionManager;->getTitleAlias(Lcom/prineside/tdi2/enums/TriggeredActionType;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v7, v6

    invoke-virtual {v5, v4, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v13}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/GameValueManager;->getTitle(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " [#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Color;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[]"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_d
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x18

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v2, 0x43a00000    # 320.0f

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v2, 0x41900000    # 18.0f

    const/high16 v5, 0x44020000    # 520.0f

    invoke-virtual {v4, v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :goto_e
    add-int/lit8 v3, v3, 0x1

    move v6, v12

    move/from16 v7, v17

    move-object/from16 v2, v18

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v8, 0x41000000    # 8.0f

    const/4 v10, 0x0

    const v12, 0x443cc000    # 755.0f

    const/high16 v13, 0x44020000    # 520.0f

    const/high16 v15, 0x41800000    # 16.0f

    goto/16 :goto_6

    :cond_15
    move-object/from16 v18, v2

    move v12, v6

    move/from16 v17, v7

    const/4 v15, 0x2

    add-int/lit8 v14, v14, 0x1

    const/high16 v3, 0x42200000    # 40.0f

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v8, 0x41000000    # 8.0f

    const/4 v10, 0x0

    const v12, 0x443cc000    # 755.0f

    const/high16 v13, 0x44020000    # 520.0f

    const/high16 v15, 0x41800000    # 16.0f

    goto/16 :goto_5

    :pswitch_9
    iget-object v2, v2, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    check-cast v2, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const v4, 0x44458000    # 790.0f

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x42000000    # 32.0f

    const/high16 v5, 0x44020000    # 520.0f

    invoke-virtual {v3, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getIdColors()[Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    array-length v6, v4

    int-to-float v6, v6

    div-float v13, v5, v6

    array-length v5, v4

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v5, :cond_16

    aget-object v8, v4, v6

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v15, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v15

    invoke-direct {v10, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    const/high16 v10, 0x41000000    # 8.0f

    invoke-virtual {v8, v13, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_16
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v6, 0x3e0f5c29    # 0.14f

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v8, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    array-length v4, v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x44020000    # 520.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    const-string v5, "Track"

    invoke-direct {v3, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v4, 0x443b8000    # 750.0f

    const/high16 v5, 0x42200000    # 40.0f

    invoke-virtual {v3, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    const-string v5, "Copy from level:"

    invoke-direct {v3, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v4, 0x443b8000    # 750.0f

    invoke-virtual {v3, v11, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v3, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    invoke-virtual {v3, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const v4, 0x3f0f5c29    # 0.56f

    invoke-virtual {v3, v14, v14, v14, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->selectBoxStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    const-string v4, "map_editor_menu_music_copy_from_select"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    new-instance v4, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 v5, 0x0

    :goto_10
    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v7, v6, Lcom/prineside/tdi2/managers/BasicLevelManager;->levelsOrdered:Lcom/badlogic/gdx/utils/Array;

    iget v8, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v8, :cond_18

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/BasicLevel;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/BasicLevelManager;->isOpened(Lcom/prineside/tdi2/BasicLevel;)Z

    move-result v6

    if-eqz v6, :cond_17

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/BasicLevelManager;->isVisible(Lcom/prineside/tdi2/BasicLevel;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {v7}, Lcom/prineside/tdi2/BasicLevel;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v6

    iget-object v6, v6, Lcom/prineside/tdi2/Map;->xmMusicTrackTile:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    if-eqz v6, :cond_17

    iget-object v6, v7, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_17
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_18
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems(Lcom/badlogic/gdx/utils/Array;)V

    const/high16 v4, 0x43c80000    # 400.0f

    const v5, 0x44388000    # 738.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x42a00000    # 80.0f

    const/high16 v5, 0x42400000    # 48.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getTrackBase64()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->textFieldStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v4, v5, v6}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    const/high16 v5, 0x43dc0000    # 440.0f

    const/high16 v6, 0x42800000    # 64.0f

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v5, 0x44278000    # 670.0f

    const/high16 v6, 0x42200000    # 40.0f

    invoke-virtual {v4, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setProgrammaticChangeEvents(Z)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$15;

    invoke-direct {v5, v0, v4, v2}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$15;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;Lcom/prineside/tdi2/tiles/XmMusicTrackTile;)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    new-instance v5, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$16;

    invoke-direct {v5, v0, v3, v4}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$16;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getModule()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v3

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/SettingsManager;->isMusicEnabled()Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v3, :cond_19

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {v2, v3, v14}, Lcom/prineside/tdi2/managers/MusicManager;->playMusic(Lcom/prineside/tdi2/ibxm/Module;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_11

    :catch_0
    nop

    :cond_19
    :goto_11
    if-eqz v3, :cond_3a

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v4, v3, Lcom/prineside/tdi2/ibxm/Module;->songName:Ljava/lang/String;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x1e

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v4, 0x44160000    # 600.0f

    const/high16 v5, 0x42200000    # 40.0f

    invoke-virtual {v2, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v2, v3, Lcom/prineside/tdi2/ibxm/Module;->instruments:[Lcom/prineside/tdi2/ibxm/Instrument;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_12
    if-ge v4, v3, :cond_3a

    aget-object v6, v2, v4

    iget-object v6, v6, Lcom/prineside/tdi2/ibxm/Instrument;->name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1a

    goto :goto_13

    :cond_1a
    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x18

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v6, 0x440c0000    # 560.0f

    mul-int/lit8 v8, v5, 0x20

    int-to-float v8, v8

    sub-float/2addr v6, v8

    const/high16 v8, 0x42200000    # 40.0f

    invoke-virtual {v7, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v5, v5, 0x1

    :goto_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :pswitch_a
    iget-object v2, v2, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    check-cast v2, Lcom/prineside/tdi2/tiles/BossTile;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/high16 v5, 0x43960000    # 300.0f

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v5, 0x44020000    # 520.0f

    invoke-virtual {v4, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/BossTile;->getBossTileTypeName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x1e

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/BossTile;->getGameValues()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v5, :cond_1f

    const/4 v5, 0x0

    :goto_14
    iget v6, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v6, :cond_20

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/GameValueConfig;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v13, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v13

    invoke-direct {v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v13, 0x42500000    # 52.0f

    const/high16 v15, 0x44020000    # 520.0f

    invoke-virtual {v10, v15, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v13, Lcom/badlogic/gdx/graphics/Color;

    const v15, 0x252525ff

    invoke-direct {v13, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget-object v13, v6, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v10, v13}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->getIcon()Lcom/badlogic/gdx/utils/Array;

    move-result-object v10

    const/4 v13, 0x0

    :goto_15
    iget v15, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v13, v15, :cond_1b

    iget-object v15, v10, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v15, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object v15, v15, v13

    const/high16 v14, 0x40c00000    # 6.0f

    const/high16 v7, 0x42200000    # 40.0f

    invoke-virtual {v15, v7, v14, v7}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->createImage(FFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v13, v13, 0x1

    const/16 v7, 0x15

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_15

    :cond_1b
    sget-object v7, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->D:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget-object v13, v6, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v10, v13}, Lcom/prineside/tdi2/managers/GameValueManager;->getTitle(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v10

    const/16 v13, 0x20

    if-le v10, v13, :cond_1c

    const/16 v10, 0x20

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const-string v10, "..."

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_1c
    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x18

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v13

    invoke-direct {v10, v7, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v13, 0x42c80000    # 100.0f

    const/high16 v14, 0x42500000    # 52.0f

    invoke-virtual {v10, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v13, 0x42c00000    # 96.0f

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget-object v13, v6, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v10, v13}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    move-result-object v10

    iget-object v10, v10, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->units:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    sget-object v13, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;->BOOLEAN:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    if-ne v10, v13, :cond_1d

    iget-wide v13, v6, Lcom/prineside/tdi2/GameValueConfig;->value:D

    const-wide/16 v18, 0x0

    cmpl-double v6, v13, v18

    if-nez v6, :cond_1e

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v10, "disabled"

    invoke-virtual {v6, v10}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_16

    :cond_1d
    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget-wide v14, v6, Lcom/prineside/tdi2/GameValueConfig;->value:D

    invoke-virtual {v13, v14, v15, v10}, Lcom/prineside/tdi2/managers/GameValueManager;->formatEffectValue(DLcom/prineside/tdi2/managers/GameValueManager$ValueUnits;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-boolean v6, v6, Lcom/prineside/tdi2/GameValueConfig;->overwrite:Z

    if-eqz v6, :cond_1e

    const/16 v6, 0x3d

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->setCharAt(IC)V

    :cond_1e
    :goto_16
    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x18

    invoke-virtual {v10, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v10

    invoke-direct {v6, v7, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v11, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v10, 0x42500000    # 52.0f

    invoke-virtual {v6, v7, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v7, 0x44020000    # 520.0f

    invoke-virtual {v6, v7, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v7, 0x40800000    # 4.0f

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    add-int/lit8 v5, v5, 0x1

    const/16 v7, 0x15

    const/high16 v14, 0x3f800000    # 1.0f

    goto/16 :goto_14

    :cond_1f
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "tile_has_no_effects"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x18

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x42500000    # 52.0f

    const/high16 v6, 0x44020000    # 520.0f

    invoke-virtual {v4, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_20
    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/BossTile;->getBossWavesConfig()Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    move-result-object v2

    iget-object v4, v2, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->bossWavePairs:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v4, :cond_22

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v7, 0x44020000    # 520.0f

    invoke-virtual {v5, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "enemy_name_BOSS"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x15

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-virtual {v5, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, 0x42200000    # 40.0f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v6, 0x3e8f5c29    # 0.28f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v7, v7, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "main_ui_wave_title"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x15

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-virtual {v5, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v6, 0x0

    invoke-virtual {v5, v11, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v5, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const v6, 0x3e8f5c29    # 0.28f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v7, v7, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v4, 0x0

    :goto_17
    iget-object v5, v2, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->bossWavePairs:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_22

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;

    aget-object v5, v5, v4

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v8, 0x42500000    # 52.0f

    const/high16 v10, 0x44020000    # 520.0f

    invoke-virtual {v7, v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    const v10, 0x252525ff

    invoke-direct {v8, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v8, v5, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;->bossType:Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/EnemyManager;->getBossEnemyType(Lcom/prineside/tdi2/enums/BossType;)Lcom/prineside/tdi2/enums/EnemyType;

    move-result-object v7

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v10, v7}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v10

    invoke-virtual {v10}, Lcom/prineside/tdi2/Enemy$Factory;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    const/high16 v10, 0x42400000    # 48.0f

    invoke-virtual {v8, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v13, 0x41f00000    # 30.0f

    const/high16 v14, 0x40000000    # 2.0f

    invoke-virtual {v8, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v13, v7}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/prineside/tdi2/Enemy$Factory;->getTitle()Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x15

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v13

    invoke-direct {v8, v7, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v7, 0x42800000    # 64.0f

    const/high16 v13, 0x42500000    # 52.0f

    invoke-virtual {v8, v7, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v7, 0x42c00000    # 96.0f

    const/4 v13, 0x0

    invoke-virtual {v8, v7, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget v5, v5, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;->wave:I

    iget v7, v2, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->startDelay:I

    add-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->repeatCount:I

    if-gtz v8, :cond_21

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->cycleLength:I

    add-int/2addr v5, v7

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_21
    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x15

    invoke-virtual {v8, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v8, 0x42500000    # 52.0f

    invoke-virtual {v5, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v7, 0x0

    invoke-virtual {v5, v11, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v5, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v6, 0x44020000    # 520.0f

    invoke-virtual {v5, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v6, 0x40800000    # 4.0f

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_17

    :cond_22
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto/16 :goto_24

    :pswitch_b
    iget-object v2, v2, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    check-cast v2, Lcom/prineside/tdi2/tiles/TargetTile;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/high16 v5, 0x43c80000    # 400.0f

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v5, 0x43d20000    # 420.0f

    const/high16 v6, 0x44020000    # 520.0f

    invoke-virtual {v4, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/TargetTile;->isUseStockGameValues()Z

    move-result v4

    if-eqz v4, :cond_23

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "portal_disables_researches"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x18

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x43dc0000    # 440.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x42200000    # 40.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_23
    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/TargetTile;->isDisableAbilities()Z

    move-result v4

    if-eqz v4, :cond_24

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "portal_disables_abilities"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x18

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x43dc0000    # 440.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x42200000    # 40.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_24
    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/TargetTile;->isWalkableTiles()Z

    move-result v4

    if-eqz v4, :cond_25

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    sget-object v6, Lcom/prineside/tdi2/enums/GameValueType;->ENEMIES_WALK_ON_PLATFORMS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/GameValueManager;->getTitle(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x18

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x43dc0000    # 440.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x42200000    # 40.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_25
    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/TargetTile;->getGameValues()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    const/4 v4, 0x0

    :goto_18
    iget v5, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v5, :cond_29

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/GameValueConfig;

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v10, 0x42500000    # 52.0f

    const/high16 v13, 0x44020000    # 520.0f

    invoke-virtual {v8, v13, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v10, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->B:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v8, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->D:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget-object v10, v5, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v7, v10}, Lcom/prineside/tdi2/managers/GameValueManager;->getTitle(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v7

    const/16 v10, 0x22

    if-le v7, v10, :cond_26

    const/16 v7, 0x22

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const-string v7, "..."

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_26
    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x18

    invoke-virtual {v10, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v10

    invoke-direct {v7, v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v10, 0x42c80000    # 100.0f

    const/high16 v13, 0x42500000    # 52.0f

    invoke-virtual {v7, v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v10, 0x42200000    # 40.0f

    const/4 v13, 0x0

    invoke-virtual {v7, v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-boolean v7, v5, Lcom/prineside/tdi2/GameValueConfig;->allowBonuses:Z

    if-nez v7, :cond_27

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "icon-check"

    invoke-virtual {v10, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    invoke-direct {v7, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v10, 0x42000000    # 32.0f

    invoke-virtual {v7, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v10, 0x43b10000    # 354.0f

    const/high16 v13, 0x41200000    # 10.0f

    invoke-virtual {v7, v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_27
    const/4 v7, 0x0

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget-object v10, v5, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v7, v10}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->units:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    sget-object v10, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;->BOOLEAN:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    if-eq v7, v10, :cond_28

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget-wide v13, v5, Lcom/prineside/tdi2/GameValueConfig;->value:D

    invoke-virtual {v10, v13, v14, v7}, Lcom/prineside/tdi2/managers/GameValueManager;->formatEffectValue(DLcom/prineside/tdi2/managers/GameValueManager$ValueUnits;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-boolean v5, v5, Lcom/prineside/tdi2/GameValueConfig;->overwrite:Z

    if-eqz v5, :cond_28

    const/16 v5, 0x3d

    const/4 v7, 0x0

    invoke-virtual {v8, v7, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->setCharAt(IC)V

    :cond_28
    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v10, 0x18

    invoke-virtual {v7, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    invoke-direct {v5, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 v7, 0x0

    invoke-virtual {v5, v11, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v8, 0x42500000    # 52.0f

    invoke-virtual {v5, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v5, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v6, 0x44020000    # 520.0f

    invoke-virtual {v5, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v6, 0x40800000    # 4.0f

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_18

    :cond_29
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto/16 :goto_24

    :pswitch_c
    iget-object v2, v2, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    check-cast v2, Lcom/prineside/tdi2/tiles/GameValueTile;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v6, 0x42500000    # 52.0f

    const/high16 v7, 0x44020000    # 520.0f

    invoke-virtual {v5, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v6, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->B:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v5, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->D:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/GameValueTile;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/GameValueManager;->getTitle(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v4

    const/16 v6, 0x22

    if-le v4, v6, :cond_2a

    const/16 v4, 0x22

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const-string v4, "..."

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_2a
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x18

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v7, 0x42500000    # 52.0f

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, 0x42200000    # 40.0f

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/GameValueTile;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->units:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    sget-object v6, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;->BOOLEAN:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    if-eq v4, v6, :cond_2b

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/GameValueTile;->getDelta()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8, v4}, Lcom/prineside/tdi2/managers/GameValueManager;->formatEffectValue(DLcom/prineside/tdi2/managers/GameValueManager$ValueUnits;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_2b
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x18

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v11, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v7, 0x42500000    # 52.0f

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/high16 v4, 0x44020000    # 520.0f

    invoke-virtual {v3, v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v4, 0x443cc000    # 755.0f

    invoke-virtual {v3, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/GameValueTile;->isOverwrite()Z

    move-result v2

    if-eqz v2, :cond_3a

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "overwrites_other_effects"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v4, 0x42500000    # 52.0f

    const/high16 v5, 0x44020000    # 520.0f

    invoke-virtual {v2, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v4, -0x3da00000    # -56.0f

    const/high16 v5, 0x42200000    # 40.0f

    invoke-virtual {v2, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto/16 :goto_24

    :pswitch_d
    iget-object v3, v2, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    check-cast v3, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget v4, v3, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    if-lez v4, :cond_2c

    iget-object v4, v3, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    if-eqz v4, :cond_2c

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/high16 v5, 0x44340000    # 720.0f

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v6, 0x44020000    # 520.0f

    invoke-virtual {v4, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/prineside/tdi2/ui/actors/EffectTooltip;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v7, v3, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-static {v7}, Lcom/prineside/tdi2/SpaceTileBonus;->getIconName(Lcom/prineside/tdi2/enums/SpaceTileBonusType;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    iget-object v7, v3, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    iget v8, v3, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    invoke-static {v7, v8}, Lcom/prineside/tdi2/SpaceTileBonus;->getDetailedName(Lcom/prineside/tdi2/enums/SpaceTileBonusType;I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/prineside/tdi2/ui/actors/EffectTooltip;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/CharSequence;)V

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "tile_effect"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/ui/actors/EffectTooltip;->setHint(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/actors/EffectTooltip;

    iget-object v6, v3, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-static {v6}, Lcom/prineside/tdi2/SpaceTileBonus;->getBrightColor(Lcom/prineside/tdi2/enums/SpaceTileBonusType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/ui/actors/EffectTooltip;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_2c
    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/ProgressManager;->isDeveloperModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_3a

    iget-object v2, v2, Lcom/prineside/tdi2/items/TileItem;->tile:Lcom/prineside/tdi2/Tile;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tile;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v2

    if-eqz v2, :cond_3a

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->selectBoxStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    const-string v4, "map_editor_menu_tower_type_select"

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    new-instance v4, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "no_tower"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 v5, 0x0

    :goto_19
    sget-object v6, Lcom/prineside/tdi2/enums/TowerType;->values:[Lcom/prineside/tdi2/enums/TowerType;

    array-length v7, v6

    if-ge v5, v7, :cond_2d

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_2d
    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems(Lcom/badlogic/gdx/utils/Array;)V

    const v4, 0x44228000    # 650.0f

    const/high16 v5, 0x42200000    # 40.0f

    invoke-virtual {v2, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x439c0000    # 312.0f

    const/high16 v5, 0x42800000    # 64.0f

    invoke-virtual {v2, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v4, v3, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v4, :cond_2e

    iget-object v5, v4, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v6, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v5, v6, :cond_2e

    check-cast v4, Lcom/prineside/tdi2/Tower;

    iget-object v4, v4, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_2e
    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "no_tower"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    :goto_1a
    new-instance v4, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$5;

    invoke-direct {v4, v0, v2, v3}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$5;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;Lcom/prineside/tdi2/tiles/PlatformTile;)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v2, v3, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v2, :cond_2f

    iget-object v2, v2, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v4, Lcom/prineside/tdi2/enums/BuildingType;->MODIFIER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v2, v4, :cond_32

    :cond_2f
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->selectBoxStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    const-string v4, "map_editor_menu_modifier_type_select"

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    new-instance v4, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    const-string v5, "No modifier"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 v5, 0x0

    :goto_1b
    sget-object v6, Lcom/prineside/tdi2/enums/ModifierType;->values:[Lcom/prineside/tdi2/enums/ModifierType;

    array-length v7, v6

    if-ge v5, v7, :cond_30

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_30
    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems(Lcom/badlogic/gdx/utils/Array;)V

    const v4, 0x440ec000    # 571.0f

    const/high16 v5, 0x42200000    # 40.0f

    invoke-virtual {v2, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x439c0000    # 312.0f

    const/high16 v5, 0x42800000    # 64.0f

    invoke-virtual {v2, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v4, v3, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v4, :cond_31

    iget-object v5, v4, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v6, Lcom/prineside/tdi2/enums/BuildingType;->MODIFIER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v5, v6, :cond_31

    check-cast v4, Lcom/prineside/tdi2/Modifier;

    iget-object v4, v4, Lcom/prineside/tdi2/Modifier;->type:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    goto :goto_1c

    :cond_31
    const-string v4, "No modifier"

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    :goto_1c
    new-instance v4, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$6;

    invoke-direct {v4, v0, v2, v3}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$6;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;Lcom/prineside/tdi2/tiles/PlatformTile;)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    :cond_32
    iget-object v2, v3, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v2, :cond_3a

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "icon-triangle-left"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v4, 0x43c40000    # 392.0f

    const v5, 0x44268000    # 666.0f

    invoke-virtual {v2, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x42000000    # 32.0f

    invoke-virtual {v2, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v5, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$7;

    invoke-direct {v5, v0, v3}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$7;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;Lcom/prineside/tdi2/tiles/PlatformTile;)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-triangle-right"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v5, 0x43e40000    # 456.0f

    const v6, 0x44268000    # 666.0f

    invoke-virtual {v2, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v5, 0x42000000    # 32.0f

    invoke-virtual {v2, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v5, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$8;

    invoke-direct {v5, v0, v3}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$8;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;Lcom/prineside/tdi2/tiles/PlatformTile;)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-triangle-top"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v5, 0x43d40000    # 424.0f

    const v6, 0x442e8000    # 698.0f

    invoke-virtual {v2, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v5, 0x42000000    # 32.0f

    invoke-virtual {v2, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v5, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$9;

    invoke-direct {v5, v0, v3}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$9;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;Lcom/prineside/tdi2/tiles/PlatformTile;)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-triangle-bottom"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v5, 0x43d40000    # 424.0f

    const v6, 0x441e8000    # 634.0f

    invoke-virtual {v2, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v5, 0x42000000    # 32.0f

    invoke-virtual {v2, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v4, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$10;

    invoke-direct {v4, v0, v3}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$10;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;Lcom/prineside/tdi2/tiles/PlatformTile;)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v2, v3, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    iget-object v3, v2, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v4, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v3, v4, :cond_39

    check-cast v2, Lcom/prineside/tdi2/Tower;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;

    invoke-direct {v3}, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;-><init>()V

    const/high16 v4, 0x42d20000    # 105.0f

    const v5, 0x44098000    # 550.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v4, v2, Lcom/prineside/tdi2/Tower;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v5}, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->setStrategy(Lcom/prineside/tdi2/Tower$AimStrategy;ZZ)V

    new-instance v4, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$11;

    invoke-direct {v4, v0, v2}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$11;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;Lcom/prineside/tdi2/Tower;)V

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->addListener(Lcom/prineside/tdi2/ui/actors/AimStrategySelector$AimStrategySelectorListener;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->selectBoxStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    const-string v4, "map_editor_menu_tower_experience_select"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    new-instance v4, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    const/4 v5, 0x1

    :goto_1d
    const/16 v6, 0x100

    if-gt v5, v6, :cond_33

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/prineside/tdi2/Tower;->LEVEL_EXPERIENCE_MILESTONES:[I

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "LVL"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_33
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems(Lcom/badlogic/gdx/utils/Array;)V

    const/high16 v4, 0x43e60000    # 460.0f

    const/high16 v5, 0x42200000    # 40.0f

    invoke-virtual {v3, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x432a0000    # 170.0f

    const/high16 v5, 0x42800000    # 64.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v2, Lcom/prineside/tdi2/Tower;->experience:F

    invoke-static {v5}, Ljava/lang/StrictMath;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/prineside/tdi2/Tower;->experience:F

    invoke-static {v5}, Lcom/prineside/tdi2/Tower;->getLevelForExperience(F)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "LVL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    new-instance v4, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$12;

    invoke-direct {v4, v0, v3, v2}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$12;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;Lcom/prineside/tdi2/Tower;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->selectBoxStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    const-string v4, "map_editor_menu_tower_upgrade_level_select"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    new-instance v4, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    const/4 v5, 0x0

    :goto_1e
    const/16 v6, 0xa

    if-gt v5, v6, :cond_34

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_34
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems(Lcom/badlogic/gdx/utils/Array;)V

    const/high16 v4, 0x435c0000    # 220.0f

    const/high16 v5, 0x43e60000    # 460.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x42a00000    # 80.0f

    const/high16 v5, 0x42800000    # 64.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tower;->getUpgradeLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    new-instance v4, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$13;

    invoke-direct {v4, v0, v3, v2}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$13;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;Lcom/prineside/tdi2/Tower;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    const/4 v3, 0x0

    :goto_1f
    const/4 v4, 0x6

    if-ge v3, v4, :cond_3a

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v5, 0x42600000    # 56.0f

    const/high16 v6, 0x42600000    # 56.0f

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    int-to-float v5, v3

    mul-float v5, v5, v6

    const/high16 v6, 0x42200000    # 40.0f

    add-float/2addr v5, v6

    invoke-virtual {v4, v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v5, 0x0

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v7, v2, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prineside/tdi2/Tower$Factory;->getBaseTextures()Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    const/4 v7, 0x0

    :goto_20
    iget v8, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v8, :cond_35

    iget-object v5, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object v5, v5, v7

    const/high16 v8, 0x42600000    # 56.0f

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v9, v8}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->createImage(FFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v5

    const v8, 0x3e8f5c29    # 0.28f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v5, v9, v9, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    :cond_35
    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v7, v2, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/prineside/tdi2/Tower$Factory;->getAbilityTextures(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    const/4 v7, 0x0

    :goto_21
    iget v8, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v8, :cond_37

    iget-object v8, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object v8, v8, v7

    const/high16 v9, 0x42600000    # 56.0f

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v10, v9}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->createImage(FFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v8

    sget-object v9, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v9, v2, Lcom/prineside/tdi2/Tower;->installedAbilities:[Z

    aget-boolean v9, v9, v3

    if-nez v9, :cond_36

    const v9, 0x3f0f5c29    # 0.56f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v8, v10, v10, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    goto :goto_22

    :cond_36
    const/high16 v10, 0x3f800000    # 1.0f

    :goto_22
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    :cond_37
    const/high16 v10, 0x3f800000    # 1.0f

    iget-object v6, v2, Lcom/prineside/tdi2/Tower;->installedAbilities:[Z

    aget-boolean v6, v6, v3

    if-nez v6, :cond_38

    if-eqz v5, :cond_38

    const v6, 0x3f0f5c29    # 0.56f

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v7, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    goto :goto_23

    :cond_38
    const/4 v7, 0x0

    :goto_23
    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v5, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$14;

    invoke-direct {v5, v0, v2, v3}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$14;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;Lcom/prineside/tdi2/Tower;I)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1f

    :cond_39
    sget-object v4, Lcom/prineside/tdi2/enums/BuildingType;->MODIFIER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v3, v4, :cond_3a

    check-cast v2, Lcom/prineside/tdi2/Modifier;

    :cond_3a
    :goto_24
    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/Item;->canBeSold()Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    const-class v3, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/Item;->addSellItems(Lcom/badlogic/gdx/utils/Array;)V

    const/4 v10, 0x0

    :goto_25
    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v10, v1, :cond_3d

    iget-object v1, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ItemStack;

    aget-object v1, v1, v10

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v4

    const/high16 v5, 0x42000000    # 32.0f

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/prineside/tdi2/Item;->generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v4

    const/high16 v6, 0x40800000    # 4.0f

    invoke-virtual {v4, v6, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x18

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    invoke-direct {v4, v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v4, v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v7, 0x42300000    # 44.0f

    invoke-virtual {v4, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x430c0000    # 140.0f

    const/high16 v7, 0x42200000    # 40.0f

    invoke-virtual {v3, v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    rem-int/lit8 v3, v10, 0x2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3b

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_3b
    add-int/lit8 v10, v10, 0x1

    goto :goto_25

    :cond_3c
    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_3d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setMinimized(Z)V
    .locals 6

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isUiAnimationsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->w:Z

    const/4 v2, 0x1

    const v3, 0x3e4ccccd    # 0.2f

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    mul-float v0, v0, v3

    sget-object v2, Lcom/badlogic/gdx/math/Interpolation;->pow2Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    invoke-static {v1, v1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v3, -0x3b960000    # -936.0f

    invoke-static {v1, v3, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v0

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->hide()Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v4, -0x3cfd0000    # -131.0f

    mul-float v0, v0, v3

    sget-object v3, Lcom/badlogic/gdx/math/Interpolation;->pow2Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    invoke-static {v1, v4, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v4

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->hide()Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v1, v1, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :goto_1
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    if-nez p1, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    :cond_0
    return-void
.end method
