.class public Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$ItemCountSelectionListener;
    }
.end annotation


# instance fields
.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public b:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public d:Lcom/prineside/tdi2/ui/actors/ItemCell;

.field public e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public f:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public g:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public h:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public i:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public j:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public k:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public l:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public m:I

.field public n:I

.field public o:I

.field public p:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$ItemCountSelectionListener;


# direct methods
.method public constructor <init>()V
    .locals 25

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v2, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->OVERLAY:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v3, 0x124

    const-string v4, "ItemCountSelectionOverlay main"

    invoke-virtual {v1, v2, v3, v4}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v4, 0x43c80000    # 400.0f

    const/high16 v5, 0x430e0000    # 142.0f

    invoke-virtual {v2, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v7, 0x44480000    # 800.0f

    const/high16 v8, 0x438e0000    # 284.0f

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v9, 0x43000000    # 128.0f

    invoke-virtual {v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const/16 v5, 0x48

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    const/16 v5, 0x8

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    invoke-direct {v2, v4, v6}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v6, -0x3ee00000    # -10.0f

    invoke-virtual {v2, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const v6, 0x2f2f2fff

    invoke-direct {v4, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-direct {v2, v4, v5}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-direct {v2}, Lcom/prineside/tdi2/ui/actors/ItemCell;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->d:Lcom/prineside/tdi2/ui/actors/ItemCell;

    const/high16 v4, 0x41f80000    # 31.0f

    const/high16 v5, 0x42e40000    # 114.0f

    invoke-virtual {v2, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->d:Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v2, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v4, 0x433e0000    # 190.0f

    const/high16 v6, 0x43540000    # 212.0f

    invoke-virtual {v2, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v6, 0x41c80000    # 25.0f

    invoke-virtual {v2, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v4, 0x3f800000    # 1.0f

    const v7, 0x3f0f5c29    # 0.56f

    invoke-virtual {v2, v4, v4, v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->l:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->l:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v4, 0x43200000    # 160.0f

    const/high16 v7, 0x430d0000    # 141.0f

    invoke-virtual {v2, v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->l:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v7, 0x441b0000    # 620.0f

    const/high16 v8, 0x42900000    # 72.0f

    invoke-virtual {v2, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->l:Lcom/badlogic/gdx/scenes/scene2d/Group;

    new-instance v7, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$1;

    invoke-direct {v7, v0}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$1;-><init>(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)V

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->l:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "blank"

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v7, 0x440c0000    # 560.0f

    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {v2, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v7, 0x0

    const v8, 0x3e8f5c29    # 0.28f

    invoke-virtual {v2, v7, v7, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-virtual {v2, v7, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->l:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "ui-item-count-selector-scroll-button"

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v7, 0x42240000    # 41.0f

    invoke-virtual {v2, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->l:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x24

    invoke-virtual {v2, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    new-instance v9, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$2;

    invoke-direct {v9, v0}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$2;-><init>(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)V

    invoke-direct {v8, v5, v2, v9}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v8, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->f:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x431c0000    # 156.0f

    const/high16 v12, 0x42200000    # 40.0f

    const/16 v13, 0x10

    invoke-virtual/range {v8 .. v13}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->f:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v8, 0x431c0000    # 156.0f

    const/high16 v9, 0x42200000    # 40.0f

    invoke-virtual {v2, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->f:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const v8, 0x44148000    # 594.0f

    const/high16 v10, 0x43500000    # 208.0f

    invoke-virtual {v2, v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->f:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v8, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P400:Lcom/badlogic/gdx/graphics/Color;

    sget-object v11, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P600:Lcom/badlogic/gdx/graphics/Color;

    sget-object v12, Lcom/badlogic/gdx/graphics/Color;->GRAY:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v8, v10, v11, v12}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabelColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v12, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->f:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v12

    new-instance v13, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$3;

    invoke-direct {v13, v0}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$3;-><init>(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)V

    invoke-direct {v2, v5, v12, v13}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "ui-item-count-selector-minus-button"

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x42400000    # 48.0f

    const/high16 v18, 0x42540000    # 53.0f

    move-object v13, v2

    invoke-virtual/range {v13 .. v18}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v12, 0x42400000    # 48.0f

    const/high16 v13, 0x42540000    # 53.0f

    invoke-virtual {v2, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v12, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v14, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P600:Lcom/badlogic/gdx/graphics/Color;

    sget-object v13, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v12, v15, v14, v13}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-minus"

    invoke-virtual {v3, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    const/high16 v6, 0x41100000    # 9.0f

    const/high16 v16, 0x41500000    # 13.0f

    const/high16 v17, 0x42000000    # 32.0f

    const/high16 v18, 0x42000000    # 32.0f

    move-object v9, v13

    move-object v13, v2

    move-object v4, v14

    move-object v14, v3

    move-object v3, v15

    move v15, v6

    invoke-virtual/range {v13 .. v18}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const v6, 0x443f8000    # 766.0f

    const/high16 v13, 0x43150000    # 149.0f

    invoke-virtual {v2, v6, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    new-instance v13, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$4;

    invoke-direct {v13, v0}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$4;-><init>(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)V

    invoke-direct {v2, v5, v6, v13}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "ui-item-count-selector-plus-button"

    invoke-virtual {v6, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x424c0000    # 51.0f

    const/high16 v18, 0x42640000    # 57.0f

    move-object v13, v2

    invoke-virtual/range {v13 .. v18}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v6, 0x424c0000    # 51.0f

    const/high16 v13, 0x42640000    # 57.0f

    invoke-virtual {v2, v6, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v12, v3, v4, v9}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "icon-plus"

    invoke-virtual {v6, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v14

    const/high16 v15, 0x41200000    # 10.0f

    const/high16 v16, 0x41880000    # 17.0f

    const/high16 v17, 0x42000000    # 32.0f

    const/high16 v18, 0x42000000    # 32.0f

    move-object v13, v2

    invoke-virtual/range {v13 .. v18}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v6, 0x44400000    # 768.0f

    const/high16 v13, 0x434a0000    # 202.0f

    invoke-virtual {v2, v6, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x18

    invoke-virtual {v6, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    new-instance v14, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$5;

    invoke-direct {v14, v0}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$5;-><init>(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)V

    invoke-direct {v2, v5, v6, v14}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->h:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v6, 0x42f20000    # 121.0f

    const/high16 v14, 0x43200000    # 160.0f

    invoke-virtual {v2, v14, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->h:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v20, 0x42000000    # 32.0f

    const/high16 v21, 0x41800000    # 16.0f

    const/high16 v22, 0x42480000    # 50.0f

    const/high16 v23, 0x41900000    # 18.0f

    const/16 v24, 0x8

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v24}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->h:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v14, 0x42700000    # 60.0f

    const/high16 v15, 0x42200000    # 40.0f

    invoke-virtual {v2, v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->h:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v2, v8, v10, v11, v9}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabelColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v14, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->h:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v14

    new-instance v15, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$6;

    invoke-direct {v15, v0}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$6;-><init>(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)V

    invoke-direct {v2, v5, v14, v15}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->i:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const v14, 0x44238000    # 654.0f

    invoke-virtual {v2, v14, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->i:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/16 v20, 0x0

    const/high16 v22, 0x42c00000    # 96.0f

    const/16 v24, 0x10

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v24}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->i:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v14, 0x42c00000    # 96.0f

    const/high16 v15, 0x42200000    # 40.0f

    invoke-virtual {v2, v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->i:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v2, v8, v10, v11, v9}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabelColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v15, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->i:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v2, v15}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v15, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v13

    new-instance v15, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$7;

    invoke-direct {v15, v0}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$7;-><init>(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)V

    invoke-direct {v2, v5, v13, v15}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->j:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const v13, 0x43d38000    # 423.0f

    invoke-virtual {v2, v13, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->j:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/16 v24, 0x1

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v24}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->j:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v6, 0x42200000    # 40.0f

    invoke-virtual {v2, v14, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->j:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v2, v8, v10, v11, v9}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabelColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->j:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v6, 0x43eb0000    # 470.0f

    const/high16 v8, 0x42a00000    # 80.0f

    invoke-virtual {v2, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v6, 0x420c0000    # 35.0f

    const/high16 v8, 0x41c80000    # 25.0f

    invoke-virtual {v2, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v13, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    new-instance v6, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$8;

    invoke-direct {v6, v0}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$8;-><init>(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)V

    invoke-direct {v13, v5, v2, v6}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v13, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->k:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "ui-item-count-selector-cancel-button"

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x43120000    # 146.0f

    const/high16 v18, 0x42c60000    # 99.0f

    invoke-virtual/range {v13 .. v18}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->k:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v6, 0x43120000    # 146.0f

    const/high16 v8, 0x42c60000    # 99.0f

    invoke-virtual {v2, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->k:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v11, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v6, v10, v11, v9}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v13, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->k:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-check"

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v14

    const/high16 v15, 0x42200000    # 40.0f

    const/high16 v16, 0x41900000    # 18.0f

    const/high16 v17, 0x42800000    # 64.0f

    const/high16 v18, 0x42800000    # 64.0f

    invoke-virtual/range {v13 .. v18}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->k:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const v6, 0x4402c000    # 523.0f

    const/high16 v10, -0x3ed00000    # -11.0f

    invoke-virtual {v2, v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->k:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    new-instance v7, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$9;

    invoke-direct {v7, v0}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$9;-><init>(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)V

    invoke-direct {v2, v5, v6, v7}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "ui-item-count-selector-confirm-button"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x43120000    # 146.0f

    const/high16 v18, 0x42c60000    # 99.0f

    move-object v13, v2

    invoke-virtual/range {v13 .. v18}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v5, 0x430a0000    # 138.0f

    invoke-virtual {v2, v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v12, v3, v4, v9}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "icon-times"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v14

    const/high16 v15, 0x42200000    # 40.0f

    const/high16 v16, 0x41800000    # 16.0f

    const/high16 v17, 0x42800000    # 64.0f

    const/high16 v18, 0x42800000    # 64.0f

    invoke-virtual/range {v13 .. v18}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const v3, 0x44274000    # 669.0f

    const/high16 v4, -0x3f200000    # -7.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x41100000    # 9.0f
        0x0
        0x0
        0x438e0000    # 284.0f
        0x44480000    # 800.0f
        0x43898000    # 275.0f
        0x44464000    # 793.0f
        0x40e00000    # 7.0f
    .end array-data

    :array_1
    .array-data 4
        0x41100000    # 9.0f
        0x0
        0x0
        0x438e0000    # 284.0f
        0x44480000    # 800.0f
        0x43898000    # 275.0f
        0x44464000    # 793.0f
        0x40e00000    # 7.0f
    .end array-data
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->m:I

    return p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->n:I

    return p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->o:I

    return p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$ItemCountSelectionListener;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->p:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$ItemCountSelectionListener;

    return-object p0
.end method


# virtual methods
.method public final e()V
    .locals 5

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->m:I

    iget v1, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->n:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->l:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->h:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->i:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->j:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_1

    :cond_0
    iget v3, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->o:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    sub-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr v3, v0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v1, 0x41f00000    # 30.0f

    const v4, 0x4401c000    # 519.0f

    mul-float v3, v3, v4

    add-float/2addr v3, v1

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->l:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->n:I

    iget v3, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->m:I

    sub-int/2addr v0, v3

    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->j:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->j:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->h:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->i:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_1
    return-void
.end method

.method public getInfoContainer()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object v0
.end method

.method public getMaxCount()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->n:I

    return v0
.end method

.method public getMinCount()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->m:I

    return v0
.end method

.method public getSelectedCount()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->o:I

    return v0
.end method

.method public hide()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->p:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$ItemCountSelectionListener;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/utils/UiUtils;->bouncyHideOverlay(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->darkOverlay:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    const-string v1, "ItemCountSelectionOverlay"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->removeCaller(Ljava/lang/String;)V

    return-void
.end method

.method public setConfirmButtonEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->k:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    return-void
.end method

.method public setMinMaxCount(II)V
    .locals 2

    iput p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->m:I

    iput p2, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->n:I

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->h:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setText(I)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->i:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v0, p2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setText(I)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sub-int/2addr p2, p1

    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->j:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    div-int/2addr p2, v0

    add-int/2addr p2, p1

    invoke-virtual {v1, p2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setText(I)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    :cond_0
    iget p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->o:I

    iget p2, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->m:I

    if-ge p1, p2, :cond_1

    iput p2, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->o:I

    :cond_1
    iget p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->o:I

    iget p2, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->n:I

    if-le p1, p2, :cond_2

    iput p2, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->o:I

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->f:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->o:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->e()V

    return-void
.end method

.method public setSelectedCount(I)V
    .locals 5

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->o:I

    iget v1, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->m:I

    if-ge p1, v1, :cond_0

    move p1, v1

    :cond_0
    iget v1, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->n:I

    if-le p1, v1, :cond_1

    move p1, v1

    :cond_1
    iput p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->o:I

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->f:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, p1

    invoke-static {v3, v4}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->e()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->p:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$ItemCountSelectionListener;

    if-eqz v1, :cond_2

    if-eq v0, p1, :cond_2

    iget p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->o:I

    invoke-interface {v1, p1}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$ItemCountSelectionListener;->countChanged(I)V

    :cond_2
    return-void
.end method

.method public show(Ljava/lang/CharSequence;IILcom/prineside/tdi2/Item;Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$ItemCountSelectionListener;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->setConfirmButtonEnabled(Z)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->d:Lcom/prineside/tdi2/ui/actors/ItemCell;

    const/4 v2, 0x0

    invoke-virtual {v1, p4, v2}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setItem(Lcom/prineside/tdi2/Item;I)V

    iget-object p4, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p4, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iput p2, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->o:I

    invoke-virtual {p0, p2, p3}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->setMinMaxCount(II)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->darkOverlay:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    iget p2, p2, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->zIndex:I

    sub-int/2addr p2, v0

    new-instance p3, Lcom/prineside/tdi2/ui/shared/k;

    invoke-direct {p3, p0}, Lcom/prineside/tdi2/ui/shared/k;-><init>(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)V

    const-string p4, "ItemCountSelectionOverlay"

    invoke-virtual {p1, p4, p2, p3}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->addCaller(Ljava/lang/String;ILjava/lang/Runnable;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p1

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 p3, 0x0

    invoke-static {p3, p1, p2}, Lcom/prineside/tdi2/utils/UiUtils;->bouncyShowOverlay(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->e()V

    iput-object p5, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->p:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$ItemCountSelectionListener;

    return-void
.end method
