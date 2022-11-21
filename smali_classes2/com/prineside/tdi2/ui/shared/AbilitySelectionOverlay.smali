.class public Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;,
        Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;
    }
.end annotation


# instance fields
.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public b:Ljava/lang/Runnable;

.field public c:Lcom/prineside/tdi2/utils/ObjectRetriever;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public g:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public h:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public i:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public j:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public k:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public m:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public n:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public o:Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;

.field public final p:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;",
            ">;"
        }
    .end annotation
.end field

.field public q:Z

.field public final r:[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

.field public s:I


# direct methods
.method public constructor <init>()V
    .locals 20

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v2, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v3, 0xcf

    const-string v4, "AbilitySelectionOverlay main"

    invoke-virtual {v1, v2, v3, v4}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->p:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x6

    new-array v3, v2, [Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    iput-object v3, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->r:[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    const/4 v3, -0x1

    iput v3, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->s:I

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v5, 0x44160000    # 600.0f

    const/high16 v6, 0x43be0000    # 380.0f

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v7, 0x44960000    # 1200.0f

    const/high16 v8, 0x443e0000    # 760.0f

    invoke-virtual {v1, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x2f2f2fff

    invoke-direct {v3, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    const/16 v7, 0x8

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-direct {v1, v3, v7}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x24

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v7

    sget-object v8, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v7, ""

    invoke-direct {v1, v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v3, 0x42700000    # 60.0f

    const v8, 0x44268000    # 666.0f

    invoke-virtual {v1, v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v8, 0x43960000    # 300.0f

    const/high16 v10, 0x41d80000    # 27.0f

    invoke-virtual {v1, v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v8, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v10, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x18

    invoke-virtual {v1, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v1

    new-instance v11, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$1;

    invoke-direct {v11, v0}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$1;-><init>(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;)V

    invoke-direct {v10, v7, v1, v11}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v10, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->k:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "ui-ability-selection-token-button"

    invoke-virtual {v1, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x431e0000    # 158.0f

    const/high16 v15, 0x429e0000    # 79.0f

    invoke-virtual/range {v10 .. v15}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->k:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v10, 0x431e0000    # 158.0f

    const/high16 v11, 0x429e0000    # 79.0f

    invoke-virtual {v1, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->k:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v10, -0x3f200000    # -7.0f

    const v11, 0x44098000    # 550.0f

    invoke-virtual {v1, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "ability-token"

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v10, 0x42280000    # 42.0f

    const/high16 v12, 0x41400000    # 12.0f

    invoke-virtual {v1, v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v10, 0x42800000    # 64.0f

    invoke-virtual {v1, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v12, 0x0

    const v13, 0x3e8f5c29    # 0.28f

    invoke-virtual {v1, v12, v12, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v14, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->k:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v14, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    invoke-direct {v1, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v11, 0x42200000    # 40.0f

    const/high16 v14, 0x41600000    # 14.0f

    invoke-virtual {v1, v11, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v14, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->k:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v14, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v14

    const-string v15, "0"

    invoke-direct {v1, v15, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v14, 0x42d20000    # 105.0f

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v1, v14, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v14, 0x40000000    # 2.0f

    const/high16 v6, 0x41a80000    # 21.0f

    invoke-virtual {v1, v14, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v12, v12, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->k:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v1, v15, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v6, 0x42ce0000    # 103.0f

    const/high16 v15, 0x41b00000    # 22.0f

    invoke-virtual {v1, v6, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v6, 0x41a80000    # 21.0f

    invoke-virtual {v1, v14, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->k:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->k:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v14, "icon-info-circle"

    invoke-virtual {v6, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v6, 0x42400000    # 48.0f

    const/high16 v14, 0x42400000    # 48.0f

    invoke-virtual {v1, v6, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, 0x43280000    # 168.0f

    const v14, 0x440d4000    # 565.0f

    invoke-virtual {v1, v6, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v1, v6, v6, v6, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    sget-object v13, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v13, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$2;

    invoke-direct {v13, v0}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$2;-><init>(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;)V

    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v13, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v13, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v13, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->r:[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    new-instance v14, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v15}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v15

    invoke-direct {v14, v9, v15}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;-><init>(ZLcom/prineside/tdi2/GameValueProvider;)V

    aput-object v14, v13, v1

    iget-object v13, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->r:[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    aget-object v13, v13, v1

    rem-int/lit8 v14, v1, 0x2

    int-to-float v15, v14

    const/high16 v18, 0x43000000    # 128.0f

    mul-float v15, v15, v18

    add-float/2addr v15, v3

    const/high16 v18, 0x432c0000    # 172.0f

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    const/high16 v19, 0x43000000    # 128.0f

    mul-float v2, v2, v19

    add-float v2, v2, v18

    rsub-int/lit8 v14, v14, 0x1

    int-to-float v14, v14

    const/high16 v18, 0x41200000    # 10.0f

    mul-float v14, v14, v18

    add-float/2addr v2, v14

    sub-float/2addr v2, v11

    invoke-virtual {v13, v15, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v13, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->r:[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    aget-object v13, v13, v1

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->r:[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    aget-object v2, v2, v1

    new-instance v13, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$3;

    invoke-direct {v13, v0, v1}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$3;-><init>(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;I)V

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x6

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v2, 0x44430000    # 780.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const v3, 0x44208000    # 642.0f

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v3, 0x42500000    # 52.0f

    const/high16 v9, 0x43b30000    # 358.0f

    invoke-virtual {v1, v9, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "gradient-top"

    invoke-virtual {v3, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v2, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v3, 0x441dc000    # 631.0f

    invoke-virtual {v1, v9, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v11, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v11, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "gradient-bottom"

    invoke-virtual {v11, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    invoke-direct {v1, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v11, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v11, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v2, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v2, 0x424c0000    # 51.0f

    invoke-virtual {v1, v9, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->h:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->h:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v2, 0x431b0000    # 155.0f

    const/high16 v5, 0x42480000    # 50.0f

    invoke-virtual {v1, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->h:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v2, 0x438c0000    # 280.0f

    invoke-virtual {v1, v2, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->h:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->h:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "icon-arrow-pointer-top-left"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v1, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->h:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v3

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v1, v7, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-virtual {v1, v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->h:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->h:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->i:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->i:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v2, 0x43700000    # 240.0f

    const/high16 v3, 0x42480000    # 50.0f

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->i:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v2, 0x43be0000    # 380.0f

    invoke-virtual {v1, v2, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->i:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "icon-arrow-pointer-top-right"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v1, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v2, 0x439e0000    # 316.0f

    invoke-virtual {v1, v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->i:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v1, v7, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v2, 0x43940000    # 296.0f

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->i:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;

    sget-object v14, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v16, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    new-instance v2, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$4;

    invoke-direct {v2, v0}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$4;-><init>(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;)V

    const-string v12, ""

    const-string v13, "icon-triangle-right"

    move-object v11, v1

    move-object/from16 v17, v2

    invoke-direct/range {v11 .. v17}, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->o:Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;

    const/high16 v2, 0x444b0000    # 812.0f

    const/high16 v3, -0x3eb00000    # -13.0f

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->o:Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v2, 0x43bc0000    # 376.0f

    invoke-virtual {v1, v2, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v2, 0x444b0000    # 812.0f

    const/high16 v3, -0x3d660000    # -77.0f

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v2, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$5;

    invoke-direct {v2, v0}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$5;-><init>(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const v2, 0x3f4ccccd    # 0.8f

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    invoke-static {v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v2

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "max_encrypted_cases_warning"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "icon-exclamation-triangle"

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x42000000    # 32.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iput-boolean v4, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->q:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x41b00000    # 22.0f
        0x41200000    # 10.0f
        0x443b0000    # 748.0f
        0x44960000    # 1200.0f
        0x443e0000    # 760.0f
        0x44960000    # 1200.0f
        0x0
    .end array-data
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->h()V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->s:I

    return p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;)Lcom/prineside/tdi2/utils/ObjectRetriever;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->c:Lcom/prineside/tdi2/utils/ObjectRetriever;

    return-object p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;)Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->g()Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->i(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;)V

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;)[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->r:[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    return-object p0
.end method

.method private synthetic h()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public final g()Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;
    .locals 8

    new-instance v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;-><init>()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->r:[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    invoke-virtual {v5}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->getAbility()Lcom/prineside/tdi2/enums/AbilityType;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;->slots:[Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v5}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->getAbility()Lcom/prineside/tdi2/enums/AbilityType;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;->counts:[I

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->getAbility()Lcom/prineside/tdi2/enums/AbilityType;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/prineside/tdi2/managers/ProgressManager;->getAbilities(Lcom/prineside/tdi2/enums/AbilityType;)I

    move-result v5

    aput v5, v6, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->g()Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->i(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->setVisible(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->b:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->c:Lcom/prineside/tdi2/utils/ObjectRetriever;

    return-void
.end method

.method public final i(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;)V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p1, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;->slots:[Lcom/prineside/tdi2/enums/AbilityType;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v0, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object p1

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lastAbilitiesConfiguration"

    invoke-virtual {p1, v1, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->q:Z

    return v0
.end method

.method public selectSlot(I)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->r:[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4, v2}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->setSelected(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->r:[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->h:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->i:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->h:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->i:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_1
    iput p1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->s:I

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->update()V

    return-void
.end method

.method public setSelectedSlotAbilityType(Lcom/prineside/tdi2/enums/AbilityType;)V
    .locals 6

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->r:[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->getAbility()Lcom/prineside/tdi2/enums/AbilityType;

    move-result-object v5

    if-ne v5, p1, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->setAbility(Lcom/prineside/tdi2/enums/AbilityType;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->r:[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    iget v2, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->s:I

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->setAbility(Lcom/prineside/tdi2/enums/AbilityType;)V

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->selectSlot(I)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 10

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isUiAnimationsEnabled()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x40000000    # 2.0f

    const-string v5, "AbilitySelectionOverlay"

    if-eqz p1, :cond_1

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/UiManager;->darkOverlay:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    sget-object v7, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v8, 0xce

    new-instance v9, Lcom/prineside/tdi2/ui/shared/a;

    invoke-direct {v9, p0}, Lcom/prineside/tdi2/ui/shared/a;-><init>(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;)V

    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->addCaller(Ljava/lang/String;Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/Runnable;)V

    iget-object v5, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v5, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v5

    sget-object v6, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v5, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v5, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v1

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v6}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v4

    invoke-static {v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v4

    mul-float v0, v0, v3

    invoke-static {v2, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->darkOverlay:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->removeCaller(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v4

    mul-float v0, v0, v3

    invoke-static {v5, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v0

    new-instance v2, Lcom/prineside/tdi2/ui/shared/b;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/ui/shared/b;-><init>(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;)V

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :goto_1
    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->q:Z

    return-void
.end method

.method public show(Ljava/lang/Runnable;Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->b:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->c:Lcom/prineside/tdi2/utils/ObjectRetriever;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "select_abilities"

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "tap_to_select_slot"

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "choose_ability_for_slot"

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->o:Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "play"

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->setVisible(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->r:[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, p2, :cond_0

    aget-object v3, p1, v1

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->setAbility(Lcom/prineside/tdi2/enums/AbilityType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object p2, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object p1

    const-string p2, "lastAbilitiesConfiguration"

    invoke-virtual {p1, p2, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    :try_start_0
    new-instance p2, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {p2}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object p1

    const/4 p2, 0x0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->type()Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->stringValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->r:[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    aget-object v3, v3, p2

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prineside/tdi2/enums/AbilityType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/AbilityType;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->setAbility(Lcom/prineside/tdi2/enums/AbilityType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 p2, p2, 0x1

    const/4 v1, 0x6

    if-ne p2, v1, :cond_1

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "AbilitySelectionOverlay"

    const-string v1, "failed to load previous abilities configuration"

    invoke-static {p2, v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 p2, 0x42800000    # 64.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->p:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    sget-object p1, Lcom/prineside/tdi2/enums/AbilityType;->values:[Lcom/prineside/tdi2/enums/AbilityType;

    array-length v1, p1

    :goto_2
    if-ge v0, v1, :cond_5

    aget-object v3, p1, v0

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    invoke-virtual {v5, v3}, Lcom/prineside/tdi2/managers/AbilityManager;->getMaxPerGameGameValueType(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    new-instance v4, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;

    invoke-direct {v4, p0, v3, v2}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;-><init>(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;Lcom/prineside/tdi2/enums/AbilityType;Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$1;)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->p:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x44430000    # 780.0f

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v4

    invoke-virtual {v3, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->selectSlot(I)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->update()V

    return-void
.end method

.method public update()V
    .locals 7

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->ABILITY_TOKEN:Lcom/prineside/tdi2/items/AbilityTokenItem;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsCount(Lcom/prineside/tdi2/Item;)I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->k:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->k:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->r:[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->getAbility()Lcom/prineside/tdi2/enums/AbilityType;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->getAbility()Lcom/prineside/tdi2/enums/AbilityType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/ProgressManager;->getAbilities(Lcom/prineside/tdi2/enums/AbilityType;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->setCount(I)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->p:Lcom/badlogic/gdx/utils/Array;

    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_3

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->update()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getEncryptedCasesCount()I

    move-result v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getMaxEncryptedCasesInInventory()I

    move-result v1

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_4
    return-void
.end method
