.class public Lcom/prineside/tdi2/ui/components/MapEditorUi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/components/MapEditorUi$_MapEditorSystemListener;,
        Lcom/prineside/tdi2/ui/components/MapEditorUi$_ProgressManagerListener;
    }
.end annotation


# instance fields
.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public b:[Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public d:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public k:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public mapEditorHints:Lcom/prineside/tdi2/ui/components/MapEditorHints;

.field public p:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public q:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public s:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public t:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public v:Lcom/prineside/tdi2/GameSystemProvider;

.field public final w:Lcom/prineside/tdi2/ui/components/MapEditorUi$_MapEditorSystemListener;

.field public final x:Lcom/prineside/tdi2/ui/components/MapEditorUi$_ProgressManagerListener;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v3, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v4, 0x66

    const-string v5, "MapEditorUi"

    invoke-virtual {v2, v3, v4, v5}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->b:[Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v3, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v4, v3

    new-array v4, v4, [Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->s:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v4, Lcom/prineside/tdi2/ui/components/MapEditorUi$_MapEditorSystemListener;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/prineside/tdi2/ui/components/MapEditorUi$_MapEditorSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorUi;Lcom/prineside/tdi2/ui/components/MapEditorUi$1;)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->w:Lcom/prineside/tdi2/ui/components/MapEditorUi$_MapEditorSystemListener;

    new-instance v6, Lcom/prineside/tdi2/ui/components/MapEditorUi$_ProgressManagerListener;

    invoke-direct {v6, v0, v5}, Lcom/prineside/tdi2/ui/components/MapEditorUi$_ProgressManagerListener;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorUi;Lcom/prineside/tdi2/ui/components/MapEditorUi$1;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->x:Lcom/prineside/tdi2/ui/components/MapEditorUi$_ProgressManagerListener;

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->v:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v1, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    iget-object v5, v5, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/ProgressManager;->addListener(Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v4

    add-int/lit16 v4, v4, -0x438

    new-instance v5, Lcom/prineside/tdi2/ui/components/MapEditorHints;

    invoke-direct {v5}, Lcom/prineside/tdi2/ui/components/MapEditorHints;-><init>()V

    iput-object v5, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->mapEditorHints:Lcom/prineside/tdi2/ui/components/MapEditorHints;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    const-string v5, "main_map_editor_ui"

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v7}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x43100000    # 144.0f

    invoke-virtual {v5, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v7, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "icon-money"

    invoke-virtual {v7, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v7}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v9, 0x42900000    # 72.0f

    sub-float/2addr v7, v9

    const/high16 v10, 0x432a0000    # 170.0f

    invoke-virtual {v2, v10, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v7, 0x42000000    # 32.0f

    invoke-virtual {v2, v7, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v12, 0x18

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    const-string v13, "0"

    invoke-direct {v2, v13, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v11}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v9

    const/high16 v14, 0x43520000    # 210.0f

    invoke-virtual {v2, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v10, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    array-length v2, v3

    const/4 v14, 0x0

    const/4 v15, 0x1

    :goto_0
    if-ge v14, v2, :cond_1

    aget-object v11, v3, v14

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v6, v11}, Lcom/prineside/tdi2/managers/ProgressManager;->isResourceOpened(Lcom/prineside/tdi2/enums/ResourceType;)Z

    move-result v6

    if-eqz v6, :cond_0

    rem-int/lit8 v6, v15, 0x3

    int-to-float v6, v6

    const/high16 v16, 0x43160000    # 150.0f

    mul-float v6, v6, v16

    add-float/2addr v6, v10

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v8}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v8

    int-to-float v8, v8

    div-int/lit8 v10, v15, 0x3

    int-to-float v10, v10

    const/high16 v18, 0x42200000    # 40.0f

    mul-float v10, v10, v18

    sub-float/2addr v8, v10

    sub-float/2addr v8, v9

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    sget-object v19, Lcom/prineside/tdi2/Resource;->TEXTURE_REGION_NAMES:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    aget-object v12, v19, v20

    invoke-virtual {v9, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v10, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

    invoke-virtual {v9, v11}, Lcom/prineside/tdi2/managers/ResourceManager;->getColor(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v10, v7, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->s:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    move/from16 v20, v2

    const/16 v2, 0x18

    invoke-virtual {v7, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    invoke-direct {v12, v13, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    aput-object v12, v9, v10

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->s:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget-object v2, v2, v7

    const/high16 v7, 0x42000000    # 32.0f

    add-float/2addr v6, v7

    const/high16 v9, 0x41400000    # 12.0f

    add-float/2addr v6, v9

    invoke-virtual {v2, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->s:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v2, v2, v6

    const/high16 v6, 0x432a0000    # 170.0f

    invoke-virtual {v2, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->s:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v2, v2, v6

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_0
    move/from16 v20, v2

    :goto_1
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v20

    const/4 v6, 0x0

    const/high16 v7, 0x42000000    # 32.0f

    const/high16 v8, 0x43100000    # 144.0f

    const/high16 v9, 0x42900000    # 72.0f

    const/high16 v10, 0x432a0000    # 170.0f

    const/16 v12, 0x18

    goto/16 :goto_0

    :cond_1
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-time-accelerator"

    invoke-virtual {v3, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v3, 0x441b0000    # 620.0f

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v6}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42900000    # 72.0f

    sub-float/2addr v6, v7

    invoke-virtual {v2, v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v3, 0x42000000    # 32.0f

    invoke-virtual {v2, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x18

    invoke-virtual {v3, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    invoke-direct {v2, v13, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v3, 0x44260000    # 664.0f

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v6}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42900000    # 72.0f

    sub-float/2addr v6, v7

    invoke-virtual {v2, v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v3, 0x432a0000    # 170.0f

    const/high16 v6, 0x42000000    # 32.0f

    invoke-virtual {v2, v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->PRESTIGE_MODE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getBooleanValue(Lcom/prineside/tdi2/enums/GameValueType;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-crown"

    invoke-virtual {v3, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x42a00000    # 80.0f

    sub-float/2addr v3, v6

    const/high16 v7, 0x42900000    # 72.0f

    sub-float/2addr v3, v7

    const/high16 v7, 0x432a0000    # 170.0f

    invoke-virtual {v2, v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v3, 0x42000000    # 32.0f

    invoke-virtual {v2, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x18

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    const-string v8, "0 mP"

    invoke-direct {v2, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v7, 0x43560000    # 214.0f

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v8}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v6

    const/high16 v6, 0x42900000    # 72.0f

    sub-float/2addr v8, v6

    invoke-virtual {v2, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/components/MapEditorUi;->r()V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/components/MapEditorUi;->q()V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-house"

    invoke-virtual {v3, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    new-instance v8, Lcom/prineside/tdi2/ui/components/MapEditorUi$1;

    invoke-direct {v8, v0, v1}, Lcom/prineside/tdi2/ui/components/MapEditorUi$1;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorUi;Lcom/prineside/tdi2/GameSystemProvider;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v17, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P600:Lcom/badlogic/gdx/graphics/Color;

    move-object v6, v2

    move-object v9, v3

    move-object v10, v15

    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v11}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v7, 0x42000000    # 32.0f

    invoke-virtual {v2, v7, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    move-result-object v2

    const/high16 v7, 0x42c00000    # 96.0f

    invoke-virtual {v2, v7, v7}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    move-result-object v2

    const/high16 v8, 0x43100000    # 144.0f

    invoke-virtual {v2, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v8, 0x446a0000    # 936.0f

    int-to-float v4, v4

    add-float/2addr v8, v4

    const/4 v14, 0x0

    invoke-virtual {v2, v14, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "icon-triangle-right"

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    new-instance v11, Lcom/prineside/tdi2/ui/components/MapEditorUi$2;

    invoke-direct {v11, v0, v1}, Lcom/prineside/tdi2/ui/components/MapEditorUi$2;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorUi;Lcom/prineside/tdi2/GameSystemProvider;)V

    move-object v9, v2

    move-object v12, v3

    move-object v13, v15

    const/4 v8, 0x0

    move-object/from16 v14, v17

    invoke-direct/range {v9 .. v14}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v9, 0x42000000    # 32.0f

    invoke-virtual {v2, v9, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    move-result-object v2

    const/high16 v14, 0x43000000    # 128.0f

    const/high16 v9, 0x43100000    # 144.0f

    invoke-virtual {v2, v9, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v9, 0x444a0000    # 808.0f

    add-float/2addr v9, v4

    invoke-virtual {v2, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "icon-info-circle"

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    new-instance v11, Lcom/prineside/tdi2/ui/components/MapEditorUi$3;

    invoke-direct {v11, v0}, Lcom/prineside/tdi2/ui/components/MapEditorUi$3;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorUi;)V

    move-object v9, v2

    const/high16 v3, 0x43000000    # 128.0f

    move-object/from16 v14, v17

    invoke-direct/range {v9 .. v14}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v9, 0x42000000    # 32.0f

    invoke-virtual {v2, v9, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    move-result-object v2

    const/high16 v6, 0x43100000    # 144.0f

    invoke-virtual {v2, v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, 0x442a0000    # 680.0f

    add-float/2addr v4, v6

    invoke-virtual {v2, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v9, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x15

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    new-instance v6, Lcom/prineside/tdi2/ui/components/h;

    invoke-direct {v6, v1}, Lcom/prineside/tdi2/ui/components/h;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    const-string v7, ""

    invoke-direct {v9, v7, v2, v6}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v9, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->d:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-pan-zoom"

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    const/high16 v11, 0x42000000    # 32.0f

    const/high16 v12, 0x41800000    # 16.0f

    const/high16 v13, 0x42c00000    # 96.0f

    const/high16 v14, 0x42c00000    # 96.0f

    invoke-virtual/range {v9 .. v14}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->d:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v6, 0x43100000    # 144.0f

    invoke-virtual {v2, v6, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->d:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v2, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->b:[Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->d:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/4 v9, 0x0

    aput-object v6, v2, v9

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v10, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    new-instance v6, Lcom/prineside/tdi2/ui/components/i;

    invoke-direct {v6, v1}, Lcom/prineside/tdi2/ui/components/i;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    invoke-direct {v10, v7, v2, v6}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v10, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->k:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-drag-tile"

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    const/high16 v12, 0x42000000    # 32.0f

    const/high16 v13, 0x41800000    # 16.0f

    const/high16 v15, 0x42c00000    # 96.0f

    invoke-virtual/range {v10 .. v15}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->k:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v6, 0x43100000    # 144.0f

    invoke-virtual {v2, v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->k:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v2, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->b:[Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->k:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/4 v9, 0x1

    aput-object v6, v2, v9

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v10, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    new-instance v6, Lcom/prineside/tdi2/ui/components/j;

    invoke-direct {v6, v1}, Lcom/prineside/tdi2/ui/components/j;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    new-instance v9, Lcom/prineside/tdi2/ui/components/k;

    invoke-direct {v9, v1}, Lcom/prineside/tdi2/ui/components/k;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    invoke-direct {v10, v7, v2, v6, v9}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v10, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->p:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-insert-tile"

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    invoke-virtual/range {v10 .. v15}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->p:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v6, 0x43100000    # 144.0f

    invoke-virtual {v2, v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->p:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v6, 0x43880000    # 272.0f

    invoke-virtual {v2, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->b:[Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/4 v6, 0x2

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->p:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    aput-object v9, v2, v6

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v10, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    new-instance v4, Lcom/prineside/tdi2/ui/components/l;

    invoke-direct {v4, v1}, Lcom/prineside/tdi2/ui/components/l;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    new-instance v6, Lcom/prineside/tdi2/ui/components/m;

    invoke-direct {v6, v1}, Lcom/prineside/tdi2/ui/components/m;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    invoke-direct {v10, v7, v2, v4, v6}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v10, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-remove-tile"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    invoke-virtual/range {v10 .. v15}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v2, 0x43100000    # 144.0f

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v2, 0x43c80000    # 400.0f

    invoke-virtual {v1, v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->b:[Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/components/MapEditorUi;->p()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/ui/components/MapEditorUi;->n(Lcom/prineside/tdi2/GameSystemProvider;)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/ui/components/MapEditorUi;->k(Lcom/prineside/tdi2/GameSystemProvider;)V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/ui/components/MapEditorUi;->o(Lcom/prineside/tdi2/GameSystemProvider;)V

    return-void
.end method

.method public static synthetic d(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/ui/components/MapEditorUi;->l(Lcom/prineside/tdi2/GameSystemProvider;)V

    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/ui/components/MapEditorUi;->j(Lcom/prineside/tdi2/GameSystemProvider;)V

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/ui/components/MapEditorUi;->m(Lcom/prineside/tdi2/GameSystemProvider;)V

    return-void
.end method

.method public static synthetic g(Lcom/prineside/tdi2/ui/components/MapEditorUi;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/MapEditorUi;->p()V

    return-void
.end method

.method public static synthetic h(Lcom/prineside/tdi2/ui/components/MapEditorUi;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/MapEditorUi;->q()V

    return-void
.end method

.method public static synthetic i(Lcom/prineside/tdi2/ui/components/MapEditorUi;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/MapEditorUi;->r()V

    return-void
.end method

.method public static synthetic j(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 1

    iget-object p0, p0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    sget-object v0, Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;->VIEW:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMode(Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;)V

    return-void
.end method

.method public static synthetic k(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 1

    iget-object p0, p0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    sget-object v0, Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;->DRAG:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMode(Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;)V

    return-void
.end method

.method public static synthetic l(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 1

    iget-object p0, p0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    sget-object v0, Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;->INSERT:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMode(Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;)V

    return-void
.end method

.method public static synthetic m(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 1

    iget-object p0, p0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    sget-object v0, Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;->DRAW_INSERT:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMode(Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;)V

    return-void
.end method

.method public static synthetic n(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 1

    iget-object p0, p0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    sget-object v0, Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;->REMOVE:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMode(Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;)V

    return-void
.end method

.method public static synthetic o(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 1

    iget-object p0, p0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    sget-object v0, Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;->DRAW_REMOVE:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMode(Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->mapEditorHints:Lcom/prineside/tdi2/ui/components/MapEditorHints;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/MapEditorHints;->dispose()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->x:Lcom/prineside/tdi2/ui/components/MapEditorUi$_ProgressManagerListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->removeListener(Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    return-void
.end method

.method public draw(F)V
    .locals 0

    return-void
.end method

.method public final p()V
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->b:[Lcom/prineside/tdi2/ui/actors/ComplexButton;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P600:Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->GRAY:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/ui/components/MapEditorUi$4;->a:[I

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->v:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->getMode()Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->GRAY:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->GRAY:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->p:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->GRAY:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->p:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->GRAY:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->k:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->GRAY:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->d:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->GRAY:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    :goto_1
    return-void

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

.method public final q()V
    .locals 7

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->PRESTIGE_DUST_DROP_RATE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->v:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Map;->getPrestigeScore()D

    move-result-wide v2

    mul-double v2, v2, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double v2, v2, v5

    invoke-static {v2, v3}, Ljava/lang/StrictMath;->round(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mP"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v0, v3

    if-lez v5, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " [#808080](x"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DI)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")[]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final r()V
    .locals 7

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getGreenPapers()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->s:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v4, v4, v5

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->s:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v4, v4, v5

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v5, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->getResources(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v3

    int-to-long v5, v3

    invoke-static {v5, v6}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorUi;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getAccelerators()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
