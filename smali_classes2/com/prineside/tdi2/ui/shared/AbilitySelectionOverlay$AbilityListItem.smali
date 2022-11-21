.class Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AbilityListItem"
.end annotation


# instance fields
.field public M:Lcom/prineside/tdi2/enums/AbilityType;

.field public N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public R:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public S:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public T:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public U:Z

.field public final synthetic V:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;Lcom/prineside/tdi2/enums/AbilityType;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->V:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->M:Lcom/prineside/tdi2/enums/AbilityType;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/managers/AbilityManager;->getFactory(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/Ability$Factory;

    move-result-object v3

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/Ability$Factory;->getDescription(Lcom/prineside/tdi2/GameValueProvider;)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x18

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v7

    sget-object v9, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f47ae14    # 0.78f

    invoke-virtual {v4, v5, v5, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v6, 0x42c00000    # 96.0f

    const/high16 v7, 0x41000000    # 8.0f

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v7, 0x43c80000    # 400.0f

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    const/16 v11, 0xa

    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->layout()V

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->pack()V

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v7

    const/high16 v11, 0x42800000    # 64.0f

    cmpg-float v7, v7, v11

    if-gez v7, :cond_0

    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setHeight(F)V

    :cond_0
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v7

    add-float/2addr v7, v11

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v13, 0x44430000    # 780.0f

    invoke-virtual {v0, v13, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v15}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v14, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v14, v13, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v13, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v13, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v13, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem$1;

    invoke-direct {v13, v0, v1, v2}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem$1;-><init>(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;Lcom/prineside/tdi2/enums/AbilityType;)V

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v13, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v14, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v13, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v14, 0x40c00000    # 6.0f

    invoke-virtual {v13, v14, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v13, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v3}, Lcom/prineside/tdi2/Ability$Factory;->getIconDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v3}, Lcom/prineside/tdi2/Ability$Factory;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v13, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v14, 0x41b00000    # 22.0f

    const/high16 v15, 0x42a00000    # 80.0f

    sub-float v15, v7, v15

    invoke-virtual {v13, v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3}, Lcom/prineside/tdi2/Ability$Factory;->getTitle()Ljava/lang/CharSequence;

    move-result-object v14

    new-instance v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v12, 0x1e

    invoke-virtual {v10, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v10

    invoke-direct {v15, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v13, v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v3}, Lcom/prineside/tdi2/Ability$Factory;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v10

    invoke-virtual {v13, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v10, 0x42540000    # 53.0f

    sub-float v10, v7, v10

    invoke-virtual {v13, v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v4, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, 0x43e10000    # 450.0f

    sub-float v10, v7, v11

    invoke-virtual {v4, v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v12, 0x24

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v11

    invoke-direct {v10, v11, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v11, ""

    invoke-direct {v6, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v12

    invoke-direct {v10, v12, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v6, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const v10, 0x3f0f5c29    # 0.56f

    invoke-virtual {v6, v5, v5, v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v4, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v6, 0x3e0f5c29    # 0.14f

    const/4 v10, 0x0

    invoke-direct {v5, v10, v10, v10, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/16 v6, 0x8

    new-array v12, v6, [F

    const/4 v13, 0x0

    aput v10, v12, v13

    const/4 v13, 0x1

    aput v10, v12, v13

    const/4 v13, 0x2

    const/high16 v14, 0x41800000    # 16.0f

    aput v14, v12, v13

    const/4 v15, 0x3

    aput v7, v12, v15

    const/high16 v17, 0x431c0000    # 156.0f

    const/16 v18, 0x4

    aput v17, v12, v18

    const/16 v17, 0x5

    aput v7, v12, v17

    const/high16 v19, 0x430c0000    # 140.0f

    const/16 v20, 0x6

    aput v19, v12, v20

    const/16 v19, 0x7

    aput v10, v12, v19

    invoke-direct {v4, v5, v12}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v5, 0x44070000    # 540.0f

    invoke-virtual {v4, v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->T:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v5, 0x42f80000    # 124.0f

    invoke-virtual {v4, v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->T:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const v5, 0x440b4000    # 557.0f

    invoke-virtual {v4, v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->T:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v12

    invoke-direct {v5, v12, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v12, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem$2;

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem$2;-><init>(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;Lcom/prineside/tdi2/enums/AbilityType;Lcom/prineside/tdi2/Ability$Factory;)V

    invoke-direct {v4, v11, v5, v12}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->R:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v4, v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->R:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v3, 0x442a0000    # 680.0f

    invoke-virtual {v2, v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v12, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->R:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v2, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v4, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-array v5, v6, [F

    const/4 v6, 0x0

    aput v10, v5, v6

    const/4 v6, 0x1

    aput v10, v5, v6

    aput v14, v5, v13

    aput v7, v5, v15

    aput v1, v5, v18

    aput v7, v5, v17

    aput v1, v5, v20

    aput v10, v5, v19

    invoke-direct {v4, v9, v5}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v2, v4}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x42c80000    # 100.0f

    move-object v13, v2

    move/from16 v17, v7

    invoke-virtual/range {v12 .. v17}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->R:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "icon-plus"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v19

    const/high16 v20, 0x41f00000    # 30.0f

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v4, v4, v7

    const/high16 v5, 0x41c00000    # 24.0f

    sub-float v21, v4, v5

    const/high16 v22, 0x42400000    # 48.0f

    const/high16 v23, 0x42400000    # 48.0f

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v23}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->R:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v5

    invoke-direct {v4, v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v5, "MAX"

    invoke-direct {v2, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->S:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->S:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->S:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->S:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->r()V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->update()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;Lcom/prineside/tdi2/enums/AbilityType;Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;-><init>(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;Lcom/prineside/tdi2/enums/AbilityType;)V

    return-void
.end method

.method public static synthetic p(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->U:Z

    return p1
.end method

.method public static synthetic q(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->r()V

    return-void
.end method


# virtual methods
.method public final r()V
    .locals 3

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->U:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->V:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->b(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const v2, 0x3ed70a3d    # 0.42f

    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const v2, 0x3e570a3d    # 0.21f

    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :goto_0
    return-void
.end method

.method public update()V
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->M:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AbilityManager;->getMaxPerGameGameValueType(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->M:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->getAbilities(Lcom/prineside/tdi2/enums/AbilityType;)I

    move-result v2

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->T:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v2, v1, :cond_0

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->S:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->R:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto/16 :goto_5

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->M:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/managers/AbilityManager;->getFactory(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/Ability$Factory;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/Ability$Factory;->getPriceInGreenPapers(I)I

    move-result v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v6}, Lcom/prineside/tdi2/managers/ProgressManager;->getGreenPapers()I

    move-result v6

    if-le v5, v6, :cond_1

    :goto_0
    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    sget-object v5, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v9, v8}, Lcom/prineside/tdi2/managers/ProgressManager;->getResources(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v9

    invoke-virtual {v1, v8, v2}, Lcom/prineside/tdi2/Ability$Factory;->getPriceInResources(Lcom/prineside/tdi2/enums/ResourceType;I)I

    move-result v8

    if-ge v9, v8, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->R:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v8, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P600:Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    goto :goto_3

    :cond_4
    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->R:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v8, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P600:Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    :goto_3
    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/Ability$Factory;->getPriceInGreenPapers(I)I

    move-result v5

    const/16 v6, 0x18

    const/high16 v7, 0x40c00000    # 6.0f

    const/high16 v8, 0x42000000    # 32.0f

    const/high16 v9, 0x40800000    # 4.0f

    if-eqz v5, :cond_5

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "icon-money"

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    invoke-direct {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v10, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->T:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v10, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/Ability$Factory;->getPriceInGreenPapers(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v12

    sget-object v13, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v11, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v5, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iget-object v10, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->T:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v10, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_5
    sget-object v5, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v10, v5

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v10, :cond_7

    aget-object v12, v5, v11

    invoke-virtual {v1, v12, v2}, Lcom/prineside/tdi2/Ability$Factory;->getPriceInResources(Lcom/prineside/tdi2/enums/ResourceType;I)I

    move-result v13

    if-eqz v13, :cond_6

    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    sget-object v15, Lcom/prineside/tdi2/Resource;->TEXTURE_REGION_NAMES:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

    invoke-virtual {v14, v12}, Lcom/prineside/tdi2/managers/ResourceManager;->getColor(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v14, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->T:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v14, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v12, v2}, Lcom/prineside/tdi2/Ability$Factory;->getPriceInResources(Lcom/prineside/tdi2/enums/ResourceType;I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v15, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v15

    sget-object v6, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v15, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v13, v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->T:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v6, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_6
    add-int/lit8 v11, v11, 0x1

    const/16 v6, 0x18

    goto :goto_4

    :cond_7
    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->S:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->R:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_5
    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->V:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->f(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;)[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    move-result-object v1

    array-length v2, v1

    :goto_6
    if-ge v4, v2, :cond_9

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->getAbility()Lcom/prineside/tdi2/enums/AbilityType;

    move-result-object v5

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->M:Lcom/prineside/tdi2/enums/AbilityType;

    if-ne v5, v6, :cond_8

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_7

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    return-void
.end method
