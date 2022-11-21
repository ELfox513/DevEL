.class public Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public b:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public c:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public e:Lcom/prineside/tdi2/ui/actors/ModelView;

.field public f:Lcom/prineside/tdi2/ui/actors/ModelView;

.field public g:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;


# direct methods
.method public constructor <init>()V
    .locals 24

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v2, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->OVERLAY:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v3, 0xa1

    const-string v4, "TrophyViewOverlay main"

    invoke-virtual {v1, v2, v3, v4}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v3, 0x43e50000    # 458.0f

    const/high16 v4, 0x434b0000    # 203.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x44650000    # 916.0f

    const/high16 v4, 0x43cb0000    # 406.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const/4 v4, 0x0

    const v5, 0x3e8f5c29    # 0.28f

    invoke-direct {v3, v4, v4, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/16 v6, 0x8

    new-array v7, v6, [F

    fill-array-data v7, :array_0

    invoke-direct {v2, v3, v7}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const v3, 0x43c28000    # 389.0f

    const/high16 v7, 0x437d0000    # 253.0f

    invoke-virtual {v2, v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    const v9, 0x2f2f2fff

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v10, v6, [F

    fill-array-data v10, :array_1

    invoke-direct {v2, v8, v10}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-virtual {v2, v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v10, 0x24

    invoke-virtual {v8, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v8

    sget-object v10, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v8, ""

    invoke-direct {v2, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const v7, 0x43d58000    # 427.0f

    const v8, 0x43948000    # 297.0f

    invoke-virtual {v2, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v7, 0x43fa0000    # 500.0f

    const/high16 v8, 0x41d00000    # 26.0f

    invoke-virtual {v2, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v7, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v4, v4, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-direct {v2, v7, v5}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v6, v6, [F

    fill-array-data v6, :array_3

    invoke-direct {v2, v5, v6}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v9, Lcom/badlogic/gdx/graphics/g3d/Environment;

    invoke-direct {v9}, Lcom/badlogic/gdx/graphics/g3d/Environment;-><init>()V

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v11, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->AmbientLight:J

    const v13, 0x3e99999a    # 0.3f

    const v14, 0x3e99999a    # 0.3f

    const v15, 0x3e99999a    # 0.3f

    const/high16 v16, 0x3f800000    # 1.0f

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JFFFF)V

    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    new-instance v17, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    invoke-direct/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;-><init>()V

    const/high16 v18, 0x3f400000    # 0.75f

    const/high16 v19, 0x3f400000    # 0.75f

    const/high16 v20, 0x3f400000    # 0.75f

    const/high16 v21, -0x41000000    # -0.5f

    const/high16 v22, -0x40800000    # -1.0f

    const v23, -0x41b33333    # -0.2f

    invoke-virtual/range {v17 .. v23}, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->set(FFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/graphics/g3d/Environment;->add(Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    new-instance v2, Lcom/prineside/tdi2/ui/actors/ModelView;

    sget-object v13, Lcom/prineside/tdi2/ui/actors/ModelView;->rotateModelAround:Lcom/prineside/tdi2/ui/actors/ModelView$Transformer;

    const/16 v6, 0x234

    const/16 v7, 0x234

    const/4 v10, 0x0

    move-object v5, v2

    move-object v8, v13

    invoke-direct/range {v5 .. v10}, Lcom/prineside/tdi2/ui/actors/ModelView;-><init>(IILcom/prineside/tdi2/ui/actors/ModelView$Transformer;Lcom/badlogic/gdx/graphics/g3d/Environment;Z)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->e:Lcom/prineside/tdi2/ui/actors/ModelView;

    const-string v3, "trophy-view-overlay-model-view"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->e:Lcom/prineside/tdi2/ui/actors/ModelView;

    const/high16 v3, -0x3d520000    # -87.0f

    const/high16 v5, -0x3d700000    # -72.0f

    invoke-virtual {v2, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->e:Lcom/prineside/tdi2/ui/actors/ModelView;

    const/high16 v6, 0x440d0000    # 564.0f

    invoke-virtual {v2, v6, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->e:Lcom/prineside/tdi2/ui/actors/ModelView;

    sget-object v7, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->e:Lcom/prineside/tdi2/ui/actors/ModelView;

    iget-object v2, v2, Lcom/prineside/tdi2/ui/actors/ModelView;->camera:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    const/high16 v7, 0x3f000000    # 0.5f

    const v8, 0x3e19999a    # 0.15f

    invoke-virtual {v2, v7, v8, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->e:Lcom/prineside/tdi2/ui/actors/ModelView;

    iget-object v2, v2, Lcom/prineside/tdi2/ui/actors/ModelView;->camera:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    const v7, -0x430a3d71    # -0.03f

    invoke-virtual {v2, v4, v7, v4}, Lcom/badlogic/gdx/graphics/Camera;->lookAt(FFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->e:Lcom/prineside/tdi2/ui/actors/ModelView;

    iget-object v2, v2, Lcom/prineside/tdi2/ui/actors/ModelView;->camera:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->update()V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->e:Lcom/prineside/tdi2/ui/actors/ModelView;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v4, 0x42860000    # 67.0f

    const/high16 v7, 0x42a40000    # 82.0f

    invoke-virtual {v2, v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v4, 0x43800000    # 256.0f

    invoke-virtual {v2, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/ModelView;

    new-instance v14, Lcom/badlogic/gdx/graphics/g3d/Environment;

    invoke-direct {v14}, Lcom/badlogic/gdx/graphics/g3d/Environment;-><init>()V

    const/16 v11, 0x40

    const/16 v12, 0x40

    const/4 v15, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/prineside/tdi2/ui/actors/ModelView;-><init>(IILcom/prineside/tdi2/ui/actors/ModelView$Transformer;Lcom/badlogic/gdx/graphics/g3d/Environment;Z)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->f:Lcom/prineside/tdi2/ui/actors/ModelView;

    const-string v4, "trophy-view-overlay-model-view-locked"

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->f:Lcom/prineside/tdi2/ui/actors/ModelView;

    invoke-virtual {v2, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->f:Lcom/prineside/tdi2/ui/actors/ModelView;

    invoke-virtual {v2, v6, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->f:Lcom/prineside/tdi2/ui/actors/ModelView;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const v3, 0x43d18000    # 419.0f

    const/high16 v4, 0x420c0000    # 35.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v3, 0x43e10000    # 450.0f

    const/high16 v4, 0x43490000    # 201.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x41880000    # 17.0f
        0x0
        0x42ba0000    # 93.0f
        0x44034000    # 525.0f
        0x42bc0000    # 94.0f
        0x43f90000    # 498.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x41880000    # 17.0f
        0x0
        0x42cc0000    # 102.0f
        0x43ff0000    # 510.0f
        0x42d60000    # 107.0f
        0x43f48000    # 489.0f
        0x41500000    # 13.0f
    .end array-data

    :array_2
    .array-data 4
        0x41880000    # 17.0f
        0x0
        0x40400000    # 3.0f
        0x43bf8000    # 383.0f
        0x43ce8000    # 413.0f
        0x43be8000    # 381.0f
        0x43c38000    # 391.0f
        0x41600000    # 14.0f
    .end array-data

    :array_3
    .array-data 4
        0x40400000    # 3.0f
        0x41600000    # 14.0f
        0x0
        0x43cb0000    # 406.0f
        0x43c38000    # 391.0f
        0x43c90000    # 402.0f
        0x43c18000    # 387.0f
        0x41900000    # 18.0f
    .end array-data
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public hide()V
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
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->darkOverlay:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    const-string v3, "TrophyViewOverlay"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->removeCaller(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const v3, 0x3d8f5c29    # 0.07f

    mul-float v3, v3, v0

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v3

    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getScaleY()F

    move-result v4

    neg-float v4, v4

    const v5, 0x3e99999a    # 0.3f

    mul-float v0, v0, v5

    sget-object v5, Lcom/badlogic/gdx/math/Interpolation;->swingIn:Lcom/badlogic/gdx/math/Interpolation$SwingIn;

    invoke-static {v1, v4, v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v3

    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getScaleX()F

    move-result v4

    neg-float v4, v4

    invoke-static {v4, v1, v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object v0

    new-instance v1, Lcom/prineside/tdi2/ui/shared/z1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/ui/shared/z1;-><init>(Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;)V

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method

.method public show(Lcom/prineside/tdi2/enums/TrophyType;)V
    .locals 13

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->f:Lcom/prineside/tdi2/ui/actors/ModelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->e:Lcom/prineside/tdi2/ui/actors/ModelView;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->trophyManager:Lcom/prineside/tdi2/managers/TrophyManager;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/TrophyManager;->getConfig(Lcom/prineside/tdi2/enums/TrophyType;)Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->isReceived()Z

    move-result v0

    const-string v2, "t-"

    const v3, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    if-eqz v0, :cond_3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isThreeDeeModelsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->e:Lcom/prineside/tdi2/ui/actors/ModelView;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7}, Lcom/prineside/tdi2/managers/AssetManager;->getSceneModel()Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v2, v8, v3}, Lcom/prineside/tdi2/ui/actors/ModelView;->setModelPart(Lcom/badlogic/gdx/graphics/g3d/Model;Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/Material;F)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->e:Lcom/prineside/tdi2/ui/actors/ModelView;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->trophyManager:Lcom/prineside/tdi2/managers/TrophyManager;

    invoke-virtual {v7, p1}, Lcom/prineside/tdi2/managers/TrophyManager;->getConfig(Lcom/prineside/tdi2/enums/TrophyType;)Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->getIconTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->trophyManager:Lcom/prineside/tdi2/managers/TrophyManager;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/TrophyManager;->getConfig(Lcom/prineside/tdi2/enums/TrophyType;)Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p1, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->gameValues:Lcom/badlogic/gdx/utils/Array;

    iget v7, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v7, :cond_2

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget-object v8, v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    move-result-object v7

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v9, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    const/high16 v10, 0x42800000    # 64.0f

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    const/high16 v11, 0x41000000    # 8.0f

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v7}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->getIcon()Lcom/badlogic/gdx/utils/Array;

    move-result-object v9

    const/4 v11, 0x0

    :goto_2
    iget v12, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v11, v12, :cond_1

    iget-object v12, v9, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v12, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object v12, v12, v11

    invoke-virtual {v12, v4, v4, v10}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->createImage(FFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget-object v10, v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/GameValueManager;->getTitle(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v11, 0x18

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    iget-object v9, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    const/high16 v9, 0x41200000    # 10.0f

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    const/high16 v9, 0x42a00000    # 80.0f

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget-wide v11, v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    iget-object v2, v7, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->units:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    invoke-virtual {v10, v11, v12, v2}, Lcom/prineside/tdi2/managers/GameValueManager;->formatEffectValue(DLcom/prineside/tdi2/managers/GameValueManager$ValueUnits;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v10, 0x1e

    invoke-virtual {v7, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    invoke-direct {v8, v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto :goto_4

    :cond_3
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isThreeDeeModelsEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->f:Lcom/prineside/tdi2/ui/actors/ModelView;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AssetManager;->getSceneModel()Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/AssetManager;->getNormalMaterial()Lcom/badlogic/gdx/graphics/g3d/Material;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/prineside/tdi2/ui/actors/ModelView;->setModelPart(Lcom/badlogic/gdx/graphics/g3d/Model;Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/Material;F)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->f:Lcom/prineside/tdi2/ui/actors/ModelView;

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->trophyManager:Lcom/prineside/tdi2/managers/TrophyManager;

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/managers/TrophyManager;->getConfig(Lcom/prineside/tdi2/enums/TrophyType;)Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->getWhiteTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_3
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "unknown_trophy"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const v0, 0x3f0f5c29    # 0.56f

    invoke-virtual {p1, v5, v5, v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :goto_4
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->darkOverlay:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    iget v0, v0, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->zIndex:I

    sub-int/2addr v0, v6

    new-instance v1, Lcom/prineside/tdi2/ui/shared/a2;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/ui/shared/a2;-><init>(Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;)V

    const-string v2, "TrophyViewOverlay"

    invoke-virtual {p1, v2, v0, v1}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->addCaller(Ljava/lang/String;ILjava/lang/Runnable;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/SettingsManager;->isUiAnimationsEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_5
    const/4 p1, 0x0

    :goto_5
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float v2, v2, p1

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v2

    mul-float p1, p1, v3

    sget-object v3, Lcom/badlogic/gdx/math/Interpolation;->swingOut:Lcom/badlogic/gdx/math/Interpolation$SwingOut;

    invoke-static {v5, v4, p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v2

    invoke-static {v4, v5, p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method
