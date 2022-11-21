.class public Lcom/prineside/tdi2/ui/components/MapShiftButtons;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/components/MapShiftButtons$_CameraControllerListener;,
        Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;,
        Lcom/prineside/tdi2/ui/components/MapShiftButtons$MapShiftButtonsListener;
    }
.end annotation


# instance fields
.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public final b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/ui/components/MapShiftButtons$MapShiftButtonsListener;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;

.field public k:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;",
            "Lcom/badlogic/gdx/scenes/scene2d/Group;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;",
            "Lcom/prineside/tdi2/ui/actors/PaddedImageButton;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;",
            "Lcom/prineside/tdi2/ui/actors/PaddedImageButton;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;",
            "Lcom/prineside/tdi2/ui/actors/PaddedImageButton;",
            ">;"
        }
    .end annotation
.end field

.field public s:Z

.field public t:Lcom/prineside/tdi2/CameraController;

.field public final u:Lcom/prineside/tdi2/ui/components/MapShiftButtons$_CameraControllerListener;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/CameraController;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v3, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v4, 0x5f

    const-string v5, "MapShiftButtons"

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;Z)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    new-instance v3, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v3, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->k:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v3, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->p:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v3, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->q:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v3, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->r:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v3, Lcom/prineside/tdi2/ui/components/MapShiftButtons$_CameraControllerListener;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/prineside/tdi2/ui/components/MapShiftButtons$_CameraControllerListener;-><init>(Lcom/prineside/tdi2/ui/components/MapShiftButtons;Lcom/prineside/tdi2/ui/components/MapShiftButtons$1;)V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->u:Lcom/prineside/tdi2/ui/components/MapShiftButtons$_CameraControllerListener;

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->t:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/CameraController;->addListener(Lcom/prineside/tdi2/CameraController$CameraControllerListener;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->values:[Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->k:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8, v5, v7}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v7, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    sget-object v2, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->LEFT:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    const-string v4, "icon-triangle-left-hollow"

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->RIGHT:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    const-string v4, "icon-triangle-right-hollow"

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->DOWN:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    const-string v4, "icon-triangle-bottom-hollow"

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->UP:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    const-string v4, "icon-triangle-top-hollow"

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->values:[Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    array-length v4, v2

    const/4 v5, 0x0

    :goto_1
    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/high16 v12, 0x42c00000    # 96.0f

    const/high16 v13, 0x42800000    # 64.0f

    const/high16 v14, 0x41800000    # 16.0f

    if-ge v5, v4, :cond_5

    aget-object v15, v2, v5

    new-instance v3, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v1, v15}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v17

    new-instance v10, Lcom/prineside/tdi2/ui/components/MapShiftButtons$1;

    invoke-direct {v10, v0, v15}, Lcom/prineside/tdi2/ui/components/MapShiftButtons$1;-><init>(Lcom/prineside/tdi2/ui/components/MapShiftButtons;Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;)V

    sget-object v19, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v20, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v21, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P900:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v16, v3

    move-object/from16 v18, v10

    invoke-direct/range {v16 .. v21}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v3, v14, v14}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    move-result-object v3

    invoke-virtual {v3, v13, v13}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    move-result-object v3

    invoke-virtual {v3, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v10, Lcom/prineside/tdi2/ui/components/MapShiftButtons$4;->a:[I

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    const/high16 v11, -0x3dc00000    # -48.0f

    if-eq v10, v6, :cond_4

    if-eq v10, v9, :cond_3

    if-eq v10, v8, :cond_2

    if-eq v10, v7, :cond_1

    goto :goto_2

    :cond_1
    const/high16 v7, -0x3d400000    # -96.0f

    invoke-virtual {v3, v11, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v3, v11, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v3, v7, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    goto :goto_2

    :cond_4
    const/high16 v7, -0x3d400000    # -96.0f

    invoke-virtual {v3, v7, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    :goto_2
    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->k:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v7, v15}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->p:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v7, v15, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    sget-object v2, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->LEFT:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    const-string v3, "icon-triangle-left"

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->RIGHT:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    const-string v4, "icon-triangle-right"

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->DOWN:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    const-string v5, "icon-triangle-bottom"

    invoke-virtual {v1, v2, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->UP:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    const-string v10, "icon-triangle-top"

    invoke-virtual {v1, v2, v10}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->values:[Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    array-length v11, v2

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v11, :cond_a

    aget-object v7, v2, v15

    new-instance v8, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v6, v19

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v23

    new-instance v6, Lcom/prineside/tdi2/ui/components/MapShiftButtons$2;

    invoke-direct {v6, v0, v7}, Lcom/prineside/tdi2/ui/components/MapShiftButtons$2;-><init>(Lcom/prineside/tdi2/ui/components/MapShiftButtons;Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;)V

    sget-object v25, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v26, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v27, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P900:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v22, v8

    move-object/from16 v24, v6

    invoke-direct/range {v22 .. v27}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v8, v14, v14}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    move-result-object v6

    invoke-virtual {v6, v13, v13}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    move-result-object v6

    invoke-virtual {v6, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v8, Lcom/prineside/tdi2/ui/components/MapShiftButtons$4;->a:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const/high16 v9, 0x42400000    # 48.0f

    const/4 v12, 0x1

    if-eq v8, v12, :cond_9

    const/4 v12, 0x2

    if-eq v8, v12, :cond_8

    const/4 v12, 0x3

    if-eq v8, v12, :cond_7

    const/4 v12, 0x4

    if-eq v8, v12, :cond_6

    goto :goto_4

    :cond_6
    const/high16 v8, -0x3d400000    # -96.0f

    invoke-virtual {v6, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    goto :goto_4

    :cond_7
    const/high16 v8, -0x3d400000    # -96.0f

    const/4 v12, 0x0

    invoke-virtual {v6, v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    goto :goto_4

    :cond_8
    const/high16 v8, -0x3d400000    # -96.0f

    const/4 v12, 0x0

    invoke-virtual {v6, v12, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    goto :goto_4

    :cond_9
    const/high16 v8, -0x3d400000    # -96.0f

    invoke-virtual {v6, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    :goto_4
    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->k:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->q:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8, v7, v6}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/high16 v12, 0x42c00000    # 96.0f

    goto :goto_3

    :cond_a
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    sget-object v2, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->LEFT:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->RIGHT:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->DOWN:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    invoke-virtual {v1, v2, v10}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->UP:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    invoke-virtual {v1, v2, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->values:[Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_f

    aget-object v5, v2, v4

    new-instance v12, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    new-instance v8, Lcom/prineside/tdi2/ui/components/MapShiftButtons$3;

    invoke-direct {v8, v0, v5}, Lcom/prineside/tdi2/ui/components/MapShiftButtons$3;-><init>(Lcom/prineside/tdi2/ui/components/MapShiftButtons;Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;)V

    sget-object v9, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v11, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P900:Lcom/badlogic/gdx/graphics/Color;

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v12, v14, v14}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    move-result-object v6

    invoke-virtual {v6, v13, v13}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    move-result-object v6

    const/high16 v7, 0x42c00000    # 96.0f

    invoke-virtual {v6, v7, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v8, Lcom/prineside/tdi2/ui/components/MapShiftButtons$4;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const/high16 v9, -0x3cf00000    # -144.0f

    const/4 v10, 0x1

    if-eq v8, v10, :cond_e

    const/4 v11, 0x2

    if-eq v8, v11, :cond_d

    const/4 v12, 0x3

    if-eq v8, v12, :cond_c

    const/4 v15, 0x4

    if-eq v8, v15, :cond_b

    const/4 v7, 0x0

    const/high16 v8, -0x3d400000    # -96.0f

    goto :goto_6

    :cond_b
    const/high16 v8, -0x3d400000    # -96.0f

    invoke-virtual {v6, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/4 v7, 0x0

    goto :goto_6

    :cond_c
    const/4 v7, 0x0

    const/high16 v8, -0x3d400000    # -96.0f

    const/4 v15, 0x4

    invoke-virtual {v6, v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    goto :goto_6

    :cond_d
    const/4 v7, 0x0

    const/high16 v8, -0x3d400000    # -96.0f

    const/4 v12, 0x3

    const/4 v15, 0x4

    invoke-virtual {v6, v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    goto :goto_6

    :cond_e
    const/4 v7, 0x0

    const/high16 v8, -0x3d400000    # -96.0f

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v15, 0x4

    invoke-virtual {v6, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    :goto_6
    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->k:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->r:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v9, v5, v6}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->update()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/components/MapShiftButtons;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object p0
.end method


# virtual methods
.method public addListener(Lcom/prineside/tdi2/ui/components/MapShiftButtons$MapShiftButtonsListener;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

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

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->t:Lcom/prineside/tdi2/CameraController;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->u:Lcom/prineside/tdi2/ui/components/MapShiftButtons$_CameraControllerListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/CameraController;->removeListener(Lcom/prineside/tdi2/CameraController$CameraControllerListener;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    return-void
.end method

.method public removeListener(Lcom/prineside/tdi2/ui/components/MapShiftButtons$MapShiftButtonsListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMapSizeChangesAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->s:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->update()V

    return-void
.end method

.method public update()V
    .locals 7

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->q:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->r:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->q:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->r:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_3

    :cond_3
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->t:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v1}, Lcom/prineside/tdi2/CameraController;->getMapHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    const/high16 v3, -0x3e800000    # -16.0f

    invoke-virtual {v0, v3, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->t:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/CameraController;->mapToStage(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->k:Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v4, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->LEFT:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->t:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v1}, Lcom/prineside/tdi2/CameraController;->getMapWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x41800000    # 16.0f

    add-float/2addr v1, v4

    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->t:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v5}, Lcom/prineside/tdi2/CameraController;->getMapHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v2

    invoke-virtual {v0, v1, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->t:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/CameraController;->mapToStage(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->k:Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v5, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->RIGHT:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->t:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v1}, Lcom/prineside/tdi2/CameraController;->getMapWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->t:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/CameraController;->mapToStage(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->k:Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v3, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->DOWN:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->t:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v1}, Lcom/prineside/tdi2/CameraController;->getMapWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->t:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v2}, Lcom/prineside/tdi2/CameraController;->getMapHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->t:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/CameraController;->mapToStage(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->k:Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v2, Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;->UP:Lcom/prineside/tdi2/ui/components/MapShiftButtons$Direction;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    return-void
.end method
